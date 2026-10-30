# Security, abuse and privacy

Follow [domain review](../SKILL.md) and the existing mandatory independent security review. This is scoped threat analysis and authorized isolated proof, not permission for production penetration testing or cloud mutation.

## Inputs

Read the exact candidate, trust/data-flow boundaries, authentication and authorization model, tenant/resource ownership rules, exposed interfaces and dependency identities. Obtain data inventory/classification, collection purposes and accepted policy/legal requirements from the responsible owner, retention/deletion/export requirements, actual logs/backups/analytics stores and approved security-test environment. Do not invent legal compliance from a checklist.

## Sequence and decisions

1. Inventory entry points, identities and trust boundaries, including background jobs, webhooks, object storage, caches and administrative paths. Identify attacker capabilities and assets. Trace where identity is authenticated and where **every resource action** is authorized, including list/search/count/export and batch operations. Bind tenant context to trusted identity, not a request-supplied tenant alone; test ownership changes and revocation.
2. Review boundary validation/encoding, injection, SSRF/path traversal, unsafe deserialization/uploads and secret handling as applicable. Evaluate object/property-level authorization and mass assignment. Use product limits for request/payload sizes, quotas, concurrency and expensive operations. Model abuse such as enumeration, credential stuffing, automation, notification amplification and cost exhaustion; choose proportional controls with actual enforcement and an observable legitimate-user failure path.
3. Build a data inventory for each personal/sensitive field: purpose/source, classification, owner, recipients, residency constraints if required, stores/caches/queues/indexes, logs/traces, exports and backups. Minimize collection and propagation. Define retention duration/source, actual expiry/deletion control and verification method for every copy; a documented TTL without an operating control is not deletion evidence.
4. Trace authenticated subject export/deletion requests through authorization, asynchronous work, retry/replay and audit. Verify exports contain only authorized data, use restricted expiring retrieval and exclude unnecessary credentials/third-party data. Define deletion versus permitted retention/legal holds with responsible authority, auditable reason and access restrictions; never claim immediate physical deletion from immutable backups if the actual policy is retention expiry plus restore-time suppression.
5. Test deletion propagation, cache/search invalidation, log redaction, export expiry and backup/restore tombstone reconciliation. Confirm replay cannot resurrect erased records. Restrict diagnostics and job evidence to sanitized metadata; record access/retention evidence rather than copying personal records into reports.
6. In the explicitly assigned isolated surface, exercise same-tenant allowed actions, cross-tenant/resource denied actions, unauthenticated/expired/revoked identities, guessed IDs, batch/list/export paths and abuse limits. Observe durable state and response leakage, including errors and timing where material. Static inspection or a clean scanner alone cannot establish these runtime properties.

## Evidence, failure and recovery

Report candidate/identity, threat and data-flow maps, concrete exploit preconditions/paths, severity and impact, resource-level test matrix, inventory and deletion/retention results, sanitized actual tool receipts and limits. A missing required test surface blocks the affected PASS. On exposure or unauthorized action stop the assigned test, preserve minimal evidence securely and route to the coordinator/authorized incident owner; reviewers do not remediate production or rotate credentials themselves. Correct the boundary/control, invalidate affected evidence and rerun both denial and legitimate access cases. A privacy recovery plan must cover already exported/copied data and backup resurrection, not just patch the endpoint.

## Consumer acceptance scenario

Tenant A's member can retrieve their own invoice but cannot read, list, update or export tenant B's invoice using guessed IDs, batch payloads or a forged tenant parameter. After authorized deletion, the customer's data disappears from active stores/search/export links under the selected policy, logs remain redacted and an isolated restore reapplies deletion suppression. An abusive request burst is bounded without exposing other customers' data or making normal users' recovery impossible.
