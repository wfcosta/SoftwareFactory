---
name: telemetry-review
description: Assess bounded accepted diagnostic questions against actual log, metric and trace delivery, correlation, privacy and cost evidence without silently enabling instrumentation, expanding queries or claiming full operability.
---

# Telemetry review

## Scope and authority

Use for changed instrumentation, signal pipelines or diagnostic coverage. Apply [domain review](../domain-review/SKILL.md) and its [observability](../domain-review/references/observability.md) and [security/privacy](../domain-review/references/security-privacy.md) references under the [worker contract](../../agents/WORKER_CONTRACT.md). This skill assesses whether accepted questions can be answered safely from actual signals; it does not establish another coordinator, mandatory gate or monitoring runtime.

Telemetry quality is narrower than [operability review](../../agents/operability-reviewer.md): alert evaluation/delivery, responder readiness, mitigation, stop/resume and recovery need their own accepted scope and actual proof. A complete trace, clean dashboard or successful telemetry export proves none of those. Preserve required independent code/security and applicable specialist reviews. An independent-review obligation needs a genuine nonauthor reviewer, not author self-review under another label.

A direct read-only/no-write request reads only existing permitted sources and retained evidence, then answers in chat: no job, files, application runs, collector starts, exports or new endpoint/query calls. An authorized dispatch writes only its assigned report/evidence/events for coordinator promotion to the accepted destination; it cannot edit shared reports or product/configuration.

Choose **existing-evidence review** or **explicitly assigned observation**. Neither authorizes enabling debug logging, instrumentation or exporters; changing sampling, collection, access, retention or configuration; installing drivers; or broadening query time/population/fields. An absent signal is not permission to turn it on. Metadata neither registers a host plugin nor grants diagnostic access.

## Establish bounded diagnostic intent

Read the exact assignment, accepted critical consumer paths and diagnostic questions, candidate/diff, instrumentation/pipeline configuration, real signal schemas, existing query/runbook definitions and assigned prior findings. Bind identity and access through the [candidate](../../state/candidate-contract.md) and [environment](../../state/environment-contract.md) contracts; use [release](../../state/release-contract.md) only where actual environment operations apply, never to imply deployment from repository source.

1. Recover a finite list of accepted questions with their owner and exact criterion/source revision. Examples of question shapes are locating a failed boundary or distinguishing acceptance from completion, not invented requirements for this product. Missing intent blocks the affected expected answer; do not invent SLOs, detection windows or latency/cost targets.
2. For each question identify the actual consumer operation/population, success/failure meaning, observation point, required signals and answer predicate. Record which logs, metrics and traces are applicable and why an absent modality is acceptable only against accepted scope; do not demand all three everywhere or omit one that is required.
3. Freeze the accepted evidence interval, population/tenant/environment, selected fields, row/byte/query/case/attempt/time limits and observable cost bounds before any new observation. Include pagination, runner retries and capture overhead. No implicit wildcard searches, full payload reads, production scans or query expansion when the first result is empty.
4. Identify actual emission sites, instrumentation/runtime versions, propagators, exporters, collector/processors, transport and destination/backend/query identities. Distinguish configured, currently loaded, observed receiving and merely proposed components; a configuration file is not a live pipeline receipt.

Use one finite row per accepted question/scenario in the existing report:

| Row / exact accepted question source | Operation / outcome and bounded population/window | Required signal and emitter-to-receiver path | Expected diagnostic answer / acceptance | Actual source and receiver evidence | MET / NOT_MET / BLOCKED; next owner/action |
|---|---|---|---|---|---|

Add correlation method, sampling/clock limits and privacy/cost evidence to each applicable row. Expected and observed answers must be separate; current dashboard output cannot define its own correctness. A static-only row cannot satisfy an actual-delivery predicate.

## Ordered comparisons

1. **Trace what is measured.** Follow an accepted task from entry through synchronous and asynchronous boundaries to final consumer outcome. Compare event names, units, status/error semantics, metric type/temporality and aggregation with the actual schema. A successful enqueue or HTTP acceptance is not successful durable completion; distinguish retries, duplicate delivery, timeout, cancellation and partial failure where affected.
2. **Join signals without leaking identity.** Trace log operation/request identifiers, metric aggregation context or exemplars where supported, and trace/span parentage across actual process/queue boundaries. Inspect asynchronous links, lost propagation and retry identities. High-cardinality trace/request IDs belong only in approved diagnostic fields or supported exemplars, not metric labels. Nearby timestamps or similar text alone do not establish causal correlation.
3. **Compare emission to receipt.** For each required real path retain exact emission/action evidence, intermediate receipt/drop/queue evidence where needed, and the actual destination's queryable record/aggregate with matching safe correlation and artifact/configuration/time origin. An SDK call, console line, exporter success or collector ingress alone does not prove final backend receipt. A destination screenshot without known input/population cannot prove completeness.
4. **Account for population.** Compare known accepted fixture emissions/outcomes with received unique events or applicable metric deltas, allowing only evidenced reset, aggregation, delay and sampling semantics. Record missing, duplicate, late and rejected signals, counter resets, cumulative versus delta handling and bounded retry/backpressure behavior. Unknown denominator or delivery interval blocks completeness claims, not automatically all narrower observations.
5. **Bound dimensions and volume.** Inspect actual label/attribute domains and observed distinct series, events/spans, sizes and ingestion/query volume for the accepted interval. Compare bounded route/operation/outcome values against raw URL, unbounded error text, user/tenant/request identifiers and payload fields. State count/volume provenance and observed workload; a finite fixture or static enum does not prove production cardinality bounds.
6. **Follow sensitive data end to end.** Trace classified fields through instrumentation, processors, transport, storage, queries and reports. Compare actual minimization/redaction, access, retention/deletion and destination residency requirements with accepted sources. Check headers, exceptions, resource attributes and baggage, not only message bodies. Application-side masking does not prove pre-export redaction; hashing an identifier does not automatically make it nonpersonal.
7. **Compare cost honestly.** Use accepted volume/retention/query obligations and actual meters, units, pricing revision/currency and measured interval where required. Separate measured cost, explicit assumptions and projections; compression, sampling or cheap local storage does not establish receiver cost. Unknown required meter/budget proof is BLOCKED. Do not invent a budget or recommend collecting more data as an uncosted default.
8. **Bound sampling conclusions.** Record actual head/tail sampling, inclusion/drop rules, rate changes, late spans and unavailable parents. Compare error/rare-path visibility with accepted diagnostic needs. Sampled absence does not prove no failure; biased traces cannot supply an unsampled error denominator. Do not multiply samples into a population estimate without evidenced inclusion probabilities and accepted inference semantics.
9. **Bound time conclusions.** Distinguish event, ingestion and query time; record actual clock source/skew uncertainty, resolution, delay, aggregation/flush windows and accepted interval boundaries. Use supported monotonic duration evidence where appropriate; subtracting unrelated host wall clocks does not establish latency/order. Missing clock/delay bounds block timing claims, not license an invented tolerance or wider query.
10. **Check missing-data behavior and history.** Compare existing evidence for disabled instrumentation, unavailable receiver, rejected/late events, broken correlation and empty versus zero results where those negatives are accepted. No data is unknown coverage, not perfect health. Reconcile every assigned earlier finding against its original identity and current evidence; a new query definition cannot close a missing-receipt finding.

## Existing evidence versus authorized observation

Existing-evidence mode inspects retained sanitized captures, source and loaded-configuration receipts only. Record each capture's original query, interval/population, versions and provenance. Missing pipeline access or receiver proof stays BLOCKED; do not silently fetch live data, generate traffic or run a broader search. Static defects can be reported as static defects without claiming an unobserved outage.

For explicitly assigned observation:

1. Discover real repository-supported commands, SDK/collector/backend interfaces, driver versions and approved queries through permitted reads. Do not invent flags, commands, endpoints, dashboard names or replacement collectors. Required unavailable collectors, receivers or drivers block the affected proof; an in-memory mock cannot certify that pipeline.
2. Confirm exact target/configuration and fresh scoped authority, data handling, isolation, owned synthetic fixtures, observable budgets, stop boundaries and separately authorized cleanup. External reads also need exact account/resource access. Product requests, replay or synthetic failures can write data or trigger notifications; observation authority alone does not permit them.
3. Execute only accepted actions/queries against the named artifact and receiver. Capture exact command/action/cwd or query identity/text, bounded interval/population/fields, versions, UTC and available monotonic timing, actual result/status and sanitized receipts. Keep each attempt and contrary output; no silent pagination, additional fields, time-window widening or retry beyond accepted bounds.
4. On sensitive emission, unsafe volume, required budget uncertainty or possible external side effects, stop only owned stimuli and preserve minimal safe evidence. Route the exact problem to the coordinator/authorized owner. Never disable collection, purge receiver evidence, alter access or claim a stopped remote operation without authority and observation.

## Verdict and evidence handoff

Use the executing role's documented verdict: PASS only for the bounded accepted review with no material defects or required-proof gaps; demonstrated violations yield CHANGES where supported, otherwise BLOCKED. Required absent emission/receiver/correlation evidence yields BLOCKED, never an inferred healthy pipeline. Retain both defects and gaps when they coexist; a demonstrated defect may justify CHANGES without hiding blocked comparisons.

Return the [assigned response format](../../templates/response-template.md), or direct no-write answer, containing:

- Accepted questions and exact source clauses, finite rows, actual diagnostic answers and explicit static/exercised/inferred limits.
- Candidate/policy, emitter/artifact/runtime/configuration, collector/processors/receiver and query identities; actual emission-to-receipt/correlation lineage and received-versus-expected accounting.
- Cardinality/PII/access/retention/cost observations, sampling and clock uncertainty, unobserved intervals/populations and unproved full-operability obligations.
- Each finding's exact source/line or indexed receipt, violated criterion/invariant, triggering scenario, impact, proposed owner/action and observable resolution condition; optional improvements separate from required proof.
- Every assigned acceptance criterion with actual MET/NOT_MET/BLOCKED evidence and next owner/action; no invented SLO, optionalized required receiver or omitted negative case.
- Immutable sanitized receipts with raw/retained provenance, digests, locators, authorized reader/retrieval and real retention control or manual owner. Retain no tokens, personal payloads or credential-bearing query links.
- Executed versus unrun actions, exact missing prerequisite and stop class (`product`, `environment` or `factory_bug`), modified product files `[]` and any owned residual stimulus/resource with accountable handoff.

Preserve evidence before authorized teardown; stop only owned drivers and remove only assigned disposable fixtures. Do not edit pipeline configuration or erase diagnostics as cleanup. Candidate, schema/configuration, query, pipeline, receiver, sampling, clock assumptions or target changes invalidate affected proof. Follow existing dispatch completion rules, never automatic enablement, publication or a new mandatory gate.
