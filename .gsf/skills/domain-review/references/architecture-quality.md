# Architecture and measurable consumer quality

Use [domain review](../SKILL.md) and [architect](../../architect/SKILL.md) for consequential boundary/design changes. Prefer the simplest shape that meets actual requirements; queues, services, caches and abstractions need demonstrated reasons, not a generic scalability story.

## Inputs

Read consumer workflows, current architecture and ownership, trust/data-flow maps, actual traffic/data growth and resource limits, dependency contracts/versions, chosen quality objectives and operating constraints. Identify product owners for unresolved tradeoffs and real environments for proof. Distinguish requirements and measured facts from design assumptions.

## Sequence and decisions

1. Draw module/process/dependency boundaries, trust zones, persisted data ownership and sources of truth. State which actor may read/write each resource and where validation/authorization occurs. Identify consistency model, transaction boundaries, race/conflict policy, ordering and user-visible freshness. Do not claim global consistency from local transactions.
2. Write **quality scenarios**, each with consumer/actor, stimulus, environment/load and data shape, affected path, expected response, numeric measure/window and evidence method. Cover relevant latency/throughput, availability/recovery, correctness/privacy, accessibility and changeability. Select actual product thresholds with their sources; if none exist, obtain a decision before claiming acceptance rather than inventing a percentile target.
3. Model failure propagation: timeout budget across dependencies, partial/unavailable/slow responses, retry amplification, stale/corrupt cache, resource exhaustion and degraded behavior. Define rejection/fallback semantics and recovery. A fallback must be an intentional valid product behavior, not fake success or silent data loss. Connect async, API, migration and authorization obligations to their detailed references.
4. Estimate capacity using explicit arrival/concurrency/service-time assumptions, data/index growth, peak/skew and headroom. Include CPU, memory, storage, connections and external quotas/cost where observable. Mark unmeasured assumptions and the measurement that can falsify each. Do not present a single average or benchmark on a tiny dataset as peak capacity proof.
5. Compare the current simple shape/no new component with materially distinct alternatives for consequential unresolved decisions. Weigh evidence against the scenarios, ownership, consistency, failure modes, implementation and operating costs. Record why complexity is necessary, the chosen tradeoffs and rejected alternatives; avoid speculative extension points. A mechanical change can retain its current shape with a documented risk rationale.
6. Map each chosen scenario/invariant to a final-candidate proof: consumer-facing integration, representative load, dependency failure, concurrency or authorized recovery exercise. State which guarantees are static/type/schema properties and which need runtime evidence. Inspect actual results and limits; unavailable dependency/failure tooling blocks that claim rather than becoming a simulated success.

## Evidence, failure and recovery

Deliver a rationale with usage-first design, boundary/data-ownership diagram, assumption ledger (source, uncertainty, falsifier, owner), scenario matrix, alternative decision and actual proof links. If a scenario fails, revise the boundary/capacity/consistency assumption or requirement through its authorized owner; do not hide the failure with more retries, a weaker test or an undocumented new service. During implementation repeated same-shaped deviations trigger re-grounding and redesign. Keep safe compatibility until new proofs pass; rollback must account for persisted data and externally accepted writes, not only code.

## Consumer acceptance scenario

For the product's chosen checkout latency/error objectives under its documented peak tenant skew, delay a required inventory dependency in an owned environment. The shopper gets the defined bounded pending/rejection response rather than a false confirmation; no order is charged twice, unrelated tenants remain within the selected objective and recovery reconciles accepted orders. Record measured percentiles/error counts and resource use with workload identity, plus which operating assumptions remain unproved.
