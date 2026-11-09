---
name: scheduled-job-commissioning
description: Commission or review one exact scheduled-job revision with bounded authority, explicit civil-time and occurrence semantics, hermetic context and a pinned effective model, using only separately authorized existing native scheduling controls.
---

# Scheduled job commissioning

## Role

Make an automation's future authority and execution inputs explicit before enabling it. Cover bounded commissioning, temporal interpretation, occurrence recovery, isolated context and model binding as one coherent review. This Markdown is not a scheduler, daemon, clock service, durable outbox, credential broker or execution engine.

Follow the [worker contract](../../agents/WORKER_CONTRACT.md), [accepted limits](../../state/config-contract.md), [environment](../../state/environment-contract.md), [authorization review](../authorization-review/SKILL.md), [context-packet](../context-packet/SKILL.md) and [execution/evidence boundaries](../gsf-mode/references/execution-evidence.md). Existing coordinator/event ownership and accepted lifecycle vocabulary remain authoritative. Report-local labels below do not add schema keys, grants or event types.

Direct questions use supplied approved nonsecret evidence and return no-write chat. Dispatched review writes only its assigned Markdown report. Commissioning/revising/enabling a native task is a separately authorized write, not an effect of reading this skill.

## Context

Freeze one exact automation and revision, purpose, authentic owner, canonical job mapping, accepted product/instruction/policy/environment identities, intended outputs/audience, current authentic grant, native scheduler/account/tenant/workspace identity and existing receipt/recovery owner. Obtain finite inspection and future execution limits before work.

Require complete original configuration and known unresolved occurrence/effect/delivery history from approved evidence only. Do not discover jobs, personal calendars, HOME, conversation histories, secrets or unrelated native accounts. A description of a future check is not proof that a real scheduler exists.

## Task

### 1. Bound authority independently from recurrence

1. Record exact purpose, actor/owner, start and expiration instants, allowed read/write/destructive targets, per-occurrence and aggregate budgets, data recipients/retention and actions requiring fresh human approval. Unknown effect class or authority blocks admission; waking an agent renews nothing.
2. Bind the actual native controls for grant expiry/revocation, resource scope, elapsed/no-progress/concurrency/cost limits and cancellation. A nonnull cost cap requires real compatible currency/meter/conservative accounting under accepted policy; unmetered is unknown, not free. Prose and a timer are not enforcement.
3. Identify the actual persistent wake facility, owned task handle, documented lifetime, target and cancellation/readback route. If absent, finish the review but mark unattended enablement BLOCKED; require manual authenticated invocation rather than inventing a watcher, sleep loop or promised wake.
4. At every occurrence and before each separately authorized effect, revalidate current grant, expiry, revocation, owner, target and remaining aggregate/per-run budget through existing controls. Failures stop dependent admission/effects and preserve checkpoint/uncertain ownership; never reset counters through a new task ID.

### 2. Resolve civil-time semantics before publication

Require every row explicitly; no locale, current chat timezone or library default may choose it silently.

| Dimension | Required accepted meaning |
| --- | --- |
| Clock and zone | Wall-clock recurrence versus fixed elapsed interval; exact native timezone identifier, authoritative timezone-data/version evidence where available, reference clock and observation freshness. Windows/IANA aliases require accepted mapping, not name similarity. |
| Nominal occurrence | Exact local date/time or recurrence rule, start/end bounds, calendar exceptions and accepted interpretation; store nominal time separately from the resulting instant. |
| DST gap | Explicit skip, shift under a named native rule, or reject; a nonexistent local time cannot silently normalize into a different accepted occurrence. |
| DST fold | Explicit first offset, second offset, both separately identified, or reject; retain actual offset/fold and resulting UTC instant. A local timestamp alone is not unique. |
| Lateness | Accepted tolerance, comparison clock and deadline; distinguish delayed start from permission to finish after an effect/grant deadline. |
| Missed runs | Explicit skip/coalesce/bounded catch-up policy, maximum backlog/age/order and current authority for each occurrence. Restart does not imply replay of every missed date. |
| Overlap | Explicit skip/queue/serialize or native bounded concurrency policy with real ownership; a recurrence definition is not a capacity lease. |
| Changes | Rule, zone-data, clock, scope, model or grant change creates a separately reviewed effective revision; reconcile existing occurrences before replacement. |

Use only an existing authorized native calendar capability to resolve the full finite preview horizon, including relevant transition boundaries. Retain native inputs/results, zone-data qualification, nominal times, offsets and instants. Unsupported/ambiguous interpretation blocks that revision; never implement a fallback calendar or claim a hand calculation is the scheduler's result. Wall-clock deadlines and monotonic elapsed-duration measurements remain distinct.

### 3. Bind occurrence, execution and delivery identities separately

1. Require the actual existing native occurrence/deduplication protocol and durable receipt store. Map its real schedule revision, occurrence identity, canonical job/attempt, tenant, nominal time, resolved offset/instant and current effect binding. These are review dimensions, not invented API fields or caller-generated exactly-once keys.
2. Repeated notifications for one occurrence reconcile to its existing identity/history. A changed message ID, task ID or retry label must not bypass pending work or unresolved external effects. Explicitly accepted two-fold execution needs two real occurrences, not two untracked attempts of one.
3. Preserve these independent facts in existing lifecycle evidence:

| Observed fact | Required next decision |
| --- | --- |
| Execution interrupted or outcome unknown | Reconcile exact owner/liveness, actual effects and durable intent before resume/retry; timeout does not prove stop. |
| Execution completed with accepted output | Preserve actual completion/artifact identity; it does not prove delivery. |
| Delivery prepared, not sent | Preserve exact recipient/channel/payload revision and its separate authority; sending remains a new effect. |
| Delivery sent but acknowledgment/receipt missing | Mark delivery uncertain and reconcile actual native delivery state; neither rerun the task nor blindly resend. |
| Delivery confirmed | Retain exact native receipt and recipient-readable artifact evidence; do not infer subsequent business acceptance. |

4. Missing/tampered/partial durable history or uncertain native state blocks overlapping retry. Preserve original material and use the existing recovery owner; no new ledger, fabricated receipt, automatic replay or state inferred solely from equal current bytes.

### 4. Freeze hermetic inputs, not the current conversation

Bind exact intended product/workspace revision, native execution location, complete mandatory instruction/policy snapshots, selected full skill versions and resource references, task-specific approved context/memory, tool schemas/capabilities, environment/configuration sources and explicit secret references. A source link must resolve for the actual worker; description-only loading cannot replace required full instructions.

Specify included and excluded state explicitly: no implicit current cwd, chat transcript, personal auto-memory, ambient tool approvals, browser profile, user settings or inherited credentials. Existing native isolation controls and observed effective loading are required; a clean directory/worktree is not OS isolation. Unknown mandatory input, native loaded version, resource identity, current ACL or isolation blocks dependent execution. Reuse [checkpoint coverage](../checkpoint-coverage-review/SKILL.md) and [cold resume](../cold-resume-review/SKILL.md) for original-state reconciliation; do not refresh a frozen job silently.

### 5. Pin the automation's effective model authority

Record whether the proposed model comes from an explicit operator pin, accepted fleet default or deliberately accepted inheritance, with exact provider/deployment/model identifier, reasoning/runtime settings, routing/fallback policy, entitlement evidence and budget. Resolve any allowed inheritance **at commissioning into the accepted automation revision**, rather than following later chat changes.

Require actual supported native configuration and effective-execution receipt; requested, configured and observed model are separate facts. Do not guess model aliases, self-switch provider, raise cost, use a substitute after quota failure or let a chat default mutate an existing job. Missing effective model/entitlement/meter blocks its dependent execution or economic claim. A model/routing update needs separate authentic authority, reviewable before/after, new binding and invalidated proof, preserving old occurrence evidence.

### 6. Publish only an authorized native revision and observe it

Return the complete bounded review even when commissioning is blocked. Only under separate exact authority may the existing owner create/update the native task using the documented available interface. Preserve prior task configuration, durable intent where required, independently read back exact effective rule/zone/authority/context/model and actual native handle, then retain the receipt/cancellation route under real ACL/retention. A successful write return alone is not enabled or correctly configured proof.

On interruption, reconcile actual native task/revision and existing occurrences before another write. Stop only the exact owned handle when authorized; never remove user jobs, refresh credentials, overwrite changed configuration or claim cancellation from a deleted local note. If an accepted revision cannot be enforced, keep dependent enablement blocked and name the exact missing native control and owner.

## Constraints

No new scheduler/backend/parser/calendar implementation, service, repository, automatic wake, native task activation, credential discovery or model/provider call under a read-only assessment. No tests/suites or executable programs are supplied. Native enforcement, durable identity and effects require actual existing controls and separately authorized evidence. Retain source/recipient privacy, original failed receipts, protected paths, independent reviews and current user edits.

## Format

Return the [assigned response](../../templates/response-template.md) or no-write chat: exact revision/authority/native identities; all accepted temporal rows and complete bounded preview evidence or explicit gaps; occurrence/execution/delivery mapping and unresolved history; full hermetic input/exclusion map; requested/configured/effective model and budget provenance; per-criterion MET/NOT_MET/BLOCKED with source/predicate/actual receipt/owner; actions executed versus NOT RUN; original and resulting configuration/cancellation/readback receipts only if actually observed; retention, invalidation and next safe action. Review completion does not mean a task was scheduled.

Illustrative boundary: an ambiguous 01:30 with two native offsets but no accepted fold policy blocks commissioning. An execution-complete/delivery-uncertain record requires delivery reconciliation, not another run. A later chat model change leaves the accepted automation model unchanged; no model substitution or new grant follows from a wake.
