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
- Typed checks actually executed: exact command+cwd with actual exit/output, or skill path/revision with per-criterion real evidence (no fabricated skill process exit):
- Checks not run and why:
- Coordinator updates read through event ID / durable checkpoint:
- Completion event ID (populate when appending worker_done):

## Acceptance and policy

- Acceptance criterion → evidence/result:
- Configured checks/review surfaces applicable to this role:
- Protected-path matches and scoped authorization, if any:
- Immutable baseline and grants relied on (grant source, exact scope and validity):
- Same candidate/policy before and after assigned checks or review:
- Material findings unresolved:

## Gaps and limitations

- Operational assumptions with evidence:
- Product gaps (do not invent behavior):
- Stop class if blocked: `factory_bug`, `environment`, or `product`:
- Safe remediation / remaining prerequisites:

## Ledger

- None, or BUG identifier and job-local evidence link. Never mark an unexercised correction verified.
