---
name: usage-evidence-review
description: Review source-pinned original-unit usage with exact decimal arithmetic, explicit event/counter semantics and historical completeness limits without automatic metering, billing approval or a new ledger.
---

# Usage evidence review

## Role

Review a finite caller-selected set of actual usage facts and their derived aggregation. The result is a scoped evidence assessment, not a canonical ledger, billing collector, budget authority, spend reservation, accepted-outcome report or automatic metering. Markdown performs no arithmetic enforcement or source authentication.

Follow the [worker contract](../../agents/WORKER_CONTRACT.md), [candidate](../../state/candidate-contract.md) and [environment](../../state/environment-contract.md) contracts. [Telemetry-review](../telemetry-review/SKILL.md) owns meter delivery/coverage, [data-reconciliation](../data-reconciliation/SKILL.md) owns general record reconciliation and [authorization-review](../authorization-review/SKILL.md) owns access. Preserve mandatory independent reviews and existing policy cost-budget ownership.

Direct read-only work uses already permitted retained evidence and replies in chat: no job, files, meter refresh, producer run, invoice/provider request, credential lookup or capture. Dispatch writes only its assigned owned Markdown report. Any separately assigned measurement requires real existing authorized native tools and distinct target/data/capture authority; this skill supplies neither an adapter nor a producer.

## Context

1. Freeze the accepted question/clauses, candidate/policy/environment, exact selected source list/window and original findings. Distinguish review of historical quantities from a request for new metering; do not refresh current data to replace a required historical before-complete snapshot.
2. Obtain authentic source-access, purpose, data handling and report disclosure authority, exact producer/service/account identity and source versions. Credentials, a source name, `reviewed` flags and matching hashes do not authenticate producer, execution, invoice or permission.
3. Obtain independently retained pins over every exact original source byte sequence, immutable locators, capture times, meter interval and qualification. Select no directories implicitly and follow no executable/config/URL references in source data.
4. For each quantity obtain exact source pointer/locator, original quantity representation, family/meter, unit, producer scheme/version/identity, scope, qualification and cohort; identity semantics and aggregation kind must come from reviewed sources, not an agent's guess.
5. Distinguish actual observation, boundary fixture and caller assertion; do not merge their cohorts or treat a label as proof. Record common derivation and incomplete producer coverage rather than claiming independence.
6. Obtain accepted event/sample/session identities, stream/epoch, sequence and source-backed epoch origin/baseline where cumulative. Identify overlaps/retries/copies and whether sources represent the same physical event. Content equality alone is not event identity.
7. Freeze finite source/declaration counts, per/total input bytes, strict JSON nodes/depth/strings, pointer depth/bytes, decimal digits/scale, arithmetic/sort work, report bytes, attempts and elapsed time. Use actual existing reader/arithmetic capabilities; missing mandatory controls block dependent processing, not safe source reasoning.
8. Confirm actual source/report access, private storage, retrieval and retention owner/control. No new canonical source, meter registry, ledger, model key or mandatory manifest is introduced; use report-local rows and existing lifecycle owners.

Legacy review references only: 32 sources, 4,096 records, 128 native declarations, 8 MiB per input/report, 32 MiB total, 250,000 JSON nodes, depth 64, 1,000,000 decoded UTF-8 bytes per key/string, pointers 2,048 bytes/64 components, coefficients 96 digits/24 fractional places. Actual native documented limits and authorized tighter budgets govern; raising a budget requires authentic authority and cannot bypass native hard limits. Prose does not install a bounded parser or exact-decimal engine.

## Task

### 1. Bind historical quantities to original evidence

1. Verify independently accepted original byte pins using existing approved integrity tooling before reading/aggregation and before reliance. No automatic `latest`, pin refresh, source rewrite or current-state recollection may repair a historical gap. Retain original before-complete raw pins and capture ordering.
2. Locate every quantity by an exact pointer into that pinned source. Preserve RFC 6901 escape/index distinctions where JSON Pointer is used; malformed pointer is an error, missing location or explicit null is unknown, not zero. A nonnumeric value is invalid rather than silently unknown.
3. Record original integer or plain decimal string exactly, alongside any derived normalized decimal. Never substitute a declaration-level amount, float conversion, rounded display value, estimate or freshly fetched quantity for its source.
4. Use only existing approved exact-decimal/scaled-integer tooling with observed limits. Arithmetic keeps coefficients and scales exact; no binary floats, implicit exponent/currency conversion or unbounded integer expansion. Without required exact arithmetic capability, report original facts and block dependent totals rather than implement an engine.
5. Quantities must match accepted numeric semantics: the legacy profile accepted nonnegative JSON integers or unsigned plain decimal strings, rejected booleans/floats/signs/exponents/whitespace as quantities and separately bounded coefficient/scale. Other producer representations require an explicitly reviewed exact interpretation, never silent coercion.
6. Inspect actual strict parsing controls for UTF-8, duplicate keys, nonfinite values, NUL/surrogate/structure and byte caps where required. An agent's post-parse count cannot certify preallocation. Opaque finite numeric metadata is not automatically a quantity.
7. Preserve null/missing/unavailable distinctions from observed `"0"`; a wholly unknown group has null known subtotal, while a known zero remains zero even if another component makes the group partial.

### 2. Freeze grouping and deduplication semantics

1. Aggregate only exact matching family, meter subtype, original unit, scope, producer scheme/identity, kind, qualification and cohort. Separate input/output tokens, different credit products, transferred/stored bytes, elapsed/CPU time and listed inventory/calls.
2. Keep USD/EUR and all other currencies separate; do not convert FX, infer a currency exponent or price, treat credits/tokens as money or calculate a global economic total. This review does not establish invoice correctness, budget compliance or complete spend.
3. Deduplicate identical declarations/event identities exactly once and record the duplicate evidence. Conflicting reuse of a declaration/event/sample identity blocks the affected aggregation; no latest-wins or averaging even when amounts happen to agree.
4. The same source pointer may not be relabelled as multiple events to multiply a fact. Projection aliases for the same native fact count once; conflicting scope/cohort/qualification interpretations block. Byte-identical distinct source files require reviewed physical-event identity, not automatic deduplication or automatic independent charges.
5. Retain earlier identified events across retries, handoffs and new epochs. Retrying a report cannot erase consumption, restart a stream or reset accepted execution counters.
6. State whether observed grouping is complete only for declared records; absence of a family or source instrumentation remains unknown, not zero and not proof that no consumption occurred.

### 3. Apply each aggregation kind explicitly

| Kind | Required source-backed identity/state | Permitted aggregation and unknown handling |
|---|---|---|
| Delta | Stable event, stream and epoch | Sum each identified event once; retain every observed event across retries |
| Cumulative | Stream, explicit epoch origin, ordered sample sequence; optional source-backed baseline | Difference adjacent known samples within the same epoch; no invented initial zero |
| Peak | Explicit gauge/observation scope | Maximum observed value, never sum; coverage remains sampled/declared |
| Inventory | Explicit snapshot/list scope | Maximum observed inventory for the declared comparison, not calls or consumed work |

1. For cumulative records verify epoch origin equals an actual captured source value; sequence/baseline belongs to the same reviewed stream/epoch and precedes the first sample. Multiple baseline declarations must agree in value/sequence and preserve original source pointers.
2. With known baseline `10`, samples `12` then `15` yield deltas `2` and `3`; without baseline the first delta is unknown and only the subsequent `3` is known. Do not take the first cumulative value as full usage.
3. A null sample breaks adjacent known-delta derivation; the next sample without an applicable known preceding baseline remains unknown. Preserve later known adjacent differences as a partial subtotal, not complete coverage.
4. A decrease in the same epoch, including across nulls, is conflict/blocking evidence, never an inferred reset. A new epoch requires explicit source-backed origin and its own evidenced baseline semantics; keep earlier epoch consumption in the report.
5. A known-zero origin is allowed only where that exact producer contract and native receipt support it; no generic reset/zero inference from failure, restart, retry, transport close or an agent label.
6. Keep exact calculated decimal strings, known/unknown counts, partial status and derivation locators. Never conflate an observed peak or provisional inventory maximum with additive transfer/storage/call consumption.

### 4. Interpret native session evidence narrowly

1. Use only an already available approved native receipt and its actual published version/fields; no adapter implementation, producer run, schema rewrite or legacy-to-current relabel. If required terminal/context fields are absent, block the terminal-consumption claim.
2. Require actual context closure plus a final closed or finalized-failed status. `failed` alone can describe an active scope; a final failed session still contributes observed ingress, frames, validated/delivered messages and other actually metered consumption once.
3. Keep direct-child reaped, cleanup-complete, observer failure, context closure and descendant/remote stop separate. Failure or incomplete cleanup does not exempt observed consumption; closure is not proof of complete billing or remote-work termination.
4. Source-backed stdout ingress bytes are transfer at that boundary, not HTTP/TLS bytes. Frame starts, validated messages and delivered messages are distinct meters; peak retained frame bytes are a peak, not stored-byte consumption.
5. `tools/list` descriptors are inventory, never tool calls. Seven listed tools prove neither seven invocations nor seven successful operations. Missing invocation/token/credit/money/sandbox/storage meters stay explicitly unavailable, not inferred from traffic.
6. Multiple final snapshots/copies of the same physical session are one contribution under reviewed identity. Distinct source IDs/pins/pointers may be locators but do not independently prove distinct sessions; reconcile identity before adding them.
7. If a provisional tool count is retained beside a final transport receipt, preserve that provisional inventory qualification. A final byte counter does not make an earlier partial listing complete.

### 5. Close completeness and historical limits

1. Reconcile every assigned finding/criterion to original source pointers and independently pinned facts, computed evidence or an exact missing prerequisite. Do not close an old gap with new data outside its required historical window.
2. Preserve failed attempts and source conflicts. Required missing historical pins, unknown baseline/epoch, duplicate-identity conflict or absent actual meter blocks dependent totals/completeness; narrower known subtotals can still be reported with explicit partiality.
3. No source refresh, producer trigger, invoice query, deletion, price lookup or provider/model call is implied. Separately requested new measurements need fresh exact authority, real native controls and their own evidence; they cannot retroactively create missing before-complete proof.
4. Describe processing completion separately from usage completeness. A complete review can conclude coverage is unknown outside declared facts; it cannot claim all producer usage, billing correctness, available budget, accepted business outcome or permission for more work.

## Constraints

No automatic metering, new ledger/canonical source, runtime/parser/adapter, model/provider request, credential lookup, source mutation or inferred reset. Use [security/privacy](../domain-review/references/security-privacy.md) for permitted evidence fields; [privacy-request](../privacy-request/SKILL.md) owns subject export/deletion. Withhold exact private content unless authorized; redacted derivatives have different bytes/pins and cannot be represented as the same original raw hash.

Report-local rows do not authorize new event/plan/model fields or shared writes. Observe existing native limits; accepted reference budgets are not enforcement. Changes to source/pin/producer/mapping/identity/epoch/cohort/tool interpretation invalidate affected derived evidence while historical originals remain immutable.

## Format

Return the [assigned response](../../templates/response-template.md) or no-write chat with accepted scope/identities, historical raw pins/times and actual source provenance, original quantity/pointer, exact unit/meter/producer/scope/qualification/cohort, kind/event/stream/epoch/baseline, observed versus derived values, duplicate/conflict accounting and finite limits.

| Criterion/source | Pinned source/pointer and original quantity | Exact semantic dimensions/kind | Calculation/identity basis and observed result | MET / NOT_MET / BLOCKED; unknown/partial reason, owner/action |
|---|---|---|---|---|

Include exact-decimal group subtotals or maxima, unknown/unavailable and unreported families, historical completeness boundaries, every criterion/finding, static/actual/NOT RUN distinction, safe immutable retrieval/access/retention, original/derivative provenance, executing-role verdict and modified product files (normally `[]`). List exact missing prerequisites and any surrounding-operation residual owner; this offline review causes no cleanup effects. Report only exercised arithmetic/tool evidence, not prose guarantees.

Illustrative positive, **not executed**: original pinned decimal strings `"0.1"` and `"0.2"` for two distinct same-unit delta events yield exact `"0.3"`; an identical repeated event contributes once. Adding a null source component keeps known `"0.3"` with partial/unknown coverage. A finalized failed session's one observed ingress byte remains consumption.

Illustrative negative, **not executed**: same-epoch cumulative `12` then `11` is not an inferred reset; conflicting identity blocks that aggregation. Seven listed tools do not become seven calls, an active failed receipt is not terminal, EUR/credits do not become USD, and refreshing today's meter cannot supply yesterday's missing raw pin. Meter delivery/completeness belongs to telemetry-review rather than an invented billing guarantee.
