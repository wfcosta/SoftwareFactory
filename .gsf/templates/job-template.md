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
- Configured typed checks: kind, command+cwd or skill path/revision, effect, target, actual nested effects and per-criterion evidence:
- Protected path globs:
- Required reviewers (never removed by intake):
- Applicable surface reviewers and rationale (see decision.md):
- Autonomy: publish_pr=<actual boolean>, merge_pr=<actual boolean>, deploy=<actual boolean>
- Scoped operator grants in grants.md: authentic source, action/paths, job/branch/candidate scope, reason, preconditions, expiry/single-use boundary (none unless recorded):
- Available tools and capability limitations:
- Accepted schema/instruction versions / immutable references (frozen older job or explicit authorized upgrade evidence):
- Accepted environments / explicit provider-account-region-resource scope (empty denies external effects):
- execution_limits / observed live owners, no-progress attempts, elapsed time, cost/currency/meter source:
- Budget checkpoints / exhaustion / authentic renewed authority / fencing before resume:
- evidence.store/location/retention_days / retention owner, control and required recovery window:

## Request and environment

- Request evidence: issue.md when linked, otherwise original task text/source.
- Setup and validation: environment.md under [environment-contract.md](../state/environment-contract.md), exactly one YAML mapping.
- Validation result: pending; observed tools/versions, capability limitations, receipt locators/digests, observation/expiry and exact accepted target comparison:
- Frozen raw environment_id / affected evidence invalidations on identity/capability change:

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
| Required reviews | Accepted task.report destination (one row per required role, with actual task/dispatch origin) | pending | pending | pending |
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

## Evidence and resource index

Only record actual items; each row links an existing immutable receipt or frozen snapshot. Relative locators resolve from JOB_DIR. Do not place secrets in locators/reports. Preserve prior snapshots and raw digests; no concurrent canonical writers.

| Exact locator / raw digest | Source job/task/dispatch/event / captured time | Classification / authorized readers-writers / ACL receipt | Retrieval method/time/result | Retention owner/deadline/control receipt | Resource/current owner / lock-operation-fence IDs |
| --- | --- | --- | --- | --- | --- |

- Complete candidate collection procedure / accepted entry-byte-time limits / measured entries-bytes-elapsed / stability receipts:
- Isolated verification workspace ownership/boundaries / source_candidate_id / input-output-artifact manifest receipts / actual cleanup or retained owner:
- External-resource handoff / observed stop-fence / state reconciliation / compensation owner:
- Append expected prior event/revision/digest / immutable prior snapshot / actual atomic-write or fencing/readback evidence:

## Gate and disposition

- **Gate:** GATE: BLOCKED
- Final manifest and candidate_id: candidate.md under root .gsf/state/candidate-contract.md.
- Effective policy_id and immutable baseline/grant evidence:
- Frozen exact evidence allowlist / checkpoint evidence_id (separate from candidate identity):
- Checks: pending (each typed command or skill must actually satisfy its acceptance).
- Required reviewers: pending (independent documented passing verdict per accepted role/report for the same candidate_id/policy_id; code/security PASS, comment-reviewer CLEAN, no coercion or substitution).
- Unresolved material findings:
- Approval: pending (`APPROVE` or `FAIL`).
- Private intermediate commit authority/unit evidence (not final readiness):
- Publication / merge / deployment: distinct authority, durable intent and actual receipt:
- Lost external receipt recovery: queried remote repository/branch/head and observed result:
- Release applicability / release.md under [release-contract.md](../state/release-contract.md), exactly one YAML mapping when applicable:
- Source-build-artifact-config-target-environment-plan identities / saved plan state-expiry / exact authorized action:
- Last proven release state / ordered transition event IDs / actual provider and rollout observation receipts:
- Observation window / measurable acceptance-abort / separately authorized recovery and actual disposition:
- Ledger items opened:
- Final delivered outcome / exact resume instructions if blocked:
