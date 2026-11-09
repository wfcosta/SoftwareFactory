---
name: recoverable-evidence-store
description: Review evidence custody in an already commissioned approved native store through current ACL, whole-object hash, readback, canonical indexing, retention and actual recovery proof without creating storage infrastructure.
---

# Recoverable evidence store

## Role

Assess and hand off custody of a finite evidence set in an **already commissioned, approved native evidence store**. This procedure is not a store implementation, commissioning runbook, backup service, resolver, encryption system or new index schema. No store is chosen, created or configured merely because a policy names a location.

Follow the [worker contract](../../agents/WORKER_CONTRACT.md), [candidate evidence](../../state/candidate-contract.md), [configuration](../../state/config-contract.md) and [environment](../../state/environment-contract.md) contracts. Reuse [checkpoint coverage review](../checkpoint-coverage-review/SKILL.md), [cold resume review](../cold-resume-review/SKILL.md) only where that existing owner is available in the accepted source, and [restore recovery](../domain-review/references/restore-recovery.md) for actual usable recovery. The coordinator alone maintains the existing `job.md` evidence index; no second catalog or ledger is introduced.

Direct no-write questions return chat from authorized retained evidence, without jobs, files or native contact. A dispatch writes only its assigned owned Markdown report. Actual storage, retrieval probes, restore or ACL/retention changes require their separately authorized existing custodian/operator and actual native tools. This skill grants no access or store writes.

## Context

Obtain the existing commissioning/approval reference, store product/service and supported version/contract, exact endpoint/account/resource/location, accountable custodian, allowed evidence classes, approved region/residency, actual retention/backup/recovery arrangement and documented authenticated resolver. If not commissioned/approved, block dependent custody and name the real store owner; do not provision a substitute or use an arbitrary private link.

Freeze the accepted evidence inventory: source/job/task/dispatch/event origin, exact immutable object/version or locally protected file identity, complete expected bytes and independently trusted raw digest, capture time, classification, readers/writers, required retention deadline and recovery window/objectives. Digests adjacent to mutable content are not independent trust anchors. Record current policy/candidate/environment identities where applicable.

Accept finite bounds for items, per-item/aggregate bytes, versions, index/reference depth, retrieval pages/requests, elapsed time, cost where required, freshness, recovery duration/loss objectives and allowed destination scope. Obtain current ACL/retention/key-reference receipts and existing reader/hash/restore capabilities. No key or credential values enter evidence. Missing accepted objectives block recovery claims rather than inviting invented defaults.

## Task

### 1. Establish usable current custody

Use report-local rows for all accepted items, including failures and missing entries:

| Evidence / origin / exact object version | Trusted whole-object bytes/digest and provenance | Current readers/writers and ACL receipt | Retention/hold/control/owner and deadline | Actual write/readback/retrieval/index proof | Recovery dependencies/actual result | MET / NOT_MET / BLOCKED; next owner |
| --- | --- | --- | --- | --- | --- | --- |

1. Match the real store identity, account/resource and allowed classes to approved policy and commissioning evidence. Region null is only proven nonregional under the existing environment contract, never unknown. Historical approval does not prove current settings or access.
2. Inspect current native ACL and effective intended-reader access, including groups/service identities, inheritance/public or signed access, privileged writers and revocation/expiry. A successful administrator read does not prove the intended reviewer can retrieve the evidence; a folder name does not exclude that administrator from alteration.
3. Confirm actual immutable-version/conditional-write or exclusive-fencing controls and the independently trusted prior snapshot/digest. Markdown does not provide atomicity, writer exclusion or WORM behavior. Where custody is manual, record the actual protected location, responsible person, backup and retrieval/deletion process without claiming native TTL enforcement.
4. Confirm retention through the accepted gate/audit/release/recovery period, real hold applicability and key/reader availability. Storage success or a retention_days declaration does not prove durable access. Required unavailable ACL/retention proof blocks reliance before upload or acceptance.

### 2. Preserve the exact whole object and canonical index

For separately authorized storage, hand the existing custodian the exact approved evidence bytes, original identities, owned destination/version, allowed effect and authentic authority. Require native write response and exact stored-version readback before acceptance. Do not overwrite an existing accepted item, normalize newlines, reserialize source YAML or replace a raw record with a summary while claiming identical evidence.

Require full raw-object retrieval and whole-object hash/size comparison against the independent frozen expected identity using actual approved tools. A prefix, preview, multipart identifier, metadata-only checksum or hash of an index is not a whole-object content comparison unless the native contract explicitly establishes the same full-byte algorithm and scope. Encrypted/compressed containers need exact retained-byte identity and genuine reader/dependency proof for the required contents.

Return immutable receipts to the coordinator for the existing `job.md` index: exact noncredential locator and object/version; raw digest; source/job/task/dispatch/event; capture and retrieval time/result/method; classification; authorized readers/writers; ACL and retention control receipts; owner/deadline; recovery dependencies. Keep receipts outside their own hash inputs. Coordinator index readback must resolve to the actual accepted object; an index entry alone is not evidence retrieval.

### 3. Prove recovery separately from ordinary readback

1. Bind the actual failure scenario and accepted recovery objective: lost local report, unavailable normal path, object corruption or store/account loss as applicable. Identify retained independent copies/versions, keys by reference, native resolver/reader versions, full dependencies and exact safe recovery destination.
2. Review already retained actual recovery receipts first. Backup-success labels, replicated bytes and matching hashes do not prove a usable restore or ability to recover a canonical index.
3. When separately assigned, the existing operator uses the commissioned store's supported retrieval/restore mechanism to an approved isolated owned destination, with no production cutover or live task resumption. Require real enforced containment, least-privilege identity, capacity/limits and stopped/fenced conflicting owners. Missing facility blocks the exercise; do not implement a backend or download tooling.
4. Require full restored-object raw hash/size comparison to trusted original, parsing/semantic readability using existing approved readers, complete evidence-origin/index resolution and intended-reviewer access. For a multi-object checkpoint, consistency and domain coverage remain separate obligations under checkpoint coverage review. Measure actual recovery interval/loss against the accepted objective rather than reporting provider completion alone.
5. Reapply current retention/hold/deletion/access obligations before making restored evidence available. A restored index cannot authorize stale tasks or resurrect revoked evidence. Capture independent consumer/readback receipts and any missing scope; cleanup is separately authorized after retrieval/retention is secured.

### 4. Reconcile missing, stale or ambiguous custody

A write timeout may have succeeded. Preserve object/operation identity, fence the old writer and query actual native state before retry; recover the original version/receipt rather than creating unexplained duplicates. A conflicting digest, unauthorized writer, expired/revoked access, missing object, mutable substitution or unreadable recovery invalidates affected reliance and stays NOT_MET/BLOCKED as appropriate. Preserve old accepted records and failure receipts; never silently replace the object and its expected hash together.

If required evidence cannot be recovered, name the exact source recollection/reverification owner and affected gates/decisions. Recollection produces new evidence with honest origin/time and invalidation, not a fabricated historical receipt. Restore of code alone cannot recover missing remote operations, signatures or decision authority. Do not weaken retention/ACL or move evidence to a new unapproved service to finish.

## Constraints

No new storage backend, schema, canonical index, cron/expiry mechanism, resolver, runtime, key management, native calls, commands or private-data discovery. Evidence locality, hash equality and an accessible link are not authenticity, complete coverage, durability or recovery guarantees. Native capabilities are supplied by the already approved store and actual operator, not by this Markdown.

## Format

Use the [response template](../../templates/response-template.md) or no-write chat. Return commissioning/approval and exact store identity; complete finite inventory/control rows; source and trusted digest provenance; current ACL/retention/readback/intended-reader retrieval; existing canonical index references; actual versus NOT RUN recovery and consumer proof; measurement/objective gaps; ambiguity/residual ownership and exact next owner/action. Cover every criterion with MET/NOT_MET/BLOCKED and preserve the existing role verdict. Store/version, bytes, ACL/principal, retention/hold, key/reader, index or objective changes invalidate affected reliance.

### Parent consumer cases — illustrative, NOT RUN

- A commissioned store has exact-version readback and whole-object hash equality, but the intended reviewer is denied. Byte custody can be evidenced; required reviewer retrieval and dependent acceptance remain BLOCKED.
- A policy names a store without commissioning/current ACL receipts. Complete the missing-prerequisite map; do not create a bucket, local replacement service or fake durable-store claim.
- A supplied isolated recovery receipt restores the full accepted object and index with matching bytes and usable reader access within the accepted objective. Support only that scenario; a backup-success badge alone supports no recovery claim. A stale/replaced object must not be repaired by repinning it silently.
