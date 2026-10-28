# Job <job_id>

- **Job ID:** <job_id>
- **Request / issue / origin:**
- **Repository / execution worktree:**
- **Base branch / initial commit:**
- **Work branch / candidate_id / anchor commit:**
- **Status:** initializing
- **Started / updated:** <UTC timestamps>
- **PR:** none (replace only after real publication)
- **Stop class:** none (or `factory_bug`, `environment`, `product`)
- **Coordinator / actual host task handles:**
- **Resume point / outstanding dispatches:**

## Effective policy snapshot

- Immutable baseline in policy.md (exact policy/constraints/active instruction revisions):
- Baseline policy_id / current effective policy_id and version:
- Configured typed checks: command+cwd or skill path/revision and criterion evidence:
- Protected path globs:
- Required reviewers (never removed by intake):
- Applicable surface reviewers and rationale (see decision.md):
- Autonomy: publish_pr=<actual boolean>, merge_pr=<actual boolean>, deploy=<actual boolean>
- Scoped operator grants in grants.md: authentic source, action/paths, job/branch/candidate scope, reason, preconditions, expiry/single-use boundary (none unless recorded):
- Available tools and capability limitations:

## Request and environment

- Request evidence: issue.md when linked, otherwise original task text/source.
- Setup and validation: environment.md.
- Validation result: pending.

## Intake and DAG

- Intake verdict: pending (`ACCEPT`, `NEEDS-INFO`, or `REJECT`).
- Risk / surfaces / specialist routing:
- Operational assumptions:
- Product gaps: none or gaps.md.
- Evidence: intake.md, decision.md, plan.md (one fenced YAML mapping).
- Current plan revision / eligible tasks:

## Execution evidence

| Stage | Report | Task / dispatch | Candidate | Result |
| --- | --- | --- | --- | --- |
| Spec | spec.md | pending | pending | pending |
| Build | build.md | pending | pending | pending |
| Checks | checks.md | pending | pending | pending |
| Required reviews | review-<role>.md (one row per required role) | pending | pending | pending |
| Approval | approval.md | pending | pending | pending |

Only link reports that actually exist. Keep old attempts in dispatches/<dispatch_id>/; canonical reports identify the validated current attempt.

## Coordination history

- inbox.md: coordinator-owned append-only accepted event ledger.
- outbox.md: coordinator-owned dispatch/answer/cancellation ledger.
- dispatches/<dispatch_id>/task.md, report.md, events.md: per-attempt assignment and evidence.
- Last accepted event IDs / unresolved questions (YAML under event-ID headings):
- Accepted completion → canonical report promotion receipts:
- Durable checkpoint / last outbox read / pause reason (operator or capability only):
- Liveness observation / actual cancellation or fencing evidence / resume prerequisite:

## Gate and disposition

- **Gate:** GATE: BLOCKED
- Final manifest and candidate_id: candidate.md under root .gsf/state/candidate-contract.md.
- Effective policy_id and immutable baseline/grant evidence:
- Frozen exact evidence allowlist / checkpoint evidence_id (separate from candidate identity):
- Checks: pending (each typed command or skill must actually satisfy its acceptance).
- Required reviewers: pending (independent PASS for the same candidate_id/policy_id).
- Unresolved material findings:
- Approval: pending (`APPROVE` or `FAIL`).
- Private intermediate commit authority/unit evidence (not final readiness):
- Publication / merge / deployment: distinct authority, durable intent and actual receipt:
- Lost external receipt recovery: queried remote repository/branch/head and observed result:
- Ledger items opened:
- Final delivered outcome / exact resume instructions if blocked:
