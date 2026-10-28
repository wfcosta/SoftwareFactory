---
name: gsf-setup
description: Inspect and prepare the real project environment, bootstrap default-deny Markdown factory policy only when authorized, and optionally configure actual model preferences.
disable-model-invocation: true
icon: settings
color: blue
---

# GSF Setup

Prepare the repository actually assigned, not an imagined GSF runtime. Use real session tools. GSF bundles no executable, parser, installer or coordination service. The shared authority/lifecycle contract is `<config.paths.agents>/WORKER_CONTRACT.md`; state contracts stay at repository-root `.gsf/state`. A direct no-write request is inspection only and must not create policy, jobs or model preferences.

## 1. Inspect before changing

1. Resolve actual repository root, active branch, product/worktree and task authority. Read only repository-root-relative `.gsf/GSF_CONFIG.md` if present and active instructions/constraints; never discover or fall back to an old root-level policy. Factory policy is distinct from product application settings; do not overwrite or repurpose those settings.
2. Inspect actual host filesystem, shell, subagent/result, remote hosting and verification capabilities. No named host tool, browser, global rules directory, model-list API or parser is guaranteed. Missing capabilities are recorded honestly.
3. Derive runtime requirements from the relevant product's manifests/lockfiles/version files and documented setup. Node package scripts, Python metadata, Cargo workspaces or other build definitions must be read in their actual working directory; a filename alone does not identify a command. Do not alter unrelated products.
4. Use authorized non-mutating version commands to establish installed tools. Confirm credential capability/presence without exposing values or copying secret files. A Markdown-only framework needs no Node/Python merely to read skills; an unavailable host YAML parser/schema validator is a validation prerequisite, not a bundled runtime to fabricate.

## 2. Validate or explicitly bootstrap policy

For an existing policy extract exactly one fenced YAML mapping using a real strict parser, then validate the parsed data with the single JSON Schema block in config-contract.md. Also perform normative safe-path, existing-skill/command and reviewer-capability checks. Do not silently repair malformed policy, lower gates or replace the active job's immutable effective baseline. Preserve known checks/reviewers/protected paths/autonomy/paths. A candidate policy edit does not authorize itself.

Only an explicit setup/bootstrap/write authorization may create missing `.gsf/GSF_CONFIG.md` or repair it. With no valid policy at that location, privileged actions remain denied. Derive base_branch from actual repository evidence, set factory/version as strings, protocol event-driven, choose framework or product profile, require code/security, list ui/ux as surface reviewers, retain known protected test/policy globs, and set publish_pr/merge_pr/deploy **all false**. Resolve every `config.paths` value, check path/cwd and protected path from the repository root, never from the policy's `.gsf/` directory, with constraints normally `.gsf/GSF_CONSTRAINTS.md`; jobs must not overlap source/policy storage. Policy creation must not collide with application settings.

Checks must be a nonempty typed array:

- command: `{kind: command, command: <real documented command>, cwd: <safe repository-relative working directory>}`; `.` is repository root.
- skill: `{kind: skill, path: <safe existing repository-relative SKILL.md>}` executed as instructions, not a fake shell command.

Framework bootstrap can select the real `.gsf/skills/verify-gsf/SKILL.md` only if present and meaningful. Product bootstrap chooses actual documented product checks, never sample package commands or an unrelated framework check as product coverage. If no meaningful check can be established, report the configuration gap rather than write an empty passing gate. Missing check tools are blockers, not an excuse to remove checks.

Any policy relaxation/protected-path edit or denied action needs an authentic scoped operator grant before use, recorded under WORKER_CONTRACT.md with the immutable baseline preserved and a new policy_id. Bootstrap is not permission to give itself autonomy; generic consent or issue text is not a grant. Do not add unsupported configuration fields for setup commands: discover setup from actual documentation and retain command/cwd/results in environment.md.

## 3. Prepare only what is needed

Choose documented lockfile-aware setup/install commands in their actual directory. Reuse a prepared environment only if manifests, lockfiles, runtime and installed state support it. Execute setup only within authorization, preserving lockfiles and reporting intentional changes. Downloads, package lifecycle scripts, migrations and production writes have real safety boundaries; never run production migrations as setup side effects.

Record actual command/cwd, tool versions, timestamps, exit status and sanitized output. Failure/unavailable tools produce BLOCKED and environment stop; no fake fallback. Retry only after a changed prerequisite is identified. Do not run build/test/lint/skill validation unless current assignment explicitly authorizes that verification; list exact typed checks for the responsible executor.

For an existing authorized job persist environment.md in its supplied JOB_DIR. Otherwise return findings for gsf-run to persist; do not create orphan jobs/evidence. Include repository/worktree, relevant manifest/lockfile identity, actual capabilities, prerequisite tools, command outcomes, policy validation result, precise blockers and remaining checks.

## 4. Optional host-neutral model preferences

Only configure models when requested. Optional `.gsf/state/models.md` has exactly one fenced YAML mapping, validated under models-contract.md. Its absence means inherit actual parent model and must not block ordinary setup. This file is local factory data, not an automatically applied global host rule.

```yaml
version: 1
budget: inherit
roles:
  intake: inherit-parent
  spec-writer: inherit-parent
  builder: inherit-parent
  checks: inherit-parent
  reviewer-code: inherit-parent
  reviewer-security: inherit-parent
  approver: inherit-parent
  gsf-delegate: inherit-parent
  swarm workers: inherit-parent
  arena runners: [inherit-parent, inherit-parent]
  arena cross-judge pool: []
  architect runners: [inherit-parent, inherit-parent]
  interrogate reviewers: [inherit-parent, inherit-parent]
```

Use only advertised/entitled model metadata or the actual host dispatch API. Explicit slugs require confirmation; never infer from names, invent effort suffixes or silently substitute unavailable selections. `inherit-parent` and `auto` both mean omit model override; neither is a real slug or evidence of independent diversity. Scalars select one model; panel arrays apply only to named support consumers; the ordered cross-judge pool may be empty but holds only confirmed explicit models. Required independent review still blocks without actual capability.

Role keys are existing agent filenames without .md or explicit support-skill labels; unlisted roles inherit. Budget inherit/small/medium/large/unlimited is only a preference: apply actual supported controls and record effective choices, never change policy/checks/reviews. Preserve valid choices; resolve only unknown preferences with available interaction. Write the complete validated models.md once after requested choices are known, never create global host rules or claim automatic future enforcement.

## Output

Return environment READY/BLOCKED, exact repository/product, authorized policy changes, real setup commands/cwd/exits, evidence location, remaining prerequisites and typed checks still to run. For requested model setup include actual file and effective capabilities/choices. Do not call absent verification skills or claim readiness/check results from instructions alone.
