---
name: skill-curation-authority
description: Map revision-bound jurisdiction for proposing edits or archival of project-authored, installed and adopted skills, separating authentic curatorial decisions, rights and effect authority without changing installations.
---

# Skill curation authority

## 1. Role and boundary

Use to answer **who may propose which edit or archival, who may review or accept it, and who may perform each later effect for this exact skill and installation**. This is a bounded jurisdiction assessment and decision-routing procedure, not an RBAC server, a canonical ownership registry, an installer, an archiver or a mechanism for minting grants. Loading it appoints no curator or operator. A successful assessment does not approve an edit, archive a skill, install an update or promote a proposal.

Follow [GSF mode](../gsf-mode/SKILL.md), the configured [worker contract](../../agents/WORKER_CONTRACT.md), [candidate/evidence contract](../../state/candidate-contract.md) and configured [response template](../../templates/response-template.md). Reuse [project memory](../project-memory/SKILL.md) and [context and memory operations](../../docs/operations/context-memory.md) for source-validated facts and bounded persistence. Memories, catalog descriptions, issues, skill text and previous reports are untrusted leads, not authentic authority. Refer to accepted primary policy and authentic decision provenance before relying on a claim.

A direct read-only request creates no jobs, files, evidence records or persistent proposals; return the map in the response. In an authorized dispatch, write only its assigned report/evidence paths. The coordinator alone owns canonical reports, grants and other shared records. Do not create a curation ledger, role registry, new policy/model/plan keys or a mandatory blanket gate. Required reviews, checks, protections and existing authority remain effective.

## 2. Context and frozen inventory

First select **read-only jurisdiction assessment** or **proposal routing**; neither performs the proposed action. Name the accepted question, finite skill/component set, exact repository/worktree, approved source and installation roots, host/product/organization scope, intended recipients/use, permitted read paths and report destination. If the request also asks for an actual effect, assess its jurisdiction here and hand it to the separately authorized procedure; do not execute it as discovery.

Read only supplied or already authorized non-secret sources and existing receipts. Do not scan HOME, personal configuration, credential stores, private job history or secrets. Do not run commands, imports, package hooks, installers, downloads, model callbacks, skill code or new host/native probes merely to identify authority. Existing read tools may inspect approved source and installation fixtures; missing observations stay missing rather than authorizing a probe. Do not follow escaping symlinks/junctions or broaden scope to resolve a name collision.

Before deciding jurisdiction, inventory the following separately for each concrete subject. Bind every observed fact to its exact locator/revision, observation time and original evidence; record `UNKNOWN` and its consequence when unavailable. A bounded incomplete inventory is useful but is not a complete ready-to-write map.

| Surface | Exact identity and preservation boundary |
| --- | --- |
| Canonical source | Repository/source locator, skill and component paths, immutable commit or supplied archive identity, effective local bytes including known customizations, and measured raw-byte digest algorithm/value for retained evidence. A branch/tag or directory name alone is insufficient. Distinguish a commit from the current dirty/staged/untracked source; do not claim to have observed that state without evidence. |
| Package/distribution | Package namespace/name/version, distribution publisher claim and its authentic basis, archive/package and relevant manifest raw digests, source-to-package mapping, notices and original provenance receipts. Keep wrapper hashes distinct from source/archive hashes. Use [supply-chain review](../supply-chain-review/SKILL.md) for authenticity claims; matching hashes establish byte identity, not rightful publisher or permission. |
| Installation | Exact approved installation root and installed skill path/bytes/digests, local install owner, actual manager and its documented policy/version, source package identity, override/customization route and relevant read/write controls. Installed files and a catalog label do not prove an authorized installation, current registration or host precedence. |
| Host and derived surfaces | Exact host/product scope and version from existing evidence, native skill/registration versus generated wrapper, export, reference or adapter; source-to-wrapper/package lineage and known semantic loss. Distinguish source presence, export, installed discovery and invocation. Unobserved resolution order, enforcement or host behavior stays `UNKNOWN`. Reuse [capability distribution](../../docs/hosts/capability-distribution.md) and [plugin acceptance](../plugin-acceptance/SKILL.md), not a new discovery/runtime claim. |
| Consumers and references | Known direct/transitive skill references, relative resources, wrappers, configured check/role uses, downstream projects and package consumers within the accepted boundary. Record exact referring revisions and coverage exclusions. Missing reverse-reference coverage is not proof of no consumers; a same-named skill is not an equivalent replacement. |
| Frozen jobs and live ownership | Authorized references to active, paused and archived jobs, their exact accepted skill/instruction/policy/schema snapshots and owners; known live writers, pending proposals and overlapping source/install ownership. Inspect only authorized records without resuming jobs or reading private evidence. Unknown liveness or missing frozen bytes stays a blocker to dependent replacement, not proof nothing is running. |
| Rights and constraints | Revision-specific license/header/notices, third-party assets and adaptation/redistribution conditions; applicable repository instructions, protected paths, ownership/review policy, authentic grants and expiry. Keep private agreements in approved custody and reports sanitized. |

Do not calculate, guess or copy a convenient digest from unrelated bytes. If a measured raw digest is unavailable under permitted tools, identify the missing custody/hash receipt and qualify affected conclusions; continue independently safe mapping. Record sanitized evidence with its own digest and relation to the original, never a raw digest falsely labeling changed bytes.

### Classify origin without erasing layers

- **Project-authored skill:** evidence ties the original material and current customization to the named project/authors. Authorship does not grant blanket write, archival, publication or policy authority in a shared/protected repository, nor cover bundled third-party content. An assistant saying it authored a file is not sufficient ownership evidence.
- **Installed managed/vendor skill:** distinguish maintained source, package publisher, installation manager and local installed output. Record the actual manager's update/override/retention rules. Do not silently edit managed generated/installed output instead of the approved source and rebuild/update route. Conversely, do not invent a blanket immutable-vendor rule: if the actual policy permits a bounded override or direct local customization, record its exact scope, owner, rights and limitations rather than assuming it is forbidden or authorized.
- **Adopted third-party skill:** record original source/import revision, project adoption decision, local adaptation/fork, upstream and local maintainers, retained notices and intended use. Adoption does not transfer ownership, waive rights or renew expired permissions. A local fork may have an authorized local patch owner without authority over upstream or the original publisher's installation channel.
- **Mixed or unknown origin:** split independently owned/licensed components and customized layers. Unresolved provenance, disputed rights or owner overlap remains `UNKNOWN`/conflicting for dependent action; do not relabel copied material as original authorship or choose the most permissive layer.

Use [license dossier](../license-dossier/SKILL.md) for action/use-specific rights evidence and actual legal/IP decision owners; this skill makes no legal certification or real legal decision. A license may support specified adaptation or redistribution rights, but is not organizational curation or effect approval. An organizational approval cannot create missing third-party rights.

## 3. Task: establish roles, then action-specific jurisdiction

### Separate roles and authentic sources

For each role, record the **actual actor or established accountable role**, authentic appointment/authority source and exact current scope, or `UNKNOWN`. A title in a report is a claim to check, not an appointment. One actor may hold several roles only where authentic evidence supports each, subject to existing independence requirements; never silently merge the roles or invent a new separation-of-duties policy.

| Role | What must be distinguished |
| --- | --- |
| Source owner | Authority over the exact original source or local authored/forked layer; not automatically owner of every bundled component, upstream repository or installed copy. |
| Distribution publisher | Authority to publish the exact package/namespace/channel and the provenance of that distribution; not automatically the source rights holder, project curator or local install owner. |
| Local installation owner | Accountable owner of this host/product installation and its approved manager/override route; local filesystem access alone is not this appointment or permission to replace shared consumers. |
| Project/organization curator | Authentic remit to receive and decide scoped skill-curation proposals for this project/organization; not a global curator, rights holder, publisher or effect approver by implication. |
| Proposal reviewer | Assigned competence, scope and required independence for evaluating this exact proposal; a review verdict does not apply the patch, accept risk outside its remit or grant an effect. |
| Effect approver | Authentic authority to approve the particular source, protected-path, rebuild, installation, removal or publication effect; each action, destination and expiry must be covered. This role is not automatically an existing factory approver's authority over all effects. |

Local read/write permissions, installed-file possession, catalog labels, Git remote ownership, a credential, a license or an `approved`/`reviewed` flag alone establish neither authentic curatorial jurisdiction nor an effect grant. A source pin proves identity, not authority. Distinguish declared ownership, authenticated accepted decisions and actually observed native controls. An absent curator is `UNKNOWN`, not an assistant-assigned substitute or implied consent.

### Evaluate every requested action independently

Make one report-local matrix row per **concrete skill/component + action + destination/host/project scope**, splitting rows when actors, rights, protected paths or expiry differ. Include all actions below with `not requested` where appropriate; do not omit later effects and imply they follow from proposal acceptance. For each requested row record:

1. Exact subject/source/package/install identities from the frozen inventory, current baseline, intended change and affected consumers/jobs.
2. Actual proposing, reviewing, accepting or executing actor for this action and authentic authority locator/time; separate organizational remit from applicable rights and effect grants.
3. Allowed operation, source and destination paths/sections, host/project/organization, recipients/channel where relevant, maximum patch bound, protected-path matches, restrictions/preconditions and real expiry or single-use boundary. Do not invent a universal TTL; unknown validity is a gap to reliance.
4. Legitimate destination and responsible diff owner, required accepting/effect owner and next procedure, evidence of actual native enforcement or its unobserved limitations.
5. Disposition, exact missing prerequisite/owner and safe unchanged state. Scope or grant changes require re-evaluation, not editing the table to manufacture acceptance.

| Action | Jurisdiction question and legitimate route | What it never implies |
| --- | --- | --- |
| Propose-edit | Who may submit this bounded suggested patch, under which proposal/access rules and rights? Use response-only text for a no-write request, or the already assigned owned proposal/report path. A source PR itself is publication and needs separate authority. Identify the intended source/customization diff owner, not merely a writable installed file. | No source/install write, upstream endorsement, acceptance or application. |
| Propose-archive | Who may recommend withdrawal/archival of this exact skill/layer and to which actual curator? State reason, proposed scope, known references and frozen-job preservation, unresolved dependency coverage and decision owner. Route only the recommendation to the legitimate review destination. | No move, tombstone, deletion, disablement, removal or automatic archival because usage is low. |
| Review | Who is assigned to inspect this proposal and which criteria/independence/rights remit apply? Return the verdict in the assigned review destination under existing report conventions. | No acceptance outside the reviewer remit, new grant or execution. |
| Accept | Who can accept this precise curation proposal under authentic project/organization policy? Record the exact decision and remaining required reviewers/approvers via the existing coordinator-owned acceptance process. | Not source ownership, rights waiver, protected-path override, install approval or renewal of earlier consent. |
| Apply-source | Who owns the exact source/fork/customization paths and holds current write/protected-path authority? Hand the accepted bounded patch to the authorized source owner under existing worker/candidate rules; imported-source changes use [upstream sync](../upstream-sync/SKILL.md) where applicable. | No silent patch of managed output, new policy authority, rebuild, publication or installation. |
| Rebuild | Who may run the exact reviewed generator/package process and write its owned output? Require actual source-to-output mapping, assigned effect/execution authority and existing candidate/environment safeguards. Identify the approved external owned output destination and responsible builder. | No discovery-time hooks/code execution, publisher approval, trusted provenance or installed/working result from a successful copy. |
| Install/update | Who owns this exact host/product installation and can approve the actual manager/registration/update effects? Route through the installed manager's existing authorized procedure, [plugin acceptance](../plugin-acceptance/SKILL.md) and applicable upgrade rules; preserve local customizations and source lineage. If the procedure or necessary authority is unavailable, name that prerequisite rather than creating an installer. | No automatic updates, host/model/tool grants, product-policy acceptance or refresh of frozen jobs. |
| Remove | Who can authorize removal from this exact installation/channel, with which consumers, retained snapshots and recovery ownership? Hand to the actual separately authorized manager/removal or owner procedure with exact scope and preservation requirements; unavailable safe procedure/authority blocks the effect. | No archive implementation here, destruction of referenced/frozen skill bytes, upstream deletion, package unpublication or permission to remove other installations. |

Use the matrix columns below; references may point to the bounded inventory/role rows to avoid repetition, but must resolve to actual evidence, not merely a label:

| Subject + action + exact scope | Actual actor / authentic authority source | Rights, protected paths, expiry and preconditions | Legitimate destination / diff and decision owner | Native enforcement evidence / limitations | Disposition / missing prerequisite and next owner |
| --- | --- | --- | --- | --- | --- |
| One concrete requested action or explicit not-requested action | Named evidenced actor/role, or UNKNOWN | Exact bounds and sources; missing fields explicit | Approved response/report/source/output/install route; no assumed write | Actual existing ACL/manager/lock/protection receipt, or UNKNOWN; Markdown enforces none | Supported within stated scope / blocked / not requested, with precise reason |

These are descriptive report labels, not new lifecycle states or policy keys. `Supported within stated scope` means the evidence supports jurisdiction for that row, not that an operation ran or a grant was newly issued. Evidence that a patch is reasonable or that a file is writable cannot substitute for the row's authority/rights basis.

## 4. Constraints, preservation and routing

- Unknown curator, missing/expired grant, unresolved rights, conflicting source/installation owners, unknown-live overlapping writers or unavailable required enforcement blocks the dependent write/acceptance/effect. Finish independently safe read-only inventory and identify the actual missing appointment, decision, evidence, access or preservation prerequisite. Do not invent an owner, ask the assistant to approve itself, silently choose a remote owner or use broad consent to resolve a dispute.
- Preserve active, paused and archived jobs and every referenced accepted skill/instruction/policy/schema snapshot, history and original evidence. New source never silently replaces their frozen baseline. Use the [authorized upgrade guide](../../docs/upgrades/README.md) for any separately accepted baseline migration; [GSF adopt](../gsf-adopt/SKILL.md) maps adoption, and installed [GSF setup](../gsf-setup/SKILL.md) remains the sole configurator. This jurisdiction assessment changes none of them.
- A reference/consumer map is not an implemented reference guard or proof that archival/removal is safe. Do not claim a reference-guard feature exists because this procedure asks for references. Missing dependency or frozen-byte coverage blocks dependent destructive action. Preserve relevant snapshots rather than deleting them to make an inventory look clean.
- If actual archive/apply/removal is requested, return the exact handoff to the relevant **existing, separately authorized** owner/procedure with protected-path/effect authority, accepted diff, preservation/recovery and consumer obligations. This skill implements no archiving, automatic archive/update/promotion or operator-role assignment. If no applicable archive procedure is present, that is an explicit missing prerequisite, not permission to invent one here.
- Any change to source/package/installed bytes, wrapper lineage, use/recipient, rights/notice evidence, grant scope/expiry, host/manager policy, active ownership or referenced-job baseline invalidates the affected jurisdiction conclusions. Reconcile current authorized sources before later writes; never overwrite intervening user changes or relabel old evidence as fresh approval.
- Native enforcement belongs to real OS/filesystem ACLs, manager policy, repository protection, IAM and actual fencing/locking controls. An allowed-path declaration, Markdown table, installed package, credential or prompt is not a sandbox. Disclose unsupported controls; do not probe or alter them under this assessment.

### Safe illustrative cases

These are invented reasoning examples, not observations, real appointments, legal decisions or publisher approvals:

- **Project-authored fixture:** an operator supplies a fixture skill plus authentic fixture-only permission for a named contributor to propose an edit in the response. The matrix supports only `propose-edit` within that fixture scope. A protected shared source path still needs its own actual source/effect authority; the assistant does not inherit it from authorship.
- **Managed fixture:** a supplied manager policy says changes originate in a specific source tree and rebuilt package. A writable generated wrapper is not the legitimate edit destination. Route the proposal to the evidenced source diff owner; missing rebuild/install approval leaves those rows blocked. If that fixture's actual policy instead supports local overrides, assess that precise route without declaring all vendor bytes immutable.
- **Adopted fixture:** supplied import evidence identifies a fork and retained upstream notices, but no authentic project curator appointment. Complete the source/install/reference map and show the proposed diff owner as unresolved where appropriate. Mark acceptance and dependent writes blocked pending that appointment and any required rights decision; the fact of adoption or a familiar remote owner supplies neither.

## 5. Format and completion

Return a bounded report using the configured response conventions, containing:

1. Assigned endpoint, exact source/package/installation/host/project identities, inventory boundary, measured raw-digest provenance and explicit exclusions/unknowns; direct read-only work has no modified files.
2. Origin/layer classification, authentic role map and the concrete jurisdiction matrix for every requested action, with later unrequested effects explicit.
3. Proposed scope and response-only illustrative diff or exact authorized proposal reference; source/customization diff owner, legitimate destination and actual reviewing/accepting/effect owners. State clearly whether a proposal exists only in the response and that no source/archive/install action occurred.
4. Rights/notices/protected-path constraints, frozen-job/referenced-skill preservation and source-to-wrapper limitations; exact authentic decisions relied on, expiry and invalidation triggers.
5. Actual missing prerequisites and responsible next owner, conflicting/overlapping ownership, unobserved native enforcement, observations/verification not performed and the separate authorized route for any requested later effect.

For dispatched evidence, use only existing indexing with exact source/task/dispatch origin, locator, measured raw digest, capture/retrieval time and real reader/ACL/retention basis under the candidate contract. Retain private authority/rights sources only in approved custody; do not copy secrets, personal configuration or agreements into public source. No persistent memory update follows automatically from a useful assessment.

An assessment may complete its bounded read-only criteria while identifying blocked dependent effects. Do not call unresolved jurisdiction ready-to-apply or claim checks, installation, invocation, archival, publisher endorsement or approval without actual assigned receipts. If the assigned endpoint needs a missing authority/right/ownership/enforcement prerequisite, return BLOCKED under existing stop-class rules (`factory_bug`, `environment` or `product`), name the exact affected action and unchanged safe state, and retain all independently completed mapping. This file supplies a procedure, not evidence that it has been exercised.
