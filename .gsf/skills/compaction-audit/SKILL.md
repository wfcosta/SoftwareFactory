---
name: compaction-audit
description: Compare a proposed continuation summary with independently reviewed frozen obligations and complete approved original material, blocking lost criteria, blockers, ownership or decisions before any dependent continuation.
---

# Compaction audit

## Role

Act as a bounded continuity auditor before a summary is used for continuation. Audit against the approved original material and an independently reviewed frozen obligation inventory, not against the summary's own account of what mattered. This is a manual comparison procedure, not a native compactor, context-capture tool, independent reviewer substitute or resume executor.

[Context-packet](../context-packet/SKILL.md) owns dispatch context, [project-memory](../project-memory/SKILL.md) owns curated facts, [cold-resume-review](../cold-resume-review/SKILL.md) and the [worker contract](../../agents/WORKER_CONTRACT.md) own actual resume and reconciliation. Use [context and memory operations](../../docs/operations/context-memory.md), [evidence custody](../../docs/operations/README.md) and the [response template](../../templates/response-template.md). Do not introduce summary state keys, a second checkpoint ledger or a new gate.

A direct question returns findings without files or jobs. A dispatched auditor writes only the assigned owned report. Only the coordinator accepts a revised packet/checkpoint through existing lifecycle rules. Reading or accepting this audit does not start, wake or authorize workers.

## Context

Require all three distinct inputs, with approved finite locators, source/revision/pins where required, audience, custody and review authority:

1. **Frozen obligation baseline:** the exact accepted task/criteria, original policy/instruction/schema versions, role, grants and restrictions; original findings/decisions; dependencies, ownership, outstanding questions and acceptance obligations. Its completeness must be reviewed/accepted by the actual coordinator or assigned non-summary-author owner against the original accepted assignment before summary acceptance. The summary author's checklist or a checklist derived only from the shortened summary is not an independent baseline. If genuine independent review is required and unavailable, preserve that gap rather than assigning the author both roles.
2. **Complete approved original material:** the exact finite source set whose continuity is being claimed, including the original assignment and every approved amendment/decision, relevant complete evidence and action/receipt history through the accepted boundary. Obtain it from named sanitized records supplied for this purpose, not from HOME, private chat/session/history discovery. Capture the coverage boundary and intentional exclusions explicitly. A manifest or excerpt alone cannot prove the full material was inspected.
3. **Candidate continuation summary:** exact proposed bytes/version and boundary, proposed recipient/context, next action and original-to-summary references. If a host exposes only opaque native compaction, obtain an existing authorized supported inspection/readback route; absent visibility blocks claims about retained content. This procedure supplies no host command or native compaction API.

Include project/worktree/branch/job/task/dispatch and candidate/policy/environment identities when applicable, native identity/generation if actually exposed, real reader/loading capabilities and accepted finite object/byte/time limits. Direct maintenance work uses its real identity, not fabricated job IDs. Current checkout/configuration is comparison evidence, not a fallback for missing frozen originals.

## Task

### 1. Freeze the comparison before dependent action

1. Identify the original coverage boundary and proposed summary boundary. Stop dependent continuation until the comparison is accepted. If automatic compaction already occurred, do not treat the result as approved or continue from it; seek only the explicitly approved original material/recovery locators and report unavailable originals honestly.
2. Validate source selection, provenance, whole material availability and expected versions under existing custody rules. Pin originals and candidate summary separately with actual available tools where assigned; a digest identifies bytes but proves neither complete coverage nor authentic acceptance.
3. Confirm the obligation baseline was reviewed against the original assignment, not backfilled from the candidate summary. Record the genuine reviewing owner/source, exact baseline version and unresolved coverage. Missing independent original basis leaves loss detection BLOCKED, even if the summary is internally consistent.
4. Budget complete baseline and original-material reading first. Supported staged reading is acceptable with complete section accounting; unavailable/oversized original material makes affected comparison blocked, never “reviewed by sampling.” Do not summarize away the review input to fit the audit.

### 2. Compare the whole material and every frozen obligation

Use a report-local comparison matrix. For **each original criterion/finding/decision/constraint**, locate the complete original statement and corresponding continuation representation or exact read-before-action reference. Then inspect the **whole original material** for material facts missing from that inventory and bring discrepancies to the accepted baseline owner. This second pass prevents a self-consistent but incomplete checklist from certifying itself. Do not silently amend the frozen inventory or declare an omitted fact immaterial without its authentic owner's scope decision.

| Domain | Required preservation predicate |
| --- | --- |
| Acceptance and scope | Every original criterion, named finding, target/change, boundary, dependency and negative requirement remains explicit and unweakened; completed versus unmet criteria remain separate |
| Mandatory authority | Whole applicable host/system/worker/role/mode/policy/constraints/skills/grant restrictions are actually loaded or must be read from exact accepted sources before action; a summary or locator alone is not proof of complete reading |
| Blockers and uncertainty | Exact unresolved questions, failures, NOT RUN/stale/partial evidence, contradictory observations and missing prerequisites survive with next action and accountable owner; unknown is not converted into absent/resolved |
| Ownership and liveness | Current owners, exclusive paths/resources, live/unknown/stopped/fenced distinctions, dispatch identities, cancellation acknowledgments and unresolved overlaps survive; ended conversation is not a stop receipt |
| Decisions and provenance | Authentic accepted decisions retain issuer/source, version, rationale, affected criteria and restrictions; proposals, reports, inferences and untrusted content remain distinguishable from accepted decisions |
| Action/effect history | Every accepted intent, actual partial outcome, receipt gap, idempotency binding and no-replay boundary survives; matching output is not proof of no prior remote effect |
| Recovery and budgets | Frozen schemas/instructions and evidence locators, counters/remaining-budget uncertainty, grant expiry, invalidation triggers, last consumed coordinator reply and exact next eligible action survive without reset |
| Source meaning | Material qualifiers, exceptions, units, ordering, denied operations and contradictory sections remain faithful to whole original context, not only cherry-picked quotations |

A narrative summary may abbreviate explanatory duplication, not mandatory authority, exact acceptance, restrictions or unresolved risk. Critical blockers/owners/no-replay boundaries must be explicit in the continuation packet, not buried solely behind a link. Full detailed evidence may remain in an approved recoverable artifact if the summary gives exact source/revision/section/pin, actual recipient access and a mandatory read-before-reliance boundary. An unavailable source cannot carry a deferred obligation safely.

### 3. Make loss visible and repair through the proper owner

1. For each row record preserved verbatim, faithful non-authority summary, deferred exact-source read, lost, altered, contradicted or unknown; these are comparison labels, not new lifecycle states. Give original and summary locators, exact missing condition and affected next action. Use MET only with observed whole-source comparison and the accepted preservation predicate; loss is NOT_MET, missing comparison/retrieval/reader evidence is BLOCKED.
2. Hold affected continuation before tool calls, edits, dispatch, approval or external effects. An apparently harmless next step can still rely on lost ownership/authority. Preserve safe independent findings; no audit finding itself grants broader work.
3. Route a bounded correction proposal to the current summary/packet owner. Preserve candidate and original immutable versions; do not edit a completed report, frozen assignment or accepted history. An authorized replacement needs its own source identity and existing coordinator reconciliation/fresh dispatch where required.
4. Compare the **entire corrected candidate** again against the same original baseline and complete material before acceptance, including that the correction introduced no new omissions. This is an acceptance obligation for the owning consumer, not evidence that this document ran a verification or a test suite. No “fixed one omission, therefore all preserved” shortcut.

### 4. Establish the continuation boundary without resuming

An accepted audit establishes only the reviewed summary's bounded fidelity. The intended recipient must still obtain/read all complete mandatory authorities and exact evidence needed for its next action. Record actual supported loading/readback evidence or unknown. Then hand the findings to the coordinator for context-packet and, when resuming persisted work, cold-resume reconciliation of current grants, source/candidate/environment drift, owners and actual effects. Fidelity does not establish current authority, liveness, remote state or permission to continue.

If original material cannot be recovered within approved access, report exactly which original obligation and next action are blocked and the actual custody/source owner who can provide it. Do not fill gaps from assistant recollection, current trunk, other sessions or a new compressed summary.

## Constraints

No private transcript collection/copying, native compaction/model calls, host execution/probes, automatic continuation, source mutation, new store/runtime or fabrication of hidden retained state. Named sanitized original records may be reviewed only for their approved purpose; sanitation/coverage limits remain explicit. Markdown does not enforce context survival or guarantee that a host retained instructions. Never let the candidate summary decide its own completeness, reset counters, drop blockers to meet a byte budget or relabel an unrun obligation as completed.

Invalidate affected fidelity/readiness conclusions after original/baseline/summary/recipient/source-access/boundary changes; retain old accepted evidence and route drift through existing owners.

## Format

Return original/baseline/candidate identities and coverage, actual baseline-review provenance, full-material section accounting, audience/budgets and native visibility; then:

| Original criterion/material locator | Frozen obligation and expected preservation | Candidate locator and actual comparison/read evidence | MET / NOT_MET / BLOCKED; loss/unknown, held next action and owner |
| --- | --- | --- | --- |

Include all material-domain rows, detected baseline omissions, proposed versus accepted correction, exact next recovery prerequisite, custody/retention and invalidation; actual versus NOT RUN operations and modified files (normally `[]`). Distinguish audit complete, fidelity accepted, recipient loaded, cold-resume eligible and continuation actually performed.

### Manual consumer cases — illustrative, NOT RUN

- The summary preserves acceptance text but drops an unresolved external intent and unknown-live owner. Whole-material comparison finds both; block overlapping action even if the summary's checklist says complete.
- The original frozen assignment has eight criteria; a summary-derived checklist has seven and matches perfectly. Reject that circular basis, recover the independently reviewed original inventory and account for all eight before acceptance.
- An evidence link remains but its intended reader is denied access. Deferred proof is not recoverable for that reader; block the dependent action and name the custody owner, without copying private content into the packet.
- All reviewed original obligations, decisions and blockers survive with whole mandatory authorities read and qualified evidence references. Accept bounded fidelity only; current grant/liveness/remote reconciliation still belongs to the existing resume owner.
- Original material is unavailable after automatic compaction. Report unknown loss and exact recovery prerequisite; do not continue from confident recollection or claim an opaque native item proves preservation.
