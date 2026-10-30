# Asynchronous delivery, effects and replay

Use with [domain review](../SKILL.md). This covers product queues, scheduled work, callbacks and event processing, not a second factory scheduler or lifecycle authority.

## Inputs

Identify actual broker/service versions and configured delivery, ordering, visibility/lease and acknowledgment semantics; producers/consumers, transactional storage, external effect destinations, tenant identity, throughput/capacity, retry budgets, event schemas and retention. Obtain real platform documentation/configuration evidence and product loss/duplication/latency objectives. Do not infer exactly-once end-to-end behavior from a broker feature or a unique message ID.

## Sequence and decisions

1. Map the complete path from source transaction through publish, delivery, processing, external effects, durable result and acknowledgment. Mark every crash window and transaction boundary. Select the actual guarantee: at-most-once loss, at-least-once duplicates, ordered scope or bounded out-of-order handling. State what the consumer can observe on duplicate, late or missing delivery.
2. Define the deduplication key's business meaning, tenant/resource/operation scope, payload-conflict behavior and collision policy. Define durable storage, atomic uniqueness/claim, concurrency fencing and lifecycle states. Choose a **TTL** from maximum delivery delay, retry horizon, replay window and business retention, including clock/expiry assumptions. Replays older than TTL must be rejected or explicitly reconciled using durable business identity; expiry must not silently reauthorize a charge. A process-local set is not durable deduplication.
3. Put result/dedup record and local business mutation in one supported transaction where possible. For publish-with-database-write use a real transactional outbox/CDC mechanism or document the gap and reconciliation; for consumed local mutations use a transactional inbox/uniqueness invariant. For remote effects, use the destination's actual idempotency key/status lookup when available and record effect identity. Neither acknowledgment-before-commit nor commit-before-ack alone gives exactly once.
4. Handle **ambiguous timeout** explicitly: query the effect by stable business/idempotency identity and reconcile its real state before retry. If the destination cannot establish whether it acted, quarantine/block that operation for authorized resolution rather than blindly repeat or report failure as no effect. Define compensation only where genuinely possible; refund is not erasure of a duplicate charge's consequences.
5. Specify bounded attempts, exponential backoff/jitter where appropriate, visibility/lease renewal and maximum in-flight concurrency. Define poison-message classification, restricted dead-letter/quarantine storage, redaction, alert owner, inspection and replay authorization. Bound queue depth/age, payload size, producer admission and downstream concurrency; choose shed/defer/reject behavior under overload. Infinite retries are not recovery.
6. Version event envelopes and payloads; define old/new producer-consumer coexistence, unknown fields/types, schema validation, event-time ordering and replay transforms. Preserve original immutable event identity and record replay run/transform separately. A corrected event is not the same payload under the same immutable ID. Check deletion/privacy constraints before replaying historical data.
7. Exercise duplicate and concurrent delivery, crash before/after local commit and acknowledgment, lost remote response, expired TTL, out-of-order events, poison messages, outage/backpressure and replay with real configured delivery controls. Fault injection stays in the owned isolated environment. Verify terminal state and consumer-visible effects, not only message-drained counters.

## Evidence, failure and recovery

Provide the boundary/transaction diagram, key/TTL derivation, broker and destination configuration, state transitions, actual failure-injection receipts, effect reconciliation results, dead-letter and replay records and queue-age/load measurements. On unknown effect, exhausted budget, poison storm or capacity breach, stop the affected replay/consumer safely, preserve in-flight identities and alert the owner. Resume only after reconciling committed effects, fencing stale consumers and correcting cause; never acknowledge away lost work as cleanup.

## Consumer acceptance scenario

Deliver an order-payment event twice concurrently, drop the payment response after the destination commits, then restart the consumer before acknowledgment. The customer sees one charge and one order state transition; recovery finds the existing payment by stable identity. A poison event is quarantined without blocking unrelated tenants, queue age triggers the chosen actionable alert, and an older-than-TTL replay is rejected or reconciled without another charge.
