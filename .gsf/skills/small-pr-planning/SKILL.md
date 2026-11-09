---
name: small-pr-planning
description: Author bounded one-objective PR units with explicit ownership, acceptance and acyclic dependencies; block unordered overlaps and distinguish hypothetical waves from separately authorized verified publication and merge.
---

# Small PR planning

## Scope and authority

Use to plan small individually integrated PRs for an accepted objective, not to infer semantic partitions from file counts or source keywords. Follow [GSF mode](../gsf-mode/SKILL.md) and the [worker contract](../../agents/WORKER_CONTRACT.md). Reuse [sequence-verifiable-units](../sequence-verifiable-units/SKILL.md) for verifiable delivery and [separate-before-serializing-shared-state](../separate-before-serializing-shared-state/SKILL.md) to remove unnecessary sharing before imposing real prerequisite order.

This Markdown procedure is neither a scheduler nor Git/forge/backend integration. It does not create repositories, branches, commits, workers, PRs, approvals or merges, execute checks, or grant authority. A direct planning request returns a plan in conversation; a dispatch writes only its assigned plan/report. Existing coordinator records remain authoritative; no new role, gate, schema, ledger or canonical keys.

For the current Markdown-only cutover, only assigned existing main-repository Markdown deliverables may change, each unit remains small, and **the parent alone owns publication, current-remote observation and integration**. Children do no Git, provider/model calls, commands, tests, suites, gates, formatters or runtime probes. A planning dependency never overrides that mandate. No executable hidden in Markdown, runtime, backend or new repository may be proposed to satisfy a missing capability.

## Inputs and capability prerequisites

- Accepted overall outcome, exact product/repository/candidate and current user mandate; authorized concrete writable paths and protected/read-only locations; accountable coordinator, authors/reviewers and publication authority already assigned through existing routing.
- Finite caller-authored units with stable unique existing/local IDs, one explicit independently verifiable objective each, concrete owned paths/resources, explicit dependencies and observable ordered acceptance criteria. No implicit completion or authorization fields are inferred.
- For every unit, all incoming prerequisites and outgoing consumers, actual native capability/tool/data/auth/environment prerequisites for its complete task, required review/proof obligations, evidence owner and recovery conditions. Missing prerequisites remain blockers, not silently narrowed scope.
- Explicit positive per-unit ownership budget and hypothetical wave capacity chosen for this plan, plus finite source/plan/report limits. These are planning parameters, not discovered machine capacity, live worker count or permission to launch workers.
- Intended PR repository, exact base/head identity or explicitly unresolved future identity, objective-bound change intent, assigned integrator, required existing branch protection/review/check rules and acceptable evidence stage. Authentic source revisions/receipts, access/retention restrictions and owner decisions where available.

Planning uses only supplied authorized evidence. If a local input is selected, require an existing bounded safe reader or supplied equivalent evidence: strict UTF-8, no duplicate keys/nonfinite constants/ambiguous structures, stable regular single-hardlink file, safe path/ancestor identity and no links/junctions/reparse points, traversal, network/device namespaces or alternate streams. Missing facility blocks dependent claims; no new parser or executable planner. Do not inspect private profiles/HOME, discover a repository, probe planned paths, fetch source or execute Git to fill an input gap.

## Procedure

1. **Bind the full outcome before splitting.** Map every accepted criterion and existing mandatory obligation to at least one unit and name the final consumer/integration condition. Preserve all remaining feature scope. A prose stub, keyword/wiring search or compiling scaffold cannot replace specified behavior.
2. **Author one real objective per unit.** State what independently useful accepted behavior/document procedure changes, exact non-goals, owned resources, concrete acceptance and the smallest complete integration boundary. File count alone cannot establish semantic smallness. Do not automatically invent objectives, replacement IDs, source diffs or an acceptance waiver.
3. **Resolve ownership conservatively.** Use exact portable repository-relative paths and an explicit repository/root binding supplied by the owner; include shared reports/indexes, branches, external resources and configuration when actually in scope. No wildcard ownership, unexplained broad tree, hidden writes or implicit user-file permission. A declaration is not proof that a path exists or is local.
4. **Eliminate avoidable sharing.** Prefer disjoint assigned files/resources or separately owned immutable evidence. Where a genuine shared invariant requires order, author the real prerequisite direction and explain the consumer contract. Do not add locks, queues, a new coordinator service or a fictional edge just to suppress a conflict.
5. **Validate the entire DAG manually from evidence.** IDs/dependencies must be unique; dependencies reference existing units, never self; no cycle. Forward references are allowed. Recover direct and transitive prerequisites, including native capability, source/evidence availability, consumer compatibility and mandatory independent review. Missing referenced units or a cycle makes the complete plan invalid, not partially runnable.
6. **Block every unordered overlap** using the rules below, regardless of capacity/wave assignment. Retain one actual representative witness per conflicting pair and the exact repair obligation. Propagate each direct blocker through all transitive dependents; unaffected units may receive hypothetical waves but do not make the overall plan unblocked.
7. **Enforce the explicit ownership budget.** Record exact declarations/count/limit for every over-budget unit. Require its author to supply replacement one-objective units, criteria, ownership and genuine dependencies, migrating **every incoming and outgoing dependency/consumer reference** to the correct replacement. Arithmetic minimum count is not a semantic partition; no fabricated replacement units.
8. **Propose deterministic ready waves.** Among unblocked remaining units whose full prerequisites occur in earlier waves, choose up to the stated capacity in ascending ASCII stable-ID order. Assume the whole prior wave completes before the next. Leftover ready units compete with newly ready units by the same rule. These barrier waves are hypothetical, not observed completion, optimized duration or live scheduling.
9. **Bind acceptance and handoff.** For each unit distinguish planned criteria, inspected source/manual consumer walkthrough, actual existing proof, required future native proof and unobserved results. Keep all required independent code/security/applicable reviews and accepted proof obligations; planning cannot waive them. A dependent is not actually released by a wave number.
10. **Specify exact PR integration intent** using the separate publication boundary below, and return the complete plan/report including blockers, unknowns and recoverable failure paths. No automatic Git/tool operation follows from this plan.

### Ownership and resource conflicts

Paths are portable POSIX repository-relative spellings, at most 512 ASCII bytes and 32 components, with letters/digits/underscore/dot/hyphen only. No absolute/drive/UNC spelling, slash suffix, backslash, colon, whitespace, wildcard, empty/dot/parent component, trailing dot or reserved Windows device basename (including extensions). Within a unit, duplicate/case-alias or redundant ancestor/descendant declarations are invalid, not extra budget entries.

Conservatively treat **every declared path as owning its entire subtree**, even a file-looking name. Equality, case-fold alias or ancestor containment in either direction is overlap: `src`, `src/a.md`, `SRC/a.md` intersect; `src/a.md` and `src/b.md` do not. Apply the same invariant analysis to non-path resources with their actual service/repository identity; different path spellings do not separate a shared branch or remote object.

Across units, overlap is ordered only when one is a direct/transitive prerequisite of the other. Sharing a prerequisite, input order, alphabetic order, being in different waves or capacity one is **not** ordering. Both unordered owners and their dependents are blocked. Repair by genuine explicit prerequisite direction or truly disjoint ownership, not guessed semantic order. Preserve user changes and other owners' writes.

A broad subtree counts as one declaration but may hide a huge change; review actual bounded intent and owned concrete paths before calling the unit small. Ordered overlap allows future sequenced ownership only; it is not permission for concurrent edits or a claim that the second unit has incorporated the first's final content.

### Finite planning limits

Use no more than 256 units, 256 ownership declarations/unit, 4096 declarations total, 255 dependencies/unit, 64 distinct criteria/unit and 1 MiB supplied plan bytes. Stable lowercase kebab-case unit IDs are at most 64 ASCII characters; objectives are nonblank trimmed single-line text up to 2048 UTF-8 bytes, criteria up to 1024 UTF-8 bytes each, without controls/unpaired surrogates. Keep authored criterion order; sort IDs/ownership/dependencies only for deterministic presentation.

Select a smaller explicit unit-path budget where appropriate; exceeding it blocks that unit rather than triggering an automatic split. An arithmetic lower bound is ceiling(declaration count / budget) if declarations are retained, not an inferred partition. Hard-limit excess invalidates the plan; never truncate units, criteria or conflicts. Bound report size explicitly before collection; inability to retain complete diagnostics is not a valid-plan result.

Wave capacity is a finite positive **hypothetical proposal** no larger than the planned unit set; use a value actually accepted for this task. No universal maximum of 32 workers, host concurrency capability, staffing availability or scheduler guarantee follows from a former planner's numeric option or from this skill. Actual dispatch requires separately available authorized native facilities and the existing coordinator's decisions.

### Proof and readiness without scope inflation

A valid unblocked plan has **not** verified acceptance, inspected the source tree, launched work, created PRs, merged, accessed a remote or granted authority. Initial `ready` means dependency eligibility only, not placement in wave one or operational readiness. Units with prerequisites remain waiting until their actual accepted evidence is complete, not merely their hypothetical wave.

For this Markdown-only assignment under the current no-tests mandate, plan parent-owned manual consumer walkthroughs and source-bound independent review as the authorized evidence; do not require executable tests/suites, native probes, wiring/keyword checks or invented gates as proof. Do not perform any such operation. If a future requested feature actually depends on runtime behavior, preserve that full accepted feature and its real native prerequisites/proof for a future separately authorized stage; unavailable facilities block the dependent claim, never authorize fake observations or shrink the feature to prose.

Each unit retains mandatory reviews and proof already required for its actual stage. An author cannot supply independent review of their own unit; no additional blanket specialist is created here. Unavailable required proof or accepted intent blocks that unit and dependent release, while completed static facts remain usable with explicit limits.

### Separate PR publication and merge boundary

For **each** intended PR record exact repository, intended base branch and observed base commit, head branch and exact reviewed head commit when known, objective/change intent, upstream unit receipts, expected diff scope and authorized publication/integration owner. Future commits are unknown until observed; a branch name, local commit, proposed PR number or push response is not a merged result. Preserve the distinction between stacked proposals, individually merged PRs, publication, deployment and healthy operation.

Only the existing authorized integrator may use an already available exact authorized Git/forge tool under separate current action-scoped authority. The plan neither grants that authority nor asks children to call it. Before a publication/merge and **before retrying any ambiguous timeout/error**, that owner obtains current remote PR/base/head/merge state through the authorized existing tool, compares it with intent and reconciles whether the prior action already occurred. Unknown remote outcome blocks retry; never duplicate a PR or blind-retry a merge.

Integration requires the exact reviewed head, intended current base, actual required review/check/protection state and authentic per-PR merge receipt naming the PR, repository, merged head/base/result commit and observed time/status. A closed PR may be unmerged; command exit, local merge, approval or push alone is not a remote merge receipt. Changed base/head/diff invalidates affected proof and requires scoped owner reconciliation; it never silently carries an old approval forward.

For individually merged cutover units, integrate the prerequisite first, then rebind dependent work to its actual result and refresh affected acceptance/review evidence under the current mandate. Do not batch unrelated objectives or claim all merged from one aggregate receipt. No automatic commit, branch creation, push, PR creation, approval, merge, deployment or new repository is specified by this workflow.

## Complete plan and report

Return one conversation plan or the assigned report using existing task/criterion identifiers; these are descriptive sections, not a replacement schema.

| Section | Required content |
| --- | --- |
| Boundary | Accepted outcome/full scope/current mandate, repository/candidate, source/authority identities, writable/protected paths, real owners, excluded operations, explicit bounds and unknowns. |
| Units | Every stable ID/objective/non-goal, exact owned paths/resources and count, ordered acceptance, incoming/outgoing consumers, complete native prerequisites, proof/review obligations and recovery owner. |
| Graph and blockers | Direct/transitive dependencies, acyclicity basis, unordered case/subtree/resource overlap witnesses, path-budget diagnostics, exact repair obligations and propagated blocked-by owners. |
| Hypothetical waves | Explicit capacity and deterministic ready ordering, each ID at most once, prerequisites in earlier waves, assumed whole-wave completion; blocked units never scheduled. |
| Actual evidence | Per criterion planned/observed/unrun/blocked basis, exact source/revision/line or retained receipt, independent review status and missing native facility; never expected outcomes in actual-result cells. |
| PR intent | Per-unit repository/base/head/intended diff, current unknowns, parent-only publication authority in this cutover, required current-remote check and actual individual merge receipt or not observed. |
| Handoff and retention | Overall valid/unblocked versus invalid/blocked proposal, partial unaffected planning, access/retention/expiry owner, complete negative/failure evidence, recovery and exact next prerequisite/owner. |

## Failure, recovery and completion

Unknown unit/dependency, cycle, unsafe/malformed input or hard-limit excess makes the plan invalid. Unordered overlap, missing native capability/proof or unit-path budget blocks affected units and transitive dependents. Do not infer an edge, reduce scope, waive review or silently reroute ownership; retain the exact cause and author-owned repair. Independent unaffected analysis may finish, but overall status remains blocked.

On failed acceptance/review or changed scope/base/head/source, stop affected dependent release, preserve all prior negative observations and original evidence, and replan only the invalidated subgraph after the owner accepts the correction. Reconcile any ambiguous external outcome before retry through the parent; do not reset counters, duplicate publication or assume cancellation undid an effect. A rollback/revert is itself a separately authorized change with native recovery implications, not an automatic plan operation.

Preserve existing plans, receipts, user changes and authentic approvals under actual retention/access rules; correct with a new source-bound report rather than rewriting history. Remove only assigned disposable scratch under explicit authority, never shared branches, user files or remote resources. Completion here is a complete bounded proposal and honest evidence/unknowns/recovery handoff, not accepted implementation or publication. Report static-only work actually performed and leave every unobserved merge/native claim unobserved.
