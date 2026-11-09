---
name: artifact-retention-deletion
description: Reconcile an accepted artifact copy closure against real purpose, retention and hold decisions, native expiry/deletion controls and receipts, distinguishing restricted access or logical absence from physical erasure.
---

# Artifact retention and deletion

## Role

Review and route retention or deletion for an exact existing artifact and its accepted copy closure. This agent procedure is not an expiry scheduler, erasure daemon, storage backend, legal certification or destructive grant. [Privacy request](../privacy-request/SKILL.md) owns subject requests and retention/hold decisions; [pre-export redaction](../pre-export-redaction/SKILL.md) owns outward derivatives; [release](../release/SKILL.md) owns release effects; [restore recovery](../domain-review/references/restore-recovery.md) owns usable restore proof.

Follow the [worker contract](../../agents/WORKER_CONTRACT.md), [candidate evidence](../../state/candidate-contract.md), [configuration](../../state/config-contract.md) and [environment](../../state/environment-contract.md) contracts. Direct no-write requests use permitted existing evidence and return chat without jobs/files. A dispatch writes only its assigned owned Markdown report. Actual restriction, hold, expiry change or deletion belongs to a separately authorized operator using the already existing native store/control; this procedure creates no timer or automatic future follow-up.

## Context

Obtain the authentic accepted purpose and request, artifact/source/build/version identity and byte digest where observed, classification, recipients, real data/distribution/evidence owners and retention/legal decision owner. Separate authority to inspect, retain, export, restrict, delete and confirm to recipients. Credential possession or an old upload approval grants none of the later effects.

Freeze an owner-accepted finite copy closure and coverage boundary, including origin, staged/generated derivatives, published versions/aliases, downloads/recipient copies, caches/indexes/replicas, logs/telemetry, checkpoints/backups and processor copies where applicable. Record lineage and actual selectors/object generations. Do not scan private histories or claim every copy is known from a local pathname. Unknown downstream copies remain visible gaps; closing only the source does not close the artifact.

Accept finite limits for stores/copies/generations, lineage depth, pages, objects, retained evidence bytes, observation/consistency windows, duration, retries and cost when relevant. Obtain existing native store/version contracts, ACL and retention/expiry/immutability/hold settings, current native receipts, authentic grants and a named reconciliation/recovery owner. Missing obligatory inventory, decision, capability or bounds blocks dependent effects.

## Task

### 1. Decide each copy's permitted disposition

Use report-local rows, preserving every accepted copy and original criterion:

| Copy / store / exact object generation / lineage | Purpose and classification | Authentic retention/hold decision, owner, start and deadline/review | Current ACL + native expiry/delete/hold control | Expected disposition and proof | Actual receipt/readback and remaining scope | MET / NOT_MET / BLOCKED; owner/action |
| --- | --- | --- | --- | --- | --- | --- |

1. Obtain the actual purpose, retention start event, duration/deadline or review boundary and applicable hold/legal decision per row. Do not invent legal periods, infer a hold from immutable storage, or release a hold because a user requested deletion.
2. Distinguish retain for a valid purpose, restrict under hold, eligible for native expiry, eligible for explicit deletion, and unknown/conflicting decision. A hold restricts use to its permitted purpose; it is not authorization for ordinary processing or indefinite unexplained retention. Conflicts go to the authentic privacy/legal/evidence owner.
3. Prove retention through the accepted evidence/release/recovery window before depending on an item. Record who maintains access, keys/readers and recovery dependencies. A configuration declaration or future expiry date is not proof that bytes will remain retrievable.
4. Preserve the accepted minimal nonsecret audit/deletion proof under its own purpose/retention decision. Do not retain the sensitive payload or a new secret-derived hash merely to prove it was deleted. Do not delete required evidence without an authorized replacement custody/decision.

### 2. Establish what the native control actually does

1. Read the existing store's exact object/version, delete, soft-delete/recycle, lifecycle expiry, replication, snapshot, hold/immutability and consistency contracts. Bind settings to the actual account/resource/generation and current principal. No universal delete API, immediate propagation or physical-media promise is assumed.
2. Distinguish requested/configured expiry, eligibility, execution scheduled by the native platform, operation accepted, logically absent/current-version hidden, tombstoned, retained generation, and provider-supported erasure outcome. Record actual times and supported observation scope separately.
3. Determine what survives: older versions, replica lag, signed links, delivered downloads, cache entries, logs, backups and restore paths. Link revocation restricts retrieval; it does not retract already downloaded copies. An authenticated absence result must distinguish forbidden/unavailable lookup from genuinely absent scope where the provider permits that distinction.
4. For a manual retention arrangement, name the actual responsible owner, protected approved location, backup/retrieval process and real review/deletion procedure. Mark it manual; never claim a native TTL or guaranteed wake exists.

### 3. Hand off only authorized eligible effects

Before a native effect, the existing operator needs exact eligible objects/generations, current identity and matching destructive/change grant, hold readback, no conflicting live owner, supported conditional/idempotent or fenced operation, finite batch/time/consistency allowance, abort conditions and original intent/receipt route. Factory effects use existing coordinator `publication_intent`/`publication_receipt`; authorized maintenance uses its actual approved journal. Do not manufacture factory events for maintenance.

The operator preserves native request/operation receipts, then reads back the accepted exact object/version/ACL/hold state and relevant replicas under the provider's documented consistency rules. An asynchronous accepted operation remains pending until its required predicate is observed. A lifecycle rule being saved is only configuration evidence, not a deletion receipt. If native physical-erasure evidence is unavailable, report the logical outcome and physical erasure UNKNOWN; do not certify erasure.

### 4. Reconcile failures and prevent resurrection

- If an operation times out or its receipt is lost, preserve original identity, fence/stop its owner and inspect native operation and generation state before a repeat. Unknown effect stays BLOCKED; never sweep adjacent objects or delete every version to compensate.
- If hold/ACL/target drift, unexpected dependent copies, over-budget work or failed readback appears, stop affected work and route to the real owner. Preserve independently completed rows and actual failures. Expiry alone is not authority to override a legal hold.
- Retained backups require the real approved restore-time restriction/deletion reconciliation before restored data becomes available. Record actual tombstone/suppression mechanism and its owner through the last relevant restore/replay window; a Markdown row does not implement it.
- Deletion may be irreversible. Do not promise rollback or restore a validly deleted copy as automatic recovery. A separately authorized restore must reconcile holds/deletion obligations and use genuine native/application readback; code rollback cannot undo disclosure or recreate erased data safely.

## Constraints

No native calls, commands, collection, host enablement, retention changes, deletion, notifications or new backend under this review. Logical absence, inaccessible URL, expired link, soft delete, backup expiry and physical erasure are different claims. Neither a digest nor an empty listing proves complete closure. A complete review can report outstanding/unknown copies; it cannot label the requested complete deletion fulfilled while required rows remain unresolved.

## Format

Return the [response template](../../templates/response-template.md) or no-write chat with accepted copy closure and exclusions; artifact/lineage identities; purpose/retention/hold decisions and authentic owners; full per-copy control/outcome rows; actual configuration versus execution/readback; copies and dependencies still retained; physical-erasure qualification; ambiguous operations and residual ownership; next owner/action; actual retrieval/ACL/retention for minimal receipts. Cover every original criterion with MET/NOT_MET/BLOCKED and preserve the executing role's verdict. Changed copy set, purpose/hold/grant, store contract/settings, object generation, audience or observation expiry invalidates affected proof.

### Parent consumer cases — illustrative, NOT RUN

- A supplied native expiry rule is active but the object still exists. Accept only configured-expiry evidence; required deletion remains pending/BLOCKED until an authentic native execution/readback receipt exists.
- A local artifact and current remote version are absent, but a named immutable backup is lawfully held. Record verified logical absence only for observed copies, restricted held backup and its release owner; reject complete physical-erasure wording.
- An approved native deletion times out and state is unknown. Hold retry, retain the original operation/generation and name the existing store operator for reconciliation; do not restore or delete other versions. A recovered receipt closes only its exact accepted copy scope.
