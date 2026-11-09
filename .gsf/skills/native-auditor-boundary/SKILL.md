---
name: native-auditor-boundary
description: Qualify one reviewer session against actual native read-only controls, complete tool and process paths, safe disclosure scope and current receipts; block restricted dispatch when enforcement is missing.
---

# Native auditor boundary

## Role

Decide whether one exact reviewer can be dispatched as **technically read-only**, or only as an instruction-bound reviewer with explicit gaps. This is a usable bounded qualification decision, not a sandbox, permission editor or new reviewer role. [Authorization review](../authorization-review/SKILL.md) owns accepted allow/deny decisions; [tool-control review](../tool-control-review/SKILL.md) owns inert argument proposals, not native enforcement.

Follow the [worker contract](../../agents/WORKER_CONTRACT.md), [environment contract](../../state/environment-contract.md), [candidate evidence contract](../../state/candidate-contract.md) and [host adapters](../../docs/hosts/README.md). Preserve required reviewer independence and existing checks. A direct question returns chat with no files/jobs; a dispatch writes only its assigned report using the [response template](../../templates/response-template.md). Qualification grants no dispatch, host launch, configuration change, network read or credential use.

## Context

Obtain the authentic review assignment and policy/candidate identities, exact repository/worktree and allowed source paths, reviewer identity, host/frontend/build/OS, session/process/profile identity, effective native principal, finite read scope, permitted report destination and audience. Identify the actual host/security owner and sources for the intended denial of writes, execution, delegation and disclosures. Missing intent is unknown, not permission to choose a weaker boundary.

Use only supplied sanitized settings and existing authorized capability/permission receipts. Do not read HOME, credential stores, private sessions or host history. Bound inspected tools, configuration sections, receipts, bytes and work time before review. A report-only output exception must identify its exact destination and native write mechanism; a reviewer that can write arbitrary product paths is not technically read-only merely because it was asked not to.

Primary native references, read 2026-11-09: [Claude Code permissions](https://code.claude.com/docs/en/permissions), [sandboxing](https://code.claude.com/docs/en/sandboxing) and [TypeScript SDK Options](https://code.claude.com/docs/en/agent-sdk/typescript#options). These are rolling documentation, not a qualified installed version or a universal host contract. Pin actual installed SDK and underlying CLI separately; other hosts require their own observed native sources.

## Task

### 1. Freeze the required boundary and enumerate every path

Build one report-local row per distinct enforcement path; include omitted/unavailable paths explicitly:

| Path / exact tool or process identity | Intended source/resource/effect decision | Native enforcing control and version/source | Effective principal/configuration receipt | Expected observable predicate | Actual evidence / disposition / owner |
| --- | --- | --- | --- | --- | --- |
| Built-in file read/search and edits | Named source read; product writes denied; report-only exception if authorized | Exact native tool restriction plus filesystem rights where required | Bound to this session and object identities | Allowed bounded read; denied unauthorized write before effect | supported / contradicted / unknown |
| Shell, terminal, notebook or interpreter | Disabled, or separately proven bounded non-writing execution | Actual complete tool denial or OS enforcement, not command-prefix promise | Include child processes and escape paths | No writable alternate execution path | Exact gap and responsible host owner |
| MCP/connector/browser/search/fetch | Exact operations/data/recipients; read still discloses | Native tool/server/account restrictions and separate egress evidence | Include authenticated browser, remote tools and saved grants | Unapproved operation or disclosure cannot proceed | Separate read-only and network conclusions |
| Hooks/plugins/helpers/delegation/background workers | No hidden effect outside accepted review | Actual disabled state or separately contained identities | Include startup hooks, inherited context and children | No writable inherited or delegated path | Unknown path prevents whole-boundary claim |

Also account for remote mounts, symlinks/junctions, caches/temp files, host-owned transcripts and automatic telemetry. Distinguish authorized host metadata writes from product writes without claiming zero writes everywhere. A worktree, fresh context, separate prompt or same-user directory is not OS isolation.

### 2. Assess native exclusivity, not labels

1. Separate tool visibility, auto-approval, actual denial, filesystem/IAM rights and egress. In Claude SDK documentation, `allowedTools` is **additional preapproval, not an exclusive allowlist**; `tools` selects built-in tools, and MCP/plugin/child access needs its own accounting. Empty additions do not revoke saved grants.
2. For the pinned native version, inspect effective denial precedence, all tool names/aliases, permission mode, managed policy, hook behavior and inherited grants. A role's `tools` field, `readOnlyHint`, Plan label, prompt instruction or tool description alone cannot prove the complete restriction. An approval callback may only see calls that fall through to prompting; auto-approved paths can bypass that callback.
3. Where shell exists, require the actual OS boundary's write/read/network controls, supported platform and no authorized escape/excluded-command path that defeats the claimed restriction. Claude's documented command sandbox covers shell commands, not built-in file/web tools, MCP servers or hooks; defaults permit workspace/temp writes and broad reads. Native Windows is documented unsandboxed. Do not infer a read-only reviewer from sandbox enabled alone.
4. Native configuration changes are a separate host-owner action with authentic scope, original-state custody, supported operation and effective readback. Reviewers do not weaken policy, enable bypass or create a wrapper to fill a gap. Record the request as NOT RUN unless actual authorized receipts exist.

### 3. Decide before dependent dispatch

- **Accepted qualification:** every required path has fresh applicable native enforcement evidence, source/identity match, finite disclosure scope and expected allow/deny receipts where the assignment requires runtime proof. State exactly which boundary is proven and residual privileged-host/admin limits.
- **Failed qualification:** an observed writable/unauthorized path contradicts the accepted boundary. Preserve minimal evidence and hold restricted dispatch; route correction to the existing host/security owner.
- **Unknown / BLOCKED:** tool inventory, effective configuration, OS control, readback, safe custody or required runtime receipt is missing/stale. Complete safe analysis but do not label the reviewer technically restricted. An instruction-only review can proceed only if independently authorized without that technical prerequisite; it cannot satisfy an acceptance criterion requiring it.

Actual finite proof, only if separately assigned, uses owned synthetic resources with a legitimate allowed read and discriminating denied write/alternate-tool/delegation case. No production probes, source modification, new profile, shell run or model call is authorized here. Evidence must establish denial before effect, not merely unchanged tracked files or a polite refusal.

### 4. Reconcile drift and loss of boundary

Host/tool/plugin/version/principal/permission/root changes invalidate dependent qualification. Stop affected dispatch before further sensitive context enters it. An active worker needs supported cancellation/fencing and observed stop before replacement; a cancellation request is not termination. On ambiguous effects, the authorized owner inspects actual product/report/remote state without replaying a write. Route unexpected disclosure through [incident response](../incident-response/SKILL.md); record unknown scope rather than claiming rollback or erasure.

## Constraints

Reading can send private data to a model, remote filesystem, search service or connector. Read-only is not no-network, no-disclosure or safe access to every file. Use [multichannel egress review](../multichannel-egress-review/SKILL.md), [task secret scope](../task-secret-scope/SKILL.md) and [data residency review](../data-residency-review/SKILL.md) for those separate obligations. Markdown enforces none of these controls. Keep secret values, sensitive configuration and private tool payloads out of evidence; retain only authorized nonsecret object identities or opaque custodian handles, never secret hashes.

## Format

Return exact assignment/candidate/policy/session/build/principal identities; full path/control matrix; normative versus native-source versus effective/runtime evidence; accepted/failed/unknown qualification; each held action and correction/owner; actual effects versus NOT RUN; provenance, observation/expiry, retrievable authorized evidence and ACL/retention limits. Use existing executing-role verdicts, not a new gate or authority ledger.

Manual cases, **illustrative NOT RUN**: (1) actual complete native denials plus scoped filesystem rights and current allow/deny receipts can qualify the named reviewer only; (2) Read preapproval with writable Bash or MCP fails exclusivity; (3) a read-only connector sending private text remains an egress decision; (4) same-user worktrees with no OS boundary cannot establish hostile-code isolation; (5) stale permission evidence blocks dependent dispatch while source analysis completes.
