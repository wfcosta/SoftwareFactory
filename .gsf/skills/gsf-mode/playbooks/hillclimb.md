### Hillclimb

**You own the metric and the experiment's integrity. Supervise and review. Delegate the attempts.** For sustained, iterative improvement of one measurable thing against a target. A one-off fix is Bug fix or Perf issue. This is the loop.

Core discipline: one change, one measurement, keep or revert. Never stack untested changes, and never claim a win from code inspection (the [prove-it-works](../../prove-it-works/SKILL.md) principle skill).

1. Ground the workload and architecture before choosing the metric. Run the [how](../../how/SKILL.md) skill over the target, name the
   realistic workload dimensions that can move the result (data size, history, state, concurrency), and select a case that reproduces the
   user's complaint. If no case reproduces it, fix the repro instead of hillclimbing. Then fix one metric, the direction that counts as
   better, and a checkable stop predicate that pairs a target with a floor on attempts so a lucky early win can't end the run (the example
   "at least 50% better than baseline and at least 10 iterations" is this shape). Use the user's numbers when given, otherwise state a
   justified proposed target and attempt floor before starting; obtain a product decision only if the existing grant does not cover it.
2. Build the measurement harness, prove its sensitivity, then freeze it (the [build-the-lever](../../build-the-lever/SKILL.md) principle
   skill). Run contrasting realistic workloads and confirm the target case reproduces the symptom while easier cases separate as expected.
   If the harness cannot distinguish them, revise the workload or metric. Vet the harness with the
   [benchmark-checklist](../../benchmark-checklist/SKILL.md) skill before you freeze it, and make it print its error count and a count of
   the work done. Once frozen, one repeatable command emits the metric, sampled enough to clear the noise (median of N, not a single run).
   Record the baseline metric and a green run of the regression gate (the tests that must keep passing) before any change.
3. Open the decision log via the [show-me-your-work](../../show-me-your-work/SKILL.md) skill. A Markdown `decision-log.md`, one heading per attempt recording: id, hypothesis, change, before, after, delta, tests, verdict (kept or reverted), note. Read it before each attempt. Keep the raw attempt log in the job evidence directory; avoid committing bulky or secret-bearing captures. Commit an auditable decision summary only when the job requires it.
4. Ground each hypothesis in the architecture model from step 1, so it names a specific mechanism ("defer X off the boot path because it blocks first paint"), not "try memoizing something". For a perf metric, order hypotheses by the performance mantras in step 2 of the Perf issue playbook (`./perf-issue.md`). Borrow only their order, not that step's stop rule.
5. Loop, one hypothesis per iteration:
   - Hand the change to a subagent using the configured GSF role model with a tight scope. Select available models and reasoning through the GSF mode delegation contract and `.gsf/state/models.md` when present; never require an unavailable model. Supervise and review a delegated diff; with no delegation, implement serially and record that self-review is not independent (the [guard-the-context-window](../../guard-the-context-window/SKILL.md) principle skill). When several independent hypotheses are live, fan them to parallel subagents, each in its own worktree (the [separate-before-serializing-shared-state](../../separate-before-serializing-shared-state/SKILL.md) principle skill).
   - Measure before and after with the frozen harness, and run the regression gate.
   - Accept only when the metric moves past noise and the gate stays green. Otherwise revert the change in full. A tweak that "might help" is not kept.
   - One commit per accepted fix, staging only the files you changed (`git add <files>`, never `-A`). Log the attempt either way, kept or reverted.
   Each iteration ends in a check before the next begins (the [sequence-verifiable-units](../../sequence-verifiable-units/SKILL.md) principle skill). If the run is unattended, borrow only the wake mechanism from the Autonomous run playbook (`./autonomous-run.md`), not its stop rule.
6. Push past the first plateau. On a stall, several rejects in a row, pivot category, test a combination of previously understood near-misses as one explicitly named hypothesis, re-read the source, or try something more radical before concluding the hill is climbed. Correctness and simplicity outrank the number. Revert a win that breaks behavior, and keep a simplification that holds the number (the [laziness-protocol](../../laziness-protocol/SKILL.md) principle skill).
7. Stop when the predicate is met, or when the remaining ideas are marginal and not worth their cost. Don't relax the predicate to meet it, and don't quit while cheap untried hypotheses remain. If you are stuck, surface it instead of spinning.
8. Run [Opening a PR](./opening-a-pr.md) with the accepted commits stacked in the order they landed.

**Reply:** the metric and target, baseline to final with the percent delta, iterations run (kept vs reverted), each accepted fix on one line, the `decision-log.md` path, and the best idea you would try next if pushed further.

## Applicability

Use [GSF mode](../SKILL.md) to select direct, read-only, or factory execution. The configured `<config.paths.agents>/WORKER_CONTRACT.md` is the normative policy, lifecycle, recovery, and candidate-evidence contract; this playbook adds only task-specific steps. Direct read-only requests create no jobs or evidence files. Factory execution uses [gsf-run](../../gsf-run/SKILL.md) only within authorized write scope; investigation evidence requires an explicit write grant.

