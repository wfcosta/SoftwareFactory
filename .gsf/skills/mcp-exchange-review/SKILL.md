---
name: mcp-exchange-review
description: Review actual contents-free MCP exchange captures and pinned ordered trajectory differences, preserving correlation, partial/failure and closure limits without exposing native IDs or claiming business equivalence.
---

# MCP exchange review

## Role

Assess a finite existing native MCP exchange capture or descriptive comparison of two original captures. An observation of public request/reply envelopes is not server execution, all-host activity, model streaming, business acceptance or billing. This Markdown procedure is not a capture engine, transport wrapper, transcript fabricator, canonical event parser or new gate.

Follow the [worker contract](../../agents/WORKER_CONTRACT.md), [candidate](../../state/candidate-contract.md) and [environment](../../state/environment-contract.md) contracts. [Telemetry-review](../telemetry-review/SKILL.md) owns diagnostic coverage, [streaming-review](../streaming-review/SKILL.md) owns framing/backpressure/session semantics, [retry-budget-review](../retry-budget-review/SKILL.md) owns retries and [authorization-review](../authorization-review/SKILL.md) owns permissions. Preserve independent required reviews.

Direct read-only work examines already permitted retained evidence and returns chat: no jobs, files, target launch, capture, model/provider request or tool call. Dispatch writes only its assigned owned Markdown report. New native capture requires a separate explicit assignment and already available authorized contents-free observation capability; absence blocks capture-dependent claims, not complete safe source analysis.

## Context

1. Freeze accepted review questions/clauses, exact candidate/policy/environment, native client/transport/capture versions, finite observation window/scope and original findings. Identify what boundary/directions were actually observable, including any traffic not covered.
2. Obtain authentic authority for source access, data handling and report disclosure. For separately assigned capture also require exact executable/build/ordered argv/cwd/environment or approved transport/target, session actions, owned isolation, finite bounds, stop and separately authorized cleanup.
3. Obtain actual native contents-free captures with independent exact original byte pins, capture provenance and finalization receipts. Do not scan private transcripts, HOME, chat history, credentials or unrelated logs. An absent capture is missing evidence, not zero operations.
4. Identify real existing native observation support for safe local order, private correlation, fixed method categories, safe result dimensions, bounded IDs/records, closure and private-ID erasure. Do not retrofit an observer, monkeypatch, wrap the SDK, synthesize envelopes or infer a transcript from narrative text.
5. For comparison select exactly two pinned original captures and retain their original qualifications. Same supplied bytes chosen twice are not independent runs. A raw pin establishes byte consistency, not authenticated producer, approval or historical execution.
6. Freeze finite input/report bytes, messages, operations, privately processed ID length/count/retained/cumulative bytes, dimensions, comparison work, elapsed time and attempt/cost bounds. Actual native documented limits and accepted tighter budgets govern; changed budgets need authority and cannot exceed native hard ceilings.
7. Confirm private originals/readers/retrieval/retention under the candidate contract. Contents-free evidence still has access and retention obligations; do not attach unrestricted private paths or secret-bearing locators to the public answer.

Legacy reference budgets only: 1,000 operations/4,000 messages, ceilings 2,000/6,000; 4,000 private direction/type/ID keys, ceiling 6,000; 256 bytes per ID, ceiling 4,096; 262,144 retained ID bytes and 1,048,576 cumulative ID bytes, ceilings 1,048,576/4,194,304; 8 MiB input/report and strict JSON 250,000 nodes/depth 64/1,000,000 decoded bytes per key/string. These are not installed controls, allocation guarantees or permission to alter effective host limits.

## Task

### 1. Validate provenance and the capture boundary

1. Verify actual original capture bytes against independently retained pins with existing approved tooling. Keep strict format/type/bound validation separate from authenticity; do not silently repin, refresh current state, rewrite old captures or relabel legacy versions.
2. Record actual capture scope: attempted sends and received public MCP messages, transport versus SDK boundary, client-relative incoming/outgoing, start/end, status/failure, active/entered/exited scope, provisional state and independent versus caller-asserted outer-client exit.
3. Require actual contents-free native evidence, not a fabricated “zero” or hand-written transcript. Configuration/source review can identify risks but cannot establish activity counts, correlation or successful capture.
4. Native prerequisites include approved ambient baggage/parent-span exclusion throughout capture and cleanup, restoration afterward, safe SDK diagnostics and bounded lifecycle. A no-op provider alone is insufficient; missing mandatory capability blocks new capture. Never reconfigure a global provider or install a replacement wrapper.
5. Preserve only fixed categories, local generated indices, direction/kind/state, presence/count dimensions and safe terminal counters. Never retain raw/native RPC IDs, hashes/alias maps of secret IDs, session tokens, tool names, arbitrary unknown method strings, arguments, values, error messages/codes/data, metadata, environment or payload fragments in the review.
6. A raw original that is not already contents-free cannot be declared safely transformed by Markdown. If authorized tools provide a sanitized derivative, identify its different bytes, provenance and pin; withhold private content and narrow unsupported original-history claims.

### 2. Reconstruct safe observed order and correlation

1. Keep capture-local observation/operation indices as locators only. They are not native IDs, cross-file operation identity, causal links or a total remote execution order. Out-of-order replies can be valid; timestamps alone do not correlate them.
2. Require native private correlation using exact ID type/value and opposite request/reply directions. Integer `1` and string `"1"` must not collapse. Do not reconstruct or publish those private values from the capture.
3. Separate outgoing request attempted, send-returned and delivery-unknown; incoming-observed means boundary receipt only. Send return need not prove pipe flush, remote delivery/execution, charge or durable result.
4. Distinguish request, notification, result and JSON-RPC error. Fixed unknown-method category is valid uncertainty, not permission to reveal a remote string or infer a tool from `tools/call`.
5. Keep correlated, orphan, duplicate and ambiguous observations separate. An orphan reply preceding a request is not retroactively assigned. Reused IDs/duplicate requests or replies create sequence ambiguity, not a last-write-wins operation or invented ordering.
6. Preserve previously observed linked replies even when later duplicates make sequence ambiguous; subsequent unassignable replies remain explicit. Null-ID errors are unassignable, not automatically one duplicated operation.
7. Cancellation/progress/logging notifications remain separate observations. Correlating a cancellation target records only a cancellation request, including attempted sends; it does not prove accepted cancellation, effective interruption or remote stop.
8. Pending while active differs from no-correlated-reply-at-actual-exit. An ambiguous request can have an observed but unassignable reply. Missing replies retain unknown cause: interruption, still-running work, lost reply, audit cap or other unknown, never automatically remote failure.

### 3. Limit result and terminal conclusions

1. Safe result dimensions are only bounded member count, content presence/list-item count or unknown, structured-content presence and `isError` field presence; field presence is not its value. JSON-RPC error evidence is error-data presence only, not its contents or code.
2. Check internal dimension consistency: a non-null content-item count requires content present; result member count cannot be less than distinct recorded known-key presence flags. A present non-list content member legitimately has unknown/null list count.
3. A JSON-RPC result is not a successful business outcome; an error reply is not proof of no effects. Equal dimensions can hide completely different values, identities and outcomes.
4. Preserve final native receipt or explicit absence, EOF/close observations, cleanup-complete/incomplete, underlying versus observer fault, raw frames started/validated/delivered and admitted-versus-withheld message counts. A native message received but rejected by an audit limit may already represent work even when not recorded/forwarded.
5. An active `failed` snapshot is not terminal. Require actual scope exit plus context closure and closed/finalized-failed receipt before a terminal-counter claim; caller assertion of outer-client exit remains an assertion boundary, not authenticated evidence.
6. Distinguish explicit unterminated raw frame, started-minus-validated gap of unknown cause and no unterminated fault reported. None establishes universal model-stream completion; EOF and session closure are not semantic model finish markers.
7. Keep partial/provisional, failed-before-entry, missing terminal, truncation/audit cap, unanswered, ambiguity, orphan/duplicate and delivery-unknown qualifications. A bounded prefix is not an exhaustive successful session and cannot be upgraded by later publication.
8. Record direct-child reaping, context closure and cleanup separately from descendant/remote termination. Stop only owned authorized resources; a local cancelled await or clean scope exit is not remote stop. Retain residue/unknown liveness with accountable owner.

### 4. Compare exact originals descriptively

1. For each pinned side preserve its status, provisional/scope/client-exit assertions, faults, terminal receipt, raw-frame gaps, unrecorded/unforwarded counts and all scope/identity limitations. A completed comparison may describe failed captures without turning them successful.
2. Compare operation counts grouped by fixed direction/method category, notifications separately by category/direction/cancel relation/write state, and complete retained local message category paths in original order. Do not align local index numbers across captures as native identities.
3. Compare safe linked result/error dimensions and unanswered/ambiguous counts separately from unassigned replies and notification paths. A notification-only path change need not change result dimensions; preserve that distinction.
4. Report same observed count or additional observed operations on either side descriptively. Extra operations are not a penalty, invalidity, higher cost, winner or evidence of better/worse reasoning; their validity needs independent task evidence.
5. Equal category sequences or safe result dimensions establish only equality of those structures. They prove neither matching returned values, business semantic correctness, accepted outcome nor semantic equivalence. Different paths can achieve the same result, but these captures cannot establish that either.
6. Always retain unknown same-task/target/server/external-state identity where not independently supplied, intentionally absent payload/tool identities, missing independent accepted-result predicate and integrity-not-authenticity. Do not invent a similarity score, cost estimate or semantic winner.
7. Do not create an edited “alternative native run.” If an already authorized boundary fixture is supplied, label it as a fixture in surrounding evidence and preserve that qualification; it is not a second actual capture or producer execution.

## Constraints

No engine, observer implementation, transcript fabrication, model/provider call, tool invocation, new event/schema/ledger or automatic publication. Actual approved native capture capabilities must already exist; Markdown cannot make correlation/private-ID erasure or wire bounds true. No raw identifiers or payload hashes masquerading as contents-free metadata.

Use [security/privacy](../domain-review/references/security-privacy.md) for privacy scope and [contract-drift](../contract-drift/SKILL.md) for accepted compatibility rather than inferring semantics from count equality. Original bytes remain immutable; stale pins, changed capture/version/scope/identity, privacy controls or missing required finalization invalidate affected proof. No fallback from missing capture to zero activity.

## Format

Return the [assigned response](../../templates/response-template.md), or no-write chat, containing exact accepted scope/identity/pins and source authenticity limits, real native prerequisites/bounds, capture boundary, safe ordered observations/correlation, request/notification/reply dimensions and uncertainty, closure/raw-frame/cleanup evidence and descriptive two-side comparisons where assigned.

| Criterion/source | Capture side and finite scope | Expected observable predicate | Original receipt/local safe locator and actual result | MET / NOT_MET / BLOCKED; qualification, owner/action |
|---|---|---|---|---|

Account for every assigned criterion and prior finding, static/exercised/NOT RUN distinction, exact missing prerequisite, private-safe retrievable original/derivative digests and access/retention, executing-role verdict, modified product files (normally `[]`) and residue/unknown-live owner. Comparison completion is descriptive, never business PASS; missing required native capture remains BLOCKED.

Illustrative positive, **not executed**: two actual pinned captures contain one versus two observed `tools/call` requests and equal safe reply-presence dimensions. Describe the additional operation and original local paths without penalty, winner, tool identity, billing or semantic-equivalence claim.

Illustrative negative, **not executed**: an unanswered request plus a cancellation notification and local timeout cannot prove remote failure/stop. A failed active snapshot cannot supply terminal counters. A final raw-frame gap stays unknown/explicitly unterminated as evidenced, not invented model truncation; absent native capture is BLOCKED rather than zero activity. Business-result assessment belongs to its accepted product predicate, not this descriptive trajectory comparison.
