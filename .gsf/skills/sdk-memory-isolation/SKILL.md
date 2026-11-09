---
name: sdk-memory-isolation
description: Review exact Claude Agent SDK and child-process configuration, instructions, auto memory, session history and fact persistence separately so personal or other-tenant state cannot be assumed isolated by settings sources alone.
---

# SDK memory isolation

## Role

Produce a bounded **launch/context-transfer readiness decision** for one existing SDK application and tenant/project, preventing accidental inheritance from being mislabeled isolation. This is a procedure, not an SDK wrapper, launcher, environment scrubber, memory backend or technical sandbox. It does not initialize an SDK, invoke a model or inspect private personal configuration.

[Configuration precedence review](../configuration-precedence-review/SKILL.md) owns native resolution; [scope memory review](../scope-memory-review/SKILL.md) owns authentic scope/root/access/fact provenance; [project memory](../project-memory/SKILL.md) and [memory change acceptance](../memory-change-acceptance/SKILL.md) own separately commissioned persistence. [Bounded evidence review](../bounded-evidence-review/SKILL.md) covers ambient evidence/telemetry leaks but does not settle SDK memory/configuration inheritance. Follow the [worker contract](../../agents/WORKER_CONTRACT.md), [environment contract](../../state/environment-contract.md), [candidate evidence contract](../../state/candidate-contract.md) and [response template](../../templates/response-template.md). Direct questions return no-write chat; dispatch writes only its assigned report.

## Context

Obtain exact application/candidate/policy identities, package ecosystem and installed **SDK version**, actual bundled or separately selected **Claude Code binary/version**, OS/runtime, parent and child process/profile/principal, approved cwd/root/config-root bindings, project and tenant identities, intended instruction sources, existing session selection and persistence policy, actual configuration/memory/custody owners and permitted audience. A package version does not prove which custom CLI binary is launched.

Use only explicitly authorized source sections and supplied sanitized launch/configuration/control receipts. Bound keys/files/sources/bytes/time. Do not import a package, run help, create a session, prewarm a process, enumerate sessions, inspect HOME/keyrings/private memory/history, dump environment variables or contact a model/provider to discover defaults. Obtain exact missing metadata from the actual authorized custodian, not secret values.

### Primary source qualification

Read on **2026-11-09**, all rolling primary documentation, not a pinned installed release:

- [Use Claude Code features in the SDK](https://code.claude.com/docs/en/agent-sdk/claude-code-features#what-settingsources-does-not-control): settings-source exclusions do not suppress global config, auto memory, managed policy or all connector inputs; multi-tenant guidance requires separate tenant filesystems plus explicit settings/auto-memory controls.
- [Python SDK options](https://code.claude.com/docs/en/agent-sdk/python#claudeagentoptions): `setting_sources`, `env`, `cwd`, `user`, `settings`, continuation/resume and client reuse semantics.
- [TypeScript SDK options](https://code.claude.com/docs/en/agent-sdk/typescript#options): `settingSources`, `env`, `settings`, session/configuration and process controls.
- [Memory](https://code.claude.com/docs/en/memory#auto-memory) and [environment variables](https://code.claude.com/docs/en/env-vars): auto-memory switch, project/worktree storage and environment precedence.
- [System prompts](https://code.claude.com/docs/en/agent-sdk/modifying-system-prompts): settings-source-controlled CLAUDE.md loading, custom/preset prompts and dynamic-section behavior.

Pin the actual installed pair and approved source snapshot for every native claim. These pages do not state a universal historical minimum for every control. If exact version applicability cannot be established, leave the affected launch BLOCKED; do not invent a disable flag, backport support or version range. The older inert CLI profile in tool-control-review is not an SDK memory contract.

## Task

### 1. Separate the inheritance surfaces

Populate all rows below. Split different projects, tenants, child processes, subagents and stores; omission is not disabled.

| Surface | Required accepted predicate | Documented candidate control, not applied proof | Required safe actual evidence |
| --- | --- | --- | --- |
| Filesystem settings/discovered extensions | Only accepted user/project/local sources and programmatic hooks/plugins/tools load | TS `settingSources: []`; Python `setting_sources=[]` excludes these filesystem settings; explicit programmatic inputs remain separate | Exact options/config source, effective loaded-input inventory and versions; no unrelated hooks/skills/agents |
| Global config and managed policy | Personal global config excluded/relocated; required organization policy remains known | `CLAUDE_CONFIG_DIR` relocates global config; endpoint-managed policy remains; server-managed policy may load with qualifying organization authentication | Unique approved config-root/native object identity and actual ACL/containment, managed policy source and actual tenant/org binding |
| Auto memory | No prior personal/project/other-tenant auto-memory read or automatic save when disabled | Existing CLI `CLAUDE_CODE_DISABLE_AUTO_MEMORY=1` in the **child environment**, or effective `autoMemoryEnabled: false` settings | Actual effective child switch and precedence; no reliance on settings source exclusion alone; original receipts for required no-load/no-save proof |
| Parent/child environment and identity | Only approved task runtime variables and credential references inherited | TS/Python `env` have different documented semantics; actual process launch boundary required | Secret-free allowed variable classes/presence and actual child principal/config/cwd, not a parent-shell dump |
| Instructions/context | Only authorized tenant/project instructions and input are assembled | Explicit source choices plus reviewed custom/preset/appended prompts, direct context, rules/imports/additional dirs | Loaded instruction identities/sections, source-bound provenance, audience; no external instruction promoted to authority |
| Conversation/session state | No foreign context through client reuse, resume, fork or storage | Exact session selection and existing persistence/store options for installed version | Actual session/tenant binding, lifecycle and storage ACL/retention, no cross-tenant reuse |
| New facts and subagent memory | No automatic cross-scope fact save or inherited child memory | Separately accepted fact commission/store owner; native subagent-memory behavior independently reviewed | Exact personal/project/org scope, writer/read audience and current native rights; children/forks separately accounted |
| Other ambient routes | No unapproved connector, credential chain or telemetry inheritance | Existing separate native MCP/config/egress controls | Task-secret, multichannel-egress and residency evidence; not implied by memory disabled |

### 2. Apply precise documented distinctions

1. **Settings sources are not all-memory-off.** In the retrieved SDK references, omitted settings-source options use CLI defaults, and explicit empty arrays exclude user/project/local filesystem settings. Auto memory, global config and managed policy remain independent. Explicitly excluding project settings can also remove a project-stored `autoMemoryEnabled: false`; never rely on a setting that the chosen configuration does not load.
2. **Use a real documented auto-memory control.** The documented variable is exactly `CLAUDE_CODE_DISABLE_AUTO_MEMORY=1`; the environment reference says disabled auto memory neither creates nor loads auto-memory files. `autoMemoryEnabled: false` is a distinct native settings control. The same reference says `CLAUDE_CODE_DISABLE_AUTO_MEMORY=0` can force memory on despite that setting; therefore effective precedence, child environment and loaded settings must be reviewed together. Neither control erases old files, forbids ordinary file-tool reads/writes, disables subagent memory by assumption or stops application-managed fact saving.
3. **Environment behavior differs.** The retrieved TypeScript reference says an explicitly provided `env` replaces the subprocess environment; the Python reference says `env` is merged on top of inherited process environment. Do not copy one language's rule to the other or infer Python `env={}` clears inherited values. Python's documented `user` option retains parent environment including HOME and runs in cwd; changing user alone is not a clean profile. An existing authorized launcher/container/OS owner must establish the actual approved child environment where required. This Markdown does not supply one.
4. **Config root, cwd and OS isolation differ.** A task-specific approved `CLAUDE_CONFIG_DIR` changes config location, not all filesystem access or organization policy. Worktrees/subdirectories of one repository are documented to share auto memory. `CLAUDE_CODE_PROJECT_DIR_NAME` beside `CLAUDE_CONFIG_DIR` can deliberately make different repositories share a project memory directory; documentation gives Claude Code v2.1.234+ for that override. Distinct path spellings, process cwd and separate contexts do not prove distinct native objects, ACLs or tenant filesystems. Same-principal folders are not hostile-code isolation. Never create or inspect personal roots to fill an omitted binding.
5. **Instructions are not enforced permissions.** Review direct prompts, CLAUDE.md/local/parent/nested rules, imports, AGENTS.md behavior where applicable, system-prompt preset/custom/append, plugins/hooks and application-injected context separately. Settings sources control documented CLAUDE.md loading, not all text supplied by the application. `excludeDynamicSections` only relocates dynamic content; the primary source explicitly says it still reaches the model. Its documented minima (TS v0.2.98, Python v0.1.58) are cache-feature bounds, **not memory disablement**. Switching to a custom prompt is not a native memory isolation control or security enforcement.
6. **Fresh conversation is not fresh filesystem.** Python `query()` starts a fresh conversation by default, while `ClaudeSDKClient` retains a conversation; continuation/resume/fork options reintroduce prior context. Review exact TS session/client/prewarm reuse, storage backend, tenant keys, transcript exports and persistence independently. A fork inherits context; disabling session persistence does not disable auto memory, app caches, previously loaded instructions or external stores. No session enumeration/history reading is authorized here.
7. **Fact scope needs a separate commission.** Disabling automatic memory does not authorize project-memory writes, storing a completed report as a fact or reusing a personal preference across tenants. Hand exact proposed nonsecret facts to existing proposal/acceptance owners with source, scope/root/audience and authentic write authority. Native subagent memory and application caches need their own rows; do not invent a universal off flag.

### 3. Compare intent, configuration and actual readiness

For every row record exact normative source, native documented control/version, predicted resolution, actual effective receipt or UNKNOWN, expected predicate and supported/contradicted/unknown disposition. A sanitized launch-options sample is proposed configuration, not proof of child environment, no file loads or model behavior. Do not claim runtime isolation from absence of memory messages or a clean response.

- **Accepted bounded readiness:** all required rows have exact current identity/control/custody evidence satisfying the accepted boundary; required native runtime proof, if assigned, has actual original receipts. The decision is scoped to this SDK/CLI/tenant/config/process, not all versions or projects.
- **Failed readiness:** observed personal/foreign source loaded, memory enabled contrary to policy, wrong config/session/tenant binding or persistent fact outside accepted scope. Hold dependent context transfer/launch; route minimal evidence to the actual SDK/host/memory/privacy owner.
- **Unknown / BLOCKED:** exact version semantics, effective child environment, native filesystem isolation, instruction inventory, session binding or required receipt missing. Complete safe source/config analysis and name the precise prerequisite. Do not run an SDK/model/native probe to manufacture proof or substitute OpenTelemetry controls for memory controls.

Fresh native proof is only a separately authorized owner task using existing tooling and isolated wholly synthetic tenant fixtures: distinct harmless fact markers, approved source inventory and actual no-load/no-save/read-denial/allowed-scope observations with no external disclosure outside accepted scope. A prose scenario, local simulation or agent refusal is NOT RUN, not native evidence.

### 4. Reconcile drift or accidental inherited state

Changed SDK/CLI/runtime, parent environment, config root, principal, cwd/project binding, managed policy, hooks/plugins, session/store or fact audience invalidates dependent readiness. Stop affected launch/context dispatch before disclosure. Existing processes retain already loaded context; changing settings is not retroactive forgetting. A live instance needs actual cancellation/fencing and observed stop before a clean replacement can be considered.

If foreign instructions/memory were already loaded or saved, preserve minimal secret-safe provenance, identify the actual affected process/session/store/recipients and route containment to [incident response](../incident-response/SKILL.md) and actual privacy/memory owners. Do not reread foreign memory to investigate, silently delete personal files, scrub history or claim model unlearning. Unknown write/stop results require actual owner reconciliation before retry. Native deletion or access revocation has residual-copy/backup limits under [privacy request](../privacy-request/SKILL.md); old memory files surviving a disable switch are not erased.

## Constraints

No SDK import/startup/prewarm/session creation, source/host execution, provider/model/credential calls, private config/memory/history scan, settings/environment mutation, new runtime/backend or automatic fact save is performed here. Native restrictions need existing real controls, a separate authentic grant and receipts. Required missing isolation blocks dependent delivery/dispatch, never independently safe analysis. Preserve existing authority, checks, schema snapshots and canonical memory owners.

## Format

Return exact SDK and CLI versions/paths as permitted, app/process/tenant/project/root/principal identities; source URLs/date/snapshot and installed applicability limits; every matrix row with expected/actual/unknown controls; independent environment/instruction/auto-memory/session/fact-scope findings; accepted/failed/unknown readiness; held launches/context transfers and actual next owner; actual operations versus NOT RUN; original versus sanitized evidence, freshness, retrieval/ACL/retention and recovery/residue. Use existing executing-role verdict/report binding, not a new configuration schema.

Manual cases, **illustrative NOT RUN**: (1) `setting_sources=[]` alone leaves auto memory/global configuration unresolved and dependent dispatch blocked; (2) Python `env={}` cannot prove no inherited personal profile; (3) TS replacement environment plus approved task config root and effective disable switch still needs managed-policy, instruction/session and native filesystem evidence; (4) two worktrees are not separate memory tenants; (5) `excludeDynamicSections` moves memory guidance rather than disabling it; (6) reused SDK client with foreign session history fails despite disabled auto memory; (7) an otherwise ready task still cannot persist a fact without separate scope/commission authority; (8) native version unknown yields complete safe review with affected launch blocked, not an invented flag or probe.
