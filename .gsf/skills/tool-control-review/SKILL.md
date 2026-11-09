---
name: tool-control-review
description: Review an exact Claude CLI built-in visibility and additional-preapproval proposal without confusing defaults, empty selection, permissions or effective enforcement; hand off only through separately authorized existing native tools.
---

# Tool control review

## Role

Review a bounded, explicit tool-control intent and explain its exact logical arguments. This is a Markdown decision procedure, not an executable translator, launcher, permission service, auditor qualification or sandbox. [Authorization-review](../authorization-review/SKILL.md) owns actual subject/resource/effect grants; [contract-drift](../contract-drift/SKILL.md) owns version compatibility. Follow the [worker contract](../../agents/WORKER_CONTRACT.md) and [environment contract](../../state/environment-contract.md).

Direct questions return no-write chat. A dispatch writes only its assigned Markdown response. Never read settings, discover credentials or invoke a host merely to complete a logical review. Existing execution authority is separate from permission to propose arguments.

## Context

1. Obtain the accepted purpose, exact target host/surface/version, built-in-only scope, requested visibility and additional preapproval, source authority, original findings and finite disclosure/retention limits.
2. The preserved supported reference profile is exactly **Claude Code CLI 2.1.101**, grounded in the historical operator-supplied successful `--help` observation. This procedure has not repeated that observation. Other hosts, SDKs and versions require independently accepted native contracts; do not approximate or infer version ranges.
3. The [official CLI reference](https://code.claude.com/docs/en/cli-reference), [tools reference](https://code.claude.com/docs/en/tools-reference) and [SDK permissions guide](https://code.claude.com/docs/en/agent-sdk/permissions) explain distinctions, but live unversioned pages do not prove historical or installed support. The SDK link is not an SDK translation contract.
4. Request only explicitly supplied, approved nonsecret material. Do not install the retired implementation, create an intent JSON file, parse private settings, scan host directories or establish effective permissions by prose.

## Task

### 1. Validate the logical request before forming arguments

Require all of: declared host, surface and exact version; scope `built_in`; visibility explicitly stated as unchanged defaults, empty selection or an ordered exact-name list; an explicit ordered additional-preapproval list, possibly empty but never unknown/null. Missing or conflicting fields block translation. Reject unrecognized intent fields rather than silently interpreting them.

The bounded case-sensitive supported subset is **Bash, Edit, Glob, Grep, NotebookEdit, Read, WebFetch, WebSearch, Write**. Each list permits at most nine unique names. This is not a complete native tool inventory. Preserve order and exact case; no normalization, aliases, duplicates or generated names.

Reject arbitrary argv/options, `default`, `all`, wildcards, pattern rules such as `Bash(git *)`, MCP selectors, lowercase aliases and names outside this subset. Full-catalog restrictions, scoped command rules, SDK settings and arbitrary hosts are unsupported, not approximate translations. Bare-name `Bash` preapproval is broad, not command-scoped authorization.

### 2. Keep the three visibility states distinct

| Explicit visibility intent | Logical argument elements | Qualification |
| --- | --- | --- |
| Unchanged defaults (legacy `null`) | No `--tools` element | Effective defaults unknown; do not derive visibility from preapproval. |
| Empty selection (legacy `[]`) | `--tools` followed by one real empty-string argument | Empty built-in request, not proof the complete tool catalog is empty. |
| Ordered list Read, Grep | `--tools` followed by `Read,Grep` | Request only these built-in names; actual host availability still unobserved. |

An empty additional-preapproval list adds no `--allowedTools` element and does **not** clear existing grants. A nonempty ordered list adds `--allowedTools` followed by its comma-separated exact names. With unchanged visibility this is approval-only intent, not an exclusive visible-tool set.

For explicit empty/nonempty visibility, every preapproved name must be present in that selection. Otherwise report `invisible_preapproval`: choose a separately authorized visible name, remove its additional preapproval, or explicitly request unchanged defaults. Never silently widen visibility. With unchanged defaults, whether a preapproved tool is available remains unknown.

### 3. Return an inert argument proposal, not a command

Preserve array boundaries, input order and any real empty string. Do not shell-join, reparse or filter empty elements. Only two flag spellings belong to this reference profile: `--tools` and `--allowedTools`. Do not synthesize bypasses, permission modes, denials, setting-source restrictions, MCP/plugin configuration or executable overrides.

`claude` is a logical executable name, not a discovered authenticated path. Execution requires a separate owner to bind the actual native executable/version, current grants/denials/settings/hooks and exact invocation. No invocation occurs under this review. If an existing authorized interface cannot preserve argument boundaries or verify the target, block the dependent handoff rather than implementing a wrapper.

Legacy raw-file input limits were 16,384 bytes plus stable regular-file/path, strict UTF-8/JSON, duplicate-key, finite-number and nesting checks. This Markdown does not provide that parser or those filesystem/race controls. An already-decoded object cannot prove raw duplicate-key absence. Use only an existing independently accepted native reader when those guarantees are required; absent control blocks that claim, never licenses a new parser or silent postdecode substitute.

### 4. State what the proposal cannot establish

A translated proposal means **logical translation only**. Record effective tools as unobserved, visibility not inferred from preapproval, and additional preapproval as nonexclusive. It revokes no saved grants, overrides no denials and guarantees no prompt-free execution.

MCP/plugin tools, managed settings, hooks, subagents, unrelated paths and complete-catalog restriction remain uncontrolled/unobserved. Saved grants, denials and permission modes are unchanged/unobserved. No dispatch, IAM, filesystem access, egress, sandbox or technically restricted-auditor claim follows. A selected/preapproved tool can still be denied; an unlisted tool can remain authorized through another path.

Stop on a changed target/profile, ambiguity, missing authority, unsupported request, stale source or inability to preserve exact arguments. Retain the original finding and accountable next action, not guessed compatibility.

## Constraints

No host/model/provider calls, credential/config discovery, new runtime/parser/CLI, installation, private-directory scan or native permission changes. Logical rejection may explain the fixed category without echoing private paths, unknown keys, raw input or tool content. Never label native enforcement or input guarantees observed when only the intent was read. Reading Markdown grants nothing.

## Format

Use the [assigned response](../../templates/response-template.md), or no-write chat: exact accepted reference profile/source qualification; original visibility state and ordered names; separate additional-preapproval intent; logical argument elements or precise rejection; effective state UNKNOWN; every original criterion/finding; current native prerequisites, owner and separately authorized next action; executed versus NOT RUN actions; modified product files (normally `[]`); retention/disclosure limits and invalidation conditions.

Manual boundary example, **not host execution**: unchanged visibility plus Read preapproval yields only `--allowedTools`, `Read`; empty visibility plus Read preapproval is rejected, not widened. Empty visibility without additions preserves `--tools`, empty-string as two elements; an empty preapproval list clears nothing. These outcomes establish logical review, never actual host restriction.
