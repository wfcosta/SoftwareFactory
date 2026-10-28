### Autonomous run

**You own the exit condition. Define done, then drive to it without silently stopping or relaxing it.**

1. **Pin the predicate.** Record the accepted goal, a checkable exit predicate (repro fixed, all named checks green, N authorized PRs merged, zero visual diff), boundaries, permissions, and the starting candidate in the job. An attempt floor or budget the user gave remains part of the predicate. Do not replace a merge goal with PR opening or an experiment goal with an anecdote.
2. **Choose an available wake mechanism.** Prefer the host's event subscriptions or task completion notifications for CI, a merge, or a ref
   advancing. If useful, assign a read-only watcher worker that reports the exact event/head and does not write the owner's branch. Add a
   long heartbeat fallback through a real host scheduler when available. With no event, use a bounded watch such as `gh pr checks <pr>
   --watch` or the forge's equivalent, sized to useful change, not a second sleep loop. Record the mechanism, interval, owner, cancellation
   handle, and next predicate evaluation. No `/loop` command, shell daemon, or proprietary runtime is required. If the host has no
   persistent wake facility, continue reachable work in the active session; record that unattended continuation is unavailable rather than
   claiming a nonexistent scheduled run.
3. **Iterate by evidence.** Read the previous checkpoint, select the smallest discriminating action, execute through the matching playbook, verify that unit against the predicate, and commit only if it advanced and configured pre-commit gates permit it. Undo only your own rejected hypothesis. Sequence verifiable units; do not stack unmeasured fixes or keep belt-and-suspenders code that might help.
4. **Own discoveries within scope.** Resolve reversible operational failures, flaky verifiers, review noise, and tooling drift supported by evidence. A supporting fix must be necessary for the goal and authorized; put separable fixes in their own PR when publication is allowed. A newly found unrelated product bug is a recorded follow-up, not permission for scope expansion. Return to the main predicate after each supporting action. Product/preference calls no experiment settles, missing credentials, forbidden changes, and irreversible actions go through the worker contract’s `gate_blocked` disposition.
5. **Checkpoint every iteration.** Use [show-me-your-work](../../show-me-your-work/SKILL.md): iteration id, hypothesis, candidate before/after, action, commands/artifacts, measured predicate state, kept/discarded decision, blocker, and next action. Record worker ids and active dispatches so a replacement can resume. A heartbeat is liveness, never completion.
6. **Stop honestly.** Stop when the exact predicate is met, the operator stops the run, or a genuine dead end remains after a cause-specific pivot. A plateau alone is not success. State a blocked predicate explicitly and cancel only your own watches/workers; do not leave a hidden loop writing after stop.

**Reply:** the predicate, iterations, what landed, what was discarded, final evidence, and any precise unmet condition.

## Applicability

Use [GSF mode](../SKILL.md) to select direct, read-only, or factory execution. The configured `<config.paths.agents>/WORKER_CONTRACT.md` is the normative policy, lifecycle, recovery, and candidate-evidence contract; this playbook adds only task-specific steps. Direct read-only requests create no jobs or evidence files. Factory execution uses [gsf-run](../../gsf-run/SKILL.md) only within authorized write scope; investigation evidence requires an explicit write grant.

