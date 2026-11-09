# Cline adapter — roadmap 017

## Role

Run a bounded GSF handoff through an **existing identified Cline surface**, with explicit approvals, selected local state and structured capture. This Markdown document is not a Cline client, hook implementation, sandbox or permission broker. Follow the [common host contract](README.md#common-adapter-contract), [worker contract](../../agents/WORKER_CONTRACT.md) and [GSF run](../../skills/gsf-run/SKILL.md); GSF policy, ownership, role and acceptance remain canonical.

## Context

Primary Cline references consulted 2026-11-09: [CLI overview](https://docs.cline.bot/usage/cli-overview), [CLI reference](https://docs.cline.bot/cli/cli-reference.md) and [task management](https://docs.cline.bot/core-workflows/task-management). The CLI references are rolling, not a confirmed installed version. Record the actual product/publisher, CLI or IDE/desktop/cloud frontend/build and underlying local/hub/remote backend separately. Do not apply current CLI flags/events to an older Cline installation or another frontend without observed support.

**Do not inherit defaults.** Current CLI documentation explicitly says ordinary CLI auto-approval defaults to `true`, ACP auto-approval defaults to `false`, ordinary prompt mode is Act, timeout defaults to zero, and JSON/piped/redirected use can activate headless mode. None establishes the selected installation's effective policy, grants or containment. `--data-dir` selects state; it does not by itself prove filesystem/network isolation. The hub can start automatically and can own other sessions.

Obtain the exact accepted root/worktree/branch, frozen policy/instructions/candidate, absolute JOB_DIR, job/task/fresh dispatch IDs, role/exclusive paths, five-pillar assignment and report destination. Separately obtain actual native session identity, execution backend/host/cwd, permitted provider/model/account, exact target grants, actual exposed tools and operator-supplied sanitized rules/hooks/MCP/plugin configuration.

Before a run, explicitly decide approval mode and approver, Plan versus Act, backend, approved config and data locations, provider/model, compaction policy, finite timeout/retries/turn/output/elapsed/observable cost budget, capture audience/destination and stop/recovery/cleanup owners. Each missing required value is a blocker, not a reason to use a remembered setting. Read/disclosure, native/model invocation, creation of local state, external effects, capture/export and cleanup are distinct grants. No private config/history/credential or HOME scan is permitted.

## Task

### 1. Qualify context and local state

1. Resolve actual product/version/help from permitted installation evidence. Current CLI documents `--version`/`version`; do not run `doctor`, auth, update, a hub start or a model request as discovery. `doctor fix` can kill all Cline processes and is not a read-only recovery step.
2. Select already approved exact config/data directories and record their ownership and allowed write scope. For a new isolated state destination, creation and required authentication/configuration are separate prerequisites owned by the operator; do not copy private provider files or invent a credential fallback. Observe backend selection and whether a shared hub or remote service will execute the run.
3. Read the full canonical role, worker contract and selected `.gsf/skills/<name>/SKILL.md` plus necessary references at the accepted revision using actual file tools. An IDE selection, path mention or listing is not a full read. For an existing native skill mapping, establish exact resolved source and full-read evidence; do not run `cline skill` to install via another executable.
4. Review only supplied authorized effective tool/rule/hook/MCP/plugin settings. The current CLI explicitly has no built-in shell allow/deny list; the docs describe a `PreToolUse` hook as a separate mechanism. This adapter installs no hook and makes no claim one exists. If required native command restriction is missing, keep that execution blocked; a prose no-write request or Plan mode is not equivalent enforcement.

### 2. Make approval explicit before submission

1. The coordinator persists a fresh exact dispatch and intent. Bind the prompt/input to canonical IDs, root/worktree, instruction revision, exclusive report destination and acceptance. Keep native session/task/agent handles separate.
2. For a matching current CLI, an approved invocation must explicitly use `--auto-approve false`, the selected `--cwd`, `--config`, `--data-dir`, finite `--timeout` and accepted retry count. Select provider/model and mode only from actual observed support. This lists documented arguments, **NOT an executed command or a supplied launcher**. Inspect inherited hooks/backend effects as well as flags.
3. If noninteractive execution cannot service required approvals, finish the bounded handoff with execution BLOCKED and name the existing interactive approver/client prerequisite. Do not switch auto-approval to true, bypass a question, forward Enter blindly, or claim that headless means read-only. A model run can still incur cost before a tool approval.
4. At every pending action match exact native session, tool arguments, resource/effect and authentic grant. Approve only that action through the observed client. Do not broaden permissions to directories, commands, MCP servers or future turns without separate authority. An approval receipt is not action-success evidence.
5. Submit once through the existing authorized surface and preserve input/start receipt. If submission acknowledgment is lost, retain unknown execution and reconcile before retry. Do not use Zen/hub/scheduling, cloud or a different client as a quiet fallback.

### 3. Capture structured facts without inventing a schema

For a CLI version matching the published schema, `--json` emits NDJSON. Retain ordered stdout, stderr, actual exit status, invocation/cwd/build and capture boundaries. Use only an existing authorized bounded strict reader if validation is required; no parser is supplied here.

| Evidence | Documented current form | Interpretation |
| --- | --- | --- |
| Agent activity | `type: agent_event`, nested `event`, source `ts` | Preserve usage/errors/content and iteration events; an agent `done` event is not GSF acceptance |
| Hooks / teams | `hook_event` with observed agent/task identifiers; `team_event` | Separate native IDs/child effects; do not infer canonical dispatch IDs or independent review |
| Final run | `type: run_result`, `finishReason`, `iterations`, `usage`, `durationMs`, `model`, `text` | Require actual complete final result and same-run binding; stopped runs can report `finishReason: aborted` |
| Abort / errors | `run_aborted` after result; errors including timeout may be JSON on stderr | Preserve trailing abort/error and partial effects; do not treat first final-looking line as complete successful closure |
| Native session identity | Actual session receipt/selected session metadata where exposed | Do not invent `session_id` in `run_result`; if missing, require an authorized same-run identity receipt before session-sensitive import/resume |

1. Preserve unexpected supported line types with provenance instead of treating them as a fabricated completion or discarding contrary evidence. Truncation, missing result, stderr failure and a result from another session are distinct failures/unknowns.
2. Map actual native backend/session/agent/task IDs to the canonical job/task/dispatch in indexed owned evidence. Exposed source timestamps and local capture time are separate. A filename or observer label is not a producer-issued ID.
3. Keep usage original units, producer, model, interval and aggregation scope. Do not sum `agent_event` usage with final usage without reviewed semantics or treat absent usage as zero. Use [usage evidence review](../../skills/usage-evidence-review/SKILL.md); no inferred invoice or hard budget compliance.
4. Recover the actual worker report/done for this dispatch. The coordinator independently checks every criterion and ownership before accepting/promoting. Native completion, exported history, process exit and a team's apparent finish cannot fabricate GSF events or passing independent review.

### 4. Resume and cleanup exact owned state

Current CLI documents `--id <session-id>` for exact-session resume. Resume only after matching selected config/data/backend and frozen instructions, reconciling partial writes/remote effects, confirming current owner liveness and obtaining authority within remaining budgets. Do not select most-recent history or reset counters. A history export is separate disclosure/write authority: current CLI export produces HTML, not the execution NDJSON schema or canonical report. Never execute exported content or use an unrelated session search to repair missing identity.

Use [liveness review](../../skills/worker-liveness-review/SKILL.md) and [cancellation confirmation](../../skills/cancellation-confirmation/SKILL.md) with the actual same-session client/control. A timeout, disconnected TUI, aborted result or direct process exit does not prove remote/child work stopped. Unknown liveness/effects blocks overlapping retry; the backend/operator supplies exact stop/result proof.

Preserve authorized receipts, then remove only owned disposable local state after explicit cleanup authority and stopped-owner proof. Do not use `hub stop` (which stops hub sessions), `doctor fix`, history deletion, global auth changes, plugin removal or user worktree deletion as routine cleanup. Shared hub/user state and preexisting changes must remain intact; name residue/recovery and evidence retention owners.

## Constraints

No runtime, hook, scheduler, permission configuration, native probe, provider/model request or credential operation is implemented by this adapter. Current CLI, ACP and IDE defaults are not interchangeable. A local data path is not a sandbox, explicit false auto-approval is not a scoped provider grant, and a native session is not accepted factory completion. Native actions described here are NOT RUN.

## Format

Return the [assigned response](../../templates/response-template.md) or no-write chat: criterion 017; exact source date/frontend/build/backend and selected state paths; explicit mode/approval/provider/model/budget decisions; canonical/native identity binding and full-read evidence; actual approval/submission/tool/result/abort facts; separate usage provenance; worker acceptance status; sanitized raw/derivative receipt locators, access/retention owner; liveness, held effects, recovery and cleanup residue. Mark assigned predicates MET/NOT_MET/BLOCKED without unobserved PASS.

Illustrative consumer cases, **NOT RUN**:

- A bare `cline --json` would inherit ordinary auto-approval: reject that invocation; require explicit false and a real approver path rather than relying on ACP's different default.
- Final `run_result` is followed by `run_aborted`: preserve stopped outcome and partial writes; no successful GSF completion inference.
- An isolated data directory is supplied but a shared hub owns execution: record both boundaries; never stop the hub or delete other sessions to clean up this dispatch.
