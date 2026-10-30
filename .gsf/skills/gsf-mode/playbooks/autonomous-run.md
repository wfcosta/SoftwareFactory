### Autonomous run

**You own the exit condition. Define done, then drive to it without silently stopping or relaxing it.**

1. **Pin the predicate.** Record the accepted goal, checkable exit predicate, boundaries, permissions and starting candidate. Use the [impact matrix](../references/impact-matrix.md) to distinguish verify-existing from fix and published/merged/deployed/healthy outcomes, with selected domain/operational procedures and exact owners/proofs. An attempt floor or desired outcome does not override accepted execution limits; do not replace a merge goal with PR opening or an experiment goal with an anecdote.
2. **Choose an available wake mechanism.** Prefer the host's event subscriptions or task completion notifications for CI, a merge, or a ref
   advancing. If useful, assign a read-only watcher worker that reports the exact event/head and does not write the owner's branch. Add a
   long heartbeat fallback through a real host scheduler when available. With no event, use a bounded watch such as `gh pr checks <pr>
   --watch` or the forge's equivalent, sized to useful change, not a second sleep loop. Record the mechanism, interval, owner, cancellation
   handle, and next predicate evaluation. No `/loop` command, shell daemon, or proprietary runtime is required. If the host has no
   persistent wake facility, continue reachable work in the active session; record that unattended continuation is unavailable rather than
   claiming a nonexistent scheduled run.
3. **Iterate by evidence.** Read the previous checkpoint, select the smallest discriminating action, execute through the matching playbook, verify that unit against the predicate, and commit only if it advanced and configured pre-commit gates permit it. Undo only your own rejected hypothesis. Sequence verifiable units; do not stack unmeasured fixes or keep belt-and-suspenders code that might help.
4. **Own discoveries within scope.** Resolve reversible operational failures, flaky verifiers, review noise, and tooling drift supported by evidence. A supporting fix must be necessary for the goal and authorized; put separable fixes in their own PR when publication is allowed. A newly found unrelated product bug is a recorded follow-up, not permission for scope expansion. Return to the main predicate after each supporting action. Product/preference calls no experiment settles, missing credentials, forbidden changes, and irreversible actions go through the worker contract’s `gate_blocked` disposition.
5. **Checkpoint every iteration.** Use [show-me-your-work](../../show-me-your-work/SKILL.md): iteration id, hypothesis, candidate before/after, action, commands/artifacts, measured predicate state, kept/discarded decision, blocker and next action. Record worker ids, external resources/leases and active dispatches. Apply [execution/evidence boundaries](../references/execution-evidence.md) before admitting/retrying work and after real results: actual elapsed time, concurrent tasks, attempts without evidenced progress and actual cap/meter evidence. A heartbeat is liveness, never progress or completion.
6. **Stop honestly.** Stop when the exact predicate is met, the operator stops, or a real limit/capability boundary or dead end prevents remaining authorized work. Actual quota rejection, missing required tool or exhausted allowance requires durable checkpoint, quiesced/fenced ownership and precise renewed-authority/capability prerequisite, not endless identical retries or success by plateau. Continue independent reachable work only within applicable limits. Cancel only owned watches/workers and inspect uncertain effects before retry. Never claim live credit balance, automatic reset or a future wake without an actual registered host handle; resumption must reconcile ownership, environment/target and affected evidence.

**Reply:** the predicate, iterations, what landed, what was discarded, final evidence, and any precise unmet condition.

## Applicability

Use [GSF mode](../SKILL.md) to select direct, read-only, or factory execution. The configured `<config.paths.agents>/WORKER_CONTRACT.md` is the normative policy, lifecycle, recovery, and candidate-evidence contract; this playbook adds only task-specific steps. Direct read-only requests create no jobs or evidence files. Factory execution uses [gsf-run](../../gsf-run/SKILL.md) only within authorized write scope; investigation evidence requires an explicit write grant.

