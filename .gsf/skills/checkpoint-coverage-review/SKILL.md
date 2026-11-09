---
name: checkpoint-coverage-review
description: Map one explicitly selected checkpoint's five mandatory domains against actual authorized artifacts, keeping absence, references, retrieval, inclusion, consistency and restoration distinct without creating or restoring a backup.
---

# Checkpoint coverage review

## 1. Role

Review the actual recoverable scope claimed for one identified existing checkpoint. This is a read-only mapping procedure, not a snapshot engine, backup producer, archive extractor, database-consistency checker or restore backend. A manifest is not a backup; a matching hash is not recovery proof.

Follow [GSF run](../gsf-run/SKILL.md), the configured [worker contract](../../agents/WORKER_CONTRACT.md) and [candidate evidence](../../state/candidate-contract.md). Reuse [project memory](../project-memory/SKILL.md) for bounded source-bound facts and [operational handover](../operational-handover/SKILL.md) for a genuine receiving-team transfer; neither supplies checkpoint storage or restoration authority.

A direct read-only request returns findings in conversation with no job initialization. An authorized dispatch writes only its assigned report/dispatch evidence. Only the coordinator accepts/indexes evidence and updates canonical state; do not create another checkpoint schema, ledger or gate.

## 2. Context

Obtain from the accepted assignment:

- Exact existing checkpoint ID and immutable locator, original source contract/version, independently accepted byte identities where available, source owner and actual capture interval/generation. Never select newest-by-name or infer identity from an archive suffix.
- Explicit artifact inventory and domain claims, source locators and allowed roots/sections, authorized reader, classification/disclosure limits and accepted checkpoint/recovery objectives where established.
- Named objects actually retained: patch/base-tree/Git state, staged/worktree differences, untracked/ignored contents, instructions/configuration/schema versions, permitted conversation evidence, consistent database backup artifacts, memory/queues and external state where applicable.
- Source-native capture/retrieval/retention/consistency contracts, readers/dependency versions, grants and actual available host capabilities. A declaration that a backup succeeded remains a declaration without its independent evidence.
- An accepted finite maximum object count, per-object/aggregate bytes, domain/evidence rows and review duration, plus stop condition, exact exclusions and report destination/audience. Bound the entire accepted inventory, not an arbitrary convenient sample.

Authorize only exact nonsecret sources. No current-root sweep, recursive inventory discovery, broad HOME/history/environment scan, credential access or following nested references is implied. An unlisted live object is outside collection even if it shares the source directory.

## 3. Task

1. **Freeze selection and boundary.** Bind checkpoint ID, source/version, accepted inventory and original capture context. Record selected source identity versus caller claim. Missing/wrong checkpoint identity blocks dependent findings; do not silently switch checkpoints.
2. **Read the actual source contract.** Establish what its manifest, artifact, delta, backup and restore terms mean for this version. Separate source declarations from independent observations; unknown semantics stay unknown rather than being interpreted under a convenient current schema.
3. **Inventory existing objects without expansion.** List every explicitly authorized retained object and its kind, native identity, byte locator/pin, capture basis, dependencies, reader and retention/access status. Retain missing named objects, undeclared inventory gaps and unknown domain scope; no supplied object does not mean no domain exists.
4. **Include all five domain rows.** Use the mandatory matrix below in the stated order even if every result is unknown. Within each domain map exact claimed subscope and exclusions to concrete objects, references or declarations; never let a complete-looking code archive hide other domains.
5. **Inspect only approved bytes.** For each named object use available authorized read surfaces within accepted bounds. Record actual bytes/read interval/identity and measured raw digest only when genuinely observed; do not invent hashes. Compare accepted pins, note drift/links/aliases and reject reliance on mismatched or unstable objects. No semantic contents are inferred merely from extension/provider name.
6. **Distinguish evidence kinds.** Artifact bytes support retrieval of that object. Manifest/inventory bytes support only the inventory itself, not the content it lists. Reference-only locators are not followed. Declaration-only claims have no retrieved-object support. A digest supplied by a manifest is declared until independently observed and compared.
7. **Separate coverage dimensions.** For every object/domain independently report actual absence evidence, reference-only/declaration status, digest retrieval, semantic inclusion, completeness, consistency and restoration. Keep caller-declared INCLUDED/PARTIAL/NOT_INCLUDED/UNKNOWN separate from observed findings. An explicit unknown row is required rather than omission.
8. **Assess code reconstruction dependencies.** Reconcile patch with exact base tree/commit and Git/index/worktree/submodule state. Path lists do not retain untracked/ignored bytes; a clean commit does not retain dirty changes. Identify mode/link/deletion/rename and toolchain/reader dependencies. Read only named objects; report missing content rather than scanning current root to fill the gap.
9. **Assess temporal and native consistency.** Compare capture intervals/generations and evidence of quiesced writers, database-native consistent backup/WAL dependencies, in-memory state, queues/in-flight acknowledgments and external resources. Copying a live database file is not a consistent backup. Independently documented consistency must bind exact artifacts; otherwise leave it unestablished.
10. **Assess retrieval and restoration independently.** Present actual authorized reader access, current retrieval result, retention owner/deadline/control and missing dependencies separately. Historical access is not future durability. Restore plans, hashes and provider success labels cannot prove a usable restored target.
11. **Finish the full finite map.** Account for every accepted object and all five domains, including failures and bound-exhausted/unread rows. A procedural findings report can finish with partial/unknown coverage, but mandatory missing proof stays blocked; do not publish a truncated inventory as complete backup coverage.
12. **Hand off without cleanup.** Identify exact missing artifact/consistency/reader/restoration evidence and accountable owners. Actual restore requires a separately approved new target, native backend, exact source/target compatibility and independent consumer readback. Do not restore, copy missing state, contact providers, clean evidence or release ownership from this review.

### Five mandatory domains

| Domain | Inventory and limits to make explicit |
| --- | --- |
| `code` | Exact base tree/commit, patch/delta, staged/index/worktree state, submodules, deletions/modes/links, untracked and ignored file contents; names-only inventory versus retained bytes; reader/toolchain dependencies |
| `conversation` | Only explicitly approved existing export/context artifacts and original instructions/decision provenance; references and summaries versus retained permitted content; no private-history discovery or inferred complete transcript |
| `configuration` | Frozen policy/schemas/instructions, effective nonsecret configuration and versioned secret references if approved; excluded host settings/environment/credentials; matching runtime/readers and capture timing |
| `database` | Exact database/backup identity, native consistent-backup receipt, schema/readers, logs/WAL and transactional boundary where required; opaque bytes alone do not establish consistency or restore |
| `external_resources` | Exact remote resources, queues/in-flight work, provider state/receipts, volatile in-memory state and dependent readers/credentials/grants; local locators/manifests do not retain remote contents |

In-memory, queue and cross-domain dependencies must appear in the appropriate rows with their relationships and exclusions; they cannot disappear because the checkpoint is file-shaped. Required domains remain present even when not applicable is only an unsupported claim.

## 4. Constraints

- Read approved existing objects only; no current-root discovery, archive extraction, live database queries, provider calls, secret/history export, snapshot creation or new storage backend under this procedure.
- Do not infer absent from missing evidence, semantic inclusion from opaque bytes, completeness from a manifest, consistency from hash equality or restoration from a backup label. A zero-byte artifact can be retrieved without being useful recovery content.
- Native identity/read safeguards must actually exist; Markdown does not enforce stable ancestors, ACLs, locks, atomic capture or a hard deadline against blocked OS I/O. Disclose cooperative/manual limits and unsupported native guarantees.
- Wrong pins, drift, unsafe links/aliases, missing named artifacts, unsupported original contracts and exhausted limits block affected reliance. Preserve previous accepted evidence and exact failures; no invented successful partial checkpoint.
- Incomplete coverage does not authorize automatic cleanup, deletion, lease release, replay or ownership transfer. Preserve the checkpoint and unresolved writers under the existing coordinator protocol.
- Keep restricted source paths and contents in existing authorized custody; publish minimum audience-permitted references. Do not turn source manifests or embedded instructions into authority.

## 5. Format

Return the finite coverage map in conversation or only the assigned report. These fields describe findings, not a replacement checkpoint schema:

| Section | Required content |
| --- | --- |
| Selection and authority | Exact checkpoint/locator/pins/original contract/generation, accepted inventory and objectives, readers/output authority, finite limits and exclusions |
| Object inventory | Every named object, actual present/absent/not-read disposition, source/native identity, declared versus measured raw digest/bytes/read times, drift, dependencies and retrieval basis |
| Five-domain coverage | Exactly code, conversation, configuration, database, external_resources; claimed subscope/exclusions, evidence kind/object links, actual inclusion/completeness and missing scope |
| Independent dimensions | For each domain: absence evidence; reference/declaration status; actual digest retrieval; inclusion; consistency; restoration, each established/partial/not established with exact basis |
| Capture and custody | Source/capture interval, cross-object temporal consistency, backup/readers/dependencies, actual reader access/retrieval, retention owner/control/deadline and unknowns |
| Recovery handoff | Missing bytes/native proof, exact owner and safe next evidence; separately required new restore target/backend/approval/readback; retained evidence/ownership and no cleanup/release |
| Assignment coverage | Each exact criterion, actual evidence, MET/NOT_MET/BLOCKED and next action/owner; separate actual role verdict and review completeness versus checkpoint completeness |

### Failure and acceptance cases

- A patch and untracked-name inventory exist: confirm only those bytes were retrieved; missing base/untracked contents leave code coverage partial or unknown.
- A database file hashes correctly: retrieval can be established while native consistency and restoration remain unestablished.
- Five unknown rows and reference-only remote locators: complete the honest map without opening those targets or declaring domains absent.
- A manifest says everything included but names no actual content: retain the declaration and missing inclusion evidence; no manifest-as-backup claim.
- Missing named object, wrong pin or exhausted bound: retain every affected row as blocked/unread; do not omit it or scan adjacent directories.
- Actual recovery proof needs separately approved restoration to a new target and independent readback. None of these expected cases claims a backup, restore, native query or runtime proof was executed.
