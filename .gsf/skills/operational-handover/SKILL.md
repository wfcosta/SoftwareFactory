---
name: operational-handover
description: Prepare and assess a bounded operational transfer to an actual receiving team using revision-bound service evidence, finite runbook journeys, recipient teach-back and authentic acceptance rather than document upload alone.
---

# Operational handover

## When to use

Use when a named receiving team must take responsibility for a defined service or operational scope, such as taking over routine support after a project delivery. Establish what the team can actually locate, explain and safely observe, what remains planned, and who accepts the resulting responsibility.

Use [technical writing](../technical-writing/SKILL.md) when the task is only improving a runbook. Use [incident response](../incident-response/SKILL.md) for an active incident and its immediate accountable transfer; this broader readiness workflow must not delay urgent response. Use [release](../release/SKILL.md) for artifact publication, deployment and recovery effects. An operational handover is neither deployment authority nor a declaration of service health.

Follow [GSF mode](../gsf-mode/SKILL.md) and the [worker contract](../../agents/WORKER_CONTRACT.md). A direct read-only request returns a draft in conversation; an authorized dispatch writes only its assigned report. This is a human/host-executed procedure, not a monitoring service, access provisioner, paging integration or automatic ownership scheduler.

## Inputs and bounds

- Actual sending and receiving teams, accountable people and authorized acceptance owner, proposed transfer boundary/time, exclusions and authentic scope/acceptance criteria.
- Service/environment identities and accepted operating bounds: covered functions/users/regions, support hours, SLO/recovery/data objectives where established, change authority and responsibility split.
- Real runbooks, architecture/dependency map, artifact/config/schema identities and provenance, service inventory, dashboards/alerts, incident/release records and relevant resource/cost ownership evidence.
- Known defects/risks, temporary mitigations, pending work and active operations; real escalation contacts, access/resource owners, approved evidence locations and disclosure restrictions.
- Recipient availability and existing permitted observation capabilities; agreed finite journeys, safe non-mutating observation limits and any required separate rehearsal evidence.

Resolve repository paths from its root and external resources from their authorized locators. Read current records before requesting missing facts. A team name, dashboard link, assigned ticket or credential does not establish receiving acknowledgment, accessible evidence or authority to operate.

## Procedure

1. **Freeze the transfer boundary.** Identify the exact service/environment and incoming responsibilities, exclusions, sending/receiving owners and proposed effective time. Reconcile the actual acceptance criteria and current responsibility split. Missing agreement is an explicit boundary gap, not permission to transfer everything or invent service objectives.
2. **Bind the packet to current evidence.** Record runbook/document revisions, source/build/artifact provenance, deployed/config/schema identities where evidenced, observation dates/windows and resource locators. Distinguish verified identity from a mutable label or owner assertion. A deployment receipt is not continuing health; stale or unavailable observations remain limited.
3. **Map resources and dependencies.** Identify actual compute/storage/queues, data stores, external services, quotas/capacity and cost/billing owners relevant to the bounded service. Include backup/restore evidence, supplier support/exit dependencies, retention and access restrictions where applicable. Unknown resource inventory or recovery proof is a named gap, not a presumed managed service.
4. **Map operational ownership and access.** For each journey identify the receiving operator, existing permission needed, real access owner, escalation route and fallback. Record recipient-confirmed access to authorized read surfaces without collecting secret values. Missing access becomes an owner-routed prerequisite; do not create accounts, grant roles, share credentials or treat the sender's access as the recipient's.
5. **Select the finite journeys below.** Agree concrete service-specific entry conditions, runbook revisions, expected evidence, stop points and acceptance criteria. Keep the list bounded; explain omitted journeys and uncovered risk. Distinguish a document review, recipient read-only walkthrough, isolated rehearsal and historical execution evidence; none substitutes silently for another.
6. **Walk through with the recipient.** Using actual available authorized surfaces, have the recipient locate the relevant evidence, describe the decision and identify who may act. Record what was observed and by whom, when, with what safe scope and result. No response, inaccessible evidence or a sender demonstration alone is not successful recipient performance.
7. **Obtain teach-back and reconcile gaps.** Ask the recipient to explain the service boundary, interpret a supplied symptom, find the applicable runbook, identify stop/escalation criteria and explain the recovery/change decision owner. Capture the substance and evidence locator, not just “training delivered.” Separate correct observed teach-back from assistance, mistakes, planned practice and unexercised actions; correct the packet or name the remaining blocker.
8. **Seek actual bounded acceptance.** Present observed results, exclusions, known risks, access gaps and proposed residual owners to the authorized receiving acceptance owner. Record an authentic explicit accepted/rejected/conditional/pending response bound to the exact packet revision, responsibility scope and effective time. Do not create a signature, infer assent from silence or rename an unmet mandatory criterion a residual risk.
9. **Close only the accepted transfer.** Reconcile active operations, temporary mitigations, pending changes and accountability with the real owners. Record what actually transfers and what remains with the sender; conditional acceptance must state the precise boundary and conditions. Without required acknowledgment or mandatory proof, report not accepted/blocked and retain or escalate existing accountability rather than declaring transfer complete.

## Finite operational journeys

| Journey | Recipient outcome and boundary |
| --- | --- |
| Routine service check | Locate authorized current service/dependency signals, explain accepted bounds, signal freshness and unknowns; no new probes, instrumentation or health claim from empty traffic |
| Alert and escalation | Interpret a supplied real sanitized alert/incident record, find severity/impact guidance and actual contact/fallback owners; planned paging is not a delivered or acknowledged escalation |
| Recovery decision | Locate applicable backup/restore or rollback/roll-forward evidence, explain data-loss/irreversibility and who authorizes recovery; no production failure, restore or failover drill |
| Change and maintenance | Locate approved change/release procedure, current artifact/config provenance, maintenance obligations and stop criteria; teach-back does not authorize deployment or alter a release gate |
| Access or dependency failure | Identify missing/expired access, supplier/resource ownership and authorized escalation without bypassing controls, creating accounts or exposing secrets |

A required execution-based readiness criterion needs separately authorized real evidence. This skill neither runs a production drill nor labels a read-only walkthrough as one; absent required proof blocks the corresponding acceptance.

## Output

Use technical writing for a concise packet in the assigned destination: accepted scope and responsibility map, evidence/resource inventory, runbook index, known-risk register, journey results and receiving decision. Keep restricted evidence in its authorized location and include only recipient-permitted references or excerpts.

| Record | Required content |
| --- | --- |
| Service and provenance | Exact boundary/environment, accepted service bounds, runbook/artifact/config/source revisions and dated observation limits |
| Resources and ownership | Real resource/dependency locators, sending/receiving/resource/access/escalation owners, permission status and cost/retention obligations |
| Journey and teach-back | Agreed criterion, recipient, runbook/evidence revision, observed action/explanation and timestamp, expected versus actual result, assisted/planned/unexercised distinctions |
| Risk and remaining work | Impact, current mitigation and limits, actual accountable owner, required evidence/action, agreed deadline if any and blocking versus accepted residual status |
| Acceptance and transfer | Authentic receiving response/locator/date, authorized owner, exact packet revision/scope/effective time, conditions/exclusions and retained sender responsibilities |

Proposed owners, dates and follow-ups remain proposed until actually acknowledged. A date schedules no automatic notification or ownership change. Changes to service state, runbooks, resources or packet scope invalidate affected evidence/acceptance and require scoped reconsideration.

## Acceptance and authority cases

- Every transferred responsibility has an actual receiving owner, accepted service boundary, usable evidence/runbook references and explicit resource/access/escalation ownership or a visible blocking gap.
- Every required journey has an honest recipient result and teach-back record; historical proof, current observation and future plans remain distinguishable. Required unavailable access or execution evidence cannot pass through documentation alone.
- Positive case: the recipient locates authorized signals, explains a real sanitized alert and recovery stop point, and the actual acceptance owner acknowledges the exact bounded packet; report only that accepted scope and its observed readiness limits.
- Negative case: uploading runbooks or marking training attended with no recipient teach-back/acknowledgment leaves handover pending. A sender's dashboard screenshot cannot prove recipient access or competence.
- Authority case: requests to create accounts, share secrets, trigger a production drill, silence alerts or deploy a release are outside this workflow. Route access to its actual owner and changes/incidents to their existing procedures without carrying over handover acceptance as action authority.

These cases define expected outcomes, not claims that a recipient session, handover, drill, production observation or integration was exercised.

## Stop and handoff

Stop affected acceptance on unclear scope, missing receiving authority, inaccessible required resources, unresolved mandatory criteria or unsafe evidence exposure; finish independent supported packet sections. State the precise missing prerequisite, current accountable owner and next human decision. An unaccepted transfer remains unaccepted even when the packet is complete.

Route supplier clause/exit uncertainty to [supplier contract triage](../supplier-contract-triage/SKILL.md), control-evidence questions to [procurement evidence](../procurement-evidence/SKILL.md), active impact to incident response and release effects to release. Preserve established change/recovery gates and resource ownership; do not abandon active operations, revoke access or delete resources to make a transfer look complete.
