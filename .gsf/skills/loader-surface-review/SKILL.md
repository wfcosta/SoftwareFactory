---
name: loader-surface-review
description: Review finite explicitly approved Claude settings or Hermes 0.22.5 loader surfaces from public sanitized evidence, preserving exact discovery predicates, reference gaps and unknown native state without loading code.
---

# Loader surface review

## Scope and authority

Use for a static inventory of the mapped loaders outside the general plugin manager, not a search for every file named plugin or every executable surface. Follow [GSF mode](../gsf-mode/SKILL.md) and the [worker contract](../../agents/WORKER_CONTRACT.md). This Markdown procedure supplies no scanner, parser, host integration or native enforcement.

A direct review returns the report in conversation; a dispatch writes only its assigned report. Read only explicitly selected public, sanitized evidence. Do not read actual private profiles, HOME, default configuration locations, credentials, logs or histories. A supplied root is a scope assertion, not authenticated permission. No imports, hooks, helper execution, subprocesses, native probes, network or model calls; no settings edits, quarantine, permission changes or plugin enablement.

Reuse [configuration-precedence-review](../configuration-precedence-review/SKILL.md) for a separately scoped effective-resolution question, [authorization-review](../authorization-review/SKILL.md) for accepted permission claims and [supply-chain-review](../supply-chain-review/SKILL.md) for provenance/dependency claims. Inventory is neither those conclusions nor permission to collect their missing evidence.

## Finite inputs and prerequisites

- Accepted question, audience, source owner/read authority, exact host and actual version/build or unknown, exact profile below, and individually approved absolute local roots with immutable source identities/capture times.
- Explicit public sanitized input-file/directory list, expected missing placements, permitted root-relative paths and existing metadata/byte observations. A sanitized copy must retain its derivation and omissions; it cannot establish the original private configuration.
- Existing authorized bounded binary reader, safe JSON/YAML/AST parser or supplied trustworthy parsed evidence, and filesystem identity/link metadata. If unavailable, report the dependent parse/hash/path-safety claim unknown; do not build a backend, substitute line scanning or execute Python to fill it.
- Explicit numeric capture/report limits no looser than the ceilings below; approved retention/access destination and recovery owner. Counts include skipped directory siblings and missing file probes, not only returned candidates.

| Exact host / profile | Authorized root meaning and only mapped inputs |
| --- | --- |
| `claude` / `settings-project-2026-11-01` | Named primary project root; `.claude/settings.json` and `.claude/settings.local.json`, separately, never merged. |
| `claude` / `settings-user-2026-11-01` | Named public sanitized Claude configuration directory itself, not HOME; only `settings.json`. |
| `hermes` / `0.22.5-home` | Named public sanitized profile-home representation; `config.yaml`, immediate `hooks/` and specified immediate `plugins/` placements below. |
| `hermes` / `0.22.5-source` | Named approved source checkout; bundled provider categories and immediate legacy `providers/` placements below; never also a profile home. |

Other hosts, aliases, version ranges and profiles are unsupported/unknown, not approximate mappings. Claude profiles describe documentation observed 2026-11-01, **not** native-build certification: the reported 2.1.101 build was not qualified for every current event, exec-form `args` or MCP-tool hook. Hermes mapping is limited to researched installed 0.22.5 source; release-tag byte equivalence and the supplied checkout's version remain unproved without matching evidence.

## Source-bound procedure

1. **Freeze applicability.** Record each root/profile/version separately, source revision/digest/lines or unknown, all excluded sources and capture gaps. Never discover installations, resolve environment variables, select a profile from private config or expand scope from an encountered reference.
2. **Establish safe capture before content access.** Require a stable caller-owned local tree and existing metadata for every accessed ancestor and file. Reject explicit network/device namespaces, traversal, alternate streams, nonportable/reserved names, trailing dots, links/junctions/reparse points, case-fold collisions, special files and files with hard-link count other than one. Unknown identity/link count/locality blocks the affected read, not a claim of safety. No link following or outside-root content; mapped-drive locality needs separate owner evidence.
3. **Preserve captured identity.** Existing bounded binary observations must bind pre-open/open/post-read/current file identity, size and timestamps. Retain exact approved public bytes/hash/length or missing status once per file; distinguish per-file observation from an atomic snapshot. Changing/inaccessible/unsafe inputs invalidate the affected inventory. These conditions are prerequisites, not a Markdown sandbox against hostile ancestor races.
4. **Parse with the actual safe facility.** Claude accepts UTF-8 with optional initial BOM, strict JSON objects, no duplicate keys, comments, trailing commas or nonfinite numbers. Hermes requires safe UTF-8 YAML objects, rejecting duplicate keys, aliases, unsafe/custom tags, date/custom non-JSON objects and nonfinite numbers. Validate the whole bounded structured tree; no unsafe parser or regex fallback. Unsupported structures stop the affected complete inventory, never silently skip malformed declarations.
5. **Inventory all mapped declarations** using the exact rules below. For each input record declared incoming edge (event/setting/manifest/placement/predicate), candidate entrypoint, outgoing reference or unresolved edge, source pointer/line and source identity. Do not recursively follow dependency imports or opaque commands. Report complete selected coverage separately from host-wide completeness.
6. **Separate claims.** `configuration_declared` yields `configured_loader_candidate`; `documented_loader_directory` or `loader_specific_static_predicate` yields `placement_loader_candidate`. `present`, `missing` and `unresolved` describe references only. Effective configuration, enabled, registered, selected, loaded and executed remain unknown; no native probe was performed.

### Claude declarations and references

Read `hooks.<Event>[group index].hooks[handler index]`; groups/handlers are objects, hooks are arrays, optional matcher is a string including empty (not null). Supported handlers require nonblank strings: `command` needs `command`, `http` needs `url`, `prompt`/`agent` need `prompt`, and `mcp_tool` needs `server` and `tool`. Optional `args` is an array of strings. Additional fields are uninterpreted; matchers are never compiled or evaluated.

Exact documentation-profile events (unknown names/types block interpretation rather than invent an alias):

- `SessionStart`, `Setup`, `UserPromptSubmit`, `UserPromptExpansion`, `PreToolUse`, `PermissionRequest`, `PermissionDenied`, `PostToolUse`, `PostToolUseFailure`, `PostToolBatch`.
- `Notification`, `MessageDisplay`, `SubagentStart`, `SubagentStop`, `TaskCreated`, `TaskCompleted`, `Stop`, `StopFailure`, `TeammateIdle`, `InstructionsLoaded`.
- `ConfigChange`, `CwdChanged`, `DirectoryAdded`, `FileChanged`, `WorktreeCreate`, `WorktreeRemove`, `PreCompact`, `PostCompact`, `PreModelSwitch`, `PostModelSwitch`, `Elicitation`, `ElicitationResult`, `SessionEnd`.

String command helpers: `apiKeyHelper`, `awsAuthRefresh`, `awsCredentialExport`, `gcpAuthRefresh`, `otelHeadersHelper`. Object helpers: `statusLine`, `fileSuggestion`, `subagentStatusLine`, requiring `type: command` and nonblank `command`. Other top-level settings are not inferred loaders; never request credential-helper output.

Commands stay opaque except one project binding: a command with **no `args` field** exactly equal to `${CLAUDE_PROJECT_DIR}/` plus a portable relative path of ASCII letters/digits/underscore/dot/slash/hyphen can reference an approved within-root file. No empty/dot/parent components, reserved names or trailing dots. Quoting, whitespace, shell syntax, absolute paths, interpreter arguments, other variables, user-profile relative paths and every other form stay unresolved without probing. Empty `args` is not absence. Presence establishes bytes, not an executable or trust.

### Hermes 0.22.5 profile-home mapping

`config.yaml` shell declarations are `hooks.<event>[index]` objects with nonblank `command`; null event lists are empty. Other entry fields do not establish runtime eligibility. `hooks.outbound` and `hooks.output_spill` are reserved non-shell subsections, excluded. Commands remain unresolved because profile home does not establish runtime working directory; do not read consent/launch/environment switches.

Exact shell events are the researched `VALID_HOOKS` minus `SHELL_UNSUPPORTED_HOOKS`:

- `pre_tool_call`, `post_tool_call`, `transform_terminal_output`, `transform_tool_result`, `transform_llm_output`, `pre_llm_call`, `post_llm_call`, `on_stream_start`, `on_stream_delta`, `on_stream_end`, `on_interim_message`, `pre_verify`.
- `pre_api_request`, `post_api_request`, `api_request_error`, `pre_auxiliary_call`, `post_auxiliary_call`, `on_session_start`, `on_session_end`, `on_session_finalize`, `on_session_reset`, `on_session_delete`, `on_skill_lifecycle`.
- `subagent_start`, `subagent_stop`, `pre_gateway_dispatch`, `post_gateway_admission`, `agent_loop_stopped`, `pre_approval_request`, `post_approval_response`, `on_human_input_request`, `on_human_input_resolved`, `on_room_member_activity`, `pre_transcription`.
- `kanban_task_claimed`, `kanban_task_completed`, `kanban_task_blocked`, `on_kanban_worker_spawned`, `on_kanban_worker_exited`, `on_kanban_worker_stale_claim`, `on_kanban_task_updated`, `on_kanban_dispatch_tick`, `gateway_platform_event`, `pre_command`, `post_compaction`.

`transform_api_error_classification` and unknown shell events are unsupported. For each immediate `hooks/<name>/`, inspect only `HOOK.yaml` and fixed `handler.py`; manifest `events` is an array (empty means no candidates). Gateway events are exactly `gateway:startup`, `session:start`, `session:end`, `session:reset`, `session:compress`, `agent:start`, `agent:step`, `agent:end`, `reaction:added`, `reaction:removed`, `command:*`. One candidate per event, including a missing handler. Native loading requires both files, imports module body, then checks `handle`; static inspection proves none of that. The researched gateway loader does not gate this placement with `plugins.enabled`; actual enablement remains unknown.

Across both Hermes profiles, **every provider-directory enumeration** skips immediate names beginning with `.` or `_`: nested model-provider directories, flat `plugins/<name>/` provider/memory/context candidates, and bundled source directories under `plugins/model-providers/`, `plugins/memory/` and `plugins/context_engine/`. Skipped siblings still consume enumeration bounds. This exclusion does **not** apply to the gateway `hooks/<name>/` mapping above, which intentionally includes such names within the explicitly approved public sanitized scope. Do not broaden that exception to provider placements or private host data.

Model-provider placements: immediate `plugins/model-providers/<name>/__init__.py`, skipping hidden/underscore-prefixed provider directories. Other immediate flat `plugins/<name>/` use `plugin.yaml`, or `plugin.yml` only when the former is absent; exact `kind: model-provider` makes fixed `__init__.py` a candidate even if missing. General plugin kinds are not providers. Safe-YAML review is deliberately stricter than the native permissive manifest fallback.

Memory/context candidates are **not directory-name inference**. For immediate flat `plugins/<name>/` having `__init__.py`, including the immediate `plugins/model-providers/` directory itself, inspect only the first 8192 decoded characters for `register_memory_provider`/`MemoryProvider` or `register_context_engine`/`ContextEngine`. Comments may satisfy this literal native predicate: candidate only. Memory additionally has a fallback over immediate regular Python modules: existing non-executing AST evidence of a `register_memory_provider` call or `MemoryProvider` subclass (including imported class aliases); syntax-invalid modules do not match. Context has no AST fallback. If safe AST evidence is unavailable, leave that branch unresolved, not absent.

### Hermes 0.22.5 source mapping

Visit only immediate provider directories under `plugins/model-providers/`, `plugins/memory/`, `plugins/context_engine/`; fixed `__init__.py` is present or missing. Legacy immediate `providers/*.py` and packages with `__init__.py` use the filesystem subset of discovery: strip `.py` for regular modules, then exclude names containing a dot, leading underscore or exact `base`; ordinary `foo.py` remains. No namespace packages, zip importers, package entry points, runtime search path, nested imports or outside-root sources. No active provider, collision winner, dependencies, isolation or registration is inferred.

## Bounds, evidence and report

Collection ceilings: 2,097,152 bytes/file; 33,554,432 distinct bytes total; 2048 file observations; 8192 directory entries including skipped siblings; 4096 candidates; 1024 characters/root or relative path; 65,536 structured nodes, depth 32 with root zero, 65,536 characters/string or key, no NUL value strings; 65,536 fallback AST nodes. Lower audience/tool limits win. Exceeding a ceiling blocks completion, not a truncated success. No repeated declaration hashing or serialization beyond an explicit 33,554,432-unit work bound; absent a safe bounded facility, retain source locators rather than inventing computed digests.

Return scope/authority, exact profiles/version applicability, approved roots and exclusions; source revision/digest/capture and parser/metadata basis; complete inspected-file list (present/missing, approved byte count/hash), every candidate's surface/event/type/source pointer, incoming and outgoing edges, reference status/path/approved hash, basis/classification; counts and exhausted bounds; all unknowns, conflicts, blocked rows, exact missing facility/evidence and owner. Keep report fields local, not a new loader registry/schema. Empty inventory means only no candidates in these selected mapped inputs.

Keep commands, arguments, matchers, prompts, model selections, URLs, headers, environment values, provider values and source snippets out of the report. Do not fingerprint secrets or low-entropy values; legacy opaque/declaration digests are not anonymization or publisher proof. Paths and public-file hashes can still be sensitive: disclose only audience-approved metadata, with existing protected handles otherwise. Record actual retrieval/access/retention basis; no new evidence store.

Primary applicability sources: [Claude hooks](https://code.claude.com/docs/en/hooks), [settings](https://code.claude.com/docs/en/settings), [settings reference](https://code.claude.com/docs/en/settings-reference), [2.1.101 changelog](https://raw.githubusercontent.com/anthropics/claude-code/v2.1.101/CHANGELOG.md), [Hermes plugins](https://hermes-agent.nousresearch.com/docs/user-guide/features/plugins), [Hermes hooks](https://hermes-agent.nousresearch.com/docs/user-guide/features/hooks). Hermes source mapping names `providers/__init__.py`, `gateway/hooks.py`, `agent/shell_hooks.py`, `hermes_cli/plugins.py`, `plugins/plugin_loader.py`, `plugins/memory/__init__.py`, `plugins/context_engine/__init__.py`; bind actual supplied revision/lines, never pretend live docs authenticate installed bytes.

## Failure, recovery and completion

Malformed/unknown events, unsafe paths, missing parser/metadata, unstable files or exceeded bounds stop dependent collection. Retain sanitized reasons without raw parser exceptions; finish independent approved roots, but mark overall coverage incomplete. Obtain corrected public sanitized inputs or exact source/metadata evidence through the existing owner; no retries with relaxed parsing, broader discovery or execution.

Explicit exclusions include managed/MDM/server/CLI settings, external includes, MCP config, plugin caches/manifests outside this mapping, skill/agent frontmatter hooks, inline shell, Hermes profile selection/project opt-ins/consent/private values and other extension categories. Inventory cannot prove effective precedence, permissions, quarantine or whole-host coverage. Changed bytes, roots, profile or version invalidate affected rows. Preserve prior evidence under existing retention, remove only assigned disposable report scratch if authorized, and return static-only conclusions plus the precise remaining prerequisite; no native actions are needed to complete this review.
