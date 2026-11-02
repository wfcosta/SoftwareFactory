---
name: streaming-review
description: "Review SSE, WebSocket and streaming API ordering, delivery, buffering, framing, resume and cancellation against accepted promises using finite source-bound scenarios; expose unsupported runtime claims."
---

# Streaming review

## Scope and authority

Use when a consumer-visible SSE feed, WebSocket session or streamed response must preserve accepted delivery, resource or lifecycle guarantees. For example, assess a supplied slow-consumer/disconnect trace against its accepted replay contract. This specializes [domain-review](../domain-review/SKILL.md), retaining its [API evolution](../domain-review/references/api-evolution.md) and [asynchronous delivery](../domain-review/references/async-delivery.md) owners and mandatory product/code/security reviews.

Do not use for ordinary finite page traversal: [pagination-review](../pagination-review/SKILL.md) owns that question. [Retry budget review](../retry-budget-review/SKILL.md) owns cross-layer reconnect attempt/deadline arithmetic; use this skill for stream-specific replay and session semantics, not a duplicate generic network checklist. Broad API compatibility remains with the existing API owner.

Follow the [worker contract](../../agents/WORKER_CONTRACT.md) and assigned domain-review mode. Review defaults to authorized source/configuration and existing sanitized evidence only. A direct no-write request returns chat, without jobs, files or traffic. Attachment grants neither execution permission nor host registration.

## Inputs and accepted promises

Obtain the finite assigned endpoints/topics and supported producer/consumer versions; immutable candidate and configuration identities; protocol/library/proxy versions; accepted contract clauses or scoped owner decisions; and existing source, captures and findings. Resolve paths from the repository root or this skill's location. Use available source readers and retained evidence; do not invent an endpoint, client, load tool or host capability.

Record accepted ordering scope (session, partition or global), delivery meaning (transport received, parsed, applied or durably acknowledged), permitted loss/duplication, replay retention, resume/terminal behavior and cancellation obligations. Identify tenant/actor/subscription scope and permission-change semantics. Code, defaults and captures establish implementation observations, not accepted intent; missing/conflicting promises remain unknown pending their owner's decision.

For every cap or deadline, cite its accepted source, units, scope and effective configuration revision. Obtain finite producer rates/bursts, payload limits, queue capacities, connection/fan-out limits, consumer processing behavior and timing evidence where required. Never supply universal buffer, heartbeat or reconnect defaults.

## Procedure

### 1. Freeze the stream contract and bound graph

1. Define start, complete/error/close, reconnect, acknowledgement and durable-consumer boundaries. Distinguish application messages, protocol frames and transport chunks; a successful write or open connection does not establish consumer delivery.
2. Draw the actual producer-to-consumer graph, including serializer, library queues, process channels, proxy/kernel buffering and consumer/parser/application queues where present. Label each edge's unit, capacity, admission/release owner, in-flight work and propagation of demand or cancellation. Identify uninspected layers explicitly.
3. Derive a finite resource bound from evidenced queue bytes or count times bounded item size, concurrent sessions/fan-out and in-flight/decoder state. Account for shared versus per-subscriber storage without double-counting. A bounded socket queue does not bound an upstream list, pending task set or application queue; an unknown layer prevents a complete finite-bound claim.
4. Trace the actual slow-consumer policy at each saturation point: block/backpressure, disconnect, drop or coalesce. Record high/low-water behavior, upstream propagation and accepted latency/progress consequences. For dropping/coalescing, identify affected message classes, retained ordering and explicit loss/resync signals; do not assume lossless delivery or latest-value equivalence.

### 2. Inspect stream-specific boundaries

1. Trace incremental message assembly across arbitrary reads. For SSE, inspect line/event delimiters, multi-line data, comments/heartbeats and event IDs as implemented; for WebSocket, distinguish frame fragmentation/control frames from complete messages. For other streams, use their actual delimiter/length/schema contract, not SSE assumptions.
2. Inspect split multibyte Unicode sequences, split delimiters, multiple messages per chunk, malformed encoding and close mid-payload. Check the accepted parse/error outcome and bounds on partial-message bytes, decoded/decompressed size, nesting where relevant and time retaining incomplete data. Chunk count or per-frame size alone does not bound assembled messages.
3. Reconstruct disconnect timing relative to send, parse, apply and acknowledgement. Trace resume offset/event ID scope, inclusivity, persistence and retention expiry against an independently grounded expected sequence. Check duplicate application and gaps separately; consumer deduplication can hide raw replay duplicates. Neither TCP nor WebSocket alone promises durable exactly-once effects.
4. Inspect stale/missing/invalid resume IDs, producer restart and expired replay history where applicable. Establish accepted rejection, snapshot/resync or terminal behavior and a finite progress boundary; silently reconnecting forever is not proof of recovery. Delegate attempt/deadline amplification to the retry-budget owner.
5. Trace cancellation from caller through reader, producer, outstanding tasks and resource release. Separate local timeout, abandoned read and requested cancellation from observed producer stop and resource reclamation. Use acknowledged/authoritative stop evidence for the contracted stop boundary; a cancelled future alone proves no remote stop.
6. Inspect proxy buffering/flush behavior, idle limits and heartbeat direction/cadence across the actual path. Distinguish a protocol ping/comment from application progress and confirm which idle timer it can reset. Source settings alone do not prove an intermediary forwarded timely heartbeats.
7. Follow reconnect authentication, tenant/topic/filter binding and resume scope through each new session; include credential expiry and permission revocation under accepted semantics. A reconnect must not widen scope via an old cursor or subscription. Retain applicable authorization review; do not prescribe token cryptography or fresh-login policies absent accepted obligations.

### 3. Select finite, discriminating evidence

Keep report-local rows under the existing assigned impact/proof matrix; no new registry or runtime/schema is needed. Select relevant normal completion, slow consumer/saturation, framing boundaries, disconnect/resume, cancellation and proxy/auth cases. Explain non-applicability without silently omitting an accepted obligation; do not require a Cartesian product.

| Row field | Required content |
| --- | --- |
| Claim and source | Accepted clause/revision; endpoint/topic; candidate, producer, consumer and configuration identities |
| Starting state and oracle | Synthetic message IDs/order and allowed duplicates/loss; actor/subscription/resume state; independently grounded expected result |
| Ordered scenario and bounds | Exact producer/consumer actions and interruption point; finite messages, bytes, sessions, duration and stop/abort condition |
| Graph and resources | Applicable queue path, sourced capacities, slow-consumer policy and derived bound or named unknown |
| Evidence | Exact file/line/symbol/configuration or sanitized receipt locator; environment/time/provenance; static, simulated or actual consumer observation |
| Assessment | Expected versus observed predicate; finding, coverage limit, missing prerequisite/owner and existing role verdict |

Preserve bounded ordered message/frame metadata, raw versus applied IDs, offsets/acks, queue observations, cancellation/close timing and consumer outcome needed for each claim. Keep expected sequences separate from producer output; a golden file copied from the stream is not an independent oracle. Redact credentials, reusable resume tokens and sensitive payloads while retaining safe correlation. A partial trace cannot prove no unseen drops, buffering or continuing producer work.

### 4. Respect execution boundaries

If an actual stream surface, supported consumer, isolation or permission is unavailable, mark proposed runtime rows **NOT RUN** and required proof **BLOCKED**. Continue bounded manual review of the enumerated source paths/clauses and retained receipts; report its exact limits. A diagram, mock, static bound or invented transcript never verifies runtime streaming behavior.

Execution requires a separate explicit assignment naming real tools/recipe, actual target/effects, owned isolated synthetic resources/identities, data, capture, finite limits, abort conditions and recovery owner. This procedure authorizes no endpoint calls, installs, load generation, fault injection, proxy changes or production probes. Use only assigned scenarios; stop on exceeded bounds or uncertain ownership/authority, preserving partial sanitized evidence before separately authorized recovery.

## Artifacts and finite acceptance

Return the existing role report or no-write chat: scoped accepted promises and identities, annotated finite buffer graph, scenario rows, exact source/evidence locators, counterexample timelines, static/exercised distinctions, unknowns and missing proof owners. No extra artifact files are mandatory; factory writes remain within assigned ownership.

Complete the assessment when every scoped promise has a bounded evidence row or explicit justified non-applicability, each derivable resource bound states assumptions, and each finding names the violated predicate and correction/proof needed. Demonstrated conflicts require CHANGES where supported; required unavailable intent/evidence requires BLOCKED. PASS covers only established assigned claims, not release approval. Invalidate dependent evidence after relevant candidate, contract, producer/consumer, configuration, scope or environment changes.

For an accepted lossless ordered resume contract with independently expected IDs `[1, 2, 3]`, retained consumer apply/ack of `2` followed by inclusive replay `[2, 3]` is not automatically a defect: inspect the accepted duplicate policy and actual application deduplication. If evidence establishes `2` was applied twice contrary to that policy, cite the duplicate-effect receipts; without a real consumer observation report the static risk or proof gap, not verified duplicate application.

For an accepted cancellation stop boundary, a local timeout receipt without producer-stop evidence leaves that runtime claim BLOCKED/NOT RUN as applicable, even when source forwards cancellation. These are illustrative decisions, not executed acceptance receipts. If execution was assigned, include actual cleanup/recovery, stopped owned consumers/producers and residual ownership; do not erase shared diagnostics or repair the service implicitly.
