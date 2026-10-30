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

Authorized local unit commits require the unit's checks and policy compliance. They do not require pretending the whole job is already approved. Final publication still requires the full gate. Protected tests require scoped authorization; TDD does not override it.

## Read-only work

```text
Read .gsf/skills/gsf-mode/SKILL.md. Explain how session expiry works,
with source evidence. Do not modify files, initialize a job or publish.
```

Direct read-only use answers without filesystem writes. A separately authorized factory investigation can maintain job evidence but does not gain permission to modify/publish product code.

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
| Get PR review-ready / land authorized green work | babysit / shipping; separate grants and current-candidate evidence |
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
