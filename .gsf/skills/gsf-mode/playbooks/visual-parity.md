### Visual parity

**You own pixel-exact equivalence. The baseline is the spec. You do not touch it.** Equivalence is verified by image diff, not by eye.

1. Establish the baseline first, before any migration: a visual regression harness that screenshots the current component across its states, plus the target when matching two implementations. No baseline, no parity claim. A blocking prerequisite, not a follow-up.
2. Anti-shortcut clauses, stated and held: no harness modifications, no baseline tampering, no component restructuring to make a diff pass. If the baseline looks wrong, stop and raise the worker contract’s `gate_blocked` disposition; do not edit it. If an apparent fix requires changing the capture harness or a shared component contract, stop that parity attempt and seek a separately scoped decision rather than moving the goalposts.
3. Migrate one component at a time. Parallelize across worktrees, one owner per component (the [separate-before-serializing-shared-state](../../separate-before-serializing-shared-state/SKILL.md) principle skill). Shared primitives migrate first as a blocking phase.
4. Verify each component against its baseline via image diff on the matching surface via the control skill. A nonzero diff is a fail. Investigate the pixel delta and use the Autonomous run event/heartbeat procedure per component until the diff is zero; never inflate a tolerance to hide it. Pin viewport, device scale, fonts, browser/runtime version, fixture data, animation/clock state, and screenshot masks before capturing; save expected, actual, and diff images plus pixel counts. A nondeterministic harness must be made repeatable before a parity verdict.
5. Run [Opening a PR](./opening-a-pr.md) per component or per safe batch.

**Reply:** components migrated, the diff result for each, the baseline harness location, what's left.

## Applicability

Use [GSF mode](../SKILL.md) to select direct, read-only, or factory execution. The configured `<config.paths.agents>/WORKER_CONTRACT.md` is the normative policy, lifecycle, recovery, and candidate-evidence contract; this playbook adds only task-specific steps. Direct read-only requests create no jobs or evidence files. Factory execution uses [gsf-run](../../gsf-run/SKILL.md) only within authorized write scope; investigation evidence requires an explicit write grant.

