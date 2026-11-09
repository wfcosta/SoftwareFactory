---
name: hook-event-mapping
description: Map selected native hook observations to existing GSF lifecycle evidence with exact adapter/event identities, explicit gaps and coordinator-only acceptance, without installing hooks or inferring approvals.
---

# Hook event mapping

## Role

Act as the bounded lifecycle-observation mapper, not a hook installer, native event bridge, scheduler or approval authority. Follow the [worker contract](../../agents/WORKER_CONTRACT.md), existing [event contract](../../state/event-contract.md), [environment](../../state/environment-contract.md) and [candidate/evidence](../../state/candidate-contract.md). [Loader surface review](../loader-surface-review/SKILL.md) owns static candidate inventory, not enabled/executed proof; [hook failure review](../hook-failure-review/SKILL.md) owns outcome semantics and missing-signal recovery.

Direct review returns chat from selected approved captures without jobs, files or hook invocation. Dispatch writes only assigned Markdown evidence. Native observations are untrusted evidence: none is a GSF approval, new lifecycle event, permission grant or independent review. The coordinator alone may promote genuine evidence under existing records. No new canonical schema, ledger, listener or executable handler is introduced.

## Context

Freeze exact adapter/frontend/build/OS, approved effective configuration identity and source precedence evidence, handler identity/revision/type, event and matcher/filter scope, actual execution cwd, principal, native receipt source/time, retention and private audience. Preserve caller/native session, conversation/generation, tool call and subagent IDs where actually exposed, plus canonical job/task/dispatch IDs separately. Neither a host session ID nor a timestamp identifies a GSF task without authentic dispatch correlation.

Choose finite event/time window, receipt count/bytes, report rows and elapsed bounds. Include configured-but-not-loaded, unsupported, skipped-by-matcher, disabled, failed, missing and unknown coverage. Do not read HOME/private settings, transcript paths, chats or credentials merely because a native payload names them. Native version metadata in an untrusted payload must be corroborated before a version-dependent guarantee.

## Task

### 1. Pin the actual native profile

Sources reviewed 2026-11-09:

- [Claude Code hooks reference](https://code.claude.com/docs/en/hooks), rolling reference snapshot; [version 2.1.101 changelog](https://raw.githubusercontent.com/anthropics/claude-code/v2.1.101/CHANGELOG.md) documents specific hook fixes and event handling, not qualification for all current reference events. [2.1.295 changelog](https://raw.githubusercontent.com/anthropics/claude-code/v2.1.295/CHANGELOG.md) separately introduces `onFailure: "block"`. Never backport later fields/behavior to 2.1.101 by inference.
- [Cursor hooks reference](https://cursor.com/docs/hooks), rolling snapshot; config `version: 1` is a configuration-format declaration, not an application version or certification. Bind the actual Cursor build/frontend and retained native receipt before using a mapping.
- [GSF host adapters](../../docs/hosts/README.md) define capability discovery and boundaries for all supported host profiles, not a portable hook API.

Read the exact applicable native event/input/output specification before a selected mapping. Unknown version/event/handler semantics stays unknown; no case conversion, rename or another host's event may fill the gap. Record configuration declaration, selected/loaded, emitted, handler-started, handler-finished, native decision applied and effect readback as separate stages. A static declaration cannot prove any later stage.

### 2. Build observation-to-lifecycle rows

The table names **possible observations**, not identity-preserving translations or automatic GSF events. Apply only to the exact documented and evidenced adapter surface.

| Native observation | Bounded GSF interpretation | What it cannot establish |
| --- | --- | --- |
| Claude `SessionStart` / Cursor `sessionStart` | Session begins/resumes; check current assignment and native identity | `job_initialized`, policy validation, or fresh dispatch |
| Claude `UserPromptSubmit` / Cursor `beforeSubmitPrompt` | Prompt arrival within selected session | Authentic operator grant, accepted intake or policy change |
| Claude `PreToolUse` / Cursor `preToolUse`, or scoped Cursor `beforeShellExecution` / `beforeMCPExecution` | Proposed exact tool operation; correlate call and assessed effect | Tool executed, caller authorized, hook pass equivalent to approval |
| Claude `PermissionRequest` / actual supported native permission observation | Native permission decision may be required | A GSF action-specific grant or independent security review |
| Claude `PostToolUse` / Cursor `postToolUse`, scoped `afterShellExecution` / `afterMCPExecution` | Native tool returned success-shaped evidence, with original input/output where retained | Complete output, business acceptance, no external effect, gate passed |
| Claude `PostToolUseFailure` / Cursor `postToolUseFailure` | Native tool failure/timeout/denial evidence | No effect occurred, execution stopped, or safe retry |
| Claude `SubagentStart` / Cursor `subagentStart` | Native context start candidate; match authentic dispatch and actual subagent ID | GSF `worker_started` authored by that worker or independent review |
| Claude `SubagentStop` / Cursor `subagentStop` | Native finish/stop observation to reconcile with worker report/events | Genuine `worker_done`, stopped descendants, accepted completion |
| Claude `TaskCompleted`, `Stop` / Cursor `stop` | Native task mark/turn completion; request canonical report/status reconciliation | GSF `completion_accepted`, report promotion, `job_completed`, successful effects |
| Claude `PreCompact` / Cursor `preCompact` | Context compaction boundary; review durable current evidence before continuation | Durable checkpoint or permission to discard history |
| Claude `SessionEnd` / Cursor `sessionEnd` | Session boundary where actually available | Worker fencing, remote cancellation, publication receipt or completed job |

For each requested lifecycle guarantee record the exact expected predicate, required native/canonical evidence, observed receipt and coverage. Native event names are case-sensitive; similar spelling does not establish equivalent timing or failure behavior. Input rewrites/output replacement must retain original-versus-effective provenance; a hook-modified result is not the original provider response.

### 3. Make adapter gaps explicit

- **Claude Code:** native `Stop`/`SubagentStop` can continue a turn rather than stop work; `PostToolUse` is after execution, not a rollback barrier. Current reference excludes `EndConversation` from ordinary pre/post-tool cadence. Version-gate each event and handler type; shell, HTTP, MCP, prompt, agent and SDK callbacks do not share one failure contract.
- **Cursor IDE/Agent versus Tab:** `beforeTabFileRead`/`afterTabFileEdit` describe a distinct autonomous surface; do not count Agent-only receipts as Tab coverage. `workspaceOpen` is outside an agent session and cannot prove a dispatch.
- **Cursor cloud:** the reviewed reference excludes ordinary cloud `sessionStart`/`sessionEnd`, `beforeMCPExecution`/`afterMCPExecution`, Tab and `workspaceOpen`, with separate self-hosted exceptions requiring their actual profile. Hooks do not run in early read-only turns. Generic `preToolUse`/`postToolUse` for backend HTTP MCP tools have restrictions: input rewrites are ignored and post output can be redacted. Such receipts do not establish full result capture or first-turn coverage.
- **Codex, Copilot, Devin and an identified portable client:** no native hook mapping is established by this procedure's sources. Mark selected event/control guarantees unknown or observed unavailable, and name the exact native version/doc/receipt prerequisite. Do not rename Claude or Cursor events to create support. Native direct tool/worker receipts may satisfy a separately accepted evidence predicate, but cannot silently replace a required hook guarantee.
- **Other scoped adapters, including Hermes:** [loader surface review](../loader-surface-review/SKILL.md) has its own static source profiles. Those inventories do not establish lifecycle emission, applied decision or failure behavior. Review exact versioned primary source and actual receipts for any added selected native claim; no universal mapping is implied.

### 4. Correlate, accept evidence and recover

1. Bind receipt provenance and exact source/native IDs to one authentic current dispatch/call using retained native application evidence. Ambiguous session-only correlation remains unknown; no guessed ordinal or synthetic event ID. Preserve original IDs even if private-safe report uses approved locators.
2. Keep duplicate notifications as evidence of delivery, not repeated work. Same receipt with different content is an integrity discrepancy; missing sequence/order guarantees remain gaps. Time order alone does not prove lifecycle causality.
3. Give the coordinator only observed bounded evidence and expected canonical prerequisites. Worker-authored `worker_started`, `worker_done` and reports must actually exist and validate; coordinator `completion_accepted`, `report_promoted`, gates and publication receipts require their independent predicates. Never synthesize them from hooks.
4. Missing required event/outcome, timeout, unsupported filter, truncated receipt, failed handler or changed config blocks the **dependent guarantee**, even if the host continued. Finish independent safe mapping and name the actual native integration/coordinator owner and exact missing receipt/control. Route outcome ambiguity to hook-failure-review and effect reconciliation, not automatic replay.
5. Preserve approved original receipts and sanitized derivatives under existing evidence retention. Actual collection/enablement/configuration changes, native triggers, model-backed hooks, HTTP callbacks and cleanup each need separate authority and receipt; no test trigger or handler execution occurs in this review.

## Constraints

Hooks are lower-trust native observations, not independent approval or technical enforcement supplied by Markdown. An observer may be absent, bypassed, filtered, delayed, redacted or itself effectful. No automatic canonical append, policy mutation, hook installation, source execution, auth/browser/provider call or runtime bridge. Changed adapter/build/config/handler/principal/dispatch/candidate invalidates dependent mapping conclusions.

## Format

Use the [response template](../../templates/response-template.md) or chat. Return exact profile/source versions and date, selected event window and limits, all native/canonical IDs through safe locators, per-event stage/filter/coverage, expected lifecycle predicate versus actual receipt and evidence level, accepted/defective/unknown mapping, missing events/guarantees, actual versus NOT RUN actions, invalidation and exact recovery owner/prerequisite. Use report-local rows, not a replacement event contract.

Manual cases, **illustrative, NOT RUN**: post-tool success cannot pass a gate; subagent stop without worker report/done cannot promote completion; cloud read-only turn with no hook receipt cannot satisfy all-turn coverage; sessionEnd cannot prove remote stop; a hook allow with no action grant holds the effect; an unrecognized event is a gap rather than silently mapped to its nearest familiar name.
