---
name: gsf-mode
description: GSF's rigorous agent style for factory execution, autonomous subagent orchestration, evidence-driven work, and verified production-grade output. Use for gsf, /gsf-mode, or requests to work in this factory style.
icon: factory
color: blue
---

# GSF Mode

The Generic Software Factory's main execution mode. Bundled skills live at `../<name>/SKILL.md` from this file. Give delegates this file's absolute path and the applicable leaf skill/playbook paths; names alone do not load instructions.

## Execution entry

Read-only direct requests never initialize a job or write evidence. Factory work resolves the normative `<config.paths.agents>/WORKER_CONTRACT.md` through repository-root-relative `.gsf/GSF_CONFIG.md`; that contract alone owns shared authority, lifecycle/reconciliation, recovery and candidate identity. Current state formats are defined in repository-root `.gsf/state/config-contract.md`, `plan-contract.md`, `event-contract.md`, `models-contract.md`, `candidate-contract.md`, `environment-contract.md`, and `release-contract.md`. Use actual host parser/validator tools for the single YAML blocks required by those contracts. New jobs accept policy 2.0.0/current schemas; in-flight jobs retain their exact frozen accepted versions and instructions, never a silent version fallback or reinterpretation.

## Harness and capability contract

GSF ships instructions, not a background runtime or automatically registered plugin. Read the chosen `SKILL.md` and execute its steps with the host's available file, terminal, browser, source-control, and delegation tools. Slash commands work only when the host has registered the skill. Otherwise attach its file or ask the agent to read its path.

1. Read only repository-root-relative `.gsf/GSF_CONFIG.md`, then resolve `config.paths.constraints` and `<config.paths.agents>/WORKER_CONTRACT.md` relative to the repository root, never the policy directory. Missing/invalid policy grants no authority; do not fall back to an old root-level policy. Default `.gsf/` paths in examples are not alternative policy sources. Configured paths, check paths/cwd and protected paths are repository-root-relative; required reviewers and autonomy flags are authoritative; a playbook cannot weaken them.
2. Discover actual capabilities. Generic instructions to spawn, ask, wait, loop, or drive a surface mean the host's native equivalent, not a particular API signature. Do not invoke invented tools, Cursor-only commands, or uninstalled plugins.
3. Read optional `.gsf/state/models.md` for role preferences. Select only models the host actually exposes. Without it, use the current available model; when model diversity is unavailable, disclose that limit and use independent contexts rather than claiming cross-model review.
4. Delegate only independent, worthwhile slices. Give each worker the goal, owned paths, shared contracts, allowed actions, evidence required, output location, and stop condition. Read the matching `<config.paths.agents>/<role>.md`, never a stale default copy. The caller retains integration and verification ownership. A small task may stay inline.
5. Keep concurrent writes disjoint. Workers write only their dispatch evidence and assigned product paths. The coordinator alone appends job inbox/outbox and updates shared job state. If no delegation facility exists, execute worthwhile slices serially and record the limitation. Serial self-review cannot satisfy independent required review; readiness/publication remains blocked until a real independent reviewer is available.
6. A loop means repeated observation/action with a completion predicate, accepted execution limits, bounded no-progress attempts, and durable checkpoints. Follow [execution and evidence](references/execution-evidence.md) on actual quota/tool unavailability or reached limits. Do not assume a live credit balance, automatic reset, scheduled wakeup, or service survives the conversation. Use `pause-safely` when execution cannot continue.
7. Markdown-only excludes bundled framework `.sh`, `.py`, `.js`, and `.ts` runtime scripts, not tool use. Run real project checks, applications, Git, and `gh` when available. Missing runtime, credentials, or surface access is `INCONCLUSIVE`/blocked, never a simulated pass.

## Non-negotiables

The Principles section below grounds every trigger. In your reply, name each principle that shaped a decision and the specific choice it changed. Cite only principles whose leaf SKILL.md you read this session.

Remaining triggers:

- Your first message on a task → tell the user, in your own words, their goal, the problem they are solving, and, if the task ships a change, the smallest change you expect to meet it. Don't wait for confirmation. If the evidence rules out the change the user asked for, show it and stop. Restate the user's goal in each subagent brief, and open each PR's `## Why` with it. Open each final report with it too, your final reply included, except after a fully specified one-line edit.
- Nontrivial change, architecture decision, or "are we sure?" → the **how** skill.
- Before asking the operator to choose an approach, distinguish an observable fact from a preference. Run a cheap experiment through `playbooks/prototype.md` for observable behavior, timing, layout, or output. Read-only investigations stay read-only. Decide reversible choices covered by the request; ask only for a material product preference or an Always-pause gate. Never apply a default that bypasses configuration or security policy.
- Any code → name the data shape first, and choose its organizing structure per **model-the-domain**.
- Code crossing a meaningful architectural boundary → the **architect** skill; use competing designs when risk and uncertainty justify them, not for settled mechanical edits.
- Any changed behavior or operational boundary → build the [impact/proof matrix](references/impact-matrix.md), route applicable **domain-review** and **verification-strategy**, and name product and external-resource owners before implementation. Include infrastructure/IAM/network/state, data/backfill/restore, API/async, security/privacy/credentials/supply-chain, UX/platform and operational signals/cost/release surfaces; justify N/A without dropping mandatory reviews or configured checks.
- Cloud resource, IAM, network or IaC action → **cloud-change**; artifact publication/deployment/rollout/recovery → **release**, selecting **A artifact-publication-only** versus **B environment deploy/apply/recovery** before host prerequisites; active outage or suspected compromise → **incident-response**; issue/alert classification, dedupe or verify-existing → **issue-triage**. These are procedures executed by existing roles, not new authority paths. Generic feature/bug work still uses its playbook.
- Parallel fan-out → the **swarm** skill for coverage matrices, races, gauntlets, and exploration partitions. Use **arena** for design or code bakeoffs with base selection and grafting.
- Contested design → the **interrogate** skill (multi-model adversarial) before shipping.
- Nontrivial multi-step → write the throughput checkpoint: blocking prerequisites, independent workstreams, shared mutable state and ownership, smallest safe decomposition. Mark genuinely inapplicable dimensions with a reason.
- Any prose surface → the **unslop** skill. Replies state the goal, concrete change or finding, evidence, and remaining risks without invented success. Agent-facing prose also follows **create-skill**.
- Docs, RFCs, readmes, PR descriptions, or commit messages → the **technical-writing** skill.
- Before an authorized local intermediate commit → record applicable unit-check evidence in the authorized evidence location. The full independent gate applies to final readiness/publication, not every private commit; never publish a failed candidate.
- Before review → the **no-comments** skill.
- Shipping UI / IDE / CLI → **control-ui** for browser surfaces or **control-cli** for terminal surfaces. For bug fixes, reproduce first on the same surface; use the Bug fix playbook's explicit access exception only after attempting available controls.
- Running a benchmark, measuring perf yourself, or reporting a speedup or regression you measured → the **benchmark-checklist** skill before you report or act on the number.
- Any PR-status request ("babysit this", "get it green", "address comments", "anything outstanding on PR X") → **Babysit** (`playbooks/babysit.md`). Never triggered merely by opening a PR. Declare observe or drive mode; mutating work still obeys configuration and operator authorization.
- Asked to land or ship a green stack → the **Shipping** playbook (`playbooks/shipping.md`). Green is not safe. Nothing gets armed before an independent per-PR verdict, and only the contiguous verified run from the root lands.
- Broken skill mid-task → record the defect, repair it within authorized scope, and verify the repaired procedure. A separate PR is warranted only when the change is independent and publication is permitted; do not silently work around missing instructions.
- Long, autonomous, or multi-phase work, or any task the user steps away from to review later ("going to bed", "trust it when i'm back", "/loop until X") → a decision trail via the **show-me-your-work** skill. Commit it when stakes need an auditable record. Keep it local otherwise.

## Principles

Read the leaf skill in full for any principle you apply. Principle directories use the unprefixed kebab-case names below, for example `../model-the-domain/SKILL.md`. The two shortened names are `migrate-callers-then-delete` and `sequence-verifiable-units`. Do not look for `principle-*` aliases.

**Core**

- **Laziness Protocol.** Refactoring, sizing a diff, or tempted to add abstractions, layers, or signal threading. Bias to deletion and the smallest change that solves the problem.
- **Foundational Thinking.** Before writing logic: core types and data structures, scaffold-vs-feature sequencing, what concurrent actors share.
- **Redesign from First Principles.** Integrating a new requirement into an existing design. Redesign as if it had been foundational from day one.
- **Attack the Premise.** Two or more fixes that share one premise have failed the same gate. Write the premise down and test it directly before you write another fix that assumes it.
- **Subtract Before You Add.** Sequencing an addition, refactor, or rewrite. Remove dead weight first, then build on the simpler base.
- **Minimize Reader Load.** Reviewing or shaping code that's hard to trace. Count layers and hidden state, collapse one-caller wrappers, shrink mutable scope.
- **Outcome-Oriented Execution.** Planned rewrites and migrations with explicit phase boundaries. Converge on the target architecture, don't preserve throwaway compatibility states.
- **Experience First.** Product, UX, or feature-scope tradeoffs. Choose user delight over implementation convenience.
- **Exhaust the Design Space.** A novel interaction or architectural decision with no precedent. Build 2-3 competing prototypes and compare before committing.
- **Build the Lever.** Any non-trivial work. Use an existing host tool or an authorized product codemod when it reduces risk. GSF keeps the reproducible procedure and receipts in Markdown, never a bundled runtime.

**Architecture**

- **Model the Domain.** Writing stateful logic, or code that branches a lot or repeats a shape assumption across files. Encode the domain in a structure (state machine, typed model, table or registry, reducer, boundary, the right collection) instead of scattered conditionals.
- **Boundary Discipline.** Wiring validation, error handling, or framework adapters. Guards at system boundaries, trust internal types, keep business logic pure.
- **Type System Discipline.** Designing types or a signature in any typed language. Make illegal states unrepresentable, brand primitives, parse external data at boundaries.
- **Make Operations Idempotent.** Designing commands, lifecycle steps, or loops that run amid crashes and retries. Converge to the same end state.
- **Migrate Callers Then Delete Legacy APIs.** Introducing a new internal API while old callers exist. Migrate and delete in one wave.
- **Separate Before Serializing Shared State.** Concurrent actors might write the same file, branch, key, or object. Eliminate the sharing first.

**Verification**

- **Prove It Works.** After a task, before declaring done. Verify against the real artifact, not a proxy or "it compiles".
- **Fix Root Causes.** Debugging. Trace each symptom back to the first place the system went wrong and fix it there. A guard is a fix only when the state it handles is legitimate.
- **Sequence Work into Verifiable Units** (**sequence-verifiable-units**). Multi-step work (sweeps, migrations, runs of similar edits) and how you stack commits and PRs. Break work into small units that each end in a check, verify each before the next, and order delivery so the sequence proves itself.
- **Test Behavior, Not Implementation.** Writing, changing, or keeping a test. Assert what the code's users can observe, so the test fails when that behavior breaks and keeps passing when only the internals change.
- **Explain the Number.** Apply before you measure, and before you trust, report, or act on a number you measured (a speedup, a regression, a throughput, a latency, or an eval result). Find what limits it, and rule out that it measured something other than the work you think.

**Delegation**

- **Guard the Context Window.** Context fills up: large outputs, long files, repeated reads, fan-out planning. Route bulk to subagents, keep summaries in the main thread.
- **Never Block on the Human.** Tempted to ask "should I do X?" on reversible work. Proceed, present the result, let the human course-correct.

**Meta**

- **Encode Lessons in Structure.** You catch yourself writing the same instruction a second time. Use the existing contract owner and links; product tooling may enforce it when authorized, without bundling a framework runtime.

## Autonomy

Resolve configured policy and scoped operator grants through `<config.paths.agents>/WORKER_CONTRACT.md`. That contract owns protected-path, publication, merge and deployment authority; generic “full autonomy” is not a scoped exception. A playbook or prior trail cannot override it. Pause only the affected action for an unresolved gate; continue unrelated reachable authorized work. Use [Pause safely](playbooks/pause-safely.md) for an explicit operator pause or capability-forced suspension, not to abandon unfinished reachable work.

## Factory Execution

For factory execution, initialize or resume the exact authorized job through [gsf-run](../gsf-run/SKILL.md), select the task playbook, and follow the configured worker contract for all shared lifecycle, reconciliation, dispatch, event and final-gate rules. Resolve roles from `<config.paths.agents>`; `gsf-delegate.md` is an implementation delegate, not a second coordinator. Keep the typed DAG in job `plan.md` and use [multi-phase-plan](playbooks/multi-phase-plan.md) for a separate narrative execution plan.

For direct invocation, use the relevant task procedure without initializing a factory job. Read-only requests remain no-write, including evidence; an authorized factory investigation may write only its granted job evidence. Neither a prior trail nor a local instruction shortcut grants authority.

### Impact, environment and evidence routing

At intake, apply the [impact matrix](references/impact-matrix.md); spec turns applicable rows into exact invariants, owners/resources, procedures, minimal proofs and effect/target/tool/authority blockers. Keep one coordinator and existing five-pillar roles; union specialist coverage with required code/security reviewers and configured checks. Missing optional capabilities stop only affected steps and dependent claims, never become simulated PASS or erase a required gate.

Use [execution and evidence](references/execution-evidence.md) across **all** playbooks for policy-version acceptance, typed `environment.md` and deployment-only `release.md`, repository-root paths, effect-aware checks, scoped target/resource ownership, real limits/checkpoints and proportional evidence invalidation. Freeze actual observed environment identity before an external effect; allowlists are not observations and check definitions are not grants. Reuse only evidence whose artifact/base/dependency/environment assumptions and current gate eligibility are proven.

Select verify-existing or fix explicitly. Verification does not authorize a repair, remote publication or redeployment. Distinguish published, merged, deployed and healthy in the predicate, receipts and final report; no earlier state implies a later one. For registry-only publication use release A's authenticated exact endpoint/account/namespace/name/version/digest binding, native publication and retrieved-byte/provenance proof through existing indexed reports/events, not a deployment `release.md` or health window. Missing deployment tools does not block A; missing publication proof does. Registry publication needs its own authentic grant, not `publish_pr`/deploy booleans. Use release B's full deployment state machine and observation/recovery criteria only for deploy/apply/recovery. Workspace-only work does not require an invented release or cloud target.

## Playbooks

Select the appropriate playbook based on the task type. Each playbook is a step-by-step procedure in `playbooks/`:

- **investigation** - Read-only questions about how something works
- **bug-fix** - Reproduce, root-cause, and fix defects with runtime evidence
- **perf-issue** - Trace and improve measured slowness against a baseline
- **hillclimb** - Sustained scientific improvement of one metric against a target
- **runtime-forensics** - Diagnose live symptoms from instrumentation
- **trace-forensics** - Diagnose captured profiling artifacts
- **feature** - New or changed behavior from a named data shape
- **refactoring** - Behavior-preserving structural changes
- **prototype** - Throwaway sketches for design decisions
- **visual-parity** - Pixel-exact UI equivalence
- **authoring-a-skill** - Writing or editing SKILL.md files
- **eval** - Test skill or prompt changes with blinded evaluation
- **babysit** - Drive a PR or stack to merge-ready
- **shipping** - Independently verify and land a green stack
- **autonomous-run** - Drive a long task to completion without stopping
- **orchestrate** - Standing project with multi-day, multi-PR coordination
- **autopilot-full** - Run independent PRs to merged with one owner per PR
- **autopilot-stack** - Build and verify PRs for operator review and landing
- **session-pickup** - Resume or take over prior in-flight work
- **pause-safely** - Suspend in-flight work cleanly for later resumption
- **multi-phase-plan** - Work spanning phases or stacked PRs
- **worktree-cleanup** - Prune merged or abandoned worktrees safely
- **opening-a-pr** - Open a ready PR from ordered commits

Invoke this skill at the start of a task. It will match your request to a playbook and execute the appropriate steps, routing to other skills as needed.
