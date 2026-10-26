package com.gsf.relay;

import com.gsf.relay.filter.HmacFilter;
import org.junit.jupiter.api.Test;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.mock.web.MockFilterChain;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import static org.junit.jupiter.api.Assertions.assertEquals;

class HmacFilterTest {

    private final HmacFilter filter = new HmacFilter();

    @Test
    void testHmacInvalidSignatureReturns403() throws Exception {
        MockHttpServletRequest request = new MockHttpServletRequest();
        request.setContent("payload".getBytes());
        request.addHeader("X-Hub-Signature-256", "wrong_signature");
        MockHttpServletResponse response = new MockHttpServletResponse();
        MockFilterChain chain = new MockFilterChain();

        filter.doFilter(request, response, chain);

        assertEquals(403, response.getStatus());
    }

    @Test
    void testHmacValidSignatureProceeds() throws Exception {
        String secret = System.getenv().getOrDefault("WEBHOOK_SECRET", "default_secret");
        String body = "payload";
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(new SecretKeySpec(secret.getBytes(), "HmacSHA256"));
        String signature = bytesToHex(mac.doFinal(body.getBytes()));

        MockHttpServletRequest request = new MockHttpServletRequest();
        request.setContent(body.getBytes());
        request.addHeader("X-Hub-Signature-256", signature);
        MockHttpServletResponse response = new MockHttpServletResponse();
        MockFilterChain chain = new MockFilterChain();

        filter.doFilter(request, response, chain);

        assertEquals(200, response.getStatus());
    }

    private String bytesToHex(byte[] bytes) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bytes) sb.append(String.format("%02x", b));
        return sb.toString();
    }
}
