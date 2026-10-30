# Credentials and workload identity lifecycle

Apply [domain review](../SKILL.md). Credential availability, a role name or a policy declaration is not evidence of effective permissions and never grants authority for a cloud mutation.

## Inputs

Obtain the actual identity provider/secret manager/tool versions, credential owner and consumer inventory, target/account/resource scope, effective permission evidence, issuance/delivery mechanism, expiration and revocation semantics, dependency caches/pools and accepted outage/security objectives. Record credential identifiers and versions only; never place secret values, recovery codes or tokens in source, logs, commands captured by reports or job artifacts.

## Sequence and decisions

1. Map human, CI and workload identities to exact actions/resources and trust/assume-role conditions. Compare effective privileges with required ones; prefer short-lived workload federation/temporary scoped credentials when the real platform supports it. Restrict audience, issuer, subject, branch/environment and lifetime as applicable. Document limitations rather than inventing federation. Deny unrelated tenant/resources/actions through real provider controls; Markdown is not privilege containment.
2. Specify approved storage and delivery with access controls and audit, runtime refresh, log redaction and safe failure on unavailable/expired credentials. Check that child processes, debug output, images and exports cannot accidentally retain the secret. Identify bootstrap/recovery access separately; avoid a recovery procedure dependent solely on the identity being recovered.
3. Design **rotation with coexistence**: create a new scoped version, validate access through an authorized safe operation, distribute to a bounded consumer cohort, refresh caches/connections, observe adoption and only then revoke the old version. Define overlap duration and exact consumer/version evidence; include dormant jobs, rollback versions and long-lived sessions. For single-active-key systems, choose an explicitly accepted coordinated transition/outage instead of pretending dual validity.
4. Define emergency **revocation** for suspected compromise separately from routine rotation. Determine whether existing sessions/tokens remain valid after key disable and the actual maximum revocation delay. Plan reauthentication, connection termination or platform deny controls when needed and authorized. Test denied old credentials and successful new credentials; deletion in a secret manager alone may not revoke already issued tokens.
5. Exercise expiry, refresh failure, partial distribution, stale consumer restart and rollback-version behavior in the approved isolated environment. Verify least privilege with safe allow/deny cases for exact resources. Record real identity/version and sanitized receipts; do not execute a destructive action merely to demonstrate it is denied.

## Evidence, failure and recovery

Provide permission/identity mapping, effective scope observations, issuer/audience/lifetime controls, rotation timeline, consumer adoption, allow/deny and expiry/revocation results and residual session window. On refresh/adoption failure halt rollout and reconcile which versions are live. Before old-key revocation an authorized rollback may restore prior consumers; after compromise/revocation do not reactivate the old secret as a convenience. Restore service through a newly issued scoped identity and revalidate consumers. Unknown consumers, unobservable effective scope or unsupported revocation bound blocks the relevant safety claim. Authorized cleanup removes only owned temporary identities and verifies revocation without preserving their values.

## Consumer acceptance scenario

Rotate an external-service credential while supported old/new application versions coexist. Both complete the selected customer transaction during the agreed overlap; after measured adoption, the old identity fails and the new one succeeds without wider resource access. A stale worker cannot revive the revoked credential and an expired token produces a safe recoverable failure, not a secret-bearing error or silent fallback to administrator access.
