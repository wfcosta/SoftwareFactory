# <role> response — <job_id>

- **Verdict:** PENDING (replace with the role's actual verdict)
- **Outcome:** pending (replace with `succeeded` or `failed`)
- **Job ID:** <job_id>
- **Task ID:** <task_id>
- **Dispatch ID:** <dispatch_id>
- **Role:** <role>
- **Report origin:** dispatches/<dispatch_id>/report.md
- **Repository / execution worktree:** <absolute paths>
- **Candidate_id / policy_id:** <exact manifest/effective policy identities, or justified not-applicable for authorized read-only stage>
- **Started / completed:** <UTC timestamps>

## Summary

Describe the assigned acceptance criteria and what actually happened. Execution success is distinct from a PASS/APPROVE verdict.

## Findings (highest severity first)

- Blocking finding: ID, severity, exact candidate-bound file/line or evidence location, violated acceptance criterion/contract/invariant with its basis, concrete triggering conditions, causal evidence and impact, proposed action, verifiable resolution condition, and current disposition. Cite the existing criterion rather than rewriting the specification. Established security/correctness invariants can apply even if omitted from the spec. Distinguish demonstrated static reasoning from actual runtime observation; never invent a reproduction. Write `None` only when inspection supports it.

## Optional suggestions (nonblocking)

- Separate useful improvements from defects: suggestion, concrete benefit and optional follow-up. Optional means no accepted criterion/contract or established material invariant is violated; it does not expand authorized implementation scope. Severity alone does not determine blocking status. Missing required evidence belongs in gaps/limitations and blocks its dependent review/gate, never becomes an optional suggestion or unsupported PASS. Use the actual role's verdict vocabulary; this classification adds no event/state/verdict.

## Prior finding reconciliation (re-reviews)

Retrieve the accepted review history assigned by the coordinator for this task/surface, not just the most recent report. Account for every earlier blocking finding in that scope; new findings still belong in Findings above. Use the original job/task/dispatch, indexed report locator/digest and finding ID together, linking any repeated/new ID to that origin.

| Original finding reference | Proposed correction | Current candidate evidence | Original resolution-condition result | Disposition: RESOLVED / OPEN / UNVERIFIED | Rationale and remaining action / owner |
| --- | --- | --- | --- | --- | --- |
| <job/task/dispatch, report locator/digest, finding ID> | <actual change or explicitly none> | <indexed current independent observation and identity> | <what was checked and observed, or not verified> | <actual disposition> | <why, and next action/owner if unresolved> |

`RESOLVED` requires current independent evidence satisfying the original condition, or an explicitly evidenced withdrawal of an incorrect claim, with rationale. `OPEN` retains a demonstrated violation; `UNVERIFIED` retains a closure-proof gap. Neither unresolved disposition satisfies a passing dependency. An edit, renamed/deleted file, changed ID, newer PASS or omitted row is not closure. Re-evaluate resolved findings when consumed candidate/dependency assumptions change; do not reuse stale closure. Preserve old reports and their original verdicts: these are reconciliation labels, not new lifecycle states/verdicts. For an initial review, state no prior review history; unavailable/incomplete history on a re-review is a gap, never `None` or implicit resolution. Record out-of-scope findings as not verified and keep their affected gates blocked rather than claiming a partial review closes them.

## Evidence

- Files inspected:
- Exact modified files (repository-relative, empty for read-only work):
- Typed checks actually executed: kind/effect/target and observed nested effects, exact command+cwd with actual exit/output or skill path/revision with per-criterion evidence (no fabricated skill process exit):
- Checks not run and why:
- Coordinator updates read through event ID / durable checkpoint:
- Completion event ID (populate when appending worker_done):
- Frozen environment_id / actual capability-tool versions and expiry / exact provider-account-region-resource observations:
- Owned isolated workspace/source_candidate_id / complete input-output-artifact manifest receipts / collection limits and measurements:
- Each attachment's exact indexed locator/digest/source/event identity / real retrieval-ACL-retention evidence:
- Local/external current ownership / provider lock-operation-intent-receipt IDs / observed fencing or continuing owner:
- Accepted budget / actual elapsed, attempts-progress, parallel ownership and metered-cost observations / checkpoint or renewal evidence:
- Release transition proposed with real observations and receipts (coordinator alone promotes canonical environment.md/release.md; no new event types):

## Acceptance and policy

Reference each acceptance criterion from the persisted `task.md` by its existing ID, or position plus exact wording; do not redefine or duplicate the specification. Include every assigned criterion once. These row labels are not role verdicts or lifecycle states.

| Assigned criterion reference | Actual observed result | Indexed evidence reference | Status: MET / NOT_MET / BLOCKED | Missing prerequisite or next action / owner |
| --- | --- | --- | --- | --- |
| <existing ID or frozen assignment position and exact wording> | <what was actually observed, or explicitly not run> | <retrievable indexed receipt/observation for this assignment and candidate> | <actual criterion disposition> | <precise action/owner for non-MET, otherwise none> |

`MET` requires evidence of the assigned predicate; `NOT_MET` records an observed violation; missing/unrun/inconclusive proof is `BLOCKED`, not MET or an invented N/A. Do not weaken or omit a criterion to close the table. Coverage does not authorize unassigned tests/effects or replace the role verdict, configured checks, independent review or approval; a completed audit can have MET coverage and still return CHANGES. Completed attempts remain immutable; corrections after worker_done require a fresh authorized dispatch under WORKER_CONTRACT.md.

- Configured checks/review surfaces applicable to this role:
- Protected-path matches and scoped authorization, if any:
- Immutable baseline and grants relied on (grant source, exact scope and validity):
- Same candidate/policy before and after assigned checks or review:
- Same artifact/config/target/plan state and expiry before effects / authentic action-specific authority and safeguards:
- Frozen accepted schema/instruction versions / explicit upgrade evidence if applicable (no reinterpretation of old jobs):
- Material findings unresolved:

## Gaps and limitations

- Operational assumptions with evidence:
- Product gaps (do not invent behavior):
- Stop class if blocked: `factory_bug`, `environment`, or `product`:
- Safe remediation / remaining prerequisites:

## Ledger

- None, or BUG identifier and job-local evidence link. Never mark an unexercised correction verified.
