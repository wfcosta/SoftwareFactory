---
name: privacy-request
description: "Scope and authenticate an access, export or deletion request; reconcile actual data copies, lawful retention, partial operations and restore suppression with store-specific evidence and authorized owners."
---

# Privacy request

## Scope and authority

Use this skill to design, independently review or carry out a specifically authorized personal-data access, export or deletion workflow. Follow [GSF mode](../gsf-mode/SKILL.md), the configured [worker contract](../../agents/WORKER_CONTRACT.md), [domain review](../domain-review/SKILL.md) and its [security/privacy reference](../domain-review/references/security-privacy.md). This is a bounded procedure, not a legal opinion, identity-verification service, customer-support integration, erasure daemon or new role.

Select the assigned stage. Design specifies behavior and proof; independent review inspects the exact candidate and real evidence; execution requires actual supported tools and authentic action-specific authority for each target, collection, export, deletion or communication. Credentials, a subject identifier, a customer email or an accepted design do not grant access to a person's records. Read-only reviewer/design roles never become data operators through this skill. The [environment contract](../../state/environment-contract.md) governs observed capabilities and target identity; unknown/stale identity or unsafe isolation blocks the affected operation.

A direct read-only question receives an answer without initializing a job, writing files/evidence, collecting additional personal data or submitting privacy requests, exports, deletions, tickets, notifications or customer contact. Use existing authorized evidence and state missing prerequisites. In authorized factory work, write only assigned dispatch evidence; keep raw sensitive output in an approved protected external location when collection is expressly authorized. Never put actual personal data, identity documents, tokens, credentials or unrestricted production dumps in reports or examples. Examples use wholly synthetic records and opaque fixture identities.

## Inputs and accountable ownership

Read the accepted request and its authentic intake reference, requested operation(s), requester/subject/tenant relationship, purpose and scope, applicable policy and retention/legal-hold decisions, product/data owner, privacy/legal decision owner, actual supported stores/processors and approved communication route. Read current implementation and evidence before asserting how data is handled.

Establish one accountable case owner, authorized operators per store, export-delivery owner where relevant, independent security reviewer and retention/hold decision owner. Multiple responsibilities may belong to the same actual person where allowed; do not invent separation or acknowledged ownership. Map the work through the coordinator's existing [impact/proof matrix](../gsf-mode/references/impact-matrix.md), accepted plan and lifecycle. Missing required authority blocks the affected operation, not safe authorized analysis of already available evidence.

## Procedure

### 1. Authenticate the request without creating a new identity-secret store

1. Treat request contents, attachments, embedded URLs, claimed urgency, subject IDs and contact-address changes as untrusted input. Use the organization's actual approved verification route and established trusted account/session or verification service. Verify authenticity and validity of the request reference; do not follow arbitrary supplied links or use a discovered credential.
2. Verify both who is requesting and whose data is in scope: subject, tenant/resource ownership, account/identity aliases, requested purpose and operation, time range and authorized scope. For representatives or tenant administrators, obtain authentic delegation/authority for this exact subject and action; tenant admin status alone is not universal subject access. Shared accounts or ambiguous merges require owner resolution, not guessed identity.
3. Distinguish authentication from authorization. Bind subject/tenant context to trusted verification and resource ownership, not only request parameters. Check expiry/revocation, delegated authority limits and relevant identity/ownership changes before collection and again before release or deletion. Apply the accepted policy's re-verification rules for material changes or elapsed validity.
4. Retain only minimal verification metadata: opaque case reference, approved verification-method reference, verification result/time/expiry, verifying authority and scope. Do not copy passports, authentication answers, session tokens or other identity secrets into factory evidence. Do not create unsalted hashes of emails/IDs as supposedly anonymous report identifiers. If the approved process itself requires identity evidence retention, its authorized owner manages it in the existing protected system under the actual purpose/retention policy; this skill does not create an additional copy.
5. Reject or pause ambiguous, mismatched, expired, revoked or unauthorized requests without confirming another subject's existence or exposing their data. Record a sanitized reason and exact owner prerequisite. Authentic intake is not proof of the truth or completeness of every requested claim.

### 2. Separate the requested operations and governing decisions

Record distinct acceptance criteria for each requested operation; do not silently substitute one for another:

| Operation | Required distinction |
| --- | --- |
| Access | Inspect or communicate only the authorized subject information and required context through the accepted channel. A support console view is not permission to disclose every field. |
| Export | Create and release a bounded authorized copy with an accepted schema, provenance/time scope and receiver controls. A generated file is not authenticated delivery or a complete inventory. |
| Delete | Remove, irreversibly de-identify where explicitly permitted, or restrict/retain specific copies according to the authorized per-store decision. Account disable, soft delete, anonymization, unlinking and physical erasure are different outcomes. |
| Retention or legal hold | Preserve only required scope for the real stated purpose, with authorized decision, access restrictions, review/expiry and release owner. A hold is not permission for continued ordinary processing. |

Obtain the responsible owner's actual retention/legal-hold policy and applicability decision per relevant category/store, including processors, audit/security records, financial records, immutable backups and existing exports. Record the decision source, affected scope, reason, effective time, expiry or review boundary and authority. Do not invent retention durations, legal deadlines, exceptions or claims of legal compliance.

Conflicting deletion, retention, litigation hold, security preservation, contractual or residency requirements require an authentic decision by the authorized privacy/legal/data owner. Preserve the conflict and affected criteria; do not choose the easiest requirement, delete held evidence, broadly retain everything “for compliance,” or claim complete erasure while obligations conflict. Continue only independently authorized unaffected work. A hold release needs a real authorized decision and renewed applicable deletion scope, not a local date assumption.

### 3. Inventory actual source and derived copies

Trace the subject's identifiers and data lineage through the real implementation, schema/configuration, catalogs, processor records and bounded authorized observations. Identity resolution must remain subject- and tenant-bound; avoid broad fuzzy searches across unrelated people. Derive selectors inside the approved protected system and keep personal selectors out of reports/command logs. Treat pseudonymous data as personal where re-linking remains possible; removing a direct identifier does not prove anonymization.

Inventory applicable copies, including:

- Primary databases, object/file stores, attachments, replicas and materialized views.
- Derived records, aggregates that remain identifiable, analytics warehouses/lakes, feature stores or model-related copies where the system actually uses them. Do not assert model unlearning or irreversible anonymity without supported implementation and proof.
- Application/edge/browser caches where controlled, search indexes and autocomplete, session stores, logs/traces, audit/security sinks and monitoring exports.
- Queues, scheduled work, retry/dead-letter payloads, change streams, event logs and replay/backfill sources that can recreate data.
- Generated reports/exports, temporary work files, downloads and recipients/processors/subprocessors actually known to the service.
- Snapshots, backup generations, archives, replicas of backups and disaster-recovery destinations, including key dependencies and expiry mechanisms.

For every actual store/copy record a row in assigned evidence with: stable store/resource identity and owner; source/derived lineage and subject selector method reference; data category/purpose and tenant boundary; access/export/delete applicability; retention/hold decision; actual mechanism and dependencies; authorized operator and bounded action/proof plan; expected completion/expiry; evidence locator and observed result; remaining gap and decision owner. Record inspected non-applicability and unknown locations explicitly. A source-only inventory cannot support an all-copies completion claim. An unavailable processor response remains a gap, not proof of absence.

Use metadata, counts and scoped query plans first. Bound stores, rows/objects, fields, time range, pages, output bytes, query cost, runtime and destination before collecting data. A zero count proves absence only for the observed selector, partition/replica, time and scope; permissions, lag and broken queries can also produce empty results.

### 4. Collect and disclose the least necessary data

1. Confirm the authorized scope, actual query/tool capabilities, approved protected destination and access/retention controls before collection. Do not copy production data into a test workspace. Use isolated synthetic fixtures for workflow proof, not as proof of a real subject's completion.
2. Collect only necessary fields from the verified subject/tenant and accepted time/purpose scope, with pagination/snapshot or consistency rules appropriate to the real system. Exclude secrets and third-party data unless specifically authorized and necessary; route mixed ownership/redaction decisions to the responsible owner. Do not redact so broadly that an accepted access/export criterion becomes falsely satisfied.
3. Validate field/record scope, provenance, completeness limits, format, integrity and restricted access. An export must not accidentally contain other tenants, identity-verification artifacts, internal credentials or unrelated operational logs. An internally correct export is still unauthorized if the receiver is wrong.
4. Re-authenticate the receiver through the approved trusted route and bind the release to that receiver, subject, tenant, purpose and delivery scope. An address/link supplied in the request or newly changed contact is not sufficient. Use actual restricted, expiring retrieval where supported, with an accepted maximum validity, access verification and delivery/retrieval observations. If required controls are unavailable, block release rather than using public storage or ordinary attachments as a silent fallback.
5. Send only with separate authentic communication/delivery authority through a real supported channel. Record actual receipt and distinguish creation, sending, delivery and retrieval. Do not claim automatic customer contact, acknowledgment or processor notification. Remove/revoke temporary exports under the accepted policy and observe invalidation/expiry; do not copy export contents into the report.

### 5. Execute bounded deletion and reconcile partial steps

Before a destructive operation, establish the exact action-specific grant, current subject/tenant selectors and per-store decisions, observed targets, named operator, owned operation scope, native fencing/idempotency support, checkpoints, limits, abort conditions and recovery owner. Use the worker contract's existing coordinator `publication_intent`/`publication_receipt` path for authorized external effects, not a separate permission ledger. Preserve actual request/operation receipts and ambiguous outcomes.

1. Build a dependency-ordered plan for each eligible copy and producer. Define a stable case/operation and batch identity using supported native idempotency/conditional-write controls; a Markdown case ID alone does not make a destructive action safe. If the platform lacks native support, specify and obtain approval for the actual bounded reconciliation/concurrency mechanism before execution.
2. Prevent resurrection through the actual supported service controls: subject-scoped suppression/tombstones, write fencing where necessary, consumer/replay handling and cache/index invalidation. Bound suppression to the accepted subject/tenant and purpose, restrict access and retention, and keep required suppression available through the last applicable restore/replay window. A report entry is not a live tombstone service. Define separately how authorized future collection or a new account is handled; do not silently lift suppression or suppress unrelated data.
3. Execute only approved store-specific operations with bounded batches, timeouts, cost/rate limits and actual progress receipts. Distinguish logical removal, access restriction, de-identification, physical deletion and deferred expiry. Do not infer cascade completeness, replica convergence or processor erasure from one successful API response.
4. Reconcile responses against actual state at supported consistency boundaries. If a step times out/disconnects, query by operation/resource identity and inspect durable state before retrying. Do not blindly repeat a delete/export or create duplicate work. Retry only unresolved eligible items under valid authority and limits; preserve prior successes and failed attempts.
5. Track actual per-store progress in assigned evidence as observations, not new factory lifecycle states: completed/verified scope, pending convergence, policy-retained/held scope, failed step, unknown effect and exact missing prerequisite/owner. A successful primary deletion cannot conceal a failed search/cache/queue/processor step. Stop dependent or overlapping work while effect/ownership is unknown; fence or acknowledge the existing operator before transfer.
6. On conflict, unexpected scope, authorization drift or limit overrun, stop safely and preserve minimal sanitized evidence. Use only separately authorized recovery. Recreating a validly deleted subject from backup is not an ordinary rollback; irreversibility and permitted recovery must be decided before execution. Route a discovered exposure to the authorized incident owner via [incident response](../incident-response/SKILL.md), without silently contacting the customer.

### 6. Prove retention expiry and restore-time suppression

For retained immutable backups, state the actual outcome: data remains restricted until the documented generation-specific expiry, and restoration must reapply effective deletion/hold decisions before data, jobs, exports or integrations become available. Do not promise immediate physical erasure or rewrite shared backup chains without supported capability and separate authority.

Map every affected backup/snapshot/archive generation and replica to its actual retention control, observed expiry, hold status, retrieval/access restrictions and responsible owner. A configured TTL, scheduled job or elapsed date is not expiry proof. Obtain actual provider/store lifecycle or deletion receipts and readback at expiry; if unavailable, retain the gap and accepted follow-through owner instead of claiming completion. Encrypted storage alone is not erasure; cryptographic erasure may be claimed only when explicitly accepted and actual exclusive key destruction, all relevant key copies and recoverability limits are evidenced.

Apply [restore/recovery](../domain-review/references/restore-recovery.md) under separate authorized execution. In an owned isolated fixture, restore an affected pre-deletion backup with external sends/jobs contained, load the current suppression/hold decisions and reconcile before enabling consumers. Prove deleted data cannot be read, exported, searched or recreated by replay/backfill; prove legitimately retained/unaffected data remains usable. Exercise unavailable/stale suppression data as a blocking failure, not a fail-open restore. Bind proof to actual backup, application/config, suppression revision and restore identities. A simulated restore plan, backup-success receipt or tombstone file is not restore-time proof.

Do not remove the suppression record or its needed identity mapping before the last relevant recoverable/replayable copy has expired or been reconciled under the accepted policy. Verify that expiry or retirement actually happened. This skill creates no automatic expiry timer, future wake, restore hook or processor follow-up; each mechanism must actually exist, with an accountable operational owner and evidence.

### 7. Verify each store and communicate only the truthful result

Collect store-specific evidence rather than one global success label:

| Surface | Required actual observation |
| --- | --- |
| Active/derived stores and replicas | Scoped post-action state, appropriate consistency/lag window, mechanism used and independent consumer read where assigned; necessary unaffected/other-tenant controls. |
| Caches/search | Invalidation/expiry receipts and authorized application/query readback after relevant propagation; absence at the primary store alone is insufficient. |
| Queues/replay/backfill | Payload handling, suppression/reconciliation and bounded replay proof showing no unauthorized resurrection or duplicated effects. |
| Exports/temporary copies | Authorized receiver scope, actual restricted retrieval/expiry/revocation and cleanup observations; disclose unmanaged or already delivered copies and ownership limits. |
| Logs/audit/held records | Actual minimized/redacted/restricted retained scope, permitted purpose, authority, retention/hold decision and expiry/review evidence; do not call retained identifiable records erased. |
| Backups/archives | Per-generation expiry/readback or explicitly pending restricted retention, plus actual isolated restore suppression proof and remaining retention owner. |
| External processors | Authentic scoped operation/confirmation and available verification, exact retained scope/limits; a sent request or contractual promise is not observed erasure. |

Bind observations to case reference without personal selectors, store/candidate/config identities, operator/authority, query or operation method, event/observation times, bounded counts, consistency window and sanitized receipts. Record whether proof was static inspection, a synthetic workflow exercise or an actual authorized store observation. Protect evidence locators with actual retrieval/ACL/retention controls; keep minimal audit metadata under its own accepted retention purpose, not a shadow personal-data archive.

Compare every original access/export/delete criterion and every actual store row against observed results. Explicitly distinguish completed scope, retained/held scope and reason, pending expiry/processor/partial work, unknowns and their owners. A workflow can finish its authorized investigation while erasure remains incomplete. Do not describe partial deletion, soft delete, unreachable data, pending backup expiry, de-identification of uncertain reversibility or a sent processor request as full erasure.

Only the authorized case/communication owner may approve and send a truthful response through the authenticated channel. State actual scope, exclusions/retention grounds as authorized by that owner, completed versus pending work, limits and required next decision. Do not expose other subjects or sensitive internal controls. A draft response is not delivery; delivery is not acceptance. No automatic customer contact is implied.

## Reports and completion

Use the configured dispatch response template and the accepted plan's existing role/report binding; the coordinator alone promotes canonical reports. [Spec-writer](../../agents/spec-writer.md) designs through `spec.md` (`PASS`/`BLOCKED`); [reviewer-security](../../agents/reviewer-security.md) independently reviews through `review-security.md` (`PASS`/`CHANGES`/`BLOCKED`); [checks](../../agents/checks.md) reports explicitly assigned proof through `checks.md` (`PASS`/`FAIL`/`BLOCKED`). Other assigned authorized operators retain their actual frozen role instructions and report destination. No new privacy agent, report alias, schema or permission is created.

Include authenticated scope and minimal verification metadata; operation-specific criteria; actual source/derived/processor/backup inventory; policy/hold conflicts and authentic owner decisions; authorized plan and per-store receipts/results; export receiver/delivery evidence where applicable; bounded partial-failure/retry reconciliation; restore/expiry proof and remaining owners; communication actually sent or explicitly not sent; cleanup and evidence-retention limits. Keep original finding/criterion identifiers and completed attempts immutable; changed implementation or missing closure proof requires the appropriate fresh authorized work and independent re-review.

PASS is confined to the actual assigned stage and acceptance. A design PASS does not prove identity, erasure, export delivery or legal compliance. A security defect yields CHANGES from reviewer-security; required missing proof is BLOCKED, not PASS. A checks failure is FAIL. Authorized owner acceptance of a bounded retention outcome must match the accepted criteria and cannot waive mandatory controls or relabel an unmet deletion criterion as complete.

## Bounded acceptance exercise

When explicitly assigned, use only a wholly synthetic subject/tenant dataset in an owned external fixture, with primary/derived data and the actual supported cache/search/queue/backup mechanisms. Exercise valid authorized access/export/delete, wrong-subject/cross-tenant/revoked authority rejection, mixed ownership redaction and authenticated export retrieval. Interrupt a bounded deletion after one store succeeds, lose an operation response, reconcile before retry and prove no duplicate effect or false global completion. Include a genuine policy-hold conflict requiring the named decision owner, pending backup expiry without a premature erasure claim, and an isolated pre-deletion restore/replay that fails closed without current suppression. Observe actual expiry/removal if the fixture supports it; otherwise report that criterion BLOCKED. Confirm no identity secrets or real personal data enter evidence and no unassigned customer contact/request occurs. Record real outcomes, not assumed behavior; the fixture proves its workflow boundaries, not completion for any real person.