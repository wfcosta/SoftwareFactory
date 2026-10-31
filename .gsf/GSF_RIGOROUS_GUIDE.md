# GSF architecture

## Purpose and authority

GSF is a Markdown-only instruction framework for tool-capable coding agents, not a background runtime. Preserve its original five-pillar roles, one-coordinator workflow, dynamic intake DAG, durable evidence, configured checks, independent approval, protected paths and separately scoped publication/merge/deployment.

The active repository's `.gsf/GSF_CONFIG.md` is the sole GSF policy source, with constraints at `.gsf/GSF_CONSTRAINTS.md` and no root-policy fallback. Resolve every `config.paths` entry, check path/working directory and protected path from the repository root, never from `.gsf/`. Application-owned configuration is unrelated and must not be overwritten. The normative [worker contract](agents/WORKER_CONTRACT.md) owns lifecycle, policy/evidence authority, legal transitions and recovery. Guides explain it; they do not create competing rules.

The canonical format is a Markdown document containing exactly one identified YAML data block for policy, plan, environment, release or model preferences. State-format contracts contain one JSON Schema block plus semantic rules. YAML parsing must reject duplicate keys and malformed values; schema validation and cross-record/transition checks are distinct. There is no bundled parser/validator executable. A host uses available standard tools and discloses missing mechanical validation.

## Contracts and progressive loading

| Contract | Responsibility |
|---|---|
| [Configuration](state/config-contract.md) | Profile, typed checks, paths, reviewers, defaults and policy bootstrap |
| [Plan](state/plan-contract.md) | Task/dispatch identities, typed state and DAG relationships |
| [Events](state/event-contract.md) | Event envelope, sender/transition validation and complete-record boundaries |
| [Model preferences](state/models-contract.md) | Role scalar versus panel/pool shape and actual capability limits |
| [Candidate identity](state/candidate-contract.md) | Covered source, immutable policy baseline, narrow evidence exclusions and freshness |
| [Worker lifecycle](agents/WORKER_CONTRACT.md) | Ownership, dispatch, ingestion, gates, partial-state reconciliation and external effects |
| [Environment](state/environment-contract.md) | Observed capabilities, verified target identities, freshness and evidence references |
| [Environment release](state/release-contract.md) | Deployment/apply/recovery source/build/artifact/config/target binding, rollout observations and effect-backed transitions; not artifact-only registry publication |

1. Load the configured constraints and mode. Identify direct read-only use versus an evidence-producing factory job.
2. Read the selected playbook and [impact matrix](skills/gsf-mode/references/impact-matrix.md). Each applicable surface produces an invariant, owner/resource scope, selected procedure, observable proof and explicit blockers; nonapplicability needs a reason.
3. Read support/principle skills before applying them. Load reference prompts for the step that needs them, rather than the whole catalog.
4. Give workers actual absolute mode/role/leaf paths, IDs, exact candidate, ownership, constraints, evidence destination and done predicate. A name in a prompt does not load a file.
5. The coordinator integrates and verifies actual artifacts and owns shared state. Workers do not become extra coordinators by loading the mode.

Record the active instruction paths and content identities in the job. Skills being developed on a branch need not exist on trunk. Instruction upgrades during a run require explicit reconciliation; never silently switch to a different trunk version.

The distribution keeps only the public `README.md` at the repository root. Policy, constraints, runbook, contributing instructions, this architecture guide, docs, agents, skills, state contracts, templates and legal notices live inside `.gsf/`. Install by copying that single directory while excluding private jobs, logs, bug evidence and model preferences. Installed instructions do not depend on the distribution's root README or replace an application's README. `.gsf/.gitignore` scopes its rules to `.gsf/`; it does not ignore root-level products or audit data. See the [installation/removal guide](docs/guide/README.md) for host registration and safe uninstall.

## Execution modes

- **Direct read-only:** cited answer/proposal, no initialization or filesystem mutation when the request forbids writes.
- **Factory investigation:** authorized job evidence, read-only product inspection, no implementation/publication under an investigation exception.
- **Implementation:** intake/specification, owned writes, real configured checks, independent mandatory/applicable reviews and final approval.

Partition work only across useful independent seams. Serial fallback is allowed for implementation/analysis when host delegation is absent, but is not independent review. Routine unambiguous edits do not require competing architecture panels. Risk, affected surface and explicit acceptance determine depth; a document-only task does not automatically need ten live lanes or a performance benchmark.

Checked local unit commits may occur when authorized. Final readiness/publication needs the complete gate on the final candidate. Merge/deploy remain separate operations. Do not preserve a red intermediate commit if project policy prohibits it; preserve failing-before/passing-after evidence instead.

## Policy, identity and recovery

The distributed policy is version **2.0.0**, retains `framework`/`product` profiles, defaults publication/merge/deployment to false and external environments to an empty allowlist. Typed checks declare effect and target as well as their real command/cwd or skill path. Environment declarations are accepted constraints, not proof of observed account, region, resource scope or credentials. Actual external effects require current target evidence, scoped authority and real platform safeguards. A template, candidate edit, issue, worker report or generic autonomy cannot grant permission.

A registry-only publication follows release's separate artifact path: authenticated endpoint/account/namespace/version, approved immutable content/provenance, distinct scoped publication authority and actual registry retrieval through existing intent/receipt events. It does not require deployment/traffic/health tools or create fictional deployment states. Nonregional providers may use null region only with authentic documentation/identity evidence; regional or unknown targets cannot use null to evade validation. Frozen historical records keep their accepted schemas.

Candidate identity is not merely HEAD or an undifferentiated worktree hash. The candidate contract covers actual implementation/configuration inputs, including new relevant untracked files, binaries and removals, while excluding only named active evidence. It separates source identity, policy identity and evidence identity. Changing a skill under review changes the candidate; appending its check receipt does not.

The accepted event history and dispatch evidence support recovery; plans and canonical reports are projections to reconcile. A retry uses a fresh dispatch, preserves older attempts and requires ownership/liveness resolution. Partial writes, lost handles, a report without completion and completion before projection are explicit cases in the worker contract. A lost PR receipt requires actual forge inspection before another create call. These are safe procedures, not guarantees of transactional storage or exactly-once remote effects.

Accepted execution limits cover concurrency, no-progress attempts, elapsed time and measurable cost. Model reasoning preferences are not a cost meter. Required unobservable caps or actual quota exhaustion require a truthful checkpoint, stopped/fenced ownership and a precise resume prerequisite; no scheduler or automatic reset wake is assumed.

Candidate version 2 records collection and isolated-verification workspace provenance. Exporting to a clean workspace must retain complete source/build inputs, unexpected files, binaries, modes and dependencies; outputs and evidence are explicitly identified. Git ignore is never a blanket candidate exclusion. Record collection cost and instability rather than silently dropping large inputs.

Evidence retention is a declared requirement until actual retrieval, access and retention controls are observed. Keep original versus sanitized artifact identities distinct; store authorized durable proofs outside teardown-owned state and never turn a local temporary path into a claimed permanent artifact.

New jobs use current supported schemas. Existing jobs retain their exact accepted policy/schema/instruction snapshots; upgrade only through the [authorized compatibility procedure](docs/upgrades/README.md). Source/plan/event/model/candidate version numbers are separate contracts, not one number to replace globally.

## Capabilities

GSF combines task-specific procedures with configured authority, explicit evidence and actual host capabilities.

| Capability | GSF procedure |
|---|---|
| Main mode and 23 task playbooks | Task routing with local ownership, policy, recovery and proportional verification |
| 24 principle skills | Unprefixed leaf directories |
| Design, coverage and adversarial review | `architect`, `arena`, `swarm`, `interrogate`, with supported host models and independent contexts |
| Plain previous-answer rewrite / deeper prompt | `bro` / `sharpen`, with distinct operations rather than generic tone editing |
| Generated verification and upkeep | `create-verification-skill`, `maintain-verification-skill`; Launch/Doctor/Drive/Evidence/Cleanup and source/live correspondence |
| Rationale research | `why` plus source-specific investigation recipes and preserved uncertainty |
| Recent context / teaching / learning | `recall`, `teach`, `reflect`; authorized history, evidence and proposal-first durable edits |
| Read-only job visibility | [gsf-status](skills/gsf-status/SKILL.md): accepted history, current-evidence limits, blockers and next safe action without resume or writes |
| Working-style updates | `automate-me`, distinct create/update paths and established preference preservation |
| Measurement integrity | `benchmark-checklist`, correct work/error counts, timed region, fair tuning and repeated comparisons |
| Source-comment audit | Independent read-only source review; distinct from PR discussion triage |
| Formal models and statecharts | Bounded installed-checker procedure and evidence-grounded Mermaid; no automatic graph extraction |
| Decision trail / media catch-up | Markdown decisions and an actual supported renderer |
| TypeScript syntax-specific guidance | Optional leaf, not a dependency for other product languages |
| Automation boundaries | No bundled bots, vendor services, private-history assumptions, watchers or generators; only actual authorized host capabilities |
| Surface-based routing and proof selection | Impact matrix plus `verification-strategy`; proportionate depth without removing mandatory checks/reviewers |
| Domain-specific engineering | `domain-review` and existing roles: data/backfill/restore, consumers/async, privacy/credentials/supply chain, architectural quality, SLOs and a11y |
| Infrastructure change | `cloud-change`: target/state/plan identity, drift, IAM/network/data/cost impact and external-resource ownership |
| Artifact publication and environment release | `release` selects purpose: immutable registry publication/readback without deployment prerequisites, or separately authorized environment rollout/health/recovery under the release contract |
| Operational intake | `issue-triage`: trusted source, deduplication, existing ownership/fix verification and bounded external publication |
| Incident response | `incident-response`: impact, ownership, factual timeline, authorized mitigation, communication and recovery |
| Host and operational portability | Concrete [host guides](docs/hosts/README.md), typed capabilities, [operations](docs/operations/README.md) and [upgrade](docs/upgrades/README.md) procedures |
| Consumer documentation proof | [docs-drive](skills/docs-drive/SKILL.md): clean starting state, exact recipe, actual artifact/outcomes and explicit failure classification |
| Bounded dependency migration | [dependency-upgrade](skills/dependency-upgrade/SKILL.md): actual manager/lock/consumer scope, source trust, consuming proof and consistent recovery |

Instruction updates require explicit reconciliation and revalidation; they do not silently expand permissions.

## Authoring and maintenance

Every skill uses matching kebab-case directory/name and a nonempty scalar trigger description. Invocation restrictions are omitted by default; any explicitly requested supported host metadata is optional and cannot authorize execution. Optional reference prompts are linked relatively and must resolve. Roles retain exactly Role, Context, Task, Constraints and Format; legal exceptions and important failure paths cannot be reduced to slogans.

Use `create-skill` for instructions and `technical-writing` for prose. Keep one normative source for a shared rule. Product verification skills have feature maps and maintenance loops; frozen formal models record correspondence and dirty snapshot identity separately from commit provenance.

Preserve the applicable copyright and license text in [Third-party notices](THIRD_PARTY_NOTICES.md).

## Verification

[verify-gsf](skills/verify-gsf/SKILL.md) defines the complete framework check; its [scenario matrix](skills/verify-gsf/references/scenarios.md) identifies structural, semantic and actual lifecycle obligations plus domain-specific corpus cases. [Verification strategy](skills/verification-strategy/SKILL.md) selects minimal adequate product proof and records invalidated/reusable evidence. Focused checks must name their scope rather than claim a complete framework PASS. The [verification record](docs/verification/README.md) separates historical runs from actual current observations and limits.

File counts, valid metadata and a scratch protocol simulator alone do not prove real dispatch or independent approval. Exercise an actual coordinator/worker flow, real product commands, candidate stability, denied-publication handoff and interrupted-state reconciliation. Negative review/check results remain blockers. Capability-specific media/formal/device work is unexercised unless actually run.

No Markdown procedure can guarantee deterministic model behavior, atomic writes, process fencing or every future deployment environment. Completion means the agreed predicates passed for the recorded version and host, with all remaining limits explicitly stated.
