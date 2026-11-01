---
name: procurement-evidence
description: Prepare scoped procurement or security-questionnaire answers from real revision-bound artifacts, recording justified yes/partial/no/unknown responses, evidence gaps, freshness and allowed disclosure without certification or contractual promises.
---

# Procurement evidence

## When to use

Use when a buyer asks a finite set of control or capability questions, such as “is customer-data access reviewed quarterly for this service?” Assemble an evidence-backed draft answer and its disclosure boundary for the actual response owner.

Do not use to design controls or assess attack paths: [threat model](../threat-model/SKILL.md) owns that work. [License dossier](../license-dossier/SKILL.md) owns third-party permission and redistribution questions. Neither a questionnaire answer nor this skill establishes licensing rights, control effectiveness, SOC 2 compliance, legal certification or authority to make contractual promises.

Follow [GSF mode](../gsf-mode/SKILL.md) and the [worker contract](../../agents/WORKER_CONTRACT.md). A direct read-only request returns a draft in conversation. An authorized dispatch writes only its assigned report. This is an evidence-mapping procedure, not an auditor, certification service, questionnaire portal or external-submission integration.

## Inputs and bounds

- Finite questionnaire with original question identifiers and exact wording, referenced control/framework versions and requested answer format.
- Accepted product/service, legal entity, deployment/environment, data/customer scope and period to which the answers must apply.
- Real authorized artifacts and locators, their revisions/dates and coverage, accountable control/evidence owners, and known exceptions or previous answers.
- Intended recipient, purpose, response deadline, disclosure classification, applicable agreements/policy, actual answer approver and authentic approval references where available.

Read existing authorized evidence before asking for missing facts. Resolve repository paths from its root; use the actual permitted locator for other artifacts. Do not presume access to audit reports, production records, customer data, private portals or legal agreements. Identify missing scope or ownership rather than appointing an approver.

## Procedure

1. **Freeze the response scope.** Preserve question IDs and wording, recipient, service/entity/environment, period and control version. Split compound questions into traceable subparts without weakening their meaning. Record ambiguity and the interpretation proposed for the response owner's decision; do not silently redefine “all,” “annual” or “certified.”
2. **Map each question to its obligation.** Identify the actual control or capability asserted and the proof needed. Keep policy intent, implemented mechanism, operation over a period and independent assurance distinct. A policy document does not prove execution; one successful sample does not prove universal or continuous operation.
3. **Locate real evidence.** For each artifact record its authorized locator and section/page or record ID, immutable revision/digest where available or actual dated version, issuer/custodian, accountable owner, evidence date, covered period and exact scope. Mark mutable, missing or unverified identity explicitly. A title, badge, prior questionnaire or unsupported owner assertion is not a substitute for underlying proof.
4. **Assess applicability and contradictions.** Check entity, service, environment, regions, period, exclusions, exceptions and dependencies against the question. Separate inherited/provider controls from this organization's responsibilities. Show conflicting records and stale or narrower evidence; do not borrow a provider's audit status or extrapolate a sample to an uncovered product.
5. **Choose a justified answer.** Apply the answer rules below to each question/subpart and cite the supporting or contradicting artifact. Write a plain-language qualification with exact scope. Planned controls and remediation stay future proposals, not present-tense yes answers. Where a required portal permits only yes/no but evidence is partial or unknown, prepare the qualification and escalate the unsupported format choice rather than forcing yes.
6. **Record gaps and freshness.** Name the missing artifact, uncovered scope, exception or contradictory fact, affected answer, actual owner and next evidence/decision needed. Record source expiry, validity period and owner/policy review date where evidenced; label a suggested review date proposed. Do not invent an audit expiry or imply an undated record is current. An expired or superseded artifact supports only its historical scope.
7. **Determine allowed disclosure.** For each evidence item and draft answer record recipient/purpose, classification, authorized disclosure basis/owner, permitted excerpt/redaction or controlled-access locator, and any access expiry. An NDA or internal access alone is not permission to disclose every artifact. Unknown disclosure authority blocks sharing that item, not independent internal analysis; do not place restricted locators or contents in recipient-facing drafts.
8. **Return for actual approval.** Separate the internal evidence map from the minimum recipient-safe draft. Record authentic answer/disclosure approvals only when supplied, including owner, date and exact approved revision/scope. Mark other answers draft or pending. Do not submit a portal, sign an attestation, email a recipient or accept terms without a separate scoped assignment and real authority.

## Answer rules

| Answer | Required basis |
| --- | --- |
| Yes | Current applicable evidence supports every material part of the exact scoped assertion; cite limitations without hiding exceptions that change the answer |
| Partial | Evidence supports identified parts or a narrower coverage, with the unsupported or unmet parts and their consequences explicit |
| No | Applicable evidence establishes that the requested capability/control is absent or a required condition is not met; cite the basis rather than inferring absence from missing documents |
| Unknown | Available evidence cannot establish the answer because it is missing, inaccessible, stale, contradictory or out of scope; name what would resolve it |

Preserve a requested “not applicable” only with a scoped, evidenced rationale and the responsible owner's decision where required; never use it to conceal unknowns. If independent subparts differ, retain those answers and explain any aggregate partial/unknown rather than concealing an unmet requirement.

## Output

Use [technical writing](../technical-writing/SKILL.md) for a concise answer pack in the assigned destination. Use report-local rows, not a new evidence registry or approval gate.

| Row field | Required content |
| --- | --- |
| Question/control | Original ID and wording, subpart, control/version and accepted response scope |
| Artifact | Real locator/section, revision/date, owner/custodian, covered period/entity/service and limitations |
| Answer and rationale | Yes/partial/no/unknown, exact supported assertion, citations and contradictory evidence |
| Gap and freshness | Missing proof or unmet requirement, expiry/review basis, affected claim, real owner and next action |
| Disclosure and acceptance | Recipient/purpose, allowed content/access, authentic disclosure basis, draft/approved status and approval reference |

The internal map may reference restricted material only in its authorized location. The recipient-safe draft contains only authorized claims and references; if disclosure is unresolved, withhold the affected material and mark the draft not ready to send. Do not fabricate a substitute artifact, certificate, audit result, signature or completion date.

## Acceptance

- Every requested question and material subpart has a scoped answer, evidence basis or explicit unknown, freshness limits and accountable next owner.
- Each relied-upon artifact is real and revision/date-bound; policy, operation and third-party assurance claims remain distinct.
- Positive case: a policy and one review record support only the evidenced service/period; missing quarterly coverage cannot become an unqualified yes.
- Negative case: “are you SOC 2 certified?” cannot become yes because a cloud provider has a report; preserve the question, explain available evidence and route assurance wording to the actual compliance owner.
- Authority case: an available confidential audit report remains withheld until recipient-specific disclosure authority is established; a drafted answer is not an approved attestation.

These cases define expected outcomes, not claims that an audit, procurement submission or external integration has been exercised.

## Stop and handoff

Stop the affected conclusion when scope, current proof or accountable authority is absent; finish independent supported rows and report exact blockers. Stop disclosure/submission on missing recipient authority, unacceptable exposure or requested unsupported attestation. Do not collect production payloads, install controls, change policies or create promises to close a questionnaire gap.

Route control-design gaps to the actual security/control owner and threat-model workflow, permission questions to license dossier, and legal/assurance/contract language to the designated qualified owner. Record proposed remediation without committing dates, service levels, indemnities or future compliance. Changes to artifact revision, service scope, question wording, recipient or validity period require scoped reconsideration before reuse; previous approval is not a reusable blanket grant.
