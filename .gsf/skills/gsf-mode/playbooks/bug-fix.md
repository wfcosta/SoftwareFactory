### Bug fix

**You own this task. Plan, review, verify.** Delegate worthwhile independent investigation/fix slices when supported; otherwise work inline and disclose the capability limit. Select available models and reasoning through the GSF mode delegation contract and `.gsf/state/models.md` when present; never require an unavailable model.

Be scientific. Every shipped line traces to runtime evidence. Belt-and-suspenders that "might help" is a hypothesis, not a fix. It does not ship. When evidence refutes a hypothesis, revert what it motivated. The smallest change the evidence justifies ships, nothing more.

1. Reproduce it yourself on the matching surface via the control skill (Non-negotiables), even when a debug or instrumentation protocol says to ask the user to reproduce. Ask the user only with a stated, specific reason the control surface cannot reach the target, and only after driving it as far as it goes. If it won't reproduce directly, synthesize the trigger, tighten conditions, or instrument until it fires.
2. Binary-search the cause. Form the candidate hypotheses, then rule them out until one survives. Seed them with `how` over the affected subsystem and the [why](../../why/SKILL.md) skill for regression history. Each pass, take the split that cuts the most remaining problem space, get runtime evidence, eliminate. When program state is unclear, add instrumentation or logging and read it as the code runs. Don't guess. Drive a long or stubborn hunt with the event/heartbeat procedure in [Autonomous run](./autonomous-run.md). Confirm the surviving *mechanism* with runtime evidence before the step-3 architect/interrogate fan-out.
3. Plan the fix. If it crosses a function boundary, `architect` first. Delegate implementation when worthwhile and supported, otherwise work inline using the configured GSF role guidance with a specific scope.
4. Verify on the same surface. The original repro now passes. "Inconclusive" or wrong-surface is not a pass. Flag it. Unit tests show branch behavior, not bug absence.
5. Stage the commits so the failing repro lands before the fix in git history. See the [tdd](../../tdd/SKILL.md) skill for the failing-test-first cadence when the bug has a cheap local test path. Skip it when the test would be expensive, integration-heavy, or unclear.
   This is the canonical [sequence-verifiable-units](../../sequence-verifiable-units/SKILL.md) principle skill, the failing test first and the fix on top.
If configured policy requires green checks before every commit, retain verbatim red-first evidence in the job and commit a green atomic repro-plus-fix unit instead of violating the gate. Do not weaken or edit protected tests without authorization.

6. Run [Opening a PR](./opening-a-pr.md).

**Reply:** what was broken, root cause, fix, how you verified. Paste failing-then-passing repro output verbatim.

## Applicability

Use [GSF mode](../SKILL.md) to select direct, read-only, or factory execution. The configured `<config.paths.agents>/WORKER_CONTRACT.md` is the normative policy, lifecycle, recovery, and candidate-evidence contract; this playbook adds only task-specific steps. Direct read-only requests create no jobs or evidence files. Factory execution uses [gsf-run](../../gsf-run/SKILL.md) only within authorized write scope; investigation evidence requires an explicit write grant.

Reference: adapted from [cursor/plugins/pstack bug-fix.md](https://github.com/cursor/plugins/tree/c742dd61706fbacc1b95f1a20b7b988cf096ce6c/pstack). GSF authority, evidence paths, and tool mappings override reference-specific runtime details.
