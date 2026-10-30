# Design Rationale

## Overview and evidence identity

Describe the consumer outcome, scope and current shape. Record candidate/policy identity, relevant requirement sources, actual environment/tool versions and whether this is design evidence or implemented/proved behavior.

## Usage sketch

Show the caller's successful and rejected/recovery usage first, then derive the types and boundaries. Pseudocode belongs in this rationale, not a shipped executable stub.

## Boundaries and ownership

Identify modules/processes and dependency direction, trust boundaries and authorization guards. Name each persisted dataset's owner and source of truth. State transaction, concurrency, ordering, consistency and freshness guarantees and how they appear to the consumer.

## Consumer quality scenarios

For every affected quality attribute, give the actor/stimulus, environment and representative load/data distribution, affected path, response, numeric measure/window, accepted requirement source and evidence method. Include failure/recovery, not just normal latency. Apply the task-specific [architecture quality procedure](../../domain-review/references/architecture-quality.md) and other selected domain references.

## Assumptions and capacity

Record dependency versions/availability/timeout contracts and CPU/memory/storage/connections/quotas or other relevant limits. For each unproved assumption give source, uncertainty, owner and the observation that would falsify it. Show capacity/headroom calculations with their workload assumptions; do not label estimates as measurements.

## Alternatives considered

Compare materially distinct designs for consequential unresolved decisions, including the existing/simple shape. For each, explain interface depth, ownership/consistency, trust/failure propagation, operating cost and ability to meet the selected scenarios. Record evidence-backed rejection reasons. A mechanical change may retain one shape with a risk rationale; do not invent an arena or independent models.

## Chosen design and synthesis decision

Describe the selected types/module structure and the reasons it beats the alternatives. Justify every additional component/abstraction and the tradeoffs deliberately accepted by the responsible owner. Tie the decision to grounding evidence and scenarios, not hypothetical extensibility.

## Failure and recovery

Specify dependency outage/slowness, partial commit, concurrency conflicts and capacity exhaustion behavior, bounded rejection/degradation, abort criteria and recovery owner. Distinguish code rollback, data compensation and actual restore requirements. Preserve accepted writes and compatibility; do not claim an unavailable fallback or key exists.

## Proof obligations and results

Map each invariant/scenario to the exact final-candidate surface, static/type/schema argument or actual runtime/failure/consumer check. Name tooling and isolation prerequisites, real evidence references and observed results. Explicitly mark design-only plans, unexercised surfaces and BLOCKED prerequisites. Existing independent code/security and applicable UI/UX reviews remain separate.

## Evolution and invalidation

Identify assumptions or requirements whose change requires re-grounding, evidence invalidation or a new compatibility phase. Explain how repeated implementation deviations trigger redesign. Prefer a small maintainable shape over speculative extension points. State the completed design/implementation scope and remaining evidence limitations without implying deployment approval.
