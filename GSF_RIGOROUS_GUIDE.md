# GSF architecture

## Purpose and authority

GSF is a Markdown-only instruction framework for tool-capable coding agents, not a background runtime. Preserve its original five-pillar roles, one-coordinator workflow, dynamic intake DAG, durable evidence, configured checks, independent approval, protected paths and separately scoped publication/merge/deployment.

The active repository's `GSF_CONFIG.md` is the sole GSF policy source. Resolve its configured paths from that repository root; application-owned configuration is unrelated and must not be overwritten. The normative [worker contract](.gsf/agents/WORKER_CONTRACT.md) owns lifecycle, policy/evidence authority, legal transitions and recovery. Guides explain it; they do not create competing rules.

The canonical format is a Markdown document containing exactly one identified YAML data block for policy, plan or model preferences. State-format contracts contain one JSON Schema block plus semantic rules. YAML parsing must reject duplicate keys and malformed values; schema validation and relationship checks are distinct. There is no bundled parser/validator executable. A host can use available standard tools, and must disclose missing mechanical validation.

## Contracts and progressive loading

| Contract | Responsibility |
|---|---|
| [Configuration](.gsf/state/config-contract.md) | Profile, typed checks, paths, reviewers, defaults and policy bootstrap |
| [Plan](.gsf/state/plan-contract.md) | Task/dispatch identities, typed state and DAG relationships |
| [Events](.gsf/state/event-contract.md) | Event envelope, sender/transition validation and complete-record boundaries |
| [Model preferences](.gsf/state/models-contract.md) | Role scalar versus panel/pool shape and actual capability limits |
| [Candidate identity](.gsf/state/candidate-contract.md) | Covered source, immutable policy baseline, narrow evidence exclusions and freshness |
| [Worker lifecycle](.gsf/agents/WORKER_CONTRACT.md) | Ownership, dispatch, ingestion, gates, partial-state reconciliation and external effects |

1. Load the configured constraints and mode. Identify direct read-only use versus an evidence-producing factory job.
2. Read the selected playbook in full. Create a checklist with concrete acceptance and only applicable verification surfaces.
3. Read support/principle skills before applying them. Load reference prompts for the step that needs them, rather than the whole catalog.
4. Give workers actual absolute mode/role/leaf paths, IDs, exact candidate, ownership, constraints, evidence destination and done predicate. A name in a prompt does not load a file.
5. The coordinator integrates and verifies actual artifacts and owns shared state. Workers do not become extra coordinators by loading the mode.

Record the active instruction paths and content identities in the job. Skills being developed on a branch need not exist on trunk. Instruction upgrades during a run require explicit reconciliation; never silently switch to a different trunk version.

## Execution modes

- **Direct read-only:** cited answer/proposal, no initialization or filesystem mutation when the request forbids writes.
- **Factory investigation:** authorized job evidence, read-only product inspection, no implementation/publication under an investigation exception.
- **Implementation:** intake/specification, owned writes, real configured checks, independent mandatory/applicable reviews and final approval.

Partition work only across useful independent seams. Serial fallback is allowed for implementation/analysis when host delegation is absent, but is not independent review. Routine unambiguous edits do not require competing architecture panels. Risk, affected surface and explicit acceptance determine depth; a document-only task does not automatically need ten live lanes or a performance benchmark.

Checked local unit commits may occur when authorized. Final readiness/publication needs the complete gate on the final candidate. Merge/deploy remain separate operations. Do not preserve a red intermediate commit if project policy prohibits it; preserve failing-before/passing-after evidence instead.

## Policy, identity and recovery

The distributed framework policy defaults publication/merge/deployment to false and checks GSF through `verify-gsf`. Product installation establishes actual commands/working directories rather than inheriting nonexistent npm defaults. A template is not an accepted permission grant. A job retains its accepted effective policy baseline, including any real operator-scoped exceptions; lower-trust issues, worker reports and prior chat summaries cannot authorize actions.

Candidate identity is not merely HEAD or an undifferentiated worktree hash. The candidate contract covers actual implementation/configuration inputs, including new relevant untracked files, binaries and removals, while excluding only named active evidence. It separates source identity, policy identity and evidence identity. Changing a skill under review changes the candidate; appending its check receipt does not.

The accepted event history and dispatch evidence support recovery; plans and canonical reports are projections to reconcile. A retry uses a fresh dispatch, preserves older attempts and requires ownership/liveness resolution. Partial writes, lost handles, a report without completion and completion before projection are explicit cases in the worker contract. A lost PR receipt requires actual forge inspection before another create call. These are safe procedures, not guarantees of transactional storage or exactly-once remote effects.

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
| Working-style updates | `automate-me`, distinct create/update paths and established preference preservation |
| Measurement integrity | `benchmark-checklist`, correct work/error counts, timed region, fair tuning and repeated comparisons |
| Source-comment audit | Independent read-only source review; distinct from PR discussion triage |
| Formal models and statecharts | Bounded installed-checker procedure and evidence-grounded Mermaid; no automatic graph extraction |
| Decision trail / media catch-up | Markdown decisions and an actual supported renderer |
| TypeScript syntax-specific guidance | Optional leaf, not a dependency for other product languages |
| Automation boundaries | No bundled bots, vendor services, private-history assumptions, watchers or generators; only actual authorized host capabilities |

Instruction updates require explicit reconciliation and revalidation; they do not silently expand permissions.

## Authoring and maintenance

Every skill uses matching kebab-case directory/name, a concrete description and boolean invocation flag. The flag is host metadata, not authorization. Optional reference prompts are linked relatively and must resolve. Roles retain exactly Role, Context, Task, Constraints and Format; legal exceptions and important failure paths cannot be reduced to slogans.

Use `create-skill` for instructions and `technical-writing` for prose. Keep one normative source for a shared rule. Product verification skills have feature maps and maintenance loops; frozen formal models record correspondence and dirty snapshot identity separately from commit provenance.

Preserve the applicable copyright and license text in [Third-party notices](.gsf/THIRD_PARTY_NOTICES.md).

## Verification

[verify-gsf](.gsf/skills/verify-gsf/SKILL.md) defines the framework check; its [matrix](.gsf/skills/verify-gsf/references/scenarios.md) identifies required structural, semantic and real lifecycle scenarios. The [verification report](docs/verification/README.md) records observed results and limits for this revision.

File counts, valid metadata and a scratch protocol simulator alone do not prove real dispatch or independent approval. Exercise an actual coordinator/worker flow, real product commands, candidate stability, denied-publication handoff and interrupted-state reconciliation. Negative review/check results remain blockers. Capability-specific media/formal/device work is unexercised unless actually run.

No Markdown procedure can guarantee deterministic model behavior, atomic writes, process fencing or every future deployment environment. Completion means the agreed predicates passed for the recorded version and host, with all remaining limits explicitly stated.
