---
name: publication-intent-receipt
description: Reconcile an existing canonical pre-effect publication intent with exact bytes, target, actor and current authority, actual remote effect/readback receipts and safe recovery without fabricating factory maintenance events.
---

# Publication intent and receipt

## Role

Review or hand off one exact external publication/change using the existing intent-before-effect and actual-receipt-after-effect owners. This is an agent procedure, not a publisher, transaction system, new journal, operation schema or authorization grant. [Release](../release/SKILL.md) owns artifact publication versus deployment; [upstream sync](../upstream-sync/SKILL.md) owns imported-source updates; [small PR planning](../small-pr-planning/SKILL.md) owns bounded independently usable changes.

Follow the [worker contract](../../agents/WORKER_CONTRACT.md), [event](../../state/event-contract.md), [candidate evidence](../../state/candidate-contract.md), [configuration](../../state/config-contract.md) and [environment](../../state/environment-contract.md) contracts. The coordinator alone owns factory intent/receipt events and shared records. Direct no-write requests return chat without jobs/files. A dispatch writes only its assigned owned Markdown report; native effects belong to a separately authorized existing operator/tool.

## Context

First identify the actual operating mode:

- **Existing factory job:** use that job's authentic current identities, passing required gate, coordinator-owned `publication_intent` before effect and `publication_receipt` supported by actual remote observations. Do not invent job IDs, events or task lifecycle from a maintenance note.
- **Explicitly authorized maintenance outside a factory job:** use its actual already approved change/publication journal and authentic operator authorization. Identify its real owner, immutable pre-effect record and receipt route. Do not retrofit factory events or claim a nonexistent factory gate passed. If a required canonical journal or applicable authority is absent, block the effect and name the missing real owner/process.
- **Verify existing effect:** inspect real historical intent, authority and remote receipts/state. Current permission is not retroactive permission; no new submission or past intent is manufactured.

Obtain exact publication kind and endpoint: PR/branch, immutable package/image, document or other accepted change; deployment/apply/rollback is separately scoped through release. Freeze exact source commit/candidate, build inputs/outputs and artifact identity where relevant, reviewed bytes/version, account/namespace/resource/path/base/head and intended recipient/channel. Local directory hashes, source commits, package archive integrity and OCI manifest digests are not interchangeable.

Obtain actual actor/principal, current accepted policy and authentic action-specific grant, restrictions/expiry, target/environment observation and freshness, approved native tool/version/contract, sole resource owner, native conditional/idempotent/fencing and lookup capabilities, expected before-state and readback predicate. Accept finite operation attempts, requests/pages, bytes, observation/consistency window, duration and cost where required; preserve prior attempts. Separate publish, merge, deployment, overwrite, alias movement, deletion and notifications.

## Task

### 1. Audit the existing canonical pre-effect intent

1. Verify the authentic pre-effect record and writer under the selected operating mode. Link original source/request, exact action, bytes/version, actor, authority, target, native operation/idempotency scope, expected prior state, recovery/fence owner and accepted bounds through existing indexed attachments. Do not add unsupported fields to canonical schemas; report-local detail is not a new contract.
2. For factory publication, require current candidate/policy/environment, complete applicable checks/reviews/approval and passing gate before the effect. Readiness does not depend on its own future receipt; intent and actual readback follow readiness plus separate authority. Maintenance must meet its authentic applicable requirements, not invented factory events.
3. Compare current bytes and target/principal/authority to the reviewed intent immediately before handoff. If source/head/base, build bytes, policy/grant, endpoint/account/version, actor or native settings drifted, invalidate affected proof and stop. A generic publish flag, credential, review verdict or old grant cannot fill missing action authority.
4. Resolve the exact destination's before-state. For create-only publication, authoritative absence plus supported exclusive/conditional creation is needed. Existing matching immutable content may be verified without a write under the accepted assignment; conflicting content blocks overwrite. A mutable alias cannot stand in for an immutable version.
5. Confirm sole ownership and native fence/CAS/idempotency or documented proven create-if-absent semantics. A Markdown reservation supplies no lock or exactly-once guarantee. If no safe supported mechanism exists, block the dependent effect instead of adding a wrapper or retry loop.

### 2. Hand off once, retaining actual native evidence

The authorized existing operator uses only the accepted exact bytes and supported native operation after the canonical intent is durable and read back. Preserve actual sanitized request parameters, UTC interval, native response/request/operation ID when exposed and original target/version. Do not fabricate absent native IDs or convert asynchronous acceptance into completed publication.

The operator then obtains independent authenticated remote readback: exact repository/PR/head/base and status, stored document bytes/version, or registry package/manifest/blob identity and required provenance as appropriate under release. Compare actual remote bytes and relationships to the accepted expected artifact with real supported hash/integrity tools; local echoes, upload progress, CI success or command exit alone do not prove effect.

Return immutable native receipts to the real canonical owner for the existing receipt route. Distinguish newly submitted and verified, existing matching object verified with no new write, accepted/pending, failed with proven no effect, conflicting effect and unknown outcome. These are observed descriptions, not new factory state/event types. Queue admission is not merge; published is not deployed or healthy.

### 3. Reconcile each interruption boundary

| Durable/native evidence | Safe required action before another effect |
| --- | --- |
| Prepared proposal, no intent | No publication authorized from preparation alone; inspect unexpected effects if any. |
| Intent exists, call receipt absent | Query actual native operation/resource by exact accepted identity. Absence of local receipt does not prove no call. |
| Timeout/error or accepted/pending | Preserve original identity; retain/fence ownership and observe native operation/readback within accepted limits. Never blind replay. |
| Matching remote object, submission receipt lost | Recover genuine original receipt if available; report verified-existing/current effect truthfully. Missing required submission proof remains BLOCKED, never fabricated. |
| Conflicting bytes/version/head/target | Hold further writes and route to actual publication/security owner. No overwrite, new version or force push as compensation. |
| Native receipt exists, canonical receipt missing | Recover and validate original receipt, then let the real canonical owner record it once. Do not repeat effect to regenerate evidence. |
| Native state unavailable or old writer possibly live | BLOCKED with exact unresolved operation/owner. Require supported stop/fence and state reconciliation before retry/transfer. |

Only genuine proof of no effect or a reconciled exact existing object, stopped/fenced prior writer, still-valid scope/authority and remaining accepted budget permits a later supported attempt. Preserve the original idempotency scope where required by its native contract; a fresh request label does not erase an ambiguous old operation.

### 4. Retain and recover without automatic compensation

No automatic delete/unpublish, tag movement, PR closure, reset or rollback repairs an uncertain publication. Each needs its own exact grant, actual native operation and readback. Preserve actual historical records and failed attempts; corrections use the existing authentic correction route, not overwritten history. Cleanup only separately authorized task-owned scratch after evidence retrieval/retention, terminal operation disposition and stopped writers are proven. A reverted source commit cannot undo remote disclosure or deployment.

## Constraints

No commands, Git/provider/native calls, credential discovery, actual publication, new journal/schema/gate/runtime or fabricated factory events. Preserve all mandatory job requirements and actual maintenance requirements without conflating the modes. Passing paper review is not native enforcement, an action grant, remote effect or receipt. No job/action completion while a required remote effect, native receipt or owner remains unresolved.

## Format

Use the [response template](../../templates/response-template.md) or no-write chat with operating mode and real canonical owner/journal; exact source/candidate/policy/environment/target/bytes/version/actor; authentic current authority; pre-effect intent durability; before-state/control/ownership; actual submission versus NOT RUN; remote readback comparison; real receipt linkage and retrieval/ACL/retention; failure/ambiguity and exact recovery owner. Cover every criterion/finding with expected predicate, actual source/evidence and MET/NOT_MET/BLOCKED. Preserve the executing role verdict. Changed identities, authority, target or native contract invalidate affected reliance.

### Parent consumer cases — illustrative, NOT RUN

- An authentic factory intent precedes a native create receipt and independent exact-version byte readback. Evidence supports only that publication and its actual remote identity, not merge/deploy authority.
- A maintenance PR was published under a genuine authorized maintenance journal. Reference that real journal/receipt; do not synthesize factory lifecycle events, a gate or a backdated intent.
- A publish call times out but exact remote content is later retrieved. Reconcile the original operation; record current verified effect and any missing submission-proof criterion separately. Do not republish merely to obtain a fresh receipt.
