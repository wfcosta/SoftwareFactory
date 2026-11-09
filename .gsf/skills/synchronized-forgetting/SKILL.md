---
name: synchronized-forgetting
description: Plan or review a source-bound forgetting request across an explicitly approved dependency closure of facts, indexes, caches and derived copies, requiring native owner receipts and reporting retention, legal-hold and unknown-consumer limits.
---

# Synchronized forgetting

## Role

Act as a scoped forgetting coordinator's reviewer or, only with a separate exact assignment and grant, the authorized owner of a named local/native change. Coordinate invalidation or erasure of a specific approved fact/source lineage without claiming a universal delete or technical enforcement. This is a usable bounded manual procedure, not a deletion daemon, memory service, index connector or new authority ledger.

[Project-memory](../project-memory/SKILL.md) owns curated facts; [semantic-retrieval-handoff](../semantic-retrieval-handoff/SKILL.md) owns source/ACL-bound retrieval; [context-packet](../context-packet/SKILL.md) owns dispatch context; [cold-resume-review](../cold-resume-review/SKILL.md) and the [worker contract](../../agents/WORKER_CONTRACT.md) own frozen history, ownership and actual continuation. The existing [evidence custody and retention procedure](../../docs/operations/README.md#retain-extend-and-dispose) owns evidence disposal, retention and holds. Do not alter their canonical contracts, fabricate events or introduce a global deletion registry.

Direct read-only questions return a plan/findings without jobs, persistent records or native effects. A dispatched reviewer writes only the owned report using the [response template](../../templates/response-template.md). The coordinator alone accepts findings and invalidates/rebinds canonical dependencies; actual source/store administrators retain their native authority.

## Context

Freeze an authentic request with:

- Exact approved project/repository/tenant, subject or fact/source object identity, revision/version/generation and reason: factual correction, access revocation, expiry, withdrawal or authorized erasure. Use approved non-secret identifiers; do not reproduce the sensitive fact, private transcript or low-entropy secret hash merely to identify it.
- Exact requested outcome per layer: stop reliance, remove from active retrieval, withdraw a curated claim, invalidate/rebuild a derivative, revoke named access, delete exact object versions or erase through a documented native route. These are distinct predicates. Removing a memory fact does not authorize destruction of its primary source; deleting a source does not prove cache/index/backup erasure.
- Authentic issuer and explicit grants per owner/target/action, validity/expiry, approved readers/report classification, source/current ACL evidence and policy/retention/legal-hold decisions from their real custodians. A source-read grant, credential, generic cleanup request or instruction file cannot grant deletion or override a hold.
- An **explicitly approved finite dependency closure**: exact source and known fact entries, index collections/chunks/vector generations, query/result caches, summaries/context packets/checkpoints, exports/offloaded artifacts and other retained derivatives/copies; each with native identity/version, owner, location, parent/derivation relation, current consumers/writers, allowed operation and proof route. Include backups/replicas/provider logs when known, but never discover them through a global scan.
- The accepted inventory's origin/completeness claim and its limits, known unknown consumers, unavailable owners or access, native documentation/interface/build and actual grantable operation semantics, bounded node/version/request/byte/time/attempt allowance, observation window and receipt/retention destination. An empty dependency list is unknown coverage, not proof there are no copies.

Use named approved public/sanitized metadata, existing custody indexes and owner-supplied lineage only. Do not scan HOME, private jobs/chats/history, credentials or unrelated stores. If the request requires further discovery, its exact scope and authority must be separately approved before expansion; report the unenumerated boundary meanwhile.

## Task

### 1. Separate the intended outcome from permitted effects

1. Confirm exact object/subject/project selection and approved closure before any change. Record aliases or derived identifiers only from accepted provenance, not fuzzy text similarity, filename resemblance or guessed embedding neighbors. Same text/hash alone does not establish the same owner, object or disclosure authority.
2. For each closure row determine requested predicate, current evidence, retention deadline/hold, actual owner, grant and native capability. Read the exact native documentation for that existing deployment/version and its deletion/invalidation/consistency semantics. This procedure claims no vendor-specific delete API, secure erase, TTL or cross-service synchronization.
3. Ask the real retention/legal custodian to decide conflicts through an authentic accepted decision. A hold can prohibit erasure while an independently authorized withdrawal from retrieval/use is possible. Never choose deletion over retention, silently extend retention or erase evidence needed for recovery/audit. Record restricted residues and permitted retention with dates/owner, not the sensitive contents.
4. Missing authority, native identity, owner, hold decision, required fencing or receipt route blocks that effect. Finish the complete scoped plan/findings and independently authorized unaffected withdrawal work; do not turn a partial outcome into “forgotten everywhere.”

### 2. Close the dependency and concurrency boundary

1. Compare the accepted closure to existing approved provenance/custody links in both directions: what produced this fact and what accepted consumers derived from it. Account for every approved row and each referenced but unapproved/unknown consumer. Do not follow that reference into new scope; identify its responsible owner and the exact additional inventory/authority needed.
2. Establish actual current owners/writers, ingestion/replication jobs and live context consumers. For separately assigned effects, the owning native operator must stop/fence or otherwise use an actual documented operation boundary preventing stale ingestion, cache refill and concurrent conflicting writes. A cancellation request, missing heartbeat, deleted local file or ended conversation is not fencing proof.
3. Record the planned order and expected boundary: first separately authorized exclusion/withdrawal from new reliance or ingestion; then owned source/curated-fact disposition; then index/cache/derived-copy invalidation or erasure; finally full-closure reconciliation. Exact ordering can differ under authentic retention/native constraints, but it must prevent known reintroduction and preserve required recovery/audit evidence. No global pause/delete is implied.
4. Active dispatches and accepted immutable reports need existing coordinator handling, not worker-side rewriting. Invalidate dependent reliance and stop affected continuation under the worker contract; preserve originals unless their custodians separately authorize disposal after retention/hold resolution. A stale summary must not quietly reintroduce a withdrawn fact during resume or restore.

### 3. Specify and, only if assigned, obtain native effects

For every exact layer define an independently observable expected predicate before action:

| Layer | Bounded expected predicate and important limit |
| --- | --- |
| Primary source / curated project fact | The exact authorized object/version or fact entry is withdrawn, corrected or deleted as granted; retained primary records remain listed if erasure is not authorized |
| Semantic index / embeddings | Exact source lineage/chunk/vector generation is excluded or deleted through the approved native operation, with documented completion/consistency evidence; dropping a local reference or one sample query is not index erasure |
| Result/application caches | Exact keys/generations are invalidated or expire under established native behavior and cannot be refilled from the withdrawn lineage within the accepted boundary; an empty current lookup is not proof all caches are erased |
| Packets / summaries / memory derivatives | Named dependent consumers stop relying on the fact; authorized owners replace/reissue active material under existing lifecycle rules, or report retained immutable originals and restricted access; no rewriting completed history by assertion |
| Exports / artifacts / replicas / backups | Each approved exact copy/version has its own authorized disposal/restriction/expiry predicate, native owner and actual receipt; backup retention and future restore filtering remain explicit constraints |
| Provider-retained or already disclosed data | Existing contractual/native deletion route, actual request/completion receipt and stated retention limits are recorded if authorized and available; no claim that a local delete removes remote logs, model weights, private recollection or every recipient's copy |

1. A reviewer returns these exact proposed operations to their owners without invoking them. An explicitly assigned executor uses only the actual advertised native operation, matching exact target/current identity, scoped grant and accepted limits immediately before effect. No new backend, recursive wildcard cleanup, global cache clear or credential escalation.
2. Preserve actual native request/operation IDs, target/version/generation, timestamps, acknowledgment versus completion, failures and allowed readback receipts. Use the existing assigned evidence/index and coordinator records, not a parallel journal. Do not fabricate provider fields, deletion certificates or audit events.
3. A timeout or lost receipt is an ambiguous possible effect. Hold overlapping retry and reconcile through separately authorized exact-operation/target native reads. Idempotency or repeated delete safety must be established by that native contract and accepted authority, not assumed. Missing reconciliation capability remains blocked.
4. Observe completion only within accepted finite time/requests and actual documented consistency windows. Beyond that boundary report pending/unknown outcome descriptively, not a new lifecycle state, promised automatic retry or unbounded polling. Actual receipt/readback claims require exercised observations.

### 4. Reconcile all consumers and retention limits

1. Compare every closure row's before predicate, exact authorized action, actual receipt and after predicate. Preserve denied, held, failed, ambiguous and NOT RUN rows. A deletion acknowledgment is not physical erasure; nonretrievability for one reader/query is not all-copy erasure; TTL configuration is not evidence expiry occurred.
2. Have each named receiving owner confirm invalidation/replacement or restriction under the actual native interface and current identity. Unknown/unreachable consumers remain explicit unresolved lineage and block any claim requiring whole-closure completion. Do not delete unrelated copies while trying to compensate.
3. Address reinsertion: exact source revision/access filters, stopped/fenced writers, refresh/reindex/cache generations, stale saved packets and authorized backup-restore owners must preserve withdrawal under their actual controls. If prevention or restore-time filtering is unavailable, state the precise reappearance risk and owner; Markdown cannot enforce it.
4. Retain only minimal permitted audit metadata and receipt locators under its own classification/retention/hold rules. Do not preserve a new copy of the removed content in the forgetting report. If even identifiers are sensitive, use an approved restricted reference rather than public hashes/text.
5. Report completion narrowly: the approved finite closure can meet its exact withdrawal/deletion predicates with receipts while known lawful retained backups or out-of-scope remote copies remain. If the accepted request required those copies erased too, their unresolved status is BLOCKED, not an invented scope reduction. Broader discovery/erasure needs authentic extended scope, owner and native capability.

## Constraints

No blanket/global delete, private scan, source/host execution or native probe during review; no provider/model calls, new store/runtime, credential access, policy override, private-transcript copying or fabricated erasure receipt. Technical effects require actual existing tools, separate authentic grants and native evidence. Permission revocation, retrieval exclusion, logical deletion, physical erasure, retention expiry and nonuse are different outcomes. This skill guarantees none automatically.

Do not destroy canonical active data, legal-hold material, immutable accepted reports, sole recovery copies or unrelated source. A corrected fact does not reset counters, refresh approvals or excuse historical effects. Refresh affected findings after closure/source/version/ACL/owner/hold/native capability changes; preserve actual historical receipts and use existing reconciliation.

## Format

Return exact request/project/subject-safe identity and authentic authority; approved closure provenance/bounds and unknown consumers; per-layer native capability/version/expected predicate; concurrency/fencing and ordering; retention/hold decisions and actual versus NOT RUN effects. Include:

| Exact approved object/version or restricted locator; lineage | Owner/grant and requested predicate | Native receipt plus actual after-evidence, or NOT RUN/unknown | MET / NOT_MET / BLOCKED; retained residue/hold, recovery and next owner/action |
| --- | --- | --- | --- |

State review completion, active-use withdrawal, per-object deletion, whole-approved-closure reconciliation and broader erasure limits separately. Include audit custody/retention, restore/reinsertion risk, invalidation and exact modified files. Never state “all copies gone” when unknown consumers, unverified providers, backups or legal holds remain.

### Manual consumer cases — illustrative, NOT RUN

- A revoked source fact has a curated entry, vector chunk, cached result and active packet. The approved closure names all four and their owners; hold new reliance, obtain each authorized native disposition and receiver receipt, then reconcile all rows. Deleting the curated entry alone is not synchronized completion.
- An immutable artifact is under legal hold while its active index entry may be withdrawn. Record the authentic hold decision, restricted retained artifact and separate withdrawal result; no erasure claim or hold override.
- A cache has no owner or a lineage map is empty. Mark consumer coverage unknown and whole-closure erasure blocked; do not scan private histories or clear every cache.
- A delete returns a timeout. Reconcile exact operation/resource state through an approved native read before retry; neither “failed, so retry” nor “probably deleted” is acceptable.
- All explicitly approved active copies have actual completion receipts, but provider logs/backups remain governed by retention and an out-of-scope recipient is unknown. Report bounded achieved predicates and explicit remaining erasure limits; a request requiring every remote copy stays blocked.
