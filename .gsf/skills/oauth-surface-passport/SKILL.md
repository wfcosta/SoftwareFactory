---
name: oauth-surface-passport
description: Prepare or review one exact OAuth surface with separate IDE, interactive CLI and headless consent/callback prerequisites, preserving issuer/resource identity without handling secret values or starting authorization implicitly.
---

# OAuth surface passport

## Role

Act as the finite authentication-preparation reviewer, not an identity provider, OAuth client, browser driver or callback server. A passport is a report-local readiness assessment, not a token, portable login, credential store, new schema or grant. Follow the [worker contract](../../agents/WORKER_CONTRACT.md), [environment](../../state/environment-contract.md), [candidate/evidence](../../state/candidate-contract.md) and [host adapters](../../docs/hosts/README.md). [Authorization review](../authorization-review/SKILL.md) owns permission decisions; [tool effect decision](../tool-effect-decision/SKILL.md) owns the proposed operation's effects.

A direct review reads selected authorized metadata/captures and returns chat without files, login, browser launch or provider calls. A dispatch owns only its assigned report. Native preparation effects and actual consent/login/token exchange require separate explicit assignments, real existing tools and receipts.

## Context

Freeze the intended action and target, current caller/canonical job-task-dispatch IDs, exact host/frontend/build, native client/version, transport and negotiated protocol, issuer/authorization-server identity, protected resource/canonical audience, approved endpoints, registration method/client identity reference, requested scopes and accepted data/retention audience. Preserve observed facts, declarations and unknowns separately; authentication success never authorizes all resource actions.

For the selected surface obtain the documented supported flow and redirect binding, interactive operator/consent owner, existing browser or native auth UI and existing callback/secure credential facilities where required. Record facility references/capability receipts, never client secrets, tokens, authorization codes, state/nonce, PKCE verifier/challenge, cookies, passwords or callback query values. Public-looking client IDs and URLs may still be private; disclose only audience-approved identities.

## Task

### 1. Select exactly one surface

| Surface | Preparation decision and required evidence | Forbidden shortcut |
| --- | --- | --- |
| IDE/editor | Exact extension/app/build and remote-versus-local execution, documented native authentication UI, which machine/browser owns callback, registered redirect URI and secure persistence boundary | Assume the integrated terminal's login authorizes the extension, or start a browser/listener implicitly |
| Interactive CLI | Actual installed client/version, interactive terminal and human consent availability, documented native flow, existing callback receiver on the correct machine and exact approved redirect binding | Treat SSH localhost as the user's workstation; invent a loopback port, tunnel or paste-code flow |
| Headless/CI | Actual noninteractive flow explicitly documented for that client/issuer and separately authorized principal; existing secure injection/storage with scoped credential reference; no required interactive step left unresolved | Treat no-browser as no-consent, infer device flow/client credentials, reuse IDE cookies or automate login with a new listener |

IDE and CLI on one machine remain different consumers until their actual identity/credential-sharing contract is evidenced. A headless client that supports only interactive authorization is BLOCKED for headless use; the complete manual decision names the real interactive owner or documented supported alternative, not a new implementation.

### 2. Review metadata and security bindings without starting a flow

1. Use approved retained captures or separately permitted metadata reads through the actual native interface. Bind protected resource metadata to the independently accepted origin/resource and authorization-server selection. Untrusted discovery URLs, redirects, multiple issuers and signed links do not grant arbitrary fetches or credential forwarding. Missing required safe transport controls blocks collection.
2. For MCP HTTP under protocol **2025-11-25**, review RFC 9728 protected-resource metadata and documented authorization-server discovery, supported registration and PKCE support. Preserve `authorization_servers`, issuer, required endpoint identities, scope challenge and `code_challenge_methods_supported` without secret values. The protocol requires resource indicators in authorization and token requests and PKCE with support verification; absence of PKCE metadata blocks the authorization-code path. Do not extrapolate this HTTP flow to stdio or invent an extension.
3. Match the exact registered redirect to the actual consumer and callback owner. Review HTTPS/allowed local redirect rules, CSRF state validation, PKCE S256 support, audience validation and issuer/TLS binding in actual client evidence. Documentation describes requirements; it does not prove this client enforces them. A proposed local address or a successful URL render is not listener ownership or callback delivery evidence.
4. Separate pre-registration, supported client-ID metadata document and supported dynamic registration. Publishing metadata, creating registration or changing redirect allowlists is its own authorized write; no registration fallback is automatic. Existing registration is not approval of increased scopes.
5. Compare minimal required scopes with accepted operation authority and human consent scope. A 401 is an auth challenge, 403 an insufficient/denied permission observation; neither authorizes escalation. A scope challenge can exceed metadata's scope list: preserve the actual challenge, but obtain authentic approval before requesting new scopes. Do not retry the original possibly effective operation blindly.

### 3. Produce preparation and consent decisions

1. Mark each prerequisite **observed**, **declared**, **unknown** or **unavailable**, with source/build/time and expiry. An actionable passport names exact supported surface, principal/resource/issuer, scope set, callback owner, storage boundary, expected receipt and recovery owner.
2. Return **prepared for separately authorized native flow** only if all assigned preparation predicates are evidenced. Return **not prepared/BLOCKED** for missing callback, browser/consent owner, supported noninteractive mechanism, exact issuer/audience, required control or secure custody. Observed mismatches are rejected, not silently normalized.
3. When an actual native flow is separately assigned, require bounded attempts/time, action-specific registration/browser/auth/token-storage grants as applicable, exact existing tool/UI and operator consent. The authorized native client owns state/PKCE generation, callback validation, exchange and secure persistence; this Markdown performs none. Do not reproduce request URLs containing live authorization parameters in chat.
4. Accept native flow evidence only when actual receipts bind the same consumer, issuer, audience/principal and approved scopes, showing consent and callback/exchange outcome without secrets. Distinguish prepared, consent approved, callback received, token exchange accepted, authenticated session usable, and exact resource action authorized. No later stage follows from an earlier label alone; a usable-session probe needs separate read/effect authority.

### 4. Recover without credential escalation

Denied consent ends that flow with no step-up or alternative identity. Wrong/missing callback, state mismatch, issuer/resource mismatch, expired code or unknown exchange outcome blocks dependent use; preserve sanitized native receipt and original attempt identity. The native auth/security owner checks actual callback/exchange/session state using supported facilities and separately authorized custody. Do not replay a code, reopen authorization repeatedly, create a listener, read credential stores or revoke sessions as cleanup. A new flow needs safely closed/reconciled prior ownership, fresh native anti-replay material and current authority. Revocation/removal has a distinct owner/grant and receipt.

## Constraints

No implicit browser, network, callback listener, credential discovery, registration, authentication, provider/model call or permission mutation. A secure credential facility must already exist; never put executable authentication programs in Markdown. Passport conclusions expire on client/surface, redirect, registration, issuer, resource, scopes, principal, permissions or custody changes. Preserve historical evidence rather than editing an old passport into fresh proof.

Primary sources reviewed 2026-11-09: [MCP authorization 2025-11-25](https://modelcontextprotocol.io/specification/2025-11-25/basic/authorization), [RFC 8252 (October 2017), native-app redirects and external user agents](https://www.rfc-editor.org/rfc/rfc8252), and [RFC 8628 (August 2019), device authorization](https://www.rfc-editor.org/rfc/rfc8628). The RFCs describe possible native/device mechanisms, not support or permission in any specific IDE/CLI/headless product. Use the actual host's versioned documentation/receipts for that claim.

## Format

Use the [response template](../../templates/response-template.md) or no-write chat. Include one row per surface requirement: exact consumer/issuer/resource/registration identity; expected predicate; actual approved source/receipt and evidence level; prepared/rejected/BLOCKED; exact missing prerequisite/owner. Preserve canonical and native attempt IDs separately, scope/consent/callback/storage boundaries, finite budgets, actual versus NOT RUN actions, evidence custody/expiry and safe recovery disposition. A completed preparation report is usable even when native auth remains blocked.

Manual cases, **illustrative, NOT RUN**: IDE login does not qualify the CLI; CLI over SSH with callback on the wrong machine is blocked; headless without a documented existing flow is blocked without launching a browser; consent denial is preserved without scope escalation; successful token exchange without exact-resource authorization remains insufficient; ambiguous exchange is reconciled by the native auth owner, never by copying a token or replaying a code.
