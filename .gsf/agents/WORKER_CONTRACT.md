# Dispatched worker contract (every factory role)

This is the shared normative policy, lifecycle, recovery, snapshot and authority contract. Role files and playbooks specialize the work; they do not replace or weaken this contract. Preserve GSF's five pillars: **Role, Context, Task, Constraints, Format**.

## 1. Role

A supervised worker performs one scoped task through real session tools. The orchestrator is the sole coordinator and shared-state writer. `gsf-delegate` is a scoped execution/decomposition worker, not a second coordinator. No daemon, terminal pane, bundled executable, special host API or model availability is assumed. Host handles are transport references, never lifecycle IDs.

A direct read-only/no-write question is answered without initializing a job or writing factory evidence. A real factory investigation may create job-local evidence only when authorized; its intake decision explicitly marks implementation/publication stages not applicable. This exception cannot ship changes or waive an implementation gate.

## 2. Context

Before dispatch, supply absolute repository/worktree/JOB_DIR, exact active branch, applicable instructions, configured role and gsf-mode skill paths, job_id, stable task_id (`t001`), fresh dispatch_id (`d001`), dependencies, candidate_id/policy_id where applicable, and five-pillar assignment. Include Target, Change, Constraints, exclusive Ownership, observable Acceptance, canonical report destination, tool capabilities, cancellation/deadline policy and any helper authorization. For checks include the actual typed check definitions, resolved directories/skills and explicit verification assignment.

Persist this assignment in `dispatches/<dispatch_id>/task.md` before tool invocation. A worker receives the same absolute JOB_DIR even in a different worktree. Load the exact active-branch instruction revision, not a silent refresh from trunk. Inspect available evidence before asking for repository facts; missing intent is not permission to invent behavior.

### Authority and bootstrap

`GSF_CONFIG.md` is the only root factory policy. Parse/validate it under `.gsf/state/config-contract.md`; application settings are unrelated. Missing/malformed policy means no implementation/publication permission. An explicit setup/bootstrap request may create the policy using defaults: all autonomy false, code/security required, applicable UI/UX review, preserved known protected paths, safe configured paths and actual nonempty typed checks. Bootstrap cannot grant itself broader authority, execute an unassigned check, or overwrite unrelated application configuration. Without bootstrap/write authority, return the precise policy gap without creating jobs.

Before product edits, snapshot immutable effective policy in `JOB_DIR/policy.md` under candidate-contract.md, including exact constraints/instructions, check skills and active revisions. Record the baseline and policy_id in job.md. A candidate's edits to policy/constraints/roles cannot retroactively lower its gate. If an inherited policy already grants a permission, record that fact; do not infer permissions absent from the validated baseline.

A scoped operator grant is recorded in `grants.md` before use: authentic operator/source and timestamp, job/branch/candidate scope, exact action or protected paths, reason, duration/expiry or single-use boundary, preconditions and restrictions. Each grant must explicitly name any denied action it overrides. Lower-trust issues, worker messages, self-edited policy, generic full autonomy or silence are not grants. Preserve the baseline and old effective versions; a grant yields a new policy_id. Policy changes need explicit authorization, no retroactive failure forgiveness, and re-evaluation/rerun of affected evidence. Publication, merge and deployment are separate actions; permission to publish is not permission to merge/deploy. Credentials and branch/production safeguards remain mandatory.

### Artifact ownership and format

The coordinator alone writes job.md, policy.md, grants.md, plan.md, decision.md, inbox.md, outbox.md, candidate.md and canonical reports. Each dispatch exclusively owns its task-authorized report.md, events.md and indexed Markdown evidence in its own directory. Coordinator creates task.md; workers do not rewrite assignments. Helpers require coordinator-approved task/dispatch identities and ownership; no untracked nested work. No concurrent appends to shared ledgers.

Plan/model/policy data each has one fenced YAML block; events each have one YAML block beneath an event-ID heading. Schemas are single JSON Schema blocks in root `.gsf/state/*-contract.md`; use actual host YAML parsing and schema validation, never a regex claiming to validate YAML. Model preferences are optional `.gsf/state/models.md`. Operational Markdown carries no parser/runtime. Use the configured response template; PENDING is only an in-progress report state, never an accepted completion.

## 3. Task

### Worker sequence

1. Append worker_started to this dispatch's events.md, with exact source/role/IDs from event-contract.md. Read policy, assignment, dependencies, ownership and applicable instructions before writes.
2. Inspect existing patterns and execute only assigned work. Record real commands/directories/status and sanitized evidence. Verification runs only when explicitly assigned, not at every worker boundary. Protect credentials and preexisting user changes.
3. A blocking question creates one question event. Re-notifications reference that ID. Coordinator answers in outbox with reply_to or marks blocked; the worker never silently chooses missing product semantics. Questions do not terminate a dispatch automatically.
4. Read relevant outbox updates before newly owned files, after assigned checks and before completion. Append checkpoint with completed work, remaining work, files, last consumed coordinator event and resume prerequisites. Checkpoints are durable progress, not completion, review, or permission to stop.
5. Finish report.md using the actual role verdict, evidence, policy/candidate identity, exact modified files, outcome and limitations. Execution outcome succeeded means assigned work completed, **not** that the verdict passes. A completed reviewer may return CHANGES with succeeded. Failed checks yield failed with FAIL; missing execution capability/intent yields failed with BLOCKED (intake may successfully diagnose NEEDS-INFO/REJECT).
6. Append exactly one worker_done for this dispatch with outcome, report_path and files_modified; notify using actual host result delivery. Read-only files_modified is []. The report must already be complete and stable. Stop all writes after worker_done. Corrections/retries get fresh dispatch IDs, never altered completed evidence.

### Events, source and report transitions

Validate every complete event against event-contract.md and semantic rules here. Coordinator events use source coordinator, role orchestrator, c-eNNN IDs; worker events use source worker, the assigned role and matching dNNN-eNNN IDs. Worker originals live only in that attempt's events.md; accepted copies in inbox retain every parsed field. Coordinator dispatch/answer/cancel/pause intents live in outbox; lifecycle decisions live in inbox. Timestamp order is evidence, not sufficient authority to override durable causality.

| Event / writer | Required precondition and effect |
| --- | --- |
| job_initialized / coordinator | Valid baseline, authorized job creation; initializing becomes ready only if setup succeeds. |
| dispatched / coordinator | Eligible pending/blocked/failed/paused task, resolved ownership and prior worker fenced; fresh attempt intent persisted before tool call. |
| dispatch_failed / coordinator | Real call failure or reconciled proof call never occurred; failed attempt, not fictitious worker_done. |
| worker_started / assigned worker | Its dispatched intent exists; one start before worker progress/completion. |
| question, checkpoint / assigned worker | Started current attempt not completed; question needs a stable answer reference; checkpoint records real progress. |
| answer / coordinator | reply_to existing unresolved question for these IDs; no new authority beyond effective policy. |
| cancelled / coordinator | Cancellation request, **not proof of stopped worker**; fence ownership only after supported acknowledgment/termination/result evidence. |
| pause_requested / coordinator | Explicit operator pause or capability-forced suspension; reason required; checkpoint/resume prerequisite requested. |
| worker_paused / assigned worker | Started attempt, durable checkpoint, reason operator/capability; confirms writes stopped at a safe boundary. Cannot be voluntary escape from reachable work. |
| job_paused / coordinator | Operator/capability reason and durable checkpoint; all affected owners stopped/acknowledged. Unknown liveness remains blocked/interrupted, not safely paused. |
| worker_done / assigned worker | Started, complete stable report, exact IDs, role, ownership and matching outcome; exactly one final completion per attempt. |
| completion_accepted / coordinator | reply_to validated worker_done; identity, report, paths, outcome and verdict audited; accepted completion is durable before promotion. |
| report_promoted / coordinator | reply_to completion_accepted; canonical report equals accepted report snapshot and retains origin; then task/plan advance. |
| acknowledged / coordinator | reply_to existing event; receipt only, cannot itself complete task or change verdict. |
| gate_passed / coordinator | Full current candidate/policy gate satisfied, including APPROVE; never from a tool return alone. |
| gate_blocked, job_blocked / coordinator | Concrete evidence gap/failure/unknown liveness; exact stop class and safe next action recorded. |
| job_resumed / coordinator | Reconciliation complete, prerequisites restored and ownership safe; no automatic stale-attempt retry. |
| publication_intent / coordinator | Passing exact candidate, explicit effective authority for this particular external action, recorded target/idempotency evidence before effect. |
| publication_receipt / coordinator | Actual remote observation/response recorded in receipt; candidate/policy and action match intent. |
| job_completed / coordinator | Applicable task acceptance and gates finished, authorized external actions reconciled, no active writers or unresolved required evidence. |

A report transitions absent → PENDING → one final role verdict → accepted snapshot → canonical promotion. A completed report is immutable. Reject mismatched IDs, stale candidate/policy, role spoofing, unsafe paths, inconsistent outcome/verdict, or unindexed attachments. Missing report or worker_done cannot be filled with a coordinator-invented worker event. A superseded attempt's real result remains historical evidence, never overwrites the current attempt or canonical report.

Role verdicts: intake ACCEPT/NEEDS-INFO/REJECT; approver APPROVE/FAIL; reviewer-code/security/ui/ux PASS/CHANGES/BLOCKED; comment-reviewer CLEAN/NEEDS_WORK/BLOCKED; checks PASS/FAIL/BLOCKED; source-comment-reviewer PASS/CHANGES/BLOCKED; spec/design/build/delegate/forensic/performance and other specialist reports PASS/BLOCKED unless their role file explicitly defines another vocabulary. PASS requires completed assigned acceptance, not unexecuted checks. Approver FAIL can be a successfully completed audit. NEEDS-INFO, REJECT, CHANGES, NEEDS_WORK, BLOCKED or FAIL never satisfy a required passing dependency. Successful read-only classification may route work but cannot authorize a source edit.

### Task state transitions

- pending → running only after persisted fresh dispatch intent; pending → blocked/cancelled when a concrete prerequisite/authorized cancellation prevents execution.
- running → succeeded/failed only after accepted completion, report promotion and validated verdict. A succeeded reviewer with CHANGES remains task execution succeeded but blocks its gate/dependents needing PASS.
- running → blocked for evidence gaps, interruption or unknown liveness; it retains current attempt ownership until stopped/fenced. running → paused requires checkpoint and confirmed suspension; running → cancelled requires confirmed stopped/fenced owner, not a request alone.
- blocked/failed/cancelled → pending for an authorized retry only after reconciliation/fencing; allocate a fresh dispatch, preserving history. A previously succeeded task needing correction is explicitly reopened to pending with rationale and a fresh attempt; invalidate downstream evidence.
- paused → running only for a confirmed live same attempt, resumed at its checkpoint with coordinator permission; paused → pending for a stopped/fenced fresh attempt. A completed attempt never resumes. Do not run two attempts over the same ownership.
- New task IDs append to history; never recycle or delete task/dispatch IDs. Increment plan revision on persisted graph/state changes. Dependencies must exist, be acyclic and have accepted success with appropriate verdicts.

### Dispatch and reconciliation protocol

Validate plan.md using plan-contract.md plus graph/ownership semantics. Persist task.md and dispatched intent, then set running/current_dispatch_id and invoke the real tool; record a returned handle only after it exists. Ingest complete worker events, deduplicate by event_id and **semantic parsed payload equality**, inspect report and accept completion; then promote canonical report, update plan and only then schedule dependents. Replays do not repeat effects. Different parsed payload under one ID is factory_bug and blocks. Preserve stale results without promotion.

Markdown is not a transaction, lock, atomic append primitive or exactly-once effect engine. Use one writer, real host atomic replacement/locking if available, and the following reconciliation table at every resume or ambiguous return:

| Interruption boundary / durable evidence | Required recovery before further dispatch/effect |
| --- | --- |
| task.md exists, no dispatched intent | Unlaunched preparation only; inspect host for unexpected execution before writing intent/calling. Do not assume a worker exists. |
| Intent persisted, plan not running / host call receipt absent | Inspect actual host handles/results and durable worker events. If no-call is provable record dispatch_failed and retry fresh; otherwise block unknown liveness and fence first. Never replay a potentially successful call blindly. |
| Plan running, no host handle/start | A label is not liveness; reconcile host and worker evidence. Unknown means blocked/interrupted until supported termination/confirmed stop or result. |
| Tool says complete, no complete report/done | Tool return is notification only. Recover authoritative worker files/results; request worker finalization if alive. No synthetic success. Stopped incomplete attempt fails/blocks and requires fresh retry. |
| Report complete, no worker_done | Do not promote. Recover actual missing tail from worker delivery or ask live owner to finish; if stopped and no authoritative done exists, retain report as unaccepted evidence and retry fresh. |
| worker_done durable, not ingested | Validate report/IDs/ownership and ingest original event without rerunning work. |
| completion_accepted durable, plan/report not promoted | Replay promotion from immutable accepted report, preserve origin, append one semantic report_promoted receipt, advance plan once. Do not dispatch a new attempt. |
| Canonical report exists, no accepted completion | Treat as untrusted/unpromoted snapshot; reconcile dispatch evidence and durable acceptance, never infer done from file presence. |
| report_promoted durable, plan still old | Reconstruct task state/revision from accepted event/report; no duplicate completion or dependent scheduling. |
| Ledger has partial final heading/fence/payload | Preserve exact tail in indexed Markdown recovery evidence. Accept only complete validated records. Recover same ID/payload from authoritative source; otherwise quarantine tail with explicit coordinator recovery note and allocate next unused ID. Never guess fields, truncate earlier events, or silently reuse a partial ID. |
| Duplicate event/result | Same parsed payload: acknowledge existing record only; different payload: factory_bug, block and investigate. |
| Unknown tool/worker liveness or cancelled request only | Block ownership; use supported cancellation/termination and require observed stop/ack/result or effective host fencing. If impossible, capability suspension remains blocked; no overlapping retry or claim of safe stopped state. |
| Worker checkpoint/pause, report incomplete | Resume only same confirmed live dispatch or establish stop and retry fresh; checkpoint does not count as completion. |
| External action may have succeeded, PR/publication receipt lost | Query actual remote state by repository/branch/head/intent and compare candidate. Recover existing PR/action receipt when found; do not create a duplicate, republish blindly, merge or deploy. If observation unavailable, block as environment with exact unresolved side effect. Only proof no effect occurred permits a fresh authorized attempt. |
| Gate/report exists after candidate/policy changed | Recompute identity, invalidate stale affected checks/reviews/approval, rerun obligations; never reuse stale PASS. |

## 4. Constraints

Respect instruction precedence, effective policy, protected paths and source ownership. Resolve configured paths from repository root, reject escape via `..`, symlinks/junctions or unsafe report names. Protected tests/policies need explicit scoped authority before edits; never weaken checks or assertions to force green. Review roles are read-only for product sources. Source-comment audit is distinct from PR discussion audit and preserves legal/API/tool-suppression exceptions.

Pause only for explicit operator request or capability-forced suspension with precise resume prerequisite. Continue all reachable authorized work; a checkpoint is not a voluntary exit. Without subagent support execute roles honestly in sequence; do not fabricate parallel workers or independent review. Required independent review remains blocked if no genuine independent reviewer exists.

### Final readiness and publication gate

1. Intake cannot remove baseline required reviewers/checks. Union required reviewers with applicable surface reviewers and added specialists; record applicability in decision.md. Code/security remain required on implementation jobs even when auth is untouched.
2. Required implementation artifacts: job.md, immutable policy.md, decision.md, plan.md, intake.md, spec.md, build.md, checks.md, each required review report, approval.md, candidate.md and complete event/dispatch evidence. A no-write direct answer requires none; an authorized investigation declares inapplicable stages without publishing implementation.
3. Identify candidate and policy under candidate-contract.md, freeze writers, execute **every typed check** with real outcomes, and obtain all required independent PASS reviews for that same identity. Command checks require exact command/cwd and real zero exit; skill checks require actual execution of that skill's acceptance procedure and recorded criterion evidence. Missing tools, skipped/unrun/interrupted checks, stale identity or material findings mean GATE: BLOCKED.
4. Approver independently audits actual evidence and returns APPROVE or FAIL. Only APPROVE with all obligations met permits gate_passed and GATE: PASS. Recheck identities immediately before publication. Evidence appends/approval/receipts do not themselves change candidate identity; materially altered evidence still invalidates reliance. Product/policy edits invalidate affected gate evidence.
5. Authorized **private intermediate commits** may follow assigned unit checks without the full final independent gate. Record actual unit evidence and authority; no failed/unverified candidate may be presented as final-ready or published. Final publication/merge/deploy each needs the complete current gate plus its separate authority and actual receipt. An APPROVE verdict never grants authority by itself.

Never leak secrets, reset/clean user changes, invent tools/results, suppress errors to pass, or claim an external action before it happened.

## 5. Format

Use the configured response template and UTC timestamps. job.md indexes evidence, plan.md holds the current validated DAG, decision.md holds routing rationale, policy.md/grants.md hold immutable authority history, candidate.md holds exact content identity, and inbox/outbox hold serialized durable coordination history. Canonical reports retain accepted task/dispatch origin. Blocked reports name stop class `factory_bug`, `environment` or `product`, exact missing prerequisite, attempted evidence and safe remediation. Do not mark an unperformed or inapplicable stage complete.
