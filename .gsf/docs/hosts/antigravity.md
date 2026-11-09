# Google Antigravity adapter — roadmap 014

## Role

Use **Google Antigravity's actual selected interface**, not Gemini CLI compatibility by assumption. This Markdown adapter supplies neither a launcher nor SDK, server or permission control. Follow the [common adapter contract](README.md#common-adapter-contract), [worker contract](../../agents/WORKER_CONTRACT.md) and [GSF run](../../skills/gsf-run/SKILL.md); canonical GSF authority and lifecycle IDs remain unchanged.

## Context

Primary Google references consulted 2026-11-09: [getting started](https://antigravity.google/docs/getting-started), [skills](https://antigravity.google/docs/skills.md), [permissions](https://antigravity.google/docs/permissions), [CLI reference](https://antigravity.google/docs/cli/reference) and [CLI headless mode](https://antigravity.google/docs/cli/headless). These are rolling references. The getting-started page linked App build `2.29.1-5241471524274176`; the permissions page dates the App composer permission picker to `v2.23.0+`. Neither establishes the installed App, IDE extension, CLI or service version. The CLI reference separately qualifies some sandbox/auto features with `v1.3.5+` or `v1.4.4+` and OS/account restrictions: do not use App numbering as a CLI compatibility rule.

Record actual product/publisher, frontend/build, OS, workspace/project and local versus remote execution mode. Distinguish the App, standalone IDE, editor extension, CLI executable `agy`, and any separately installed SDK. A similarly named executable or a shared `.gemini` path is not product identity. There is no automatic Gemini CLI flag, MCP, session or permission translation.

Required input is the exact accepted repository/worktree/branch and source revision; policy/instructions; absolute JOB_DIR, job/task/fresh dispatch IDs, role and exclusive ownership; full five-pillar assignment and report destination; selected native project/conversation and execution host; actual advertised tools/effective permissions; provider/model/account scope and resource grants where applicable. For direct read-only work use no job initialization or model invocation.

Freeze finite prompt/reference/output bytes, turns/attempts, elapsed time and observed usage/cost limits, stop/recovery owner, disclosure audience and retained evidence location. Separate grants for reading/disclosing procedures, skill registration, local/remote execution, capture and cleanup. A trusted project or paid entitlement does not grant these actions.

## Task

### 1. Choose and qualify the real surface

| Available existing surface | Permitted adapter route | Missing-prerequisite result |
| --- | --- | --- |
| App or IDE with an authorized current conversation | Use its observed Agent/project/conversation controls and actual file/tool UI | No assumed headless process or API; required programmatic capture remains BLOCKED without its own documented interface |
| Installed, identified `agy` with matching help/version | Use actual CLI/TUI or separately approved print mode | A menu or App build does not establish CLI availability |
| Named remote project/agent | Bind remote machine/worktree, account, project and actual observed tool scope | Local workspace visibility is not remote execution proof; missing routing/target identity blocks dispatch |
| Only product documentation | Finish this source-bound qualification and exact operator handoff | No model call, installation, signup or synthetic receipt |

Inspect only the assigned session and operator-supplied sanitized configuration. Record effective preset, project overrides, tool rules, sandbox availability and out-of-sandbox approval behavior separately. The App's documented Default/Auto presets and the CLI's `toolPermission` settings are different surfaces; apply only the selected version's rules. Do not choose Turbo, auto, accept-edits or permission bypass merely to remove a prompt. An artifact review decision does not authorize every file edit or command. If a required containment/control is unavailable, stop the dependent effect rather than treating an ignored flag as enforcement.

### 2. Load full canonical procedures

1. Read the accepted role, worker contract and complete selected `.gsf/skills/<name>/SKILL.md` through an actual authorized file tool, including required references. A path attachment, name/description listing or selected editor lines is not a full read.
2. Current skill docs describe `.agents/skills` with legacy `.agent/skills` compatibility, but scope differs among App, CLI and IDE. Native discovery is optional and requires separate adoption authority; do not create directories or copy canonical files as a loading prerequisite.
3. For an existing registered skill, inspect its resolved source using the actual Customizations/skills surface; match the exact canonical revision and all required reference access. CLI `/skills` and `/skills reload` are documented, not universal IDE commands. Discovery, activation/full read and execution need separate evidence. Keep source precedence/collisions explicit; block stale or unreadable mappings.
4. Never execute scripts/resources just because a native skill format permits them. GSF roles remain role instructions, not native independent-agent registrations or a new source of policy.

### 3. Dispatch and capture once

1. The coordinator persists assignment/intent before submission. Bind canonical IDs to the exact native project/conversation and execution machine/worktree; retain native IDs in indexed evidence, not replacements for task/dispatch IDs.
2. Submit the complete assignment once using the observed UI or CLI. For a matching CLI, the documented print route is `agy -p <approved-prompt>` with `--output-format json` or `stream-json`; use exact installed help, accepted cwd and existing permission controls. This is an invocation with model/tool effects, never a read-only probe. No executable wrapper or SDK implementation is supplied.
3. Print-mode source documents stdout response/structured events and stderr diagnostics, with `--print-timeout` defaulting to no deadline. Require an explicit accepted finite deadline and actual capture/stop capability before invocation. Do not use `--dangerously-skip-permissions`. Handle a pending approval through the actual supported surface or stop blocked; never inherit broad approval from Gemini CLI or a previous conversation.
4. For documented JSON, preserve `conversation_id`, `status`, `response`, optional `error`, duration/turn count and `usage` exactly as observed. Streaming uses `event` values `init`, `step_update` and final `result`; bind every exposed conversation ID. `init` can expose cwd/tools/permission mode; its optional model/agent fields do not prove an omitted effective model. A `step_update` DONE tool step is not final conversation success.
5. Preserve complete authorized tool/approval/error evidence separately from final text and original-unit usage. Do not add step usage to terminal totals without source-backed non-overlap semantics. `/usage` documents quota information, not invoice cost or a per-task hard ceiling. Use [usage evidence review](../../skills/usage-evidence-review/SKILL.md).
6. Import a matching terminal result only as native outcome. Recover actual worker report/done and let the coordinator assess every criterion before accepting/promoting. `SUCCESS`, a reviewed artifact or an idle prompt cannot supply missing GSF acceptance or independent review.

### 4. Reconcile resume, cancellation and cleanup

Use the exact bound conversation: documented CLI `--conversation <id>` or the existing conversation picker after reconciling policy, workspace, partial effects and owner liveness. Do not use `--continue` (most recent) for identity-sensitive recovery, reset a conversation or fork as a retry substitute. Re-read frozen procedures after context compaction if full instructions are no longer present.

A timeout, lost stream, Esc or closing a UI is not proof the agent, background tasks, remote execution or subagents stopped. Capture partial results and actual native stop acknowledgments, then use [liveness review](../../skills/worker-liveness-review/SKILL.md) and [cancellation confirmation](../../skills/cancellation-confirmation/SKILL.md). Unknown turn/remote effects block overlapping retry; the host/operator must supply same-instance result/stop evidence. Never enable Remote Control, start remote agents or broaden directories during recovery.

Preserve receipts before removing only owned disposable resources with separate authority and stopped-owner proof. Do not delete conversations/user skill directories, remove projects/worktrees containing user changes, alter global settings, sign out, uninstall plugins or kill shared sessions as routine cleanup. Report retained state and its accountable owner.

## Constraints

This adapter enforces no permissions, schema validation, sandbox, capture bounds, routing, cost ceiling or native support. A schema-shaped response is not a strict validator for GSF state. Source examples establish possible interfaces only; installed help, grant, actual receipt and canonical acceptance are separate. All native actions here are NOT RUN.

## Format

Use the [response template](../../templates/response-template.md) or no-write chat: criterion 014; exact frontend/build/source-date and version qualifications; expected/observed project/conversation/host/worktree; canonical-to-native IDs; skill resolution and full-read evidence; permission/approval and actual effect scope; submission/start/terminal result/report/done/acceptance separately; usage provenance and unknowns; raw-versus-sanitized retrievable receipts, custody/retention; liveness/resume/cleanup and precise blocked prerequisite/owner. Label MET/NOT_MET/BLOCKED against the assigned predicate without fabricating native PASS.

Illustrative consumer cases, **NOT RUN**:

- An App conversation has a skill listed but only selected source lines attached: full-read predicate is unsatisfied; load canonical bytes before action.
- Gemini CLI is installed but `agy` is not established: no renamed command; complete the bounded App/IDE handoff if available, otherwise name the identified Antigravity interface/build as the prerequisite.
- A matching print stream has `init` and tool updates but no final result after timeout: preserve partial effects/usage; do not replay or infer failure-with-no-writes.
