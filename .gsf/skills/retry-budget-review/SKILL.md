---
name: retry-budget-review
description: Review cross-layer retry amplification and end-to-end attempt, deadline and elapsed budgets using accepted limits and existing evidence; identify unsafe repetition and unproven bounds.
---

# Retry budget review

## Scope and authority

Use when a logical operation can be repeated by callers, SDKs, proxies, workers or redelivery. This is a focused [domain-review](../domain-review/SKILL.md) procedure extending the [async bounded-attempts step 5](../domain-review/references/async-delivery.md#sequence-and-decisions), not a replacement for API, architecture or async-delivery review.

Apply the owner's modes, policies and mandatory reviews. Here, design/review uses supplied source, configuration and existing sanitized receipts only. Direct read-only requests return the table in chat without jobs or evidence writes; an authorized factory review writes only its assigned report. This procedure authorizes no traffic, external calls, installs, configuration changes, resets or fault experiments. Missing runtime proof is reported, not generated implicitly.

## Inputs

Obtain the accepted operation intent and immutable source/candidate identity; the operation's stable business identity and effect destination; caller-to-leaf paths; actual versions and effective retry/timeout settings; and existing attempt, timing and outcome evidence. Include app, SDK, transport/proxy, queue and workflow retry owners where present.

For each numeric cap, cite an accepted requirement or accepted effective configuration with its exact locator, version, units and scope. Distinguish an approved objective from implementation settings and runtime observations. Resolve whether a setting means total attempts or additional retries from that version's actual semantics. Missing or conflicting values stay **unknown**; examples below supply no default limits.

## Procedure

1. Enumerate a finite set of logical operations and their accepted success, permanent-failure and ambiguous-outcome meanings. Preserve business identity across redelivery, restart and resume; do not treat a new process or request ID as a new budget automatically.
2. Draw each reachable call graph, labeling retry loops, conditional branches, calls per parent attempt and effect boundaries. Identify which layer owns each retry decision and the shared end-to-end cap; expose independent hidden retry loops rather than assuming one configured layer controls all others.
3. Normalize counts before arithmetic: an **attempt** includes the initial execution; a **retry** is an additional attempt. A cap of `r` additional retries permits `1 + r` total attempts at that layer. Count outer and leaf attempts separately, including failed and timed-out attempts; do not use the number of successful responses as the count.
4. Derive static bounds from the actual graph and effective caps. For a simple sequential chain where every parent attempt invokes one child retry loop, multiply total-attempt caps along that path. Sum sequential sibling calls within a parent attempt; account for reachable conditional paths rather than multiplying all branches indiscriminately. Missing/unbounded layers prevent a finite bound claim.
   - Outer **2 total attempts**, inner **3 total attempts** gives at most **6 leaf calls**, not 5, 9 or an observed count. Early success, permanent rejection or a tighter deadline can reduce actual calls.
   - Concurrency width is a simultaneous-in-flight limit, not an attempt multiplier by itself. Model fan-out cardinality separately. Hedging starts additional overlapping attempts: count their actual launches, configured caps and loser cancellation/remote-effect uncertainty separately from sequential retries.
5. Trace the real root deadline through every boundary, including serialization, queues, broker redelivery and restored workflows. Determine whether the actual API propagates a shrinking remaining deadline, merely resets a per-attempt timeout, or drops it. A timeout setting without propagation/enforcement evidence does not prove an end-to-end cap.
6. Account for elapsed time from the accepted operation start: execution, connection/setup, queue/admission wait, backoff, jitter and other retry delays all consume it. Record units, clock basis, observation gaps and remaining budget; do not sum overlapping spans as sequential elapsed. Translate cross-process clocks/deadlines using actual supported semantics, not assumed comparable monotonic timestamps.
7. At every retry decision check remaining attempt and time budgets, error classification and outcome safety. Use accepted transient/permanent classifications; permanent validation/auth/business rejection stops repetition unless the accepted contract explicitly says otherwise. Record the actual behavior, not just the intended policy.
   - Inspect `Retry-After` parsing, units/date-clock handling and interaction with the remaining deadline. If the required wait cannot fit, do not shorten it to force another attempt: expire or defer only as the accepted contract permits. A wait that fits does not prove the next attempt fits; include its actual timeout/allocation and queue budget, or mark unknown.
8. Separate local timeout/cancellation from confirmed stopped remote work. Cancellation acknowledgment, fencing or authoritative remote-state evidence must establish what actually stopped; an exception or cancelled local future does not prove the effect never committed.
9. Check stable idempotency scope, payload-conflict behavior, retention and concurrent claims against the full retry/replay horizon using the async owner. For an ambiguous response, reconcile by the accepted business/idempotency identity using available receipts/status evidence. An idempotency label alone is insufficient; unresolved remote outcome blocks blind repetition, even with unused budget.
10. Carry cumulative counters, original deadline/elapsed basis, prior effects and retry ownership across handoff/resume. Never reset them to evade caps. Distinguish a per-delivery implementation counter from the operation-wide total; missing durable history means the remaining budget is unknown, not restored.
11. Compare each static bound with existing observations by operation, layer and evidence window. Deduplicate telemetry for the same actual attempt; distinguish attempts launched, leaf calls, completed responses and committed effects. A partial trace is a lower bound on observed launches, not proof that absent calls never occurred.

## Finite operation table

Return one row per scoped logical operation; name excluded paths and why. Attach the annotated graph and layer-specific source locators so grouped cells remain auditable. Use `unknown` rather than blank cells or invented zeroes.

| Operation / accepted intent and identity | Layer caps, semantics and sources | Retry owners / graph assumptions | Static leaf-call bound | Observed attempts / evidence window and completeness | Deadline, elapsed and remaining budget / evidence | Outcome, reconciliation and decision |
| --- | --- | --- | --- | --- | --- | --- |
| Supplied sequential example only | Outer 2 total; inner 3 total; illustrative input | Outer calls one inner loop per attempt; no fan-out/hedge | At most 6 | Unknown; no runtime evidence supplied | Unknown; no accepted timing supplied | Arithmetic only; no runtime safety verdict |

For real rows, distinguish accepted limits, source-derived bounds and measured observations explicitly. Include the actual error class, `Retry-After` decision, idempotency/reconciliation receipt and resume-accounting status in the row or its linked findings; each unresolved field has a named owner and missing prerequisite.

## Findings and handoff

Report inspected identities/locators, operation table, graph, assumptions, concrete amplification paths, observed violations and unexercised behavior. Use the assigned role's existing verdict: demonstrated defects yield CHANGES where supported; missing required budget, deadline, liveness or reconciliation evidence yields BLOCKED. Static consistency may satisfy only an assigned static claim, never runtime enforcement or remote-effect safety.

For each finding, state the consumer consequence and precise correction/proof needed from the existing owner. No finding authorizes changing retry settings or replaying traffic. Preserve required API/architecture/async and product reviews; this table is not a new approval or execution authority.

## Example decisions

- Accepted outer 2 total and inner 3 total on the simple sequential graph: report static maximum 6 leaf calls; observed attempts remain unknown without receipts.
- Existing receipt says the payment timed out after possible commit, and lookup is unavailable: report ambiguous outcome and block repetition, even if attempts remain.
- A supplied `Retry-After` exceeds the recorded remaining deadline: report no fitting retry under that deadline, not a silently shortened delay or refreshed deadline.
- Only a concurrency cap is supplied, or a hedged loser lacks stopped-effect evidence: do not infer a finite sequential attempt bound or assume cancellation prevented its remote effect.
