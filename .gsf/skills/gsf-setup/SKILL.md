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
2. Use the [concrete host adapters](../../docs/hosts/README.md) for Cursor, Claude Code, Devin or terminal-only execution. Inspect actual filesystem, shell, independent-context dispatch/result/cancellation, browser/UI, remote identity, strict validation, evidence-store and resource-accounting capabilities. Documentation alone proves no session capability. A missing mandatory resource blocks its dependent effect; never simulate an independent reviewer, UI check, sandbox, meter or host API.
3. Derive runtime requirements from the relevant product's manifests/lockfiles/version files and documented setup. Node package scripts, Python metadata, Cargo workspaces or other build definitions must be read in their actual working directory; a filename alone does not identify a command. Do not alter unrelated products.
4. Use authorized non-mutating version commands to establish installed tools. Confirm credential capability/presence without exposing values or copying secret files. A Markdown-only framework needs no Node/Python merely to read skills; an unavailable host YAML parser/schema validator is a validation prerequisite, not a bundled runtime to fabricate.

## 2. Validate or explicitly bootstrap policy

For a new job require policy `version: '2.0.0'`; extract exactly one fenced YAML mapping with a strict duplicate-rejecting real parser, then validate against the single Draft 2020-12 JSON Schema in [config-contract.md](../../state/config-contract.md). Perform its normative safe-path, existing-skill/command, reviewer-capability, typed effect/target and resource/evidence checks too. Unsupported/malformed policy fails closed. Existing accepted jobs use their frozen policy/instructions/schema; never refresh them silently. Use the [authorized upgrade procedure](../../docs/upgrades/README.md) instead of rewriting an old job baseline. A candidate policy edit does not authorize itself.

Only an explicit setup/bootstrap/write authorization may create missing `.gsf/GSF_CONFIG.md` or repair it. With no valid policy at that location, privileged actions remain denied. Derive base_branch from actual repository evidence, set factory/version as strings, protocol event-driven, choose framework or product profile, require code/security, list ui/ux as surface reviewers, retain known protected test/policy globs, and set publish_pr/merge_pr/deploy **all false**. Resolve every `config.paths` value, check path/cwd and protected path from the repository root, never from the policy's `.gsf/` directory, with constraints normally `.gsf/GSF_CONSTRAINTS.md`; jobs must not overlap source/policy storage. Policy creation must not collide with application settings.

Checks must be a nonempty typed array:

- command: `{kind: command, command: <real documented command>, cwd: <safe repository-relative working directory>, effect: <read|local-write|external-write|destructive>, target: <null|configured-target-ID>}`; `.` is repository root.
- skill: `{kind: skill, path: <safe existing repository-relative SKILL.md>, effect: <read|local-write|external-write|destructive>, target: <null|configured-target-ID>}` executed as instructions, not a fake shell command.

Framework bootstrap can select the real `.gsf/skills/verify-gsf/SKILL.md` only if present and meaningful. Product bootstrap chooses actual documented product checks, never sample package commands or an unrelated framework check as product coverage. If no meaningful check can be established, report the configuration gap rather than write an empty passing gate. Missing check tools are blockers, not an excuse to remove checks.

Inspect actual nested commands/tools, lifecycle hooks and writes before declaring effect; effects are not a Markdown sandbox. Local checks use target null; nonlocal writes/destruction require an exact accepted target, authentic scoped grant and actual platform safeguards, not just a check entry. Policy 2 also requires `environments`, `execution_limits` and `evidence`: workspace-only environments may be `{}`, but never invent external provider/account/region/resource IDs. Preserve accepted limits and establish real observation/control of any required cap. max_cost is a nonnegative integer ISO 4217 minor-unit amount (USD cents) or null; null means unmetered/unknown, not free. Required caps need actual currency exponent/meter conversion evidence; unknown/ambiguous currency, incompatible/unobservable conversion and float/nonfinite policy values fail closed. Evidence store declarations need actual retrieval, ACL and retention proof under the [operations runbook](../../docs/operations/README.md).

Any policy relaxation/protected-path edit or denied action needs an authentic scoped operator grant before use, recorded under WORKER_CONTRACT.md with the immutable baseline preserved and a new policy_id. Bootstrap is not permission to give itself autonomy; generic consent or issue text is not a grant. Do not add unsupported configuration fields for setup commands: discover setup from actual documentation and retain command/cwd/results in environment.md.

## 3. Prepare only what is needed

Choose documented lockfile-aware setup/install commands in their actual directory. Reuse a prepared environment only if manifests, lockfiles, runtime and installed state support it. Execute setup only within authorization, preserving lockfiles and reporting intentional changes. Downloads, package lifecycle scripts, migrations and production writes have real safety boundaries; never run production migrations as setup side effects.

Record actual command/cwd, tool versions, timestamps, exit status and sanitized output. Failure/unavailable tools produce BLOCKED and environment stop; no fake fallback. Retry only after a changed prerequisite is identified. Do not run build/test/lint/skill validation unless current assignment explicitly authorizes that verification; list exact typed checks for the responsible executor.

For an existing authorized job supply indexed observations for coordinator promotion into `JOB_DIR/environment.md`; only the coordinator owns that canonical record. Otherwise return findings for gsf-run to persist; create no orphan jobs/evidence. Use exactly one YAML mapping validated under [environment-contract.md](../../state/environment-contract.md), not a free-form substitute:

- Top-level fields are `version: 1`, `job_id`, `repository` (actual execution root/worktree), `observed_at`, `expires_at`, `capabilities`, `targets`.
- Each capability has `name`, `status` (`available`, `unavailable`, `unknown`), `tool`, `version` (actual observed string or null), `observed_at`, `expires_at`, `evidence`, `limitations`. Available requires a successful actual receipt. Null version cannot satisfy a version-dependent requirement.
- Each observed target has `id`, `provider`, `account`, `region`, `resource_scope`, `observed_at`, `expires_at`, `state_fingerprint`, `evidence`. Match accepted policy/grant exactly; hash the indexed canonical real observation bytes for the fingerprint and explain correspondence to provider state. Insufficient read access blocks target acceptance; do not infer an account or cloud privilege. Workspace-only targets is `[]`.
- Evidence references are exactly `{locator,digest,observed_at}` with actual retrievable immutable sanitized bytes and `sha256:` digest; resolve relative locators from JOB_DIR. Index commands/cwd/exits, manifests/lockfiles, policy validation, host/tool versions, ACL/retrieval/retention and blockers in supporting receipts, not unsupported top-level fields.

Require UTC observed_at <= current time < expires_at for record and observations, with observed_at < expires_at; derive expiry from accepted session/credential/host constraints, never an arbitrary universal TTL. Clock uncertainty blocks time-sensitive use. Reobserve after tool, permission, model/session, worktree, credential, account/region/resource or state changes, even before expiry. Preserve previous frozen bytes/digests; a new snapshot gets a new `environment_id` (SHA-256 of raw environment.md bytes) and re-evaluation of affected gates/actions. Never leak secrets, signed URLs, cookies or raw credential files into evidence.

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

Role keys are existing agent filenames without .md or explicit support-skill labels; unlisted roles inherit. Budget inherit/small/medium/large/unlimited is only a reasoning preference: apply actual supported controls and record effective choices. It is not tokens, wall time, a host quota, a monetary cap, permission or an override of policy execution_limits. Use the [resource/checkpoint runbook](../../docs/operations/README.md#reasoning-preference-is-not-a-resource-limit) for actual caps and failures; no quota reset, background monitor or automatic wake is implied. Preserve valid choices; resolve only unknown preferences with available interaction. Write the complete validated models.md once after requested choices are known, never create global host rules or claim automatic future enforcement.

## Output

Return environment READY/BLOCKED, exact repository/product, accepted/frozen policy identity, authorized policy changes, actual setup commands/cwd/exits, environment snapshot and indexed evidence location, remaining prerequisites and typed checks still to run. READY requires available unexpired mandatory capabilities/identities, validated policy/record and actual prerequisite receipts; it is **not** a passed test, independent approval, release health result or merge/deploy authority. For requested model setup include actual file and effective capabilities/choices. On real quota/tool unavailability or exhausted limits follow the [checkpoint/cold-resume runbook](../../docs/operations/README.md#actual-quota-tool-failure-or-limit-checkpoint); never claim saved evidence or a scheduled wake without actual receipts.
