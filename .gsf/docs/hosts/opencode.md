# OpenCode adapter — roadmap 018

## Role

Select the **effective OpenCode generation, configuration and native protocol before any GSF handoff**. Reject incompatible mappings instead of translating field names by guesswork. This Markdown adapter is not an OpenCode server/client, configuration migrator, SDK wrapper or protocol bridge. Follow the [common adapter contract](README.md#common-adapter-contract), [worker contract](../../agents/WORKER_CONTRACT.md), [GSF run](../../skills/gsf-run/SKILL.md) and [contract drift](../../skills/contract-drift/SKILL.md). GSF remains canonical for policy, task/dispatch identity and accepted completion.

## Context

Primary OpenCode sources consulted 2026-11-09:

- [Current CLI](https://opencode.ai/docs/cli/) (its Markdown alternate was used), [configuration](https://opencode.ai/docs/config/) and [permissions](https://opencode.ai/docs/permissions).
- [Server reference](https://docs.opencode.ai/docs/server/), which advertises the newer v2 separately and describes the earlier server API. Its canonical metadata still names `opencode.ai/docs/server/`.

These rolling URLs do **not** identify a single universally compatible generation. The consulted current permission reference explicitly distinguishes V2 `permissions` / `shell` / `subagent` from V1 `permission` / `bash` / `task`. The current CLI describes a shared user background server by default, whereas the earlier server reference describes TUI-owned/new standalone servers. Preserve this difference, not a composite fictitious contract. No specific installed version, minimum release or API compatibility was established by this research.

Before action obtain: exact product/executable/publisher and actual client build/release channel; actual connected server/service build and origin/instance; explicit generation and accepted source/schema revision; selected project/Location/worktree/cwd and account/provider/model; effective permission/configuration/policy sources from supplied sanitized observations; canonical repository/branch/frozen policy/instructions/candidate, JOB_DIR, job/task/fresh dispatch IDs, role/ownership/acceptance/report path. A client binary upgrade does not prove a still-running server was upgraded.

Set numeric input/reference/output/turn/attempt/deadline/observable usage-cost bounds, approved evidence destination/audience, current execution owner and exact cancellation/cleanup controls. Reading/disclosing procedures, server connection/start, native model/tool execution, configuration changes, capture and cleanup need separate grants. No private configuration, credentials, HOME, databases or unrelated session/history enumeration is allowed.

## Task

### 1. Produce a compatibility decision before dispatch

Use only the identified installation's help, operator-provided effective settings and existing approved server metadata. A documented read surface can still expose all projects; authorize only exact scoped reads. Do not start a service, make a model call or issue an HTTP request simply to discover it.

| Observed pair | Expected predicate | Decision |
| --- | --- | --- |
| Identified V1 client and server, accepted matching V1 schema/protocol | Every selected field/action/endpoint and permission response is documented for that exact pair | Eligible only for separately approved mapped operations |
| Identified V2 client/server, accepted matching V2 schema/protocol | Use V2 configuration and actual V2 session/Location identities and protocol | Eligible only for observed supported operations; do not reuse V1 endpoint/SDK assumptions |
| Mixed builds/generations, stale running server, unknown fork/product, unsupported extension or absent required schema | Exact compatibility cannot be established | BLOCKED for affected native dispatch/configuration; finish source-bound comparison/manual handoff |
| UI available but programmatic protocol unestablished | Actual selected UI can bind scope/identity, approvals and evidence | Bounded existing-native UI handoff only; programmatic/structured protocol remains BLOCKED |

1. Compare accepted generation and exact build with the actual server, not just the installed CLI. Record identity as observed, declared, contradicted or unknown. Neither a localhost port nor an executable name authenticates the service.
2. Select one coherent contract for config, tools, events, approvals, sessions, results and cancellation. For the earlier documented HTTP profile, `/global/health` includes server version and `/doc` exposes OpenAPI; these are source claims, not queries performed here or assumed V2 endpoints. Read them only through an existing authorized bounded exact-instance tool when specifically permitted.
3. Reject a singular `permission` V1 mapping against V2 `permissions`, or `bash`/`task` against V2 `shell`/`subagent`. Likewise reject automatic reverse translation. Do not rename unknown fields or emit an unreviewed JSON file to make parsing succeed. Report exact clause, expected/observed generation, owner and supported correction route under contract-drift.
4. Resolve effective configuration precedence for the selected generation; do not infer it from directory names or whichever file is newest. Current V2 docs describe managed/system, global and multiple ancestor project locations with special precedence. Use only authorized supplied evidence; unknown higher-priority policy is not absence. Configuration changes/migration need independent authority and invalidate dependent proof.
5. Current V2 defaults can allow broad tools and external directories, and custom subagents have their own permissions rather than a subset of their parent's. Confirm actual restrictions for every participating context; never infer read-only review or child restrictions from the parent. Missing required enforcement blocks execution rather than triggering a configuration rewrite.

### 2. Load GSF and bind the exact native scope

1. Read complete frozen role, worker contract, selected `.gsf/skills/<name>/SKILL.md` and required references using existing file tools. A skill list/name, native agent description, file attachment or summary is not a full read. Existing skill registration requires exact resolved source/revision evidence and separate activation versus execution receipts; no adoption or new plugin is supplied.
2. Bind project/worktree/cwd or V2 Location, selected actual server instance and native session/message identifiers where exposed to canonical job/task/dispatch in indexed owned evidence. Keep unavailable IDs unknown; a display title and observer-local label are not native IDs.
3. The coordinator persists the assignment and fresh intent before native submission. Include canonical IDs, accepted context/paths, exclusive report ownership and acceptance. A native agent/subagent registration never replaces the configured GSF role or grants independent review.
4. For a matching current CLI, `opencode run <approved-prompt>` is the documented noninteractive entrypoint; use only installed-version options and existing authorized capture/runner controls. It is a model invocation, not a harmless probe. The current default shared service can own other user sessions; connection/start effects and effective configuration must be explicitly accepted. Do not disable/restart a shared service or choose a private server without a separate grant.
5. For a preexisting native HTTP/SDK integration, require its accepted exact request/event/result/approval contract and actual installed client. This document supplies no client and no V1-to-V2 mapping. If absent, use a separately authorized existing UI or conclude the bounded handoff with exact protocol/client prerequisite; never implement a replacement.

### 3. Observe approvals, result and usage separately

1. Submit once to the exact bound session and retain native input/acceptance/start receipt where exposed. Native asynchronous acceptance, a 204 response in an applicable older protocol, stream activity or TUI submission is not terminal execution success.
2. Match every pending approval to session/request/resource/effect and authentic GSF grant. In the current V2 source, `once`, `always`, `reject` have different effects: `always` saves project-scoped approval patterns, while reject can affect other pending requests in the session. Do not silently choose durable/broad approval or dismiss unrelated pending work. Use only the selected generation's actual approval interface.
3. Preserve native messages/parts/tool calls/results/errors and ordered terminal events as the accepted version documents them, plus actual runner exit and capture completeness. Do not invent a universal `result`, `usage`, completion event or SDK method. Missing terminal semantics or incomplete capture makes that result unknown/partial, not successful empty output.
4. Record native model/provider and original-unit usage with source pointer/session/message/run interval and cumulative/delta qualification; no aggregation of overlapping snapshots or inference of money/free usage. Use [usage evidence review](../../skills/usage-evidence-review/SKILL.md). If the native interface exposes no meter, say unavailable and block a required budget predicate.
5. Recover actual assigned worker report/done; only the coordinator accepts/promotes after identity, ownership and every criterion are checked. An idle native session, successful API envelope, zero exit or final answer does not pass factory reviews or grant publication.

### 4. Resume, fence and clean narrowly

Resume only an exact identified session through its generation's documented existing route, after reconciling current server/session/project generation, frozen instructions, partial local/remote effects, remaining budgets and owner liveness. Never use most-recent continuation, a fork, server restart or schema migration to erase uncertain execution.

The earlier server reference documents session abort and session deletion as distinct operations; abort is not proof of remote/descendant stop and deletion is destructive, not cancellation. Do not reuse those paths against V2 without its matching contract. Apply [liveness review](../../skills/worker-liveness-review/SKILL.md) and [cancellation confirmation](../../skills/cancellation-confirmation/SKILL.md) with actual same-instance controls. Unknown live work or effects blocks overlapping retry; name the exact service/session owner and required result/stop receipt.

After preserving retrievable private-safe evidence, clean only separately authorized owned disposable resources with confirmed stopped ownership. Do not delete user sessions, revert user work, remove databases/configuration, uninstall OpenCode, stop the shared background server or clear durable saved approvals as routine cleanup. Retain residue and its operator/evidence owner.

## Constraints

This document establishes no native support, schema validation, confinement, cost cap or configured permissions. The published schema URI and a valid config file do not prove effective loaded policy or GSF acceptance. Unsupported mappings fail closed; manual qualification remains a complete usable outcome without pretending a programmatic adapter ran. Every native action is NOT RUN.

## Format

Use the [response template](../../templates/response-template.md) or no-write chat: criterion 018; exact client/server/channel/generation/source revision and compatibility decision; each accepted/rejected mapping and clause; effective config/permission evidence; canonical/native identity and full-read evidence; actual submission/start/approval/result/usage versus unknown; coordinator acceptance separately; original/derivative receipt provenance, retrieval/retention owner; uncertain effects, exact resume/stop prerequisite and cleanup residue. MET/NOT_MET/BLOCKED applies only to the actual assigned predicate.

Illustrative consumer cases, **NOT RUN**:

- Current V2 client connects to an old server while configuration uses singular `permission`: reject the mixed mapping; do not silently rename fields or restart the server.
- A V2 reviewer subagent has broad own permissions although the parent denies edits: parent policy is not inherited proof; block the required read-only run pending real native restriction evidence.
- A native asynchronous prompt was acknowledged but its result was lost: reconcile exact session/message and effects; no second prompt, session deletion or most-recent resume.
