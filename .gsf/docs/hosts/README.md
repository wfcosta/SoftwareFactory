# Host adapters and capability discovery

GSF is instructions, not a host SDK, permission sandbox, installer or scheduler. These adapters translate the same [setup procedure](../../skills/gsf-setup/SKILL.md) to documented host surfaces; they do not ship host configuration. Read the actual tool descriptions and installed-version help before invocation. Documentation establishes a possible interface, never that this session has it. Registering skills, installing plugins, creating sessions and changing host permission rules are writes requiring separate authorization. Reading the actual `.gsf/skills/.../SKILL.md` works without registration.

## Common adapter contract

1. Resolve the assigned repository/worktree and accepted policy from its root. Read [policy](../../state/config-contract.md), [worker authority](../../agents/WORKER_CONTRACT.md) and [environment record](../../state/environment-contract.md). Use only authorized discovery; a direct read-only request creates no job or record. Do not scan unrelated chats, user directories or credentials.
2. Map each required operation to a real advertised tool, its actual arguments, working-directory behavior and permission boundary. Record availability, actual tool/host version, observation and expiry, a retrievable evidence reference and limitations using the environment contract. Record `unknown` when absent evidence prevents a conclusion, `unavailable` for an observed missing/denied interface. No fabricated minimum version, generic tool-name alias or model slug.
3. Distinguish file reading, local writing, shell execution, browser/desktop control, independent context dispatch/result retrieval/cancellation, strict YAML/schema validation, remote forge/cloud identity, evidence retrieval and resource accounting. A browser tab is not a deployment credential; a shell is not a browser; an extra chat is not automatically an independent reviewer.
4. Classify the complete operation by policy effect: `read`, `local-write`, `external-write` or `destructive`. A shell, MCP tool or skill may cross all four; inspect its nested effects. Bind nonlocal effects to the exact accepted target and authentic grant, verify observed provider/account/region/resource scope and state fingerprint immediately before effect. Discovery does not authorize a write. Path/cwd resolution is repository-root-relative, including policy paths, checks and protected globs; check symlink/junction escape.
5. Required missing resources fail closed for the affected work: independent reviewers, a real UI for UI acceptance, a strict parser/validator, authentic target identity or a required observable cost cap cannot be replaced with prose, mocks or another nominal host. Unaffected authorized inspection may continue. READY means environment prerequisites only, not checks passed, review approval or merge/deploy authority.

### Nonregional targets and publication capability

The current pre-release policy 2/environment 1/release 1 contracts add a nullable representation without changing versions or existing genuine nonnull regional records. `region` remains required: a nonblank real region string, or null only when authentic provider identity observations and indexed provider documentation prove this exact target has no region dimension. Host acceptance must establish this semantic capability, not merely accept a schema null. Missing/blank region, unknown regionality, null for regional targets, fabricated providers or invented `global`/`unknown` strings block affected actions. Match exact accepted policy, fresh observed provider/account/region/resource identifiers and authentic scoped grant, explicitly binding nonregional scope where applicable; retain evidence, expiry and default-deny controls unchanged. Hosts unable to establish regionality report the prerequisite as unavailable, not READY.

Registry-only publication follows the artifact-only branch of [release-contract.md](../../state/release-contract.md): actual registry identity/namespace/version controls, publication-specific authority distinct from PR/deploy, intent/receipt and indexed immutable artifact/provenance verification. It does not require deployment health/traffic capabilities or release.md; an actual deployment still does. Ambiguous publication results require actual registry reconciliation and provider fencing where required, never blind retry. Frozen accepted jobs and receipts continue under their exact earlier schema/instruction snapshots; a newer host observation cannot silently reinterpret them.

## Read-only baseline recipes

Run each command through the host's actual shell in the assigned repository. These inspect, not install, authenticate, launch an agent or run product checks. Preserve command, cwd, UTC time, exit status and sanitized output; do not dump environment variables, secret-bearing configuration or remote URLs containing credentials. Select the recipe matching the actual OS/shell, not the host brand.

POSIX shell:

```sh
pwd -P
git rev-parse --show-toplevel
git rev-parse --show-prefix
git branch --show-current
git rev-parse HEAD
git status --short
command -v git
git --version
date -u '+%Y-%m-%dT%H:%M:%SZ'
```

PowerShell:

```powershell
Get-Location
git rev-parse --show-toplevel
git rev-parse --show-prefix
git branch --show-current
git rev-parse HEAD
git status --short
Get-Command git -ErrorAction SilentlyContinue
git --version
(Get-Date).ToUniversalTime().ToString('o')
```

A detached HEAD is an observation, not a guessed branch. Without Git, establish the assigned root through host workspace/operator evidence and record the missing version-control capability; Git-dependent work stays blocked. Discover product tools from its actual manifests and documented commands before running version queries. Find the already installed strict parser and Draft 2020-12 validator through that environment's documented tooling; do not assume Python, Node or a parser package is installed just because a shell exists.

## Cursor adapter

Official interfaces: [CLI parameters](https://cursor.com/docs/cli/reference/parameters), [CLI permissions](https://cursor.com/docs/cli/reference/permissions), [subagents](https://cursor.com/docs/subagents). These are rolling references, not a claim about a particular installed release.

| GSF need | Documented Cursor mapping | Evidence and limitation |
|---|---|---|
| Read/edit/search/shell | Agent's exposed file/search/terminal tools; CLI shell permissions use `Shell(...)`, file permissions `Read(...)` / `Write(...)` | Use actual session tool schemas, not these permission tokens as function calls. `Shell(git)` is broad, not read-only. |
| Web/browser | Web fetch capability; Browser subagent uses MCP tools when available | Fetching a page does not prove interactive browser, screenshots, authenticated UI or desktop capability. Observe actual tool/access. |
| Independent workers/reviews | Documented subagents have separate contexts and return results | Confirm dispatch, actual agent ID, result and cancellation interfaces. Shared checkout is the default; context isolation is not filesystem isolation. Custom registrations or worktrees need authorization. |
| Model selection | CLI model listing and actual picker; documented subagent model setting | Record model actually run where exposed; host may fall back under entitlement/admin restrictions. A requested model is not confirmed execution or diversity. |
| Permissions/isolation | CLI permission settings and optional actual sandbox | Observe effective restrictions; do not use force/bypass or broaden allowlists to make setup pass. GSF policy is an additional boundary. |

If the installed Cursor CLI executable is `agent`, these documented read-only queries establish its version/help:

```sh
agent --version
agent --help
```

Discover its executable first (`command -v agent` on POSIX or `Get-Command agent -ErrorAction SilentlyContinue` on PowerShell); an executable called `agent` might be unrelated, so confirm the product in its help. Where installed help confirms them, `agent models` and `agent mcp list` list entitled models and configured MCP status. Sanitize account/server identifiers as required; never retain tokens or authentication headers. Do not execute `login`, `update`, `worker start`, `create-chat`, shell-integration installers or agent prompts as read-only discovery. In the editor, record the application version/build shown by its installed About UI and the session's exposed tool list; editor version and CLI version are separate facts. If the needed version/build cannot be obtained, record unknown and block any work depending on that version-specific feature.

## Claude Code adapter

Official interfaces: [CLI](https://code.claude.com/docs/en/cli-reference), [tools](https://code.claude.com/docs/en/tools-reference), [subagents](https://code.claude.com/docs/en/sub-agents), [permissions](https://code.claude.com/docs/en/permissions).

| GSF need | Documented Claude Code mapping | Evidence and limitation |
|---|---|---|
| Files and commands | `Read`, `Edit`, `Write`, `Bash`; `PowerShell` only where exposed | Read/edit grants and shell grants differ. Working directory can vary; record actual cwd per command. Search tools may differ by OS/version. |
| Independent contexts | Current reference calls the dispatch tool `Agent` | Use the advertised schema, actual IDs/results and installed cancellation surface. Older interfaces may use other names; do not emit a guessed call. Subagent tool access/permissions can be narrower than the parent. |
| Web versus UI | `WebFetch` / `WebSearch`; Chrome/MCP integration only if actually enabled and available | Text fetch is not UI testing. No integration is implicitly installed or approved. |
| Strict validation | Existing executable/parser invoked through permitted shell | No built-in schema validation is implied by a response containing YAML/JSON. |
| Resource control | Some CLI modes expose budget/turn controls | Confirm installed help, mode and accounting scope. A turn cap is not elapsed-time/cost enforcement; estimated API spend is not a hard all-in bill ceiling. |

Read-only discovery after resolving the real executable:

```sh
claude --version
claude --help
```

Use `command -v claude` or `Get-Command claude -ErrorAction SilentlyContinue` first. In an existing authorized session inspect its displayed tool descriptions and permissions UI without changing permissions. Consult installed help before an optional authentication-status query; redact identity and never use a token-generation command as discovery. Do not launch `claude -p` to test harmlessness: a model run has cost, hooks and tools, and may write. Do not use permission bypass. The rolling reference contains version-specific additions/removals; e.g. a current `Agent` or background-task interface is not proof an older installed build supports it. Keep recorded CLI version, interface documentation and observed receipt together.

## Devin adapter

Official interfaces: [session tools](https://docs.devin.ai/work-with-devin/devin-session-tools.md), [CLI essential commands](https://docs.devin.ai/cli/essential-commands.md), [CLI permissions](https://docs.devin.ai/cli/reference/permissions.md).

| GSF need | Documented Devin mapping | Evidence and limitation |
|---|---|---|
| Files/commands | Hosted session IDE/Shell; CLI documented tools `read`, `edit`, `grep`, `glob`, `exec` | Hosted session and local CLI are distinct surfaces. Use only actual exposed names/arguments. Terminal execution may prompt even if file reads do not. |
| UI | Hosted Browser (or Computer when enabled) with session activity receipts | Confirm actual session access, browser state and authorized app; no assumption local CLI has the hosted Browser. Do not export browser profiles/cookies into evidence. |
| Review/context separation | Separate authorized reviewer session/context if actually supported and observable | Side chats inherit context and are read-only; they are not independent worker execution or mandatory independent review by themselves. Concurrent shell/browser actions are not independent reviewers. |
| Suspension/resume | Existing session's pause/stop controls; documented CLI exact-session resume | Obtain observable stopped-worker/remote-effect status before retry; preserved conversation is not a complete job reconciliation. |
| Permission boundary | CLI Normal/other permission modes and organization controls | Mode availability rolls out by account. Do not select bypass, assume hosted isolation equals local sandbox, or change team permissions during discovery. |

In a hosted session, open the current Progress/Shell view and run the baseline recipes through its actual Shell. Record the session identifier, workspace location and any build/version exposed in the host UI or operator-provided host metadata. The session-tools documentation does not establish a universal hosted version command or delegation API. If no build is exposed, record version unknown, cite the observed UI/tool inventory and block version-dependent requirements rather than inventing `devin.version` or a server field.

For local CLI discover `devin` with `command -v devin` or `Get-Command devin -ErrorAction SilentlyContinue`, then use `devin --help` to inspect the installed interface. Use its version option only if documented by that installed help; otherwise obtain package/application version from the installation's own metadata, without updating it. The existing session `/help`, `/mode` and `/workspace` displays can establish available commands, current mode and workspace without selecting another mode. `/model` can expose actual choices; do not choose one unless requested. Do not start a cloud session, SSH connection, login, update, new session or model run merely to discover capabilities. An unknown required resource remains a blocker.

## Terminal-only adapter and acceptance

Map reads to existing filesystem commands, commands to the actual shell, and receipts to actual command outputs. Record OS, shell, installed tools and root using the baseline. A terminal alone provides **no** independent model context, UI control, forge/cloud credentials, sandbox, cost meter, durable evidence store or continuing service. An existing external browser runner, review service or CI may supply a capability only after actual access/version/result evidence; never manufacture it by renaming terminal output. Serial implementation is possible within authority; required independent code/security reviews remain blocked until separately obtained against the same candidate.

Adapter acceptance requires: root and policy 2 validation; every required operation mapped to an observed available, unexpired capability; actual versions/evidence/limitations; exact target identity and permitted effects where relevant; retrievable sanitized receipts; and explicit blockers for everything unestablished. Discovery records no successful product check or deployment. Refresh after expiry, tool/permission/model/workspace/credential/target change, or a failure contradicting the observation; preserve the old accepted evidence rather than rewriting history. See [operations](../operations/README.md) for retention/checkpoint handling and [upgrades](../upgrades/README.md) for version changes.
