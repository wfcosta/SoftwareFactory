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

- Finding ID, severity, exact file/line or evidence, preconditions, impact, proposed action, and resolution status. Write `None` only when inspection supports it.

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
