# API evolution and old consumers

Apply the [domain-review procedure](../SKILL.md) to HTTP, RPC, GraphQL, SDK and internal service contracts; use the actual protocol's compatibility rules rather than REST conventions for everything.

## Inputs

Obtain the deployed/proposed contract, supported client and server versions, observed consumer inventory plus dormant/offline consumers, documented deprecation policy, identity/tenant model, error/retry rules, pagination semantics, rate limits and representative sanitized payloads. Record specification/generator/runtime versions and compatibility-test capability. Traffic samples alone do not enumerate all supported consumers.

## Sequence and decisions

1. Diff schema **and semantics**: required/optional/null versus absent fields, defaults, enums, units/precision, date/time encoding, validation, ordering and side effects. Check old readers' handling of unknown fields/enum values and new readers' handling of old payloads. Separate wire compatibility, source compatibility of generated clients and behavioral compatibility; an additive enum may still break exhaustive consumers.
2. Produce an old/new client-server matrix, including rolling server coexistence. Maintain compatibility or introduce a deliberately versioned contract with a coexistence window and migration instructions. Resolve ownership of translations/adapters and removal criteria; do not promise permanent compatibility through an unmaintained shim.
3. Specify status/error codes, stable machine-readable error shape, safe user messages, correlation identity and which failures are retryable. Validate malformed input, missing/expired credentials, forbidden resource/tenant access, conflicts, rate limits and dependency outages. Never expose secrets or existence of another tenant's resources through errors. Retryable writes require a defined idempotency scope and retention or a documented nonretryable/unknown-outcome path.
4. Specify pagination with a stable deterministic sort and tie-breaker, cursor opacity/validation/expiry, page-size limits, filtering and authorization on each page. State snapshot versus live-view guarantees under inserts/deletes/permission changes. Bind cursor scope to tenant/filter/version as needed; reject cursor tampering and incompatible reuse. Prove no unexplained gaps/duplicates within the promised consistency model, not a stronger unimplemented guarantee.
5. Exercise the supported old client binaries/generated clients or faithful versioned contract fixtures against the new server and mixed fleet, and new consumers against the supported old path. Include errors, pagination and auth changes, not only happy-path schema validation. Identify mocks versus actual protocol execution; unavailable old client evidence blocks a compatibility claim for that client.
6. Before version removal, require the policy's notice/migration window, explicit inventory disposition including dormant consumers, owner acknowledgment where required, observed version/usage evidence with coverage limitations, replacement acceptance and an authorized removal decision. Define the observable rejection/error after removal and support/recovery route. An announced sunset or zero calls in a short window alone is insufficient.

## Evidence, failure and recovery

Report contract diff, matrix, consumer/version inventory, actual protocol transcripts stripped of credentials, generated-client/version identity, error/pagination/auth cases and deprecation/removal evidence. A generator's successful build does not prove server behavior. On incompatibility, stop removal/rollout and retain the supported contract while the implementation or consumer migration is corrected. After partial rollout, reconcile accepted writes before rollback; never replay an ambiguous write merely because the response timed out. Recovery must preserve current data semantics and authorized client access.

## Consumer acceptance scenario

A supported older mobile client lists its tenant's orders over multiple cursor pages while concurrent orders arrive, receives a documented validation error and retries a timed-out create using its assigned idempotency key. The updated server must meet its stated paging consistency, return a parseable old-client error, create at most one order and reject a cursor/resource from another tenant. Attempted retirement is rejected while an acknowledged supported offline client has not migrated.
