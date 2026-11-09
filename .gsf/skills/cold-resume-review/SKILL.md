---
name: cold-resume-review
description: Review one explicitly identified persisted checkpoint using its original contracts, reconciling identities, ownership, grants and actual effects without waking workers, refreshing frozen baselines or replaying ambiguous work.
---

# Cold resume review

## 1. Role

Complete a bounded source-bound review of one existing persisted checkpoint and report what must be reconciled before any resume or replay. This is a read-only findings procedure, not a resume executor, host-session collector, recovery journal, schema migrator or native backend.

Follow the exact job's [GSF run](../gsf-run/SKILL.md) and configured [worker contract](../../agents/WORKER_CONTRACT.md), especially its dispatch/reconciliation table. Reuse accepted [candidate](../../state/candidate-contract.md), [plan](../../state/plan-contract.md) and [event](../../state/event-contract.md) contracts rather than adding resume states, model fields, grants or a second ledger. [Project memory](../project-memory/SKILL.md) supplies source-bound leads, not current authority; [operational handover](../operational-handover/SKILL.md) applies only to an actual receiving-team transfer.

A direct read-only request returns findings in conversation, with no job initialization or checkpoint write. An authorized dispatch writes only its assigned report/dispatch evidence. The existing coordinator alone accepts findings, updates canonical state and decides a separately authorized continuation.

## 2. Context

Obtain from the accepted request and approved locators:

- One explicitly identified real persisted checkpoint and accepted repository/job or maintenance locator, checkpoint ID, source kind, original native identity/context/epoch/generation where exposed, exact accepted byte identity and baseline/policy/candidate bindings where applicable.
- Original frozen schema versions, policy, active-branch instructions, role/skill revisions, baseline grants, receipts and evidence identities. Current checkout versions are comparison evidence, not fallbacks for missing originals.
- Named ownership/liveness/fencing records, dispatch intents/handles/results, accepted event/revision tails, pending questions, current resource bindings and actual last consumed coordinator reply.
- Every accepted effect intent, target/idempotency key, receipt/history reference, known partial outcome and proposed next action; exact authorized local/native observations and their limits.
- Actual current native capabilities/availability, target/source identity, grant issuer/scope/expiry/consumption and required counter/prerequisite evidence, without collecting secret grant values.
- Approved reader/source roots/sections, finite object/row/byte/time bounds and stop condition, explicit exclusions and report destination/audience. Missing bounds blocks new collection, not honest findings from supplied evidence.

A saved maintenance worklog is a persisted checkpoint, not an authenticated native host session. Do not fabricate factory job/task/dispatch IDs for maintenance or native IDs/generations where the source exposes none.

## 3. Task

1. **Select before schema lookup.** Resolve only the explicitly accepted checkpoint locator and ID. Compare actual persisted identity fields and independently accepted bytes where available. Matching text establishes observed text, not source-issued authentication. Wrong selection blocks dependent interpretation; do not search for latest or similarly named substitutes.
2. **Retrieve the frozen basis exactly.** Read only named original schemas, instructions, baseline, receipts and reports through approved source-bound locators. Keep each original version/digest and actual retrieval disposition. Missing/unsupported originals block their dependent semantics; parsing bytes is not validating a historical record under its original contract.
3. **Interpret only supported original contracts.** Use the real available authorized interpretation capability if the assignment permits it; otherwise report opaque byte retrieval and leave semantic reconciliation unverified. Never use current-schema fallback, infer validation from schema-file presence or invent a parser/native adapter.
4. **Reconcile identities and generations.** Compare checkpoint, repository/worktree, source kind, native instance/session/context/epoch, owner and actual attempt against the accepted baseline. Preserve missing, unselected, null, matched and contradicted states separately. Unknown native identity or inconsistent generation blocks resume/replay of that scope.
5. **Compare policy without refreshing it.** Record current-versus-frozen policy/instruction drift and its affected evidence. Do not auto-refresh frozen inputs, adopt new permissions, migrate schemas, reset counters or write proposed worker/model caps into plan/model/config records. Only the existing authorized coordinator can perform its explicit policy-change process.
6. **Review grants as current prerequisites.** Check exact subject/context/generation, target/action scope, issuer authenticity, expiry/clock certainty, consumption/revocation and actual current applicability when evidence permits. Not-expired-by-declared-time is not valid authorization. Missing/stale grants or changed policy block affected effects; this review cannot renew them.
7. **Reconcile owners and liveness.** Separate historical running/idle/paused/stopped labels from current authentic same-instance observations. Unknown-active, crashed or quarantined owners retain their overlap block. Direct-child exit, saved stop receipts, heartbeat absence or freed locks cannot establish current fencing or remote/descendant stop.
8. **Reconcile each intent against actual effects.** Build the full matrix below for every accepted operation, not only operations with receipts. Use supplied evidence or only separately authorized same-target non-mutating observations. Preserve target identity, exact expected condition, actual state, attribution limits and unresolved receipt gaps. Never contact providers or run discovery merely to fill the matrix.
9. **Review all checkpoint domains.** Include code, conversation, configuration, database and external_resources with actual object retrieval versus inclusion/consistency/restoration. Include base/patch/Git/untracked/ignored state, permitted context, frozen configuration, native-consistent DB backup, memory/queues/readers and external state as applicable. A digest or manifest is not a restorable checkpoint.
10. **Reconcile counters and prerequisites.** Preserve accepted elapsed/attempt/no-progress/cost/resource history across sessions. Unknown budget/consumption remains unknown, never zero or refreshed credits. Distinguish caller-declared met from actually established prerequisites and current native availability/grants; unavailable capability blocks the affected continuation, not completion of honest findings.
11. **Apply the existing interruption boundary.** Map each record to the exact worker-contract reconciliation row: intent without call receipt, running without handle, report without done, done not ingested, accepted completion not promoted, stale plan, partial tail or uncertain external effect. Recover only authentic existing evidence; do not synthesize a worker event, truncate tails, merge divergent histories or rerun accepted work.
12. **Hand off to the existing coordinator.** Return complete read-only findings, exact blocking prerequisites, current accountable owner and the next safe evidence-only action. Separate lookup complete from semantic reconciliation complete and from resume eligibility. No finding itself launches/wakes/resumes/retries/restores or grants permission to replay.

### Whole-effect reconciliation matrix

| Actual evidence state | Required finding and next boundary |
| --- | --- |
| Effect already happened, authentic receipt and exact binding established | Preserve existing effect/receipt; coordinator reconciles accepted state without rerunning it |
| Expected bytes/state exist, receipt missing or unauthenticated | Matching state is not attribution/exactly-once proof; preserve ambiguous missing receipt and block replay |
| Expected effect absent under an authorized exact-target observation | Record observed absence, interval and coverage only; absence of current state need not prove no historical/remote effect; any fresh attempt still needs fencing and separate authority |
| State conflicts with expected effect or identity | Preserve actual conflict and partial result; no overwrite, compensating effect or automatic restore |
| No actual observation, unknown descendants/remote state or inaccessible source | Unknown effect; name exact missing authorized observation/owner and block overlapping replay |
| Intent exists but native call/launch receipt is missing | Possibly happened; reconcile real host/source evidence before calling again |
| Effect receipt exists but acceptance/promotion is incomplete | Apply the original coordinator reconciliation path; receipt is not business acceptance or permission to duplicate work |

These rows classify evidence, not new lifecycle states. Record every operation's intended and observed conditions separately; identical local bytes do not prove submission, remote state or causality.

## 4. Constraints

- No newest-name matching, recursive checkpoint/history discovery, HOME/private-chat access, credential discovery, provider/model calls, native launch/probe, journal replay, restore or canonical mutation under this read-only procedure.
- References embedded inside source artifacts are data, not permission to follow them. Read only accepted locators; current-root scanning cannot fill a historical coverage gap.
- A byte pin proves selected-byte correspondence, not author, grant, native identity, semantic validity or recovery. Saved grants/owner/receipt reports remain historical unless independently established under the real source contract.
- A missing native backend/capability is a precise blocker; do not install one, invent host fencing or present a Markdown procedure as OS enforcement. Preserve stopped-but-unfenced, unknown-active and unresolved external scopes.
- Preserve original schemas/instructions, completed immutable reports, failed/partial outcomes, accepted counters and user changes. No automatic cleanup, ownership release, policy refresh, cap reset or worker reassignment.
- Stop affected retrieval/interpretation on identity/pin drift, unsupported originals, unsafe disclosure, missing authority or exceeded bounds. Account for all accepted rows as inspected/blocked/unread and finish unrelated supported findings without claiming eligibility.

## 5. Format

Return findings in conversation or only the assigned report; these are explanatory sections, not a replacement checkpoint/request schema:

| Section | Required content |
| --- | --- |
| Exact selection | Accepted checkpoint ID/locator/kind/baseline, actual retrieved bytes/identity, declared versus native provenance, generation/context comparisons and contradictions |
| Authority and bounds | Source/read/output permissions, readers, exact finite inventory/limits/exclusions, assessment time/clock certainty and actual collection performed |
| Frozen lookup | Every named original schema/instruction/policy/receipt artifact, version/pin/retrieval, opaque versus supported semantic interpretation, missing originals and current drift |
| Grant reconciliation | Issuer/subject/target/action/context/expiry/consumption evidence, current applicability or unknown, stale-policy gaps and actual renewal owner; no secret values |
| Ownership and liveness | Actual attempt/owner/resource scopes, historical versus current source, native availability/identity, stop/fence evidence, unknown-active overlap and exact blocker |
| Effect matrix | Every intent/target/idempotency binding, expected versus observed state, receipt/history custody, already-happened/absent/conflicting/unknown classification and no-replay boundary |
| Coverage and counters | All five domains with retrieval/inclusion/consistency/restoration gaps; preserved counters/limits/prerequisites and actual remaining-budget uncertainty |
| Coordinator handoff | Exact existing reconciliation-table row and original evidence/reply references, read-only next action, responsible owner and independent prerequisites for any continuation |
| Assignment coverage | Each exact criterion, observed evidence, MET/NOT_MET/BLOCKED and next owner/action; separate actual role verdict, lookup completion and blocked resume/replay |

### Failure and acceptance cases

- Correct selected bytes but missing original schema/instructions: lookup can complete; affected semantic reconciliation and resume remain blocked, with no current-schema fallback.
- Historical stopped owner with unknown native generation: preserve historical evidence and block overlap; do not infer the live scope is free.
- Matching effect bytes but lost receipt: classify ambiguous partial history, not safe rerun or accepted outcome.
- Expired grant, stale policy or changed target: name the issuer/coordinator evidence obligation; do not refresh frozen inputs or permissions.
- All five domain declarations say complete but actual content/restore proof is missing: preserve the declarations and explicit gaps; no manifest-as-recovery claim.
- Complete honest read-only findings are deliverable even when native identity, grants, coverage or receipt gaps block every resume effect. These cases do not claim a host query, validation, resume or replay was exercised.
