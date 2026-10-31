# Generic Software Factory (GSF)

A change-to-evidence workflow executed by a coding agent: classify impact, design, implement, verify, review and, only when separately authorized, release and observe the result. GSF ships **Markdown instructions and contracts only**: skills, role prompts, playbooks, templates, policy and durable job records. It has no bundled executable, daemon, dependency installer, scheduler or automatic plugin registration.

## Start

1. Copy the single `.gsf/` directory into the target repository, excluding private runtime data: jobs, logs, bug evidence and personal model preferences. Preserve the [legal notices](.gsf/THIRD_PARTY_NOTICES.md), existing product configuration and local customizations. GSF never merges policy into a generic application config.
2. Read [.gsf/GSF_CONFIG.md](.gsf/GSF_CONFIG.md). Policy **2.0.0** distinguishes `framework` verification from a `product` profile with actual project checks. Declare each check's effect and target; an executable command or configured check is not permission to deploy. Keep publication, merge and deploy denied until explicitly authorized. External environments default to an empty allowlist.
3. Ask your coding agent to read [gsf-setup](.gsf/skills/gsf-setup/SKILL.md) and the [host guide](.gsf/docs/hosts/README.md). Setup validates policy, records observed capabilities and target identities, and reports missing prerequisites without silently installing dependencies or weakening checks. Existing installations follow the [explicit upgrade procedure](.gsf/docs/upgrades/README.md); never reinterpret an in-flight job with new schemas.
4. Start one coordinator:

```text
Read .gsf/GSF_CONFIG.md, .gsf/agents/orchestrator.md and
.gsf/skills/gsf-mode/SKILL.md. Implement the requested issue,
preserve the configured constraints, run every configured check,
and obtain the required independent reviews. Do not publish,
merge or deploy unless the corresponding action is authorized.
```

For an explicitly read-only question, attach `gsf-mode` directly. That mode must not initialize files merely to answer the question. A factory investigation may write evidence only when that is part of its authorized job.

### Loading skills

`.gsf/skills/` is the canonical source, **not a universal host search path**. Attach/read the actual SKILL.md files, or register them through your host's documented mechanism before using slash commands. Cursor, Claude Code, Devin and other hosts do not share one registration directory or task API.

Filesystem and terminal access are needed for execution. UI proof needs actual UI controls; parallel workers need real delegation; GitHub effects need authenticated forge access. Missing capability is disclosed. Serial execution can replace permitted work partitioning, never required independent review.

### Classify the change, not just its files

The [impact matrix](.gsf/skills/gsf-mode/references/impact-matrix.md) connects each affected surface to an invariant, owner, resource scope and observable proof. A database migration, cloud change, asynchronous consumer and UI fix need different evidence. Missing tools or authority block the affected action; they do not justify a passing result or a fictional fallback.

## Workflow

```mermaid
flowchart TD
    Request[Request and policy] --> Setup[Initialize or resume exact job]
    Setup --> Intake[Intake and validated DAG]
    Intake --> Spec[Observable specification]
    Spec --> Build[Owned implementation]
    Build --> Checks[Configured checks and real surface]
    Checks -->|failure| Build
    Checks -->|same candidate passes| Reviews[Independent required reviews]
    Reviews -->|changes needed| Build
    Reviews -->|pass| Approval[Evidence audit and approval]
    Approval --> Authority{Publication authorized?}
    Authority -->|no| Local[Approved local handoff]
    Authority -->|yes| PR[Publish and read back actual PR]
```

Commit, publication, merge and deployment are distinct actions. Authorized local unit commits require their relevant checks; final readiness/publication requires complete current-candidate checks, independent reviews and approval. A later source edit invalidates affected evidence. Evidence-only appends do not change the implementation candidate.

## Policy and state

The canonical policy is `.gsf/GSF_CONFIG.md`; constraints are `.gsf/GSF_CONSTRAINTS.md`. All `config.paths` entries, check paths/working directories and protected paths resolve from the **repository root**, never from the policy file's `.gsf/` directory. There is no fallback to root-level policy files.

```text
README.md
.gsf/
  GSF_CONFIG.md
  GSF_FACTORY.md
  GSF_CONSTRAINTS.md
  CONTRIBUTING_AGENTS.md
  GSF_RIGOROUS_GUIDE.md
  THIRD_PARTY_NOTICES.md
  .gitignore
  docs/
  agents/
  skills/
  state/
  templates/
```

| Artifact | Responsibility |
|---|---|
| `.gsf/GSF_CONFIG.md` | Versioned policy: typed checks/effects/targets, environments, execution limits, evidence retention, reviewers and permissions |
| `.gsf/state/*-contract.md` | Format contracts with a canonical JSON Schema block and normative semantic rules |
| `.gsf/state/candidate-contract.md` | Source manifest, policy identity, evidence exclusions and snapshot freshness |
| `.gsf/state/environment-contract.md` | Observed host capabilities and target identity, freshness and evidence; not an authority grant |
| `.gsf/state/release-contract.md` | Source/build/artifact/config/target binding, authorized effects, rollout observations and recovery |
| `.gsf/state/models.md` | Optional local YAML model preferences; available host models only |
| `<jobs>/<job-id>/plan.md` | YAML DAG, task states and dispatch history |
| `inbox.md`, `outbox.md`, `dispatches/*/events.md` | Append-only Markdown event records with structured YAML envelopes |
| `dispatches/*/report.md` | Worker-owned real findings, verdict, provenance and evidence |
| `decisions.md` | Append-only decisions, reasons, evidence and superseding corrections |

Markdown is the file format, not a promise of automatic enforcement. A real host parser/validator can inspect structured blocks; relationship/authority/liveness checks still follow the normative contracts. Missing validation capability is blocked, not a visual guess presented as mechanical validation.

### Checks and permissions

Checks are explicit typed entries: a real command with its repository-relative working directory, or a skill with an actual repository-relative SKILL.md path. Each declares `effect` (`read`, `local-write`, `external-write` or `destructive`) and `target` (null for local work, otherwise the configured target ID). Inspect actual nested effects; metadata does not sandbox a command. Every assigned check must execute and produce evidence. A framework skill check is not permission to omit product tests.

- Required reviewers cannot be removed by intake. Surface reviewers are selected by actual impact and recorded with reasons.
- Protected paths require scoped authorization before writes. TDD or a skill invocation is not an override.
- Publication, merge and deployment default to false. An explicit operator exception must name the denied action and scope and be recorded before acting; generic autonomy is not an exception.
- No exception bypasses mandatory checks/reviews, branch protection, credentials or security safeguards.
- The accepted policy baseline is retained immutably in the job; a later edited policy cannot retroactively excuse a failure.
- External operations bind the observed account, region and resource scope to accepted policy and authentic scoped grants. `region: null` is only proven nonapplicability for a documented nonregional provider, never unknown identity or a way around regional checks. Separate worktrees do not isolate shared external resources.
- Artifact-only publication verifies exact registry endpoint/account/namespace/version and immutable content readback; it does not require deployment, traffic or service-health tools and does not claim deployed/healthy state. Environment deployment separately binds build/config/target and its rollout/recovery proof. PR, registry-publication and deploy authority are distinct.
- Execution limits are operator policy, not invented provider controls. Unknown cost is not zero cost; an unobservable required cap blocks the affected work. On actual quota or tool unavailability, checkpoint ownership and resume prerequisites without claiming an automatic wake.

## Choose a skill

| Need | Entry |
|---|---|
| Rigorous task routing | `gsf-mode` and its 23 playbooks |
| Setup, initialization, navigation | `gsf-setup`, `gsf-run`, `gsf-help` |
| Read a specific job's recorded progress without resuming | [gsf-status](.gsf/skills/gsf-status/SKILL.md); accepted evidence, freshness/liveness limits and next safe action, no writes |
| Architecture, rationale, teaching or prior context | `how`, `why`, `teach`, `recall` |
| Design alternatives / independent coverage | `architect`, `arena`, `swarm` |
| Adversarial review and change impact | `interrogate`, `blast-radius` |
| Real behavior verification | `tdd`, `control-ui`, `control-cli`, `create-verification-skill`, `maintain-verification-skill` |
| Bounded formal verification | `create-formal-verification-skill`, `maintain-formal-verification-skill`, `statechart` |
| Audit/catch-up | `show-me-your-work`, `ketchup`, `ketchup-video` |
| Authoring and communication | `create-skill`, `technical-writing`, `unslop`, `no-comments`, `bro`, `sharpen` |
| Working style and learning | `automate-me`, `correct`, `reflect`, `figure-it-out` |
| Language-specific discipline | `typescript-best-practices` when the product uses TypeScript |
| Infrastructure plans, drift, IAM, network and resource ownership | [cloud-change](.gsf/skills/cloud-change/SKILL.md) |
| Artifact-only registry publication or separately authorized environment rollout/recovery | [release](.gsf/skills/release/SKILL.md), with purpose-specific prerequisites and receipts |
| Trusted issue intake, deduplication and verification of existing fixes | [issue-triage](.gsf/skills/issue-triage/SKILL.md) |
| Incident coordination, authorized mitigation and handoff | [incident-response](.gsf/skills/incident-response/SKILL.md) |
| Data/restore, API/async, security/privacy, quality and accessibility | [domain-review](.gsf/skills/domain-review/SKILL.md) with existing specialists |
| Requirement–risk–proof mapping and evidence invalidation | [verification-strategy](.gsf/skills/verification-strategy/SKILL.md) |
| Verify this distribution | [verify-gsf](.gsf/skills/verify-gsf/SKILL.md) |
| Validate onboarding/quickstart docs as a consumer | [docs-drive](.gsf/skills/docs-drive/SKILL.md); exact documented steps, real outcomes and no hidden workaround |
| Upgrade a bounded dependency target safely | [dependency-upgrade](.gsf/skills/dependency-upgrade/SKILL.md); manager/lock scope, release guidance, actual consumers and recovery |
| Design synthetic data and independent expected results | [fixture-design](.gsf/skills/fixture-design/SKILL.md); tenant/time/schema boundaries, reproducible construction/reset and no production data |

The 24 principle skills remain unprefixed directories under `.gsf/skills/`. They guide decisions; they do not override policy. Media rendering and formal checkers require actual tools and have separate evidence requirements.

## Durable execution

The coordinator alone owns shared job state, the DAG, ledgers, policy decisions and canonical stage reports. Workers own their assigned product paths and dispatch-local reports/events. IDs are explicit: never infer a hyphenated job ID by splitting another identifier.

Resume reconciles intent, actual invocation receipts, complete worker events, accepted event history and report/plan projections before new effects. Unknown worker liveness blocks overlapping retries. Before retrying an interrupted publication, inspect actual forge state; a missing local receipt is not proof no PR was created.

The coordinator records observed environment capabilities and, for an operational release, the release state under their typed contracts. A merged PR, a queued deployment, a deployed artifact and a healthy user journey are distinct observations. Recovery may require roll-forward or data restoration rather than undoing code. Reports identify the supported action and its real result, never a guessed remote effect.

Keep evidence retrievable after cleanup under the accepted store, access and retention policy. A local path, digest or claimed expiry alone does not prove durable storage, authenticity or deletion. The [operations guide](.gsf/docs/operations/README.md) defines the retrieval and handoff procedure.

The [worker contract](.gsf/agents/WORKER_CONTRACT.md) is normative. Playbooks link it rather than duplicating global policy. Read-only direct use, factory investigations and implementation jobs have explicit applicability boundaries.

## Verification and boundaries

Run [verify-gsf](.gsf/skills/verify-gsf/SKILL.md) after changing the framework. Its [scenario matrix](.gsf/skills/verify-gsf/references/scenarios.md) covers format validation, real worker lifecycle, independent review, candidate identity, negative gates and interrupted-state recovery. Scratch products stay outside this repository and are never committed.

No count of files or absence of scripts proves autonomous reliability. Report the actual host, exercised scenarios and remaining capability limits. GSF instructions cannot guarantee atomic writes, process fencing, deterministic model behavior or exactly-once remote effects.

## Guides

- [First task, host setup and safe removal](.gsf/docs/guide/README.md)
- [Architecture and capabilities](.gsf/GSF_RIGOROUS_GUIDE.md)
- [Contributing roles and skills](.gsf/CONTRIBUTING_AGENTS.md)
- [Verification evidence](.gsf/docs/verification/README.md)
- [Host capabilities and adapters](.gsf/docs/hosts/README.md)
- [Policy and instruction upgrades](.gsf/docs/upgrades/README.md)
- [Operational limits, evidence and recovery](.gsf/docs/operations/README.md)

Only operational Markdown is distributed; `.gsf/.gitignore` is the explicit Git metadata exception. Its rules ignore jobs, logs, bug evidence and personal model preferences **within `.gsf/`**. They do not ignore repository-root `products/` or audit directories; keep scratch products outside the repository and manage any product-specific ignore rules separately.
