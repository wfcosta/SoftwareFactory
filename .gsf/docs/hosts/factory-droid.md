# Factory Droid adapter — roadmap 016

## Role

Hand an accepted GSF dispatch to **Factory's existing Droid CLI headless execution** and import session identity, result and usage as distinct evidence. This is not a new executor, JSON-RPC client, bridge or scheduler. Follow the [common host contract](README.md#common-adapter-contract), [worker contract](../../agents/WORKER_CONTRACT.md) and [GSF run](../../skills/gsf-run/SKILL.md). Native handles never replace canonical GSF IDs or coordinator authority.

## Context

Primary Factory sources consulted 2026-11-09: [Droid Exec overview](https://docs.factory.ai/droid-exec/overview.md) and [CLI reference](https://docs.factory.ai/droid-cli/cli-reference.md), which redirected to the corresponding `docs.factory.com` pages during research. Bind the actual trusted origin and installed product; a redirect is not permission to send credentials. These are rolling references. The reference's `0.174.0` installation example is not an established minimum or installed version. Record the exact actual `droid` build, platform, entrypoint, help revision and effective settings before selecting flags.

The sources distinguish interactive `droid` from one-shot `droid exec`; current Exec offers prompt file, cwd, model, tool selection, autonomy and output formats. Current raw multi-turn input is `stream-jsonrpc`; legacy `stream-json` input is deprecated. This adapter uses an existing approved one-shot route, not an invented client for either protocol. Factory Mission Mode is additional orchestration, not necessary for a single accepted GSF dispatch and not implicitly authorized.

Required inputs:

- Accepted root/worktree/branch, frozen policy/instructions/candidate, absolute JOB_DIR, job/task/fresh dispatch IDs, role, dependencies, exclusive owned paths and five-pillar acceptance/report assignment.
- Actual local runner identity/cwd and any separately approved remote/CI execution environment, provider/model/account and exact target grants. The Factory account is not a deployment grant; a headless run may incur cost and execute hooks/tools even for an analysis prompt.
- Existing authorized prompt-input and stdout/stderr/result-capture facilities, private evidence destination, finite prompt/output/turn/attempt/time and observable cost limits, exact cancellation/recovery owner and native cleanup authority.
- Effective user/project/organization/CLI settings and hooks from supplied sanitized evidence. `--settings` merges over normal settings; it is not an isolated policy replacement. Unknown inherited effects block dependent execution, not justify private-profile discovery.

## Task

### 1. Qualify the existing runner and load context

1. Match actual executable identity/version/help against the accepted surface. Use documented `droid --version`/help only when separately permitted; do not install, update, authenticate, start a daemon or invoke a model to discover support.
2. Read complete canonical role, worker contract and selected `.gsf/skills/<name>/SKILL.md` with required references at the accepted revision. If the execution environment differs, supply authorized exact bytes or require its actual file-read evidence; a prompt containing paths does not prove the worker loaded them.
3. Resolve exact effective tool names and model support from existing approved inventory/help. Current reference documents `--list-tools`, `--only-tools`, `--add-tools` and `--remove-tools`; a tool inventory does not authorize calling every tool. Do not invent generic tool aliases or launch MCP servers to fill gaps.
4. Compare native autonomy and command rules to the accepted scope. Current no-flag Exec is documented read-only, but that label is not a GSF grant and can include environment/process inspection outside the task's privacy boundary. Choose only the separately authorized existing restriction/profile; no permission bypass or automatic escalation after denial.

### 2. Bind and submit an accepted dispatch

1. The coordinator persists fresh dispatch intent and immutable assignment before any process invocation. The prompt contains exact canonical IDs, absolute paths, instruction revisions, full-read obligation, owned report destination and acceptance predicates. Native session IDs are separate report-local evidence.
2. Freeze the exact invocation/ordered arguments, cwd, input bytes/reference and existing runner controls. The documented shape `droid exec --cwd <absolute-worktree> -f <approved-assignment> -o json` is **illustrative, NOT RUN**; substitute only actual accepted paths and installed-version options. A file read by `-f` supplies a prompt, not an executable program or shell wrapper.
3. Use the minimum authorized autonomy/tool scope, never `--skip-permissions-unsafe`. An observed denial is a failed/blocked attempt with retained partial effects, not permission to retry at a higher `--auto` level. Current permission-rule documentation says an effective `ask` cannot be satisfied by a one-shot run merely using high autonomy; `block` remains blocked. Native policy-preview exit zero is not an allow decision.
4. Submit once through the existing runner. Capture process/start receipt, source timestamp, actual command/cwd and returned session identity where available. Process creation or streaming session-start proves only that stage; if invocation return is ambiguous, do not rerun.

### 3. Import three separate evidence products

| Product | Expected predicate | Evidence and rejection boundary |
| --- | --- | --- |
| Session binding | Actual returned session belongs to this exact invocation/input/cwd and canonical dispatch | Preserve native `session_id` and available start model/tool/cwd evidence. A display title, tag, log-group ID or requested session label is not a producer-issued identity. Missing/mismatched identity blocks correlation. |
| Execution result | Complete native terminal outcome plus separately complete assigned worker evidence | For current `json`, retain `type`, `subtype`, `is_error`, `result`, duration and turn fields as actually emitted, with exit status and stderr. For `stream-json`, retain ordered events and terminal `completion`; session-start, tool-result or EOF alone is insufficient. Do not invent a terminal result from text. |
| Usage | Original native quantities with exact source/session/run scope | Current JSON example contains `usage` with input/output/cache token fields and `factory_credits`; retain only observed fields and units. Credits are not currency, and tokens are not invoice cost. Preserve absent/null/zero, failed-run consumption and per-session versus per-run ambiguity. |

1. Preserve raw capture separately from any sanitized derivative; record immutable locators/pins using existing authorized integrity tools, custody, retrieval and retention owner. A truncated stream is partial, never complete even if a final-looking text line is present.
2. Use a real existing strict reader when machine parsing/validation is required. Markdown does not implement a parser or translate JSON-RPC/ACP into one-shot output. Unknown formats/fields are retained for [contract drift](../../skills/contract-drift/SKILL.md), not coerced to the nearest familiar schema.
3. Report original usage through [usage evidence review](../../skills/usage-evidence-review/SKILL.md); do not add cumulative totals to deltas or count repeated final captures twice. `ttft_ms`, if observed, is latency, not consumption. Missing all-in cost observation remains unknown and blocks a required money cap.
4. Recover actual worker report and done evidence for the same dispatch. The coordinator separately validates ownership/criteria, accepts completion and promotes. Native `subtype: success`, process exit zero or a session receipt does not synthesize worker events, pass reviews or authorize publication.

### 4. Reconcile, resume and release owned scope

On permission failure, nonzero exit, interruption or partial stream, preserve all edits and usage; the source says earlier edits remain after fail-fast denial. Record exact process/session and any uncertain child or external effect. Apply [liveness review](../../skills/worker-liveness-review/SKILL.md) and [cancellation confirmation](../../skills/cancellation-confirmation/SKILL.md) using the actual runner's same-instance stop/wait control. An interactive Ctrl+C description does not establish headless descendant or remote termination.

Resume only with separate authority and reconciled ownership, frozen instructions and remaining budget. Current Exec resumes exact sessions with `--session-id <id>`; use that mapping only when installed help confirms it. Interactive `-r` means resume, but in Exec `-r` means reasoning effort: never substitute it. A fork creates a new native session, not a reset GSF attempt; preserve parent linkage and allocate a fresh dispatch when the worker contract requires one. Never use broad session search/history to locate a lost receipt.

Cleanup removes only separately authorized owned scratch/capture state after durable evidence and confirmed stopped ownership. Do not delete user sessions/settings/worktrees, discard earlier edits, uninstall Droid/plugins, stop a shared daemon or revoke unrelated account access. If child/remote state or artifact retrieval is unknown, retain scope and name runner/operator/evidence owners; no overlapping retry.

## Constraints

The adapter supplies no account, authentication, isolation, cost enforcement, tool inventory, parser or native execution receipt. Do not start raw JSON-RPC, ACP or Mission Mode as a fallback or implement a launcher in Markdown. Every example is illustrative and NOT RUN; published documentation proves interface claims only.

## Format

Use the [response template](../../templates/response-template.md): criterion 016; exact build/source and accepted dispatch; invocation/input/full-read provenance; canonical/native session mapping; permissions and actual effect scope; independent session/result/usage import decisions; expected/observed/failed/unknown evidence; worker acceptance separate from native status; private-safe raw/derivative receipt locators and retention; partial writes, current liveness, resume/retry block and cleanup residue with owner. MET/NOT_MET/BLOCKED describes only the actual assigned predicate.

Illustrative consumer cases, **NOT RUN**:

- Matching session/result exists but usage is absent: correlate the result; keep usage unknown and required budget proof blocked, never report zero credits.
- A denied command follows two authorized edits: retain the edits and failed native outcome; no higher-autonomy replay or automatic rollback.
- A process returned no final JSON after submission: reconcile the exact live process/session before resume; never create a second execution because the receipt was lost.
