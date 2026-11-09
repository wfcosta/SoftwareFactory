# Herdr adapter — roadmap 019

## Role

Use **Herdr's actual terminal/server/agent control surfaces** to hand off one accepted GSF dispatch without confusing visual activity with completion. Herdr at [herdr.dev](https://herdr.dev/) is distinct from Herd's mission meta-harness. This adapter creates no multiplexer, launcher, integration hook or bridge. Follow the [common adapter contract](README.md#common-adapter-contract), [worker contract](../../agents/WORKER_CONTRACT.md) and [GSF run](../../skills/gsf-run/SKILL.md); GSF retains canonical authority and acceptance.

## Context

Primary Herdr sources consulted 2026-11-09: [agent automation](https://herdr.dev/tui/docs/agent-automation/), [agents/detection](https://herdr.dev/tui/docs/agents/) and [CLI reference](https://herdr.dev/tui/docs/cli-reference/). These are rolling docs, not a verified installed version or minimum. Record actual local CLI/client and selected server builds, protocol/schema revision, stable/preview channel, machine profile and server session independently. The installed CLI's bundled schema is not proof the running remote server supports it.

Required identity tuple, from actual approved observations: selected machine profile ID and authorized host, exact server/session/socket or remote connection, workspace/tab/pane and terminal identities where exposed, current occupant/foreground process and birth/generation where available, actual underlying agent kind/build and native agent session reference. A pane such as `w1:p2` is a terminal location; an agent name such as `reviewer` is an alias for its current occupant, not a stable GSF worker or permanent pane identity. IDs/names are server-scoped. Missing identities remain unknown.

Obtain the accepted repository/worktree/branch, frozen instructions/policy/candidate, absolute JOB_DIR, job/task/fresh dispatch IDs, role, exclusive paths, five-pillar assignment and report destination. Separately obtain authority for layout creation, launching the underlying agent/model, prompt or key submission, approval, local/external effects, terminal/file capture and cleanup. A Herdr connection or detected agent does not grant the underlying tool/provider access.

Freeze numeric prompt/read/output/observation counts, line/byte bounds, attempts, elapsed/wait/cleanup time and observable model/cost budgets. Use real existing controls and an accountable machine/agent/evidence owner. No accepted finite wait means no new wait; documented waits have no default timeout. Do not scan other machines, private history/profiles, credentials or HOME to find missing identity.

## Task

### 1. Resolve machine, server and occupant before input

1. Select the exact existing authorized server session and bind client/server/protocol versions. The docs distinguish local session selection from saved SSH machines. For supported remote API commands, the global prefix is `--machine <profile-id-or-unique-label>`; changing the selected machine in the TUI does not retarget existing CLI commands. Do not mix `--machine` with `--session`/`--remote` or substitute an arbitrary SSH hostname.
2. Establish exact machine profile identity, server session and actual remote root/worktree through authorized receipts, not labels. Current forwarding fails on incompatible versions/unavailable machines without falling back to Local; preserve that failure rather than manually falling back. Do not run machine-add/bootstrap/update: it can install/update/start a server and may stop pane processes with approval.
3. Inspect the selected pane's actual occupant and foreground cwd through supported same-instance observations. Current `pane get`/`agent get` can expose `foreground_cwd`; label `cwd` alone is not the running process's cwd. `agent_session`, when an integration supplied it, is a native reference; absence is unknown, not an invented session ID.
4. Names disappear/rebind when an agent exits, is released or replaced. Before every prompt/key/cancel action, recheck occupant and native session binding. A reused pane/name, changed session/generation or unknown foreground blocks input. Raw pane input controls whoever occupies the terminal; never use it as a fallback after agent-aware input rejects the target.
5. Native agent start requires an existing available shell pane with shell at foreground prompt. It does not create layout. Creating/splitting a pane or starting an agent needs separate authority. Capture returned IDs, never predict them. If the operator supplies an existing occupied pane, do not kill its process or type a launcher into it.

### 2. Load canonical context and dispatch one turn

1. Read the complete accepted role, worker contract, selected `.gsf/skills/<name>/SKILL.md` and required references through the underlying agent's actual file tools or an explicitly authorized exact-source handoff. A Herdr read of terminal scrollback is not proof the agent loaded full instructions. Bind the executing host's actual file visibility and source revision.
2. The coordinator persists the assignment and fresh dispatch intent before prompt input. Include exact canonical job/task/dispatch IDs, full-read obligation, absolute paths, exclusive report destination and acceptance. Record Herdr server/machine/pane/occupant/native-session handles separately in indexed evidence.
3. Confirm the underlying agent's effective provider/model, tools, permissions, pending approvals and actual workspace. Herdr supported-kind detection or `HERDR_AGENT` hints do not prove sandboxing, native session isolation or independent reviewer identity. Installing an integration or changing detection configuration is separate work, not discovery.
4. Submit once through the actual supported agent-aware prompt interface. Current syntax is `herdr agent prompt <target> <approved-text> --wait --timeout <accepted-ms>` (illustrative, **NOT RUN**); route to an explicitly bound remote machine only when supported. Record submission receipt and observed activity transition. For GSF dispatch, do not prompt an already-working agent: the documented wait can be satisfied by the preexisting active turn rather than the new prompt.
5. If `blocked`, inspect the exact current approval/question UI with disclosure authority. Match pending operation to authentic grant before any deliberate supported key response. Never send Enter/Y/fast approval based on status alone; screen detection can misclassify an unfamiliar approval UI as idle. Unknown binding stays blocked.

### 3. Separate state, completion and result evidence

| Native observation | What it establishes | What it does not establish |
| --- | --- | --- |
| Start ready / restored idle / changed conversation | Agent availability or session transition | Completed work |
| `working` | Activity classification for current occupant | Acceptance-relevant progress, specific turn or bounded cost |
| `idle` / `done` | Ready-for-input; `done` additionally reflects seen-state semantics | Task success, absence of background work, worker done or GSF acceptance |
| `blocked` | Recognized approval/question UI | Permission to approve |
| `unknown` | Agent present but classification uncertain | Stopped, failed-with-no-effects or completed |
| `completion_seq` where supported | An observed completed-work idle transition under that server contract | Which assigned prompt completed, report correctness or remote stop |
| Matched terminal text | Snapshot contains text, possibly preexisting | New execution or full transcript/result |

1. Preserve actual returned IDs, input receipt, activity/settlement sequence, raw state, source/capture time and detection provenance. `agent explain` can identify manifest source/version and fallback; automatic remote manifest updates mean binary version alone does not freeze detection behavior. Use it only under permitted bounded observation, not a configuration update.
2. Terminal reads are bounded views, not complete transcripts. Current default recent reads cover 80 rendered rows. Alternate-screen history reads can scroll an idle agent and restore its viewport; this is not a universally passive read. Choose a permitted visible/read route, preserve completeness limits and do not claim full output from a truncated screen.
3. Recover the actual assigned report file through an authorized file reader. If requesting file output, use the dispatch's already owned evidence path, not arbitrary temporary/private paths. Require real worker done evidence and coordinator validation before promotion; terminal text cannot synthesize it.
4. Capture underlying native result/tool/approval and usage receipts independently when exposed. Herdr's visual state and read row counts are not model token/credit/currency meters. Preserve original native session/run scope and units; absent accounting remains unavailable under [usage evidence review](../../skills/usage-evidence-review/SKILL.md).
5. After a pane move, use returned `.result.move_result.pane.pane_id` and retain previous identity/alias and same terminal/occupant proof. An existing wait can end `agent_not_running`; do not treat that as a failed task or permission to launch another worker.

### 4. Reconcile timeout, resume and cleanup

Timeout or `agent_prompt_stalled` does not prove input was not sent. Inspect the same bound agent/result and canonical dispatch before retry. Session startup, focus/seen-state changes or a Done badge must not satisfy the assigned acceptance predicate. Some underlying agents return to idle while monitors/subagents/background tasks continue; the source specifically notes this for Antigravity and Grok.

Resume requires exact underlying native session and accepted host/build/instructions, observed current owner and reconciled partial effects/budgets. An integration's stored resume command is a recovery lead, not permission to restart or installed support proof. Server restart may restore sessions when integrations supply references, but never invent the native reference or install an integration to conceal missing continuity.

Use [liveness review](../../skills/worker-liveness-review/SKILL.md) and [cancellation confirmation](../../skills/cancellation-confirmation/SKILL.md) before any transfer/retry. Agent-aware Ctrl+C is only a supported input request to the bound occupant, not proof descendants or remote tools stopped. A suspended process retains identity but cannot necessarily receive input. Unknown liveness/effects keeps the affected ownership blocked; the server/underlying-agent owner supplies exact same-instance stop/result evidence.

Preserve evidence before separately authorized cleanup of owned disposable layout/state after stopped-owner proof. Closing a pane/tab/workspace can affect processes; stopping/deleting a session is broader still. Removing/disabling a saved machine disconnects clients but leaves remote sessions running. Do not confuse any of these with cancellation, delete user worktrees (especially force), stop shared servers or uninstall integrations as routine cleanup. Record retained panes/sessions/artifacts and their owners.

## Constraints

No display badge, pane alias, terminal title, report-metadata token or successful wait grants permissions or completion. Do not manually report an agent state/completion sequence to manufacture evidence. Markdown enforces no occupancy race fence, native isolation, cancellation, model budget or exactly-once input. All described native actions are NOT RUN.

## Format

Return the [assigned response](../../templates/response-template.md) or no-write chat: criterion 019; exact machine/server/session/build/protocol and workspace/tab/pane/terminal/occupant/native-session tuple; canonical dispatch binding; expected versus observed full-read, prompt/activity/result/worker-done/acceptance predicates; approval scope; detection provenance/completeness; original-unit native usage or absence; raw/derivative receipt locators, access/retention; unknown liveness/effects, retry prohibition, resume prerequisite and cleanup owner/residue. Use MET/NOT_MET/BLOCKED only for the actual assigned predicate.

Illustrative consumer cases, **NOT RUN**:

- TUI displays a remote machine but an unprefixed CLI prompt still targets Local: reject before input; require exact supported machine selection and remote pane IDs.
- Pane `w1:p2` now contains another agent while old alias/report says reviewer: block all input and reconcile occupant/session; never fall back to `pane run`.
- Done badge and successful wait exist but the owned report/done evidence is absent: recover actual worker output; no completion promotion or duplicate dispatch.
- Prompt wait times out immediately after input: preserve possible submission and query same-instance evidence within bounds, not resend.
