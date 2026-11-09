# Hermes Agent adapter — roadmap 013

## Role

Adapt GSF procedures to **Nous Research Hermes Agent**, identified by the [official documentation](https://hermes-agent.nousresearch.com/docs/) and not another product named Hermes. This is a supervised Markdown procedure, not a gateway, plugin, launcher or permission mechanism. Follow the [common host contract](README.md#common-adapter-contract), [worker contract](../../agents/WORKER_CONTRACT.md) and [GSF run](../../skills/gsf-run/SKILL.md). GSF retains canonical policy, role, task, dispatch and acceptance authority.

## Context

Primary sources, consulted 2026-11-09: [Skills System](https://hermes-agent.nousresearch.com/docs/user-guide/features/skills), [Plugins](https://hermes-agent.nousresearch.com/docs/user-guide/features/plugins) and [Messaging Gateway](https://hermes-agent.nousresearch.com/docs/user-guide/messaging). These are rolling `current` references, not a minimum supported release or evidence of an installed build. Record the actual frontend, Hermes build, gateway build/instance, profile and machine separately; absent build evidence blocks version-dependent mappings.

The current sources describe skills via `skills_list()` and full-content `skill_view(name)`; references use `skill_view(name, path)`. Use these names only if the actual session advertises their schemas. A skill listing is not a full read. Plugin skills are namespaced, for example `plugin:skill`. Current plugin documentation says sessions run through the gateway and project-local `.hermes/plugins/` are not loaded there. It also describes category-specific activation exceptions; a single enabled-plugin list cannot establish all effective hooks, memory or provider capabilities. An older installation must be assessed under its actual contract, not forced into this architecture.

Before any dispatch obtain:

- Exact repository/worktree/branch, accepted policy and instruction revisions, absolute JOB_DIR, canonical job/task/fresh dispatch IDs, assigned role, exclusive paths and expected report/done evidence. For a direct no-write question, use no factory IDs or evidence files.
- Exact selected machine/profile, frontend (CLI/TUI/Desktop/dashboard or messaging), gateway instance and session identity, effective terminal backend/cwd and actual advertised tools. Distinguish local, container and remote filesystems.
- For messaging, the exact platform, bot/profile, chat/channel/thread origin and authenticated requester authority, plus approved disclosure audience. `/whoami` reports slash-command access, not GSF or provider authority. A channel label or stored credential is insufficient.
- Existing approved tool/plugin/hook inventory and effective model/provider scope from sanitized operator evidence; no HOME, credential, unrelated history or cross-origin session scan. Record unknowns rather than assume CLI and messaging toolsets match.
- Separate grants for procedure read/disclosure, native invocation/model cost, local or external effects, retained capture and cleanup. Freeze numeric turn/attempt/time/output/usage bounds and the actual controls; missing required cost visibility blocks cost-bounded execution.

## Task

### 1. Resolve and load without adoption

1. Compare supplied identity and approved observations with the named product and exact current session. An unresolved product/profile/backend is BLOCKED, not a reason to start a gateway or sign in.
2. Prefer the existing authorized file reader to read the complete canonical `.gsf/skills/<name>/SKILL.md`, configured role and worker contract at the accepted revision. Load every reference needed for the assigned action. If the backend cannot see those bytes, request an authorized exact-source handoff; do not claim a local path is readable remotely.
3. If a separately authorized native registration already exists, inspect its resolved name/source and read the full content through the advertised skill tool. Compare it to the accepted canonical source; reject collisions, stale copies, bundle shadowing or skipped bundle members. Do not install skills, change external skill directories, invoke `/learn` or create a plugin to solve loading.
4. Record listing, resolution, full read and actual invocation as separate predicates. A slash command or plugin manifest proves none of the later stages. Use [referenced-skill protection](../../skills/referenced-skill-protection/SKILL.md) before any proposed change to canonical instructions.

### 2. Bind one native turn to one dispatch

1. The coordinator persists the accepted assignment and dispatch intent before native submission. Include the five-pillar assignment and canonical report destination in the actual prompt; keep GSF IDs unchanged and native IDs in indexed evidence, not renamed plan IDs.
2. Match the exact gateway session/origin, backend cwd, effective tools, pending approval transport and model/provider observations immediately before submission. A provider label or gateway connection is not an external-resource grant.
3. Submit once through the already available, authorized frontend. No universal Hermes headless command, gateway RPC or SDK is supplied here. Use only installed-version help or advertised session schemas; retain actual input receipt and native session/turn/message identity where exposed. A chat send receipt means delivery/submission, not accepted execution or task success.
4. Approve only the exact pending operation within the authentic grant. In messaging, documented `/approve` and `/deny` operate on pending dangerous commands; first prove their session, requester and target binding. Never approve a hidden/stale action, broaden toolsets, enable plugins or reset permissions to unblock work. A plugin command can have nested tools/network effects.

### 3. Capture execution, result and usage independently

1. Capture the authorized turn's original input, full-read evidence, native tool requests/results, approval decisions, final response/error, timestamps and actual terminal/backend identity within the finite capture budget. Preserve gaps and stderr/diagnostic failures; a visible reply is not a complete tool trace.
2. Map native gateway/profile/session and exposed turn/message identifiers to the canonical job/task/dispatch in owned evidence. Unknown native turn IDs remain unknown; observer-local labels are not producer-issued IDs. Require an unambiguous input/result correlation before importing a result.
3. Use only the selected session's documented status/result surface. `/status` is session information; `/usage` is session usage, not necessarily this turn or invoice spend. Keep token/provider/credit units, interval and cumulative-versus-delta semantics; do not reset usage. Route interpretation to [usage evidence review](../../skills/usage-evidence-review/SKILL.md).
4. Gateway reply delivery may be at-least-once. A recovered/duplicate reply is not another execution or another billable event without native identity evidence. No reply can also be a supported silence/delivery outcome; it is not proof no effects occurred. Obtain the original session outcome before replay.
5. Recover the worker's actual assigned report and done evidence. The coordinator validates identity, ownership and every criterion before accepting/promoting under the worker contract. Native completion text never fabricates worker events or grants merge/publication.

### 4. Reconcile resume and cleanup

For an interruption, preserve the exact session, last input/result, current owner, partial writes, usage and uncertain remote effects. Use only an authorized, chat-scoped exact-session resume; documented `/resume` is not permission to list other origins, and `/new`, `/reset`, `/retry` or a gateway restart is not reconciliation. Re-read frozen instructions after compaction when their full content is no longer available.

Documented messaging `/stop` requests stopping the running agent. It does not prove gateway plugin handlers, subprocess descendants, cron jobs or remote effects stopped. Current plugin documentation explicitly says Ctrl+C in the classic CLI can stop waiting without stopping a gateway slash-command handler. Apply [liveness review](../../skills/worker-liveness-review/SKILL.md) and [cancellation confirmation](../../skills/cancellation-confirmation/SKILL.md); unknown liveness blocks overlapping retry. The gateway operator owns missing handler/backend stop evidence.

Remove only separately authorized owned temporary registrations/captures after preserving retrievable evidence and proving the affected scope stopped. Do not stop the shared gateway, delete user skills/history, uninstall plugins, reset conversations, roll back files or prune delivery state as routine cleanup. Retain residue with a named gateway/backend/evidence owner.

## Constraints

Markdown supplies no sandbox, gateway origin check, tool restriction, cost cap, plugin activation, durable capture or exactly-once execution. [Progressive tool discovery](../../skills/progressive-tool-discovery/SKILL.md) does not establish Hermes tool-search protocol support; use actual full schemas and reject an unsupported mapping. No source or native command in this document was run.

## Format

Return the [assigned response](../../templates/response-template.md), or no-write chat: accepted scope and source date/build qualification; expected/observed machine/profile/gateway/origin/session/backend identities; canonical-to-native binding; exact procedure/full-read evidence; approved versus actual tools/effects; submission/start/result/worker-done/acceptance separately; original-unit usage and unknown coverage; sanitized receipt locators, original/derivative provenance, access/retention owner; resume/stop/cleanup facts and unresolved effects. Use criterion 013 with MET/NOT_MET/BLOCKED for its actual assigned predicate, not an unobserved native PASS.

Illustrative consumer cases, **NOT RUN**:

- An installed skill is listed but resolves to a shadowing bundle with a missing required member: block action, read canonical sources directly if permitted; no loading claim.
- A gateway delivers the same recovered reply twice: correlate original session/turn before importing once; do not submit `/retry` or double-count usage.
- Ctrl+C ends a plugin-command wait while handler outcome is absent: keep effects/liveness unknown and ownership blocked; ask the gateway operator for same-handler reconciliation, not a service restart.
