---
name: bounded-evidence-review
description: Assess actual native JSON, stdio, privacy and lifecycle controls against finite accepted evidence bounds; distinguish preallocation protection, post-parse limits, finalized failure and missing controls.
---

# Bounded evidence review

## Role

Review whether existing evidence readers/capture tools actually enforce the assigned resource, privacy and cleanup promises. This Markdown procedure enforces no parser, wire, process or memory bound. It creates no transport, wrapper, monkeypatch, runtime, mandatory gate or schema.

Follow the [worker contract](../../agents/WORKER_CONTRACT.md), [candidate](../../state/candidate-contract.md) and [environment](../../state/environment-contract.md) contracts. [Streaming-review](../streaming-review/SKILL.md) owns buffering/backpressure and stream semantics; [telemetry-review](../telemetry-review/SKILL.md) owns signal delivery, [retry-budget-review](../retry-budget-review/SKILL.md) owns attempts and [authorization-review](../authorization-review/SKILL.md) owns permission decisions. Keep mandatory independent reviews.

Direct read-only work uses existing permitted evidence and replies in chat, without files, jobs, imports, capture or probes. Dispatch writes only its assigned owned Markdown evidence. Separately authorized capture uses actual pre-existing native capabilities; missing mandatory controls block that capture, not the complete safe review of available sources.

## Context

1. Obtain accepted bound/privacy/lifecycle clauses, exact candidate/policy/environment and tool/build/dependency identities, capture scope, retained original evidence and findings. Bind conclusions to actual loaded controls, not merely a similarly named class or an old recipe.
2. Enumerate finite selected inputs and traffic: raw files/frames, initialization, results/errors, notifications, server requests, unsolicited traffic, outbound messages and cleanup/trailing bytes. State direction, accounting unit, owner and applicability for each.
3. Before capture require authentic execution, target/read-session, data handling and capture authority; exact executable/ordered argv/cwd/environment or exact approved HTTP profile; owned isolation and separately authorized cleanup. Startup/listing can have effects; no name or annotation certifies safety.
4. Freeze finite input/session/frame/message, node/depth/string, outbound, queue, retained/report, elapsed/cleanup, attempt and observable cost limits. Cite accepted source, units, scope and actual native mechanism for each; unknown required meters/control block dependent effects.
5. Discover real native ingress, strict JSON, context isolation, content-free diagnostics, timeout/cancellation and final receipts through permitted source/docs/evidence. No posthoc agent count, pasted parser or prose promise substitutes for a preallocation mechanism.
6. Identify actual reader ACL/retrieval/retention and private destination ownership if capture is permitted. Windows mode bits alone are not a private ACL. Do not inspect HOME, private history, credentials or unrelated logs to locate evidence.

### Legacy reference budgets, not installed controls

| Review reference | Value | Qualification |
|---|---|---|
| Strict JSON raw bytes / value nodes / depth | 8 MiB / 250,000 / 64 | Object keys have a separate string bound, not a value-node charge |
| Decoded UTF-8 per string or key | 1,000,000 bytes | Count escapes/valid surrogate pairs before container materialization |
| Stdio frame / session / frames defaults | 8 MiB / 32 MiB / 10,000 | Frame excludes LF; session includes every received byte; frames include blank/malformed/partial |
| Separate stdio hard ceilings | 8 MiB frame / 128 MiB session / 1,000,000 frames | Not permission to raise an accepted budget |
| Read chunk default / ceiling | 16 KiB / 65,536 bytes | One already-received bounded chunk can overshoot application limits |
| Operation / cleanup defaults | 60 / 5 seconds | Separate cooperative allowances, not hard wall-clock guarantees |
| Operation / cleanup ceilings | 3,600 / 30 seconds | Actual native source and accepted scope govern |

These numbers preserve review reference semantics, not a required host configuration or guarantee. Existing native documented limits govern what can actually be enforced; use accepted tighter limits where supported. Different budgets require authentic approval and must not be misrepresented as equivalent legacy bounds. Never claim a global RSS limit from these counts.

## Task

### 1. Trace the actual allocation and admission order

1. Identify where raw bytes first allocate, bounded receive size, library/kernel buffering, frame assembly, UTF-8 decoding, JSON structural scan, grammar decode, model validation, queueing, application retention and output encoding occur. Record uninspected layers.
2. Require session-byte accounting on the whole received chunk before retaining/decoding it; check pending frame bytes before buffer extension and started-frame count before message materialization. A chunk already exists; OS/library read-ahead and bounded overshoot remain explicit.
3. Verify strict UTF-8; reject duplicate keys at every level, nonfinite constants or overflowed floats, NULs, unpaired surrogates and malformed JSON. Valid surrogate pairs and escaped characters count by decoded UTF-8 size. Booleans do not satisfy integer count fields.
4. Verify node/depth/key/string budgets are checked before unrestricted container/string allocation where the claim requires it. Post-decode walking can check semantics but cannot retroactively bound parser allocation. A byte cap alone does not bound wide-container or decoded-escape amplification.
5. Distinguish budget preflight from grammar authority. Require actual strict parser evidence, bounded traversal state rather than eagerly queued wide siblings, and no second unbounded decoder/model reparse. Model expansion and later copies still need separately scoped limits.
6. Check every message class, including oversized error/notification/server-request frames, not only normal tools-list results. Raw transport bytes, normalized catalog bytes, typed messages and retained report bytes are different counters.
7. Inspect outbound serialization/size/count/queue/deadline controls separately. Ingress-only guards do not bound outbound allocations, approve methods or preserve extension fields by assumption. Outbound failure can leave delivery unknown; never replay automatically.
8. Inspect output/pointer/diff/traversal budgets before work/retention and incremental report encoding before accumulation. An oversized report is incomplete, not a successful truncated artifact.

### 2. Preserve framing, timeout and failure distinctions

1. Newline framing must specify LF exclusion, retained CR/whitespace inclusion and session delimiter accounting. A nonempty EOF tail is an unterminated frame even if it contains valid JSON; blank/whitespace-only frames count and fail strict JSON, not disappear.
2. Distinguish frames started, messages JSON/model-validated and messages delivered. A rejected chunk can contain unseen delimiters; counters do not claim all buffered traffic. Validated trailing messages may not be delivered during shutdown.
3. Check partial-frame byte and time limits, unexpected active EOF versus expected empty shutdown EOF, malformed and oversized final bytes after a valid reply. Stop admission on the first fault; a first-fault latch can hide later causes.
4. Distinguish absolute operation deadline, per-read timeout, grace/terminate/reap and separate shielded cleanup allowance. Cooperative timers do not preempt CPU parsing, synchronous OS calls or a stalled loop; record that limitation.
5. Require real backpressure/queue capacities and bridge ownership. A zero-capacity handoff does not bound OS pipes, model memory or upstream buffers. Source-level configuration is not observation of enforcement.
6. Require actual scope exit and finalization evidence before a final claim. `failed` while `context_closed: false` is live/provisional, not terminal. A failed-but-finalized scope still consumed observed bytes/frames and may have incomplete cleanup.

### 3. Establish privacy before capture

1. Inspect actual SDK logging, exception recording, import-time tracer caching, ambient parent-span/baggage propagation and environment-selected/global provider behavior. A no-op provider, sampled trace or suppression flag alone does not establish propagation exclusion or prevent later proxy binding.
2. Require already approved native capability excluding ambient context throughout entry, operations, inherited tasks and cleanup, then restoring the caller's previous context on success, entry/body failure and cancellation. Record limits for pre-existing tasks and explicit payload context; do not reattach unapproved baggage.
3. The historical context helper used a task-local empty context with paired restoration; it neither chose tracing policy nor changed global propagators. Preserve those distinctions without porting its Python or treating it as an available tool.
4. If a source-reviewed SDK requires a pre-established exact nonrecording provider before import, require authentic native evidence of that condition. Never monkeypatch, install a wrapper, reconfigure a global SDK/provider, silence unrelated logs or change propagators to make capture appear safe. Missing mandatory exclusion/restoration blocks capture.
5. Require actual content-free fixed public error classes/messages/codes. Original message, cause, context, original JSON, server diagnostics, stderr, headers and exception repr/traceback-local capture must not leak through reports or callbacks. `from None`-style display suppression is not evidence that private chains were erased.
6. Keep private original content withheld unless exact retention/disclosure is authorized. A redacted derivative is different bytes with separate provenance/digest; never redact and claim the same raw hash, hash secret IDs as anonymous aliases or publish payload digests as harmless by default.

### 4. Bound cleanup and residual ownership

1. Inspect stop-new-sends, writer finish/cancel, stdin close, reader validation of trailing bytes, channel/pipe close, task join and direct-child grace/terminate/kill/reap under finite cleanup allowance. A final response is provisional until required cleanup completes.
2. Require actual direct-child reaped and cleanup-complete observations separately. Direct-child termination is not descendant/process-group extinction, and neither proves remote work stopped. A local cancel request, failed snapshot or clean EOF is not semantic completion.
3. Filesystem cleanup may touch only exact owned authorized objects after identity checks; no recursive removal of arbitrary child-created trees. A nonempty/replaced directory or cleanup deadline stays a residue with owner, not a false clean receipt.
4. Preserve bounded failure/cancellation evidence before authorized teardown; do not replace the original cancellation with a diagnostic or declare a timed-out operation stopped. Unknown liveness blocks overlapping retry/effects, not offline analysis.

## Constraints

No native capture engine, parser implementation, command/import check, model/provider call, installation, credential search, new global configuration, blanket deletion or fabricated transcript. HTTP JSON success/error bodies may allocate in full, and decompression/SSE line/comment allocation may precede event caps; do not transfer stdio preallocation guarantees to HTTP.

For every assigned control populate this finite report-local matrix, including positive and adverse boundaries; use explicit sourced non-applicability only when accepted scope permits it:

| Control/accepted clause | Finite limit/unit/scope | Actual native mechanism/version and allocation point | Expected boundary outcome | Original source/receipt and observed result | Gap/qualification; MET / NOT_MET / BLOCKED; owner/action |
|---|---|---|---|---|---|

Rows cover raw/UTF-8/JSON duplicate-nonfinite-NUL-surrogate/structure, frame/session/count/partial/blank/malformed, all traffic classes, outbound/queues/retention, timers, privacy/context/errors and cleanup/closure/residue. Missing mechanism is a gap, not an agent-enforced parser or optionalized mandatory prerequisite.

## Format

Return the [assigned response](../../templates/response-template.md) or no-write chat: exact scoped claims/identities, finite matrix, actual allocation graph and controls, accepted versus actual/reference limits, static versus exercised/NOT RUN evidence, counterexample, remaining unknown layers, every criterion/finding disposition and executing role's verdict. Include exact missing prerequisites and next owner/action, no unsupported safe-capture or RSS claim.

Record safe immutable original/derivative locators and digests, authorized retrieval/access/retention, provisional/final status, context restoration, direct-child/cleanup/descendant/remote distinctions, residual ownership and modified product files (normally `[]`). Changes to candidate/tool/build/parser/profile/context/limits invalidate affected proof. No new report schema or canonical ledger is required.

Illustrative positive, **not executed**: a native final receipt reports `failed`, `context_closed: true`, one received byte and a reaped child after strict malformed-frame rejection. Describe finalized failed consumption and the observed direct-child cleanup, not successful session or descendant/remote stop.

Illustrative negative, **not executed**: an agent counts 300,000 nodes after an unrestricted JSON decode and claims a 250,000-node parser bound; reject that preallocation claim. A valid response followed by an unterminated tail is failed/incomplete. A recording SDK with no approved ambient-context exclusion blocks new capture while retained safe source analysis continues.
