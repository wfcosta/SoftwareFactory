### Autopilot-full

**You own the verdicts, never the PR branches. One owner carries each independent PR from build to merge; non-authors prove what lands.** A verdict covers a patch and its exercised base, while green CI covers one head. This is a scoped execution grant, not permission to ignore config.

1. **Record operator gates before launch.** Enumerate the accepted queue, independent units, owner paths, checkable acceptance, and operator-reserved PRs. A request for a plan is not a go. Resolve `autonomy.publish_pr` and `autonomy.merge_pr` independently; without a scoped grant for either disabled action, stop at its local/merge-ready boundary. Queue-external work and operator-reserved items never inherit merge permission. Interaction review gates and forge approvals remain mandatory.
   Use the [impact matrix](../references/impact-matrix.md) to bind each unit's invariants, existing domain/operational procedures, exact proofs and external resources as well as paths. Apply [execution/evidence boundaries](../references/execution-evidence.md): one canonical coordinator, current/frozen accepted baseline, effect/target/grants, real capability/limits and scoped evidence reuse. Missing optional tools block affected actions/claims, not unrelated authorized work. This merge lifecycle does not imply artifact publication, deployment or healthy rollout; route separately accepted operational endpoints through **release**/**cloud-change**.
2. **Resolve the forge and dispatch one durable owner per PR.** Use [Opening a PR](./opening-a-pr.md) for repository/forge resolution. Select existing builder/gsf-delegate roles and available models through GSF mode, not a required cloud vendor. Each owner gets full task fields, disjoint worktree, own branch, parent/base, evidence paths, lifecycle boundaries, and current publication/merge authority. Record task/dispatch ids, ownership, agent handle, state, start time, and a cause-specific stuck-after threshold derived from comparable work; absent history, state the provisional threshold instead of inventing one.

   Owner lifecycle is build → configured checks/reviews → publish ready → code-ready/self-proof → Babysit → independent verdict → authorized
   Shipping. Open ready as early as the local gate allows, so CI/bots overlap the remaining lifecycle. Apply local
   [unslop](../../unslop/SKILL.md) and [no-comments](../../no-comments/SKILL.md) rather than requiring deslop or another plugin. Before
   code-ready, rebase the owned clean branch onto current configured trunk, run configured checks for the committed candidate, report exact
   head/base, and drive the real artifact. Report every later head and merge-ready receipts. Fix rounds retain that base unless conflicts,
   stale-base CI, or a known same-file trunk change require a new base.

   Assume the environment may disappear. Start [show-me-your-work](../../show-me-your-work/SKILL.md) in the durable job immediately. Save/publish each finished checked unit before the next only when publication is authorized; otherwise preserve local artifacts and report the publication gate. Every spawning owner records its descendants in the job. Only the owner pushes/rebases/retargets its branch. Rewrite pushes use an exact observed-SHA lease; a push from someone else stops that owner and goes to the root.
3. **Parallelize independent owners off trunk, never stacked.** Dependency-coupled work belongs to one owner until its prerequisites land, or to [Autopilot-stack](./autopilot-stack.md) when the operator wants a dependency stack. Split shared state before serializing. Respect host concurrency limits; keep blocked owners from writing through each other.
4. **Run an independent full swarm at code-ready.** Use [swarm](../../swarm/SKILL.md) for a concrete coverage matrix: configured gate lane, live load-bearing behavior lane(s), performance lane when applicable, and at least two focused audit lanes. Verifiers never authored the code and run at the reported SHA with isolated fixtures/processes. They drive [control-ui](../../control-ui/SKILL.md), [control-cli](../../control-cli/SKILL.md), or a named repository driver and verify receipts directly; no live evidence means no clean behavioral verdict. Root reads actual diffs and merge-ready artifacts, not only owner summaries.

   Full swarm runs again only for new behavior, redesign, or a large diff. A rebase, conflict resolution, or minor fix gets a single independent verifier at the new head; a wording-only change needs its own doc review/checks but no repeated live swarm when no behavior is affected. Carry valid individual lanes only under [Shipping's patch-id/artifact rule](./shipping.md). Every head needs current green checks. Block on a demonstrated user-visible bug, failed required gate, or newly wrong shipped documentation. A base defect neither copied nor newly reached is a recorded follow-up, not a fabricated patch regression; never use that distinction to waive configured red checks.
5. **Merge only what was proven on the trunk it lands on.** Owner reports merge-ready and waits for root's current-head clean verdict and
   all operator/forge gates. Root delegates landing to that owner through Shipping, not a second branch writer. At merge prep owner rebases
   onto current trunk, reports head and waits for green CI. Immediately before merge fetch trunk again and assess whether the merge result
   was tested. Conflict, same-file behavior change, or changed check configuration requires a rebase and renewed affected proof. A shared
   lockfile needs no rebase only if frozen install succeeds on the merge result and changed packages resolve identically; otherwise repair
   through the owner. A changed caller/dependency requires patch checks on the merge result. Unrelated trunk movement alone does not demand
   endless rebases. A third forced rebase after merge prep escalates to root to sequence colliding work.
6. **Run the root supervision layer.** Audit on actual task/CI completion events and an available host heartbeat (normally hourly), using Autonomous run's capability-aware wake procedure. Record the real scheduler/watch handle; do not claim `/loop` exists. Each tick reads this playbook and the plan at the recorded active-branch instruction version; never silently reload base-branch instructions, reconciles all owners/descendants, head reports, trails, verdicts, and actual forge state. Drift such as a missing report is repaired by its owner; it is not automatically a stall. Judge progress by durable artifacts, pushes when allowed, and work completed, not status text. Answer agents waiting on root/operator rather than replacing them as stuck.

   Tool errors, inability to start turns, or no side effects past the recorded threshold trigger cause-specific recovery. Revoke the old
   writer's dispatch and establish that it can no longer write before replacement acquires branch ownership; a late result is evidence to
   review, never permission for a second writer. Narrow a scope for resource failure, retry after restored connectivity, or switch an available
   model for a model/tool fault only within accepted no-progress/elapsed/cost allowance. A reached cap or actual quota/tool unavailability
   requires durable checkpoint/replan and authentic renewed authority before exceeding a limit; never assume credit reset or scheduled wake.
   Gate/budget/allowlist changes require an authorized operator policy decision and new effective baseline; a root countersign alone is not authority.
   Neither owner nor root may disable/soft-fail checks or bypass forge approval. Keep unrelated follow-ups separate and authorized.
7. **Honor stop immediately.** Send zero-writes to every owner and leaf, stop your watchers, collect head/state/trail locations, and preserve their briefs. Never let a queued merge or late worker continue silently after a hold. Resume only under the operator's release and refreshed candidate/authority checks.

**Reply:** use [ketchup](../../ketchup/SKILL.md) to report each PR's live state, exact verdict/head, links, actual merges, countersigns and why, operator gates, failed/replaced workers, and separately parked follow-ups with trail paths. Unchanged audit ticks log a row but need no repetitive chat update.

## Applicability

Use [GSF mode](../SKILL.md) to select direct, read-only, or factory execution. The configured `<config.paths.agents>/WORKER_CONTRACT.md` is the normative policy, lifecycle, recovery, and candidate-evidence contract; this playbook adds only task-specific steps. Direct read-only requests create no jobs or evidence files. Factory execution uses [gsf-run](../../gsf-run/SKILL.md) only within authorized write scope; investigation evidence requires an explicit write grant.

