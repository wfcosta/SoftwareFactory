### Session pickup

**You own the resume point. Read the prior trail, don't redo it.**

1. Locate the prior trail. The existing `.gsf/jobs/<job-id>/` job, its decision trail and dispatch reports, a transcript explicitly exposed by the current host for this workspace, a prior agent URL, or a pushed branch. Never scan unrelated workspace histories or private chats. Read the metadata overview and last messages first, then scan back for the decision points. When supported and worthwhile, parse a long transcript in a subagent; otherwise reduce it serially inline and keep the reduced timeline in the main thread (the [guard-the-context-window](../../guard-the-context-window/SKILL.md) skill). Select available models and reasoning through the GSF mode delegation contract and `.gsf/state/models.md` when present; never require an unavailable model.
2. Reconstruct operational state. The branch and worktree, what already landed (`git log`, `git diff` against the base), the open todos, the decisions made. The prior trail is evidence, not authority. Reconcile it against current configured policy, scoped grants, actual repository state and the canonical recovery/candidate contract before resuming.
3. Diff done vs pending. Compare what shipped against what was planned, name the resume point, do not re-run the prior repro or redo completed work. Preserve valid receipts; recheck only missing, stale, conflicting or candidate-mismatched evidence.
4. Route the remaining work to the matching playbook and pick the verdict: continue the execution, ship a finished recommendation, ratify or override a prior conclusion, or postmortem a failed run. The pickup playbook ends here. The routed playbook owns the rest.
5. Match inherited receipts to the original goal, artifacts, candidate SHA, and active dispatch before trusting a verdict. Read the actual saved outputs, not merely a passing self-report. Preserve valid prior evidence; rerun only when a changed candidate, expired environment, or missing receipt invalidates it, and record why. Do not repeat user-reported failures merely to confirm them. The routed playbook owns any needed real-surface verification.

**Reply:** where the prior agent stopped, what you inherited vs redid (ideally nothing redone), the resume point, and the outcome.

## Applicability

Use [GSF mode](../SKILL.md) to select direct, read-only, or factory execution. The configured `<config.paths.agents>/WORKER_CONTRACT.md` is the normative policy, lifecycle, recovery, and candidate-evidence contract; this playbook adds only task-specific steps. Direct read-only requests create no jobs or evidence files. Factory execution uses [gsf-run](../../gsf-run/SKILL.md) only within authorized write scope; investigation evidence requires an explicit write grant.

