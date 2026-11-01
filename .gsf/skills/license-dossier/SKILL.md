---
name: license-dossier
description: Assemble revision-bound permission evidence for third-party instructions, scripts and assets, separating reference, adaptation and redistribution decisions by their actual accountable owners without claiming legal certification.
---

# License dossier

## Scope and authority

Use before adopting or distributing a bounded third-party skill, prompt, script or bundled asset, or when its permission basis is disputed. [Supply-chain review](../supply-chain-review/SKILL.md) owns provenance and artifact-trust claims; [skill-selection](../skill-selection/SKILL.md) owns workflow fit. Neither establishes license rights. Follow [GSF mode](../gsf-mode/SKILL.md) and the [worker contract](../../agents/WORKER_CONTRACT.md).

This is an evidence and decision-routing procedure, not legal advice, an open-source certification, a license grant or permission to copy. Direct no-write requests return the dossier in chat: no jobs, files, network retrieval, downloads, installs, execution, contact with licensors, publication or changes to notices. In an authorized dispatch, write only the assigned report; adoption and release remain separately authorized actions.

## Inputs and boundary

- Finite proposed components and exact intended use, recipients, distribution channel, modifications and product context; distinguish internal use, hosted access, source delivery and binary/archive redistribution where relevant.
- Supplied authorized source snapshots, immutable revisions or artifact digests, source locators, license/notice files, per-file headers, upstream attribution and any authentic permission agreements.
- Existing organizational license policy and actual adoption, distribution and legal/IP decision owners. An agent, maintainer handle or repository contributor is not automatically the rights holder or authorized exception owner.

## Procedure

### 1. Freeze identity and inventory components

1. Record the exact source repository/URL, immutable commit or release plus digest where supplied, component subpath and proposed destination/use. A branch name, catalog entry or current website license cannot prove the terms of an older imported revision. Mark missing exact identity unresolved; do not fetch a replacement.
2. Inventory instructions/prompts and documentation, executable/helper scripts, templates, images/icons/fonts/data and bundled or vendored dependencies separately. Record generated content and its source inputs where relevant. A Markdown skill can carry multiple licenses; “no executable core” does not remove permission obligations for its text or assets.
3. For every component, trace the actual applicable license text, per-file header, copyright/attribution and upstream origin at that revision. Inspect exceptions, exclusions, third-party notices and separately licensed directories. A root license is evidence only for content it actually covers; missing subcomponent coverage stays unknown.

### 2. Establish permission evidence without inventing it

4. Preserve exact license identifier/version where justified and the complete controlling text locator/revision. Record custom clauses verbatim with source location; do not force an unfamiliar license into a familiar SPDX identifier. A badge, package metadata field or catalog label alone cannot resolve conflicting terms.
5. Distinguish copyright ownership, a distributor's license grant and the project's adoption decision. Identify evidence that a special permission or dual-license choice applies to this component, recipient and intended use; do not assume a contributor can grant rights to bundled upstream assets. Unknown ownership or authority blocks reliance on that grant.
6. Classify the evidence as an identified open-source license, source-available/custom restrictions, other explicit permission or unknown, citing the basis. Visible source is not necessarily open source; restrictions on commercial use, users or fields of endeavor must not be described as unrestricted open-source permission. Do not certify legal status or compatibility.
7. Enumerate obligations implicated by the actual use: attribution/notices, license copies, modification marking, source or offer obligations, distribution conditions, and relevant patent, trademark or asset-specific limits. Preserve conditional applicability and conflicts; do not declare every copyleft license incompatible or assume internal use waives every obligation.

### 3. Separate the requested actions

| Action | Evidence and decision needed | Boundary |
| --- | --- | --- |
| Reference | Authorized source locator and access, intended citation/link and any applicable access/confidentiality restrictions | A link-only reference does not itself copy/adapt/distribute the component; do not bundle excerpts, scripts or assets under this label |
| Adapt | Exact material copied/modified, applicable grant and triggered obligations; accountable adoption owner accepts scoped use with legal/IP resolution where required | Rewrite/translation or close transformation is not automatically independent authorship or permission |
| Redistribute | Exact shipped components/revisions, recipients/channel, applicable grants, required notices/source/other obligations and authorized distribution decision | Public availability, a selected skill or an approved internal experiment is not redistribution authority |

8. Evaluate each requested action independently for each component. Record supported permission evidence, unmet obligations, conflicts and unknowns. Unknown license terms block copying/adaptation/redistribution that relies on those terms; they do not automatically block an otherwise authorized link-only reference. Reference remains blocked if access, confidentiality or linking restrictions forbid it.
9. Route product/adoption suitability to the actual adoption owner, distribution readiness to the actual release/distribution owner, and ambiguous grants, compatibility or ownership to the designated legal/IP decision owner. Record names or established roles and authentic decision references; if missing, report missing authority rather than accepting your own exception.
10. An organizational risk acceptance cannot create rights the organization lacks. Resolve grants with an authorized rights holder or the applicable policy/legal process; do not infer consent from silence, repository visibility or a researcher's recommendation. Continue independent component/action rows while a disputed row remains blocked.

## Dossier and completion

Use this report-local table, not a new configuration schema or universal approval gate:

| Component / kind / exact revision and path | Source and applicable license/notice evidence | Action / recipients / modifications | Obligations and gaps | Actual decision owner / authority reference / disposition |
| --- | --- | --- | --- | --- |
| Separate instructions, script and each differently licensed asset | Exact locator/revision, license text/header and upstream ownership evidence; unknowns explicit | Reference, adapt or redistribute evaluated separately | Concrete required notice/source condition, conflict or unresolved permission | Supported within scope / blocked / not requested; no invented approval |

Return the inventory, precise intended uses, evidence table, separate action dispositions, unresolved terms and responsible next owners. Cite original evidence without copying sensitive agreements into ordinary reports. State limits: this dossier documents evidence and recorded decisions, not legal advice, certification, actual installation or publication proof.

For a supplied skill whose instructions have a documented grant, helper script has a different license and icon has no known terms, assess all three separately. The icon blocks a bundle containing it from redistribution until its rights and obligations are resolved; it does not invalidate independently established instruction rights. Removing/replacing the icon is a proposed scope change requiring its owner, not an action performed by this review.

If that same unknown-license icon is only linked at an authorized public source, report link-only reference separately as permitted within the evidenced access/linking boundary; do not claim redistribution permission or embed the image. A no-write answer stops with these decisions and gaps, never a generated notice file or copied package.

Completion requires a disposition for every requested component/action, exact unresolved prerequisites and authentic owners for approvals relied upon. Changes in source revision, component set, destination/use, recipient, license evidence or decision scope invalidate dependent conclusions and require scoped reconsideration.
