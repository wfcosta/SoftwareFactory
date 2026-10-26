package com.gsf.relay.filter;

import jakarta.servlet.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Component;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.Base64;

@Component
public class HmacFilter implements Filter {
    private final String secret = System.getenv().getOrDefault("WEBHOOK_SECRET", "default_secret");

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        String signature = req.getHeader("X-Hub-Signature-256");
        
        // Simplified body reading for demonstration
        byte[] body = req.getInputStream().readAllBytes(); 
        
        if (isValid(body, signature)) {
            chain.doFilter(request, response);
        } else {
            ((HttpServletResponse) response).sendError(403, "Invalid Signature");
        }
    }

    private boolean isValid(byte[] body, String signature) {
        try {
            Mac mac = Mac.getInstance("HmacSHA256");
            mac.init(new SecretKeySpec(secret.getBytes(), "HmacSHA256"));
            byte[] hash = mac.doFinal(body);
            String hex = bytesToHex(hash);
            return MessageDigest.isEqual(hex.getBytes(), signature != null ? signature.getBytes() : new byte[0]);
        } catch (Exception e) { return false; }
    }

    private String bytesToHex(byte[] bytes) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bytes) sb.append(String.format("%02x", b));
        return sb.toString();
    }
}
