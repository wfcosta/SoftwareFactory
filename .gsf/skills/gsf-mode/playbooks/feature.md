### Feature

**You own the design. Plan, review, verify.** Delegate independent worthwhile slices when host capabilities permit; otherwise own implementation inline.

1. `how` over the affected subsystem.
2. `architect` for parallel design exploration.
3. Write the throughput checkpoint as four todo items. A dimension that genuinely does not apply (single file, no fan-out) keeps its item with `n/a: <reason>` rather than being dropped:
   - **Blocking first steps.** Gates run before fan-out.
   - **Independent workstreams.** Disjoint files, services, or layers parallelize. Shared writes serialize.
   - **Shared mutable state.** Default to splitting the target (the [separate-before-serializing-shared-state](../../separate-before-serializing-shared-state/SKILL.md) principle skill). Serialize only for real invariants.
   - **Smallest safe decomposition.** If one worker is best, name why.
4. Delegate code-writing to a subagent using the configured GSF role model with a specific scope (file paths, named data shape and its
   organizing structure per [model-the-domain](../../model-the-domain/SKILL.md), a state machine over scattered booleans, a table/registry
   over branching, a typed model over repeated shape assumptions, chosen before the delegate writes logic, and success criteria). Select
   available models and reasoning through the GSF mode delegation contract and `.gsf/state/models.md` when present; never require an
   unavailable model. When the implementation admits multiple valid shapes (error handling, abstraction layer, test structure), delegate via
   the [arena](../../arena/SKILL.md) skill instead so the runners surface the alternatives and the cross-judge guards the pick. Use arena when competing shapes materially affect risk or maintainability. A settled small change may remain inline; absent host delegation, compare alternatives serially and disclose the missing independence. Final required independent review still fails closed. A subagent
   forbidden to spawn satisfies this by owning the diff directly with the same review separation. No "standing by" reply that waits on a
   nested agent. Read [no-comments](../../no-comments/SKILL.md) before review. Surgical edits, re-ground against the source for
   upstream-derived files. Port shared-primitive improvements to all consumers and verify each. Commit liberally.
5. Verify on the matching surface. "Inconclusive" or wrong-surface is not a pass. Flag it.
6. Rebase into small, ordered commits. Stack follow-ups.
   Use the [sequence-verifiable-units](../../sequence-verifiable-units/SKILL.md) principle skill, building, verifying, and committing each small unit before the next.
7. If the design is contested, `interrogate` before shipping.
8. Run [Opening a PR](./opening-a-pr.md).

Code-coupled work (one feature, one migration) goes to a single owner with the checkpoint inline. That owner fans out internally after the blocking phase. Parent-level fan-out is for slices that produce independent artifacts (audits, cross-subsystem investigations, competing experiments). Rewrite the checkpoint at phase boundaries. Spawn a fresh owner rather than chaining interrupts.

**Reply:** what you built, what you chose and why, the throughput checkpoint, open decisions. Tables for design alternatives.

## Applicability

Use [GSF mode](../SKILL.md) to select direct, read-only, or factory execution. The configured `<config.paths.agents>/WORKER_CONTRACT.md` is the normative policy, lifecycle, recovery, and candidate-evidence contract; this playbook adds only task-specific steps. Direct read-only requests create no jobs or evidence files. Factory execution uses [gsf-run](../../gsf-run/SKILL.md) only within authorized write scope; investigation evidence requires an explicit write grant.

