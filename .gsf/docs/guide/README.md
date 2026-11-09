# First GSF task

## Install and establish policy

Install the single `.gsf/` directory; this guide is self-contained after copying and needs no root README. Preserve [legal notices](../../THIRD_PARTY_NOTICES.md), the [factory runbook](../../GSF_FACTORY.md), agents/skills/templates/state contracts and nested `.gitignore`. See the [architecture guide](../../GSF_RIGOROUS_GUIDE.md) for responsibilities, not a runtime to install. Choose the actual assigned repository root using host workspace/Git evidence before copying. Inventory the destination first: never overwrite an existing accepted installation, product settings or another owner's files. An existing installation uses the [upgrade procedure](../upgrades/README.md), not blind replacement.

Under explicit installation/write authority, copy only reviewed distribution source into repository-root `.gsf/`, excluding prior jobs, logs, bug evidence and personal `.gsf/state/models.md`. Do not copy test products, build artifacts, credentials or host/user configuration. The source distribution is Markdown except its existing nested `.gitignore`; no installer, executable, parser, dependencies, renderer, product or cloud resources accompany it. Verify copied identities and required files with existing host tools under authorized verification; missing files or changed legal notice block acceptance rather than being invented. Record actual source/destination identities and copy result in authorized evidence, not a fictitious installation receipt.

Preserve the application's own configuration; GSF uses [.gsf/GSF_CONFIG.md](../../GSF_CONFIG.md), not a generic application settings filename. Constraints live at [.gsf/GSF_CONSTRAINTS.md](../../GSF_CONSTRAINTS.md). Installation alone creates no job, host registration, credentials, model entitlement, sandbox or permission to publish/merge/deploy. It does not authorize deleting destination runtime evidence.

The distributed `framework` profile runs `verify-gsf` as a local-write skill check with target null. For a product, explicitly accept a `product` policy with actual checks/cwd, typed effects/targets, required reviewers, protected paths and permissions. Policy `version: '2.0.0'` is required for new jobs; existing accepted jobs retain frozen instructions/contracts. Set known external targets only through accepted `environments`, or `{}` for workspace-only work; configure actual `execution_limits` and `evidence` store/retention/location. Do not invent a cloud account, treat an unobservable required cost cap as enforced, inherit a publication grant from a template, remove a missing check, or substitute framework coverage for product behavior. [Setup](../../skills/gsf-setup/SKILL.md) owns validation and authorized bootstrap.

All `config.paths` entries, check paths/working directories and protected paths are relative to the repository root, not to `.gsf/` or this guide. The canonical policy has no root-file fallback. `.gsf/.gitignore` covers runtime data within `.gsf/`, not repository-root product or audit directories.

```text
Read .gsf/GSF_CONFIG.md and .gsf/skills/gsf-setup/SKILL.md.
Prepare only this repository's intended product. Discover actual commands
and supported host capabilities, preserve existing policy, and report
missing prerequisites. Do not install dependencies or publish implicitly.
```

Policy/plan/model/environment/release/candidate/event records use their own canonical YAML/schema contracts beneath [.gsf/state](../../state/config-contract.md). One policy version is not every record's version. A real strict parser and matching JSON Schema validator are required for a mechanical validation claim; semantic relationships, ownership, graphs and permission checks also follow the worker contract. Missing validation tools are prerequisites, not a bundled runtime to fabricate. Installation acceptance requires current-source/policy validation, safe root-relative paths, actual required file/skill/reviewer availability and observed host resources; checks/reviews need separate actual execution authority and evidence.

## Load instructions on your host

Attach/read actual SKILL.md paths. Slash commands work only after separately authorized registration through the host's official mechanism. `.gsf/` alone registers nothing. Use the [concrete Cursor, Claude Code, Devin and terminal-only adapters](../hosts/README.md) for supported tool maps, read-only discovery recipes, version evidence and limits; do not copy `.gsf/agents` verbatim into a host directory and assume its frontmatter/API is portable. Inspect installed help and the actual session's advertised tools. Preserve product and user host settings; no global rules edit is required.

For separately authorized host-package preparation and read-only evidence access, follow the complete [Markdown procedures](../hosts/plugin-export.md) with existing authorized tools. No separate repository or bundled executable is required. Prepared wrappers preserve source references but do not install themselves, register MCP, grant access or activate bundled reference policy in the product.

GSF skill frontmatter requires a matching `name` and a nonempty scalar trigger `description`. Distributed skills omit `disable-model-invocation`; compatible hosts may select them automatically, but discovery/registration depends on the actual host. Generation and validation do not require or reinsert an invocation restriction by default. An explicitly requested host-specific invocation field must be a boolean; it never grants permission to execute checks, change files, publish or deploy.

A terminal/filesystem host can execute authorized available CLI/product workflows; it alone supplies no browser, independent context, cloud privilege, durable evidence store or continuing service. UI acceptance needs actual UI controls; required code/security reviewers need actual independent contexts. Missing mandatory resources block dependent work, never become simulated tools or waived reviews.

Optional model preferences live at [.gsf/state/models.md](../../state/models-contract.md) when explicitly requested; only entitled observed models/controls are used. Reasoning budget is a preference, not money, elapsed time, parallelism, quota or permission. Follow [actual resource limits and checkpoints](../operations/README.md#reasoning-preference-is-not-a-resource-limit); `unlimited` does not override policy limits and no automatic quota reset/wake is promised.

## Start one coordinator

```text
Read .gsf/GSF_CONFIG.md, .gsf/agents/orchestrator.md and
.gsf/skills/gsf-mode/SKILL.md. Fix the login form accepting an invalid
email. Reproduce on the actual form, preserve neighboring behavior,
run configured checks, and obtain mandatory/applicable independent
reviews. Keep publication, merge and deploy denied unless specifically
authorized for this task.
```

The coordinator follows gsf-run to create/resume one exact job, snapshots accepted policy/instructions, validates the [observed environment record](../../state/environment-contract.md), then dispatches eligible work. It alone owns shared ledgers, plan and canonical stage reports. Environment READY means prerequisites only, never product checks passed, approval, merge/deploy authority or release health. Existing five-pillar responsibilities remain separate: intake/specification, implementation, checks, independent code/security/applicable surface review and approval.

1. Intake records scope, product gaps, impact, reviewers, ownership and dependency DAG in its assigned evidence for coordinator promotion to `decision.md` and `plan.md`.
2. Specification freezes observable behavior, verification fixture/surface and authorized change boundaries.
3. Builder executes the selected playbook with exact IDs and owned paths. `gsf-delegate` is a task delegate, not another coordinator.
4. Checks execute every configured command/skill against the identified final candidate and save actual results. Unrun/failed/stale checks block readiness.
5. Independent reviewers inspect the same candidate. Successful execution may return CHANGES; it is not approval.
6. Approver audits the actual complete evidence set. Publication happens only under separate authority; otherwise return an approved local handoff.

Intake investigates before asking: classify gaps as repository facts, product decisions, authorization or capability. Resolve repository facts from relevant authorized source/configuration/contracts and carry cited findings into specification. Only unresolved business choices go back as product questions; missing grants block the exact effect, and missing tools/access block their dependent tasks/claims. Intake records resolved and open items in its report, using its existing dispatch-local `gaps.md` only for open gaps. The coordinator checks that evidence before accepting a block; unrelated already-authorized work may continue, but required final gates remain blocked.

For example, a pagination request first inspects existing list endpoints and response contracts rather than immediately asking for page size and response shape. Reuse a consistent applicable precedent; ask for a product decision if precedents conflict or the required behavior remains unspecified. An existing pattern never grants publication or deployment permission.

Each worker report also maps every criterion from its frozen task assignment to the actual observation, indexed evidence and `MET`, `NOT_MET` or `BLOCKED`, with a next action/owner for unresolved items. The coordinator checks that coverage before accepting completion or releasing dependents; edited files and worker_done alone are not proof. Missing/unrun evidence stays BLOCKED, observed violations stay NOT_MET, and required criteria cannot be silently dropped. Completed reports are immutable: correction after worker_done uses a fresh authorized dispatch. These row labels do not add lifecycle states or replace role verdicts, configured checks, independent reviews or final approval.

Review findings distinguish blocking defects from optional improvements. Each blocker identifies the violated criterion/contract/invariant, concrete trigger, candidate-bound causal evidence and a verifiable resolution condition; established security/correctness boundaries need not be explicitly repeated in the spec to apply. Static reasoning and actual runtime proof are labeled honestly. Optional suggestions alone do not force CHANGES or expand scope, while missing mandatory proof remains a review/gate blocker. The coordinator audits the distinction without overriding independent verdicts or rewriting completed reviews.

Re-reviews reconcile every prior blocker in the assigned task/surface using its original report/dispatch/finding ID and indexed history, not only the latest list. Each row records the proposed correction, current independent evidence, original resolution-condition result and `RESOLVED`, `OPEN` or `UNVERIFIED`, with rationale and remaining owner/action. An evidenced withdrawal may correct an incorrect original claim without rewriting its old report. Missing history, omitted findings or an unsupported new PASS never close a blocker; relevant candidate/dependency changes require closure re-evaluation. This stays in existing reports, without a separate finding ledger or new lifecycle states.

The coordinator may group findings into one remediation task only when evidence demonstrates the same causal mechanism within a bounded authorized ownership scope. Record the rationale and original finding references in existing decision/plan/task fields; retain separate acceptance/resolution obligations and independent reviews for every member. Same file, severity or symptom is not common-cause proof. Unknown causes remain separate or receive scoped investigation; overlapping writers are serialized. Existing writers must be stopped/fenced and plan history preserved before reassignment, never overwritten by grouping.

For example, code and security findings that demonstrably trace to the same missing tenant predicate can share one builder correction task, while both original findings still require their own current review evidence. An unrelated null-handling defect in that file is not included merely because the file overlaps. Grouping grants no extra permission and cannot turn one resolved finding into blanket closure.

Authorized local unit commits require the unit's checks and policy compliance. They do not require pretending the whole job is already approved. Final publication still requires the full gate. Protected tests require scoped authorization; TDD does not override it.

Operational approval is phase-aware: readiness checks the current candidate, required checks/reviews, immutable build/artifact, target and applicable safeguards/authority prerequisites before an external effect. Only a passing gate plus separate scoped authority allows intent then execution; authentic receipts/readback and completed deployment observation follow the effect and are required for its completion. Requiring those future receipts before the first APPROVE creates a forbidden dependency cycle. Existing/ambiguous effects still require actual prior gate/authority and remote-state reconciliation; readiness approval never certifies published, deployed or healthy.

Required reviews are resolved through accepted plan task/role/report bindings and current dispatch provenance, not a `review-*` filename search. Keep role vocabularies intact: code/security and source-comment reviews require PASS at their actual report destinations; the separate PR-thread comment-reviewer requires CLEAN at comment-review.md. Do not rename or coerce those outputs, accept a wrong-role verdict, or substitute a specialist for mandatory code/security review. Unknown/conflicting bindings and unresolved required findings block the gate.

## Read-only work

```text
Read .gsf/skills/gsf-mode/SKILL.md. Explain how session expiry works,
with source evidence. Do not modify files, initialize a job or publish.
```

Direct read-only use answers without filesystem writes. A separately authorized factory investigation can maintain job evidence but does not gain permission to modify/publish product code.

Use [gsf-status](../../skills/gsf-status/SKILL.md) to inspect an explicitly identified job without resuming it. It reads accepted history and evidence, distinguishes recorded progress from current eligibility/liveness, lists unresolved findings and names the next safe action/owner. It never initializes a job, repairs stale projections or retries an ambiguous external action. Missing access or an offline snapshot limits the answer rather than authorizing a replacement job.

## Resume and suspend

A pickup names the exact saved job, reads the accepted policy/instruction identities, then reconciles invocation receipts, worker liveness, complete events, accepted history and current plan/report projections before effects. Prior chat trails are evidence, not policy authority.

Use [pause-safely](../../skills/gsf-mode/playbooks/pause-safely.md) and the [checkpoint/cold-resume runbook](../operations/README.md#actual-quota-tool-failure-or-limit-checkpoint) for explicit pauses, real quota/tool failures or reached execution limits. Persist exact job/candidate/policy/instruction IDs, owned dirty/untracked paths, actual worker/process/remote-effect state, evidence retrieval paths, blocker and first eligible resume action. Confirm stopped/fenced writers; unknown liveness blocks overlapping retry. No watcher, quota reset or scheduler remains alive merely because instructions say resume. Actual authenticated re-invocation, retrievable snapshots, fresh required capabilities/targets and renewed authority for exceeded limits are prerequisites.

Decision history is append-only `decisions.md`; corrections supersede old decisions. A report append is evidence, not an implementation edit. If the source actually changes, identify a new candidate and invalidate affected checks/reviews.

## Choose the right procedure

| Need | Route |
|---|---|
| Explain how / why / teach | `how`, `why`, `teach`; cited read-only output |
| Recover recent authorized context | `recall`; not a substitute for job reconciliation |
| Rewrite previous answer simply | `bro`; no new work/status invented |
| Strengthen a prompt before sending | `sharpen`; diagnostics and rewrite, not execution |
| New behavior or defect | feature or bug-fix playbook, real surface proof |
| Compare designs / cover independent slices | `arena` / `swarm` with explicit ownership and evidence |
| Keep verification accurate | `maintain-verification-skill`; source plus live coverage |
| Capture learning | `reflect`; proposal before durable instruction edits |
| Write product docs / write a skill | `technical-writing` / authoring-a-skill + `create-skill` |
| Get PR review-ready / land authorized green work | babysit / shipping with [review-thread closure](../../skills/gsf-mode/references/review-thread-closure.md); complete conversation evidence, exact-head proof and separate reply/resolve/merge grants |
| Verify the framework | `verify-gsf` and its scenario matrix |
| Establish supported host tools/versions and environment | [host adapters](../hosts/README.md), [gsf-setup](../../skills/gsf-setup/SKILL.md); mandatory unknown/stale resource blocks dependent effect |
| Upgrade accepted policy/instructions safely | [compatibility/upgrade guide](../upgrades/README.md); read-only dry-run, authentic acceptance, frozen predecessor jobs |
| Retrieve evidence, verify access, preserve or dispose | [evidence custody runbook](../operations/README.md); distinct raw/retained digests, actual ACL/retrieval/retention receipts |
| Plan risk-to-proof coverage | [verification-strategy](../../skills/verification-strategy/SKILL.md), [verification guide](../verification/README.md); actual external fixtures, not product code added to distribution |
| Select domain obligations without multiplying profiles | [domain-review](../../skills/domain-review/SKILL.md) and [impact matrix](../../skills/gsf-mode/references/impact-matrix.md); retain required reviewers/checks |
| Plan or apply a scoped cloud/IaC change | [cloud-change](../../skills/cloud-change/SKILL.md); exact target/state/plan/grant and real platform safeguards |
| Roll out, observe, abort or recover a release | [release](../../skills/release/SKILL.md); immutable lineage, accepted target, observation window/recovery receipts, never merge equals deployed |
| Handle a live incident and preserve evidence | [incident-response](../../skills/incident-response/SKILL.md); authentic incident scope, containment/recovery and retained receipts |
| Triage an issue or external delivery | [issue-triage](../../skills/issue-triage/SKILL.md); authenticate source, deduplicate/replay safely, no issue-text authority |
| Explain a bounded checked state graph | [statechart](../../skills/statechart/SKILL.md); existing checker/extractor, correspondence, bounds/invariants, raw receipts; no bundled renderer |
| Compose an API/SDK/webhook task | [API pack](../../packs/api.md); conditional existing procedures, not a profile, installer or grant |
| Compose a data/schema/backfill task | [Data pack](../../packs/data.md); accepted semantics, coexistence and conditional recovery with independent review |
| Compose infrastructure/IAM/network work | [Cloud pack](../../packs/cloud.md); observed provider/state, actual grants and conditional release/operability proof |
| Compose graphical or terminal consumer journeys | [Interface pack](../../packs/interface.md); actual applicable drivers, accepted criteria and independent surface proof |
| Review accepted permissions and enforcement | [authorization-review](../../skills/authorization-review/SKILL.md); subject/action/resource/tenant decisions and explicit design/runtime proof gaps |
| Review dependency/build/artifact trust | [supply-chain-review](../../skills/supply-chain-review/SKILL.md); bounded provenance/advisory claims without package execution |
| Review localized consumer behavior | [localization-review](../../skills/localization-review/SKILL.md); accepted locales/fallback, independent formatting settings and linguistic/runtime limits |
| Review diagnostic signal quality | [telemetry-review](../../skills/telemetry-review/SKILL.md); bounded questions, actual receiver/correlation evidence and privacy/cost limits |
| Add focused independent security specialists | Conditional [authorization-reviewer](../../agents/authorization-reviewer.md) at `review-authorization.md` and [supply-chain-reviewer](../../agents/supply-chain-reviewer.md) at `review-supply-chain.md`; stage-bound verdicts retain mandatory code/security review |
| Compose threat, permission, provenance and privacy work | [Security pack](../../packs/security.md); conditional Markdown composition, not exporter `--pack security` support |
| Accept a native bundle on an exact host/version | [plugin-acceptance](../../skills/plugin-acceptance/SKILL.md), [export guide](../hosts/plugin-export.md); structural, installed/discovered and invoked proof are separate; host changes require separate authority |
| Review pagination consistency and cursor scope | [pagination-review](../../skills/pagination-review/SKILL.md); finite traversal evidence against accepted snapshot/live promises, not assumed exactly-once results |
| Review retry budgets across callers and workers | [retry-budget-review](../../skills/retry-budget-review/SKILL.md); finite graph/attempt accounting, remaining deadlines and unresolved-effect boundaries |
| Review cache keys, scope and invalidation races | [cache-correctness-review](../../skills/cache-correctness-review/SKILL.md); accepted tenant/freshness contracts, negative entries and source-bound timelines, not hit-rate proof |
| Select between adjacent installed procedures | [skill-selection](../../skills/skill-selection/SKILL.md); concrete use/do-not-use cases and no automatic execution or external adoption |
| Review permission evidence for third-party materials | [license-dossier](../../skills/license-dossier/SKILL.md); separately licensed instructions/scripts/assets and reference/adapt/redistribute decisions |
| Compare alternatives for an accepted decision | [comparative-research](../../skills/comparative-research/SKILL.md); comparable source-bound claims, retained conflicts and no fabricated user research or purchasing authority |
| Prepare evidence-backed procurement answers | [procurement-evidence](../../skills/procurement-evidence/SKILL.md); real artifacts, yes/partial/no/unknown qualifications, accountable gaps and separate disclosure approval |
| Review stream delivery and lifecycle guarantees | [streaming-review](../../skills/streaming-review/SKILL.md); finite ordering/framing/replay scenarios, complete buffer-bound assumptions and observed stop boundaries |
| Triage supplier commitments and exit dependencies | [supplier-contract-triage](../../skills/supplier-contract-triage/SKILL.md); preserve clause uncertainty, technical evidence and qualified legal/service ownership |
| Assess readiness for operational handover | [operational-handover](../../skills/operational-handover/SKILL.md); actual recipient observations and acceptance, mandatory gaps remain blocking |
| Trace decisions and accepted follow-ups from supplied notes | [meeting-decision-trace](../../skills/meeting-decision-trace/SKILL.md); bounded citations, authority gaps, action acknowledgment and disclosure limits |
| Trace configuration candidates and actual effective evidence | [configuration-precedence-review](../../skills/configuration-precedence-review/SKILL.md); per-key native rules, secret-safe comparisons and explicit unknown live state |
| Apply accepted names, tone and supported visual identity | [approved-brand-identity](../../skills/approved-brand-identity/SKILL.md); approved mappings, occurrence-level traceability and separate rendering/publication evidence |
| Group customer feedback without inflating demand or intent | [customer-feedback-requirements](../../skills/customer-feedback-requirements/SKILL.md); revision-bound problem/candidate traceability, preserved counterevidence and owner-only prioritization |
| Produce and inspect the exact rendered document revision | [rendered-document-delivery](../../skills/rendered-document-delivery/SKILL.md); full finite visual coverage and rerendered correction evidence, not generated-byte assurance |
| Trace workbook formulas, units and independent result evidence | [spreadsheet-formula-review](../../skills/spreadsheet-formula-review/SKILL.md); finite cell coverage, hidden/circular dependencies and no cached-value recalc claims |
| Bind notebook conclusions to actual data/code/state lineage | [notebook-data-lineage](../../skills/notebook-data-lineage/SKILL.md); genuine execution evidence, qualified alternatives and explicit stale/unobserved kernel state |
| Review a finite RAG record on three independent axes | [rag-product-evaluation](../../skills/rag-product-evaluation/SKILL.md); retrieval coverage, claim support and qualified abstention with unknowns kept distinct from passes |
| Garden an evidenced obsolete reference or recipe | [documentation-gardening](../../skills/documentation-gardening/SKILL.md); pinned authoritative sources, minimal complete corrections and separately authorized docs-drive verification |
| Assess a suspected orphan linked worktree without losing state | [worktree-archive](../../skills/worktree-archive/SKILL.md); unknown liveness means keep, tracked bundles are not complete captures and removal needs separate recovery-backed authority |
| Update imported source while preserving customizations and obligations | [upstream-sync](../../skills/upstream-sync/SKILL.md); pinned old/local/new evidence, explicit conflicts and component rights, with canonical GSF upgrades and frozen jobs preserved |
| Evaluate an explicitly authorized browser-native WebMCP surface | [webmcp-acceptance](../../skills/webmcp-acceptance/SKILL.md); real native availability and document identity, separately granted discovery/invocation and no guessed APIs or trial activation |
| Compare accepted orders, payment objects and financial movements | [payment-reconciliation](../../skills/payment-reconciliation/SKILL.md); existing authorized connector/receipt provenance, event replay/conflict identity, fee-safe arithmetic and explicit unknown settlement |
| Assemble and exercise a navigable delivery packet | [navigable-delivery](../../skills/navigable-delivery/SKILL.md); one index over existing exact change/outcome/before-after/limit evidence, real viewer navigation and explicit recipient/publication gaps |
| Assess a named integration's actual data destinations before enablement | [data-residency-review](../../skills/data-residency-review/SKILL.md); all four categories, nested routes/copies, geography/access/retention evidence and no inferred residency from endpoint labels |
| Propose a reusable procedure from bounded actual experience | [experience-to-skill](../../skills/experience-to-skill/SKILL.md); complete five-pillar candidate, source/finding mapping and qualified variants without automatic learning, installation or trust promotion |
| Map a skill's actual source and curation jurisdiction | [skill-curation-authority](../../skills/skill-curation-authority/SKILL.md); exact source/package/snapshot mapping and per-action authority without converting local edit access, installation or a license into curator acceptance |
| Suggest keeping or withdrawing one pinned skill from a bounded catalog | [skill-archive-proposal](../../skills/skill-archive-proposal/SKILL.md); complete reference/criticality and recovery evidence, preserved frozen consumers, separate effect authority and explicit inverse catalog route |
| Retrieve or assess bounded provider evidence through existing authorized tools | [provider-evidence-review](../../skills/provider-evidence-review/SKILL.md); immutable repository/contract identity, all observed CI attempts, qualified metrics/traces and [native evidence boundaries](../operations/evidence-boundaries.md), with unavailable controls blocking dependent reads |
| Establish exact memory scope, audience and current access before retrieval | [scope-memory-review](../../skills/scope-memory-review/SKILL.md); personal/project/organization boundaries, fact provenance and expiry, with native permissions unknown until actually observed |
| Prepare or retrieve complete private memory review material | [memory-change-proposal](../../skills/memory-change-proposal/SKILL.md); create/replace/delete existence, exact bytes and full newline-aware review, with actor/session/reason declarations never granting acceptance |
| Review an exact memory decision before handing off any effect | [memory-change-acceptance](../../skills/memory-change-acceptance/SKILL.md); unchanged original before/parent binding, real writer exclusion and receipt recovery, never approval inferred from a proposal |
| Relate knowledge changes to original actor, session, reason and exact material | [memory-mutation-history](../../skills/memory-mutation-history/SKILL.md); before/proposed-after/original readback kept separate, no omitted unresolved rows or historical-target filesystem probes |
| Preserve skills used by active, paused, frozen or archived consumers | [referenced-skill-protection](../../skills/referenced-skill-protection/SKILL.md); complete approved reference/asset/hash coverage and recovery handoff, with unknown consumers or liveness blocking withdrawal |
| Reconcile competing native resource ownership | [ownership-collision-review](../../skills/ownership-collision-review/SKILL.md); concrete overlap, exact owners/fences and blocked reuse while uncertain |
| Qualify worker liveness independently from completion | [worker-liveness-review](../../skills/worker-liveness-review/SKILL.md); source/time/birth/session identity and no guessed process death |
| Confirm an exact owned cancellation and effect outcome | [cancellation-confirmation](../../skills/cancellation-confirmation/SKILL.md); actual native stop/readback, separate acknowledgment and no uncertain release |
| Review complete checkpoint coverage and restoration limits | [checkpoint-coverage-review](../../skills/checkpoint-coverage-review/SKILL.md); five independent domains, original artifacts and missing-state owners |
| Assess cold resume against the original frozen basis | [cold-resume-review](../../skills/cold-resume-review/SKILL.md); current owners/grants/effects and accepted history, with no projection-only replay |
| Review actual MCP initialization/listing and structural drift | [mcp-evidence-review](../../skills/mcp-evidence-review/SKILL.md); exact native target, all pages and pinned complete descriptors |
| Demand real bounded-input/privacy/lifecycle controls | [bounded-evidence-review](../../skills/bounded-evidence-review/SKILL.md); raw/preallocation versus decoded guarantees and owned cleanup |
| Review separately authorized native deferred discovery | [progressive-tool-discovery](../../skills/progressive-tool-discovery/SKILL.md); exact deterministic selection, full schemas and actual matched-call/history evidence |
| Compare bounded original MCP exchanges without semantic overclaim | [mcp-exchange-review](../../skills/mcp-exchange-review/SKILL.md); private-safe correlation, ordered descriptive dimensions and partial outcomes |
| Reconcile source-bound usage quantities | [usage-evidence-review](../../skills/usage-evidence-review/SKILL.md); exact decimal/unit/cohort arithmetic and explicit missing billing evidence |
| Preserve mandatory context across bounded reading views | [context-view-review](../../skills/context-view-review/SKILL.md); exact source pins, whole records and measured raw bytes distinct from native rendered capacity |
| Inventory named public/sanitized loader surfaces statically | [loader-surface-review](../../skills/loader-surface-review/SKILL.md); profile-specific predicates and finite exclusions, never execute discovered content |
| Review static CI permissions and related declaration findings | [ci-privilege-review](../../skills/ci-privilege-review/SKILL.md); replacement versus inheritance and unknown native defaults/effects |
| Assess exact pinned documentation changes | [deprecation-evidence-review](../../skills/deprecation-evidence-review/SKILL.md); independent baselines, exact quotes and qualified native contradictions |
| Plan one-objective PRs without pretending to schedule workers | [small-pr-planning](../../skills/small-pr-planning/SKILL.md); DAG/overlap blockers, hypothetical capacity and separate actual publication authority |
| Review native built-in visibility and additional-only approval | [tool-control-review](../../skills/tool-control-review/SKILL.md); unchanged/empty/list distinction, exact supported profile and native enforcement unknown |
| Propose consolidation without silently retiring a source or refreshing frozen consumers | [skill-consolidation-map](../../skills/skill-consolidation-map/SKILL.md); complete five-pillar candidate, rights and per-obligation coverage, exact migration/return patch and distinct blocked prerequisites |
| Review a future job's authority, calendar, recovery and pinned inputs | [scheduled-job-commissioning](../../skills/scheduled-job-commissioning/SKILL.md); all temporal branches, real native wake/receipt controls, delivery uncertainty, no implicit chat/context/model inheritance |
| Select a version-bound native host handoff | [additional adapters](../hosts/README.md#additional-native-adapter-procedures); seven exact product routes, explicit loading/approval/result/usage/liveness evidence and no runtime installation or unsupported protocol translation |
| Locate every retired implementation's current Markdown owner | [complete migration map](../operations/markdown-capability-migration.md); 37 module and 30 documentation dispositions, native prerequisites and distinct deletion evidence |

## Troubleshooting

**Skill not found:** attach the actual file or configure host registration. Do not assume a slash command exists.

**Check cannot run:** record the exact configured entry, directory and observed failure. Fix the real prerequisite with authority; do not remove the check or mark it not applicable to force green.

**No subagents or independent reviewer:** execute permitted serial work honestly; required independent approval stays blocked until actual independent review exists.

**No UI access:** attempt available controls and state the exact missing access. Unit tests do not prove the visible bug disappeared.

**Publication denied:** a verified local handoff is the correct outcome. A publish grant is not a merge/deploy grant; a scoped exception must explicitly name the denied action.

**Interrupted publication:** inspect real forge state before retrying. Absence of a local URL is not proof that no remote effect occurred.

## Remove GSF safely

1. Establish removal authority and inventory the exact factory-owned installation, custom jobs/evidence locations and host registrations. Pause/fence owned workers and reconcile live processes, remote intents, releases and resources; unknown liveness or unresolved unsafe effects blocks destructive removal. Removing Markdown does not stop a cloud operation or revoke credentials.
2. Use the [custody runbook](../operations/README.md) to preserve required frozen jobs, schemas/instructions, legal/audit/recovery evidence and receipts outside the directory. Confirm destination ACL/retention and actual retrieval/digests before removing the sole copy. Custom configured job/evidence paths are not automatically safe to delete.
3. Remove only the identified factory-owned `.gsf/` directory and specifically recorded GSF host registrations under their real official controls. Preserve shared registrations/settings and unrelated user-level skills. Revoke only dedicated credentials/resources when separately authorized and retain actual revocation receipts; do not blanket-revoke product access.
4. Preserve application source/settings, root product README, Git history/remotes and unrelated files. If a root README contains owned GSF instructions, remove only those instructions under authority; no root README is required for install or removal. Never delete `.git`, hard-reset history, blanket-clean the repository or erase old jobs without custody acceptance.
5. With explicit verification authority run the product's real configured checks from its own documented cwd, confirm product configuration remains intact and inspect the actual host registration state. Record exact removed/preserved paths, retained evidence locator, checks and unresolved remnants. If removal is interrupted, inspect actual remaining files/registrations/processes before retry; absence of the `.gsf/` directory is not proof all effects stopped or evidence survived.
