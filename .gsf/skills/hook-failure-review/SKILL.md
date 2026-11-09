---
name: hook-failure-review
description: Review exact adapter hook timeout, invalid response, block and fail-open/fail-closed outcomes against authentic native receipts, holding dependent guarantees and reconciling possible effects without replay.
---

# Hook failure review

## Role

Act as the finite failure-semantics reviewer, not a hook executor, installer, approval authority or automatic recovery loop. Follow the [worker contract](../../agents/WORKER_CONTRACT.md), [environment](../../state/environment-contract.md), [candidate/evidence](../../state/candidate-contract.md), [hook event mapping](../hook-event-mapping/SKILL.md), [tool effect decision](../tool-effect-decision/SKILL.md) and [authorization review](../authorization-review/SKILL.md). Existing native adapter owners control settings/execution; the GSF coordinator controls canonical state and accepts evidence.

Direct review returns chat from selected authorized captures without files, probes or handler invocation. A dispatch owns only assigned Markdown evidence. Native hook approval is not independent approval or an authentic grant. Fail-closed in this report means an evidenced native decision prevented its exact dependent action; it does not mean Markdown technically blocked a host.

## Context

Freeze exact product/frontend/build/OS/shell, event, handler type/revision, effective configuration source/revision, matcher/condition, timeout, failure policy, synchronous/background behavior and documented decision schema. Obtain original input/effective input, complete safe output/exit or HTTP result, parse/validation result and native application decision where actually retained. Missing stdout is not necessarily empty output; a success notice is not the complete handler result.

Preserve native session/conversation/generation/tool/subagent/handler identifiers and canonical job/task/dispatch IDs separately, with authentic correlation and observation time. Retain private originals only in approved custody; never inspect transcript paths, HOME, credentials or raw secret-bearing logs merely because a hook points to them. Set finite receipt count/bytes/elapsed/attempt limits and native operation/recovery owner; consumed budgets survive handoff.

Primary sources reviewed 2026-11-09: [Claude hooks reference](https://code.claude.com/docs/en/hooks) and [Cursor hooks reference](https://cursor.com/docs/hooks), both rolling snapshots; version-pinned [Claude 2.1.101 changelog](https://raw.githubusercontent.com/anthropics/claude-code/v2.1.101/CHANGELOG.md) and [2.1.295 changelog](https://raw.githubusercontent.com/anthropics/claude-code/v2.1.295/CHANGELOG.md). The latter explicitly adds `onFailure: "block"` for command/HTTP hooks. Do not claim rolling behavior on 2.1.101 or any other installed build without exact applicable source and native evidence. Cursor config version 1 is not an app-build qualification.

## Task

### 1. Establish the exact failure boundary

1. Identify the intended guarantee: observe an attempt, block a proposed action on explicit deny, block on all handler failures, retain complete evidence, stop a turn, or reconcile an already-performed effect. Specify the exact expected predicate before inspecting the outcome.
2. Separate configuration declared, handler selected, handler started, local timeout/exit, response parsed, decision applied, dependent action started/completed and durable effect readback. Obtain authentic receipts for the required stages. A missing stage remains unknown; do not infer it from a preceding one.
3. Inspect all applicable handlers and their documented aggregation/order semantics. One passing handler does not establish the final native decision if another handler can deny, rewrite, fail or finish later. Preserve each original/effective argument/result identity. Version-dependent or opaque aggregation remains a blocked guarantee, not a guessed priority rule.
4. Match failures to **event + adapter + handler type + platform + build**, not a universal exit-code rule. Post-action events cannot undo committed effects; async observations cannot gate an earlier action. A hook may itself send telemetry, invoke models/tools or mutate files: assess/reconcile those effects separately from the triggering action.

### 2. Use only source-applicable adapter semantics

The following are source-bound review rules, not generated configuration or proof of installed enforcement:

| Adapter/surface | Valid response or explicit block | Timeout, invalid response and failure behavior to review |
| --- | --- | --- |
| Claude synchronous command hook | For supported `PreToolUse`, accepted JSON `hookSpecificOutput.permissionDecision: "deny"` or exit 2 can block; silent exit 0 is no decision, not GSF approval | Rolling reference ordinarily continues after timeout or malformed/schema-invalid JSON/non-blocking failure unless an applicable failure policy changes it. Other valid JSON and exit combinations have their own parsing table; inspect full output, not exit alone |
| Claude command/HTTP with `onFailure` | Version 2.1.295 introduces `"block"`; current source documents `"continue"`/`"block"` behavior and event/type exceptions | Required build/config/application proof is separate. `"block"` covers start failure, unexpected exit, HTTP failure, timeout and invalid structured output as applicable; plain command text is not automatically malformed JSON. It does not create a gate on an observational event |
| Claude HTTP hook | Supported 2xx JSON decision uses that event's schema; empty 2xx body is no decision | Non-2xx, connection failure, timeout and invalid nonempty body normally yield non-blocking errors unless applicable `onFailure: "block"` changes them; HTTP 403 is not automatically a deny instruction |
| Claude MCP-tool hook | Current reference interprets text content by command-output rules when supported | `isError: true`, disconnected/unavailable server and ordinary timeout can be non-blocking. A cached server or hook configuration is not an authenticated connection. No OAuth is launched to fix it; require separately authorized native auth |
| Claude background command hook | Background output cannot retroactively block the already-continued action | Current reference exempts `async: true` command hooks from ordinary timeout enforcement; background failure policy is not synchronous prevention. Require actual native liveness/fencing/effect evidence, not a returned shell handle |
| Claude prompt/agent hooks or SDK callbacks | Must use their exact accepted structured decision and event-specific contract | Do not apply shell/HTTP failure rules to LLM-backed hooks or SDK callbacks. Current native reference distinguishes SDK pre-tool timeout blocking from ordinary command/HTTP pre-tool timeout behavior. Missing exact versioned handler/callback evidence blocks that claim; no model call is made to find out |
| Cursor command permission hooks | Reference lists `beforeShellExecution`, `beforeMCPExecution`, `beforeReadFile`, `beforeTabFileRead`, `subagentStart`, `preToolUse`; valid schema decision deny or exit 2 blocks the applicable action | Invalid JSON/schema-invalid permission response blocks even with `failClosed: false`. Crash, timeout, other failure exit or no output ordinarily fails open; observed effective `failClosed: true` requests block-on-failure. This is not Claude's `onFailure` field |
| Cursor prompt hooks | Reference defines `{ ok: boolean, reason?: string }` rather than the command permission schema | Do not translate text or command exit assumptions into a prompt outcome. Require exact actual build/type timeout/parse/failure application receipt; missing proof is unknown, not assumed deny or allow |
| Codex/Copilot/Devin/portable or another adapter | No native failure rule is established by these sources | Mark exact timeout/parse/block/fail-open/fail-closed behavior unknown or observed unavailable, identify native documentation/build/control prerequisite, and block the dependent guarantee. Do not copy another host's fields |

For Cursor `preToolUse`, the reviewed reference says `permission: "ask"` is accepted by schema but not enforced today. It cannot supply a required human approval. Cloud/IDE/Tab and self-hosted differences from hook-event-mapping still apply; ignored rewrites/redacted outputs cannot support complete evidence claims.

### 3. Apply event and platform exceptions explicitly

For each selected Claude event read its exact per-event rule; do not treat exit 2 as universal refusal. In the current rolling reference:

- `PreToolUse` can prevent a not-yet-executed call; `PostToolUse`/`PostToolUseFailure` occur after the attempt and cannot revert it.
- `PermissionRequest` ignores exit 2 and needs its documented decision object to deny. A tool permission prompt is still not the separately required GSF grant.
- `Stop`, `SubagentStop`, `TaskCompleted` and `TeammateIdle` blocking can cause continued work rather than terminated execution; `onFailure` has no effect for those events. Repeated stop hooks must not create unbounded continuation.
- `SessionStart`/`SubagentStart` and ordinary observational end events do not become prevention barriers from exit 2. `WorktreeCreate` and `WorktreeRemove` have special nonzero rules; removal additionally depends on actual directory state. Do not equate removal failure with untouched files.
- `PreModelSwitch` timeout can block switching; ordinary `PreToolUse` timeout normally does not block execution unless an applicable failure policy does. One timeout rule does not describe all events.
- Current reference documents Windows-without-Git-Bash shell-form pre-tool/permission-request exceptions, with additional version-dependent messaging and shell/exec-form distinctions. Record the actual native platform/shell/build and applied decision; do not promise fail-open or fail-closed from product name or OS alone.

These facts qualify the reviewed source snapshot, not every release. When exact build/exception support is unknown, retain unknown even if a later feature would solve the gap. Do not update a host, install a shell, change handler forms or set policy options during review.

### 4. Decide the actual outcome and dependent guarantee

| Observed evidence | Report-local decision and next action |
| --- | --- |
| Matching valid deny/block receipt and native action-prevented evidence | Accepted prevention for that exact action only; still inspect handler's own effects and any already-started related work |
| Valid allow/no-decision with actual continued execution | Native continuation, not GSF approval. Assess original/effective operation authority and result separately |
| Timeout/invalid response/crash with actual fail-open continuation | Observed failed prevention if fail-closed was required; preserve violation and reconcile possible effects. Never call it safe because the hook failed |
| Native block where fail-open was expected | Preserve actual block and semantic/config mismatch; do not bypass the control to finish work |
| Missing event, parse result, applied decision or action receipt | Unknown; block the dependent prevention/completeness guarantee, even if native host proceeded |
| Post-action hook failure or background process still live | Cannot claim action absent/undone or owner safely stopped. Native owner reconciles exact resources and hook descendants |

Reject an evidenced violation, accept only an evidenced assigned predicate and retain unknown/BLOCKED prerequisites. A failed prevention can coexist with incomplete effect knowledge; preserve both rather than converting all outcomes into one generic error. A complete bounded diagnosis does not require executing the hook.

### 5. Recover without replay or widening authority

Hold dependent/overlapping effects and preserve sanitized original native receipts, effective config/build, original/effective tool input, known resource/operation IDs, complete available outputs, partial tails and limits. The existing authorized native owner reads exact operation/resource state and uses supported stop/fence controls where separately granted. Local hook timeout, killed parent or closed stream does not prove descendants/remote work stopped. Canceled MCP tasks or remote A2A work need their specific reconciliation owners, not a new hook retry.

No blind handler rerun, tool replay, resubmission, cancel, compensation or destructive cleanup. A failed post-hook may follow a successful write; replay could duplicate it. Configuration repair/enablement needs separate exclusive-path/adapter authority, an authentic native change receipt and affected guarantee re-evaluation. Only safely reconciled/fenced old ownership and current authority permit a new bounded attempt; keep prior counters and evidence. If the needed native stop/readback/control is absent, name exact owner/prerequisite and finish the honest BLOCKED handoff.

## Constraints

No hook installation/configuration, source execution, callback listener, native probe, model/provider/auth/browser call, new runtime, failure-policy shim or evidence ledger. Markdown cannot enforce fail-closed, fabricate applied-decision receipts or turn lower-trust observations into independent approval. Preserve privacy and original-versus-derivative provenance. Changed config, handler, adapter/build/platform, principal, target, policy or candidate invalidates dependent proof.

## Format

Use the [response template](../../templates/response-template.md) or chat: exact profile/version/source applicability; guarantee and expected predicate; event/filter/type/timeout/failure policy; identity and stage correlation; complete safe outcome/parse/decision/action evidence and evidence level; accepted/rejected/unknown rows; actual versus NOT RUN actions; contrary observations, consumed bounds, effect/liveness residues and exact native recovery owner/prerequisite. Do not report PASS from documentation, settings or silence alone.

Manual cases, **illustrative, NOT RUN**:

- Cursor permission response is malformed with `failClosed: false`: reference predicts block, not default fail-open; actual application still needs a receipt.
- Claude ordinary pre-tool command timeout without applicable block-on-failure: required prevention stays unproved/failed if action ran; a later `onFailure` option cannot certify older build behavior.
- Claude `PermissionRequest` exit 2 without its deny object cannot be assumed to block.
- Post-tool failure after a remote send requires original send-state reconciliation, not replay.
- Async hook emits late deny: no retroactive prevention; descendant/effect ownership stays unresolved until native evidence.
- Hook returns allow but no action-specific grant exists: GSF still holds the effect.
- No native adapter failure documentation or applied outcome is available: finish the bounded diagnosis, block its dependent guarantee and name the native owner, rather than inventing configuration.
