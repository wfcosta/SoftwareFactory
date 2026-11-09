---
name: objective-audit-export
description: Answer an accepted audit question through bounded complete source, effect, decision and owner evidence, producing a privacy-qualified export and actual retrieval handoff without fabricated certification or hidden reasoning.
---

# Objective audit export

## Role

Assemble an evidence-grounded answer to a finite accepted audit question. This is an agent evidence/decision procedure, not an audit server, compliance certification, new event ledger or authorization to collect/export data. An evidence bundle documents observed facts and decisions; it does not certify organization-wide compliance or expose hidden chain-of-thought.

Follow the [worker contract](../../agents/WORKER_CONTRACT.md), [candidate evidence](../../state/candidate-contract.md), [configuration](../../state/config-contract.md) and [environment](../../state/environment-contract.md) contracts. Reuse [pre-export redaction](../pre-export-redaction/SKILL.md), [privacy request](../privacy-request/SKILL.md), [bounded evidence review](../bounded-evidence-review/SKILL.md) and [checkpoint coverage review](../checkpoint-coverage-review/SKILL.md). The coordinator owns canonical reports/indexes; the existing authorized custodian owns store and delivery controls.

Direct no-write questions return a source-qualified answer in chat without jobs, files or export. A dispatch writes only assigned owned Markdown evidence. Source access, derivative preparation, store upload, recipient delivery and retrieval are separately authorized effects; this procedure performs no provider/model/native calls or private-history searches.

## Context

Freeze the actual question, requester/auditor and recipient authority, purpose, accountable decision owner, accepted criteria, exact project/tenant/resource/time interval and cutoff, policy/candidate/environment identities, source systems and intended export scope/format. A request to audit a release is not permission to export all jobs or unrelated users' records.

Accept a finite source inventory and completeness basis: original source owners, exact immutable documents/events/artifacts/operation identities, expected sequence/ranges, approved resolver and known gaps. Obtain permitted classifications/fields, privacy and retention decisions, approved restricted staging/store/delivery route and existing read/hash/format/redaction tools. Do not discover sources by scanning private jobs/chats/history, HOME or credentials. Missing required sources stay missing.

Set finite limits for questions/criteria, sources, time range, pages/events, object count, per-object/aggregate bytes, export bytes, elapsed time, retries and observation freshness. Require enough bounds for the entire accepted export or obtain an authentic scope decision before claiming completeness. A sampled export must be explicitly accepted as a sample and must not be labeled complete coverage.

## Task

### 1. Convert the question into falsifiable evidence rows

For every accepted criterion and original finding, identify the expected fact and its independent source. Do not use implementation, an agent's self-report or a green label as the definition of the expected policy.

| Audit question / criterion and accepted scope | Expected predicate and normative source | Actual original source / immutable identity / cutoff | Actual effect and remote readback | Decision / authentic owner and authority | Evidence / gap / privacy disposition | MET / NOT_MET / BLOCKED; next owner |
| --- | --- | --- | --- | --- | --- | --- |

Separate what was requested, authorized, attempted, accepted by the native system, actually effective, read back and independently reviewed. Retain absent/unrun/unknown cases as distinct from observed zero or denied effect. Decisions cite the exact source and a concise rationale tied to observable facts, not invented private deliberation or an alleged hidden reasoning trace.

### 2. Reconstruct from actual original evidence

1. Read only the accepted sources with permitted existing tools. Preserve original source/job/task/dispatch/event/operation identity, version, UTC capture/retrieval times, raw byte digest where genuinely measured and authentic provenance. A supplied digest alone is a claim until compared under approved custody; matching digest is not authorship or approval.
2. Bind reported effects to native request/operation responses and exact resource readback, not a publication intent, local exit code or PR title. Bind approval to its genuine owner, exact reviewed identity, current authority and decision time; do not retrofit an approval to a past action.
3. Reconcile expected versus actual source coverage: all accepted objects, event/page ranges, ordering, duplicate/conflicting IDs, partial tails, excluded/private intervals and asynchronous/late sources. Distinguish complete-within-cutoff from future eventual records. Missing pages, unreachable originals or inconsistent clocks/identities block the affected claim; no synthesized event fills the gap.
4. Preserve adverse evidence, failure attempts, superseded decisions and outstanding owners relevant to the question. Do not export only the latest successful run or silently drop a failed effect to make a clean narrative. A compact summary links to the actual authoritative originals rather than substituting for them.
5. When disclosure rights prevent including required details, retain the protected authoritative locator and an authorized custodian's minimal attestation if available, clearly marked as such. If that basis cannot satisfy an accepted criterion, mark BLOCKED; privacy is not permission to claim omitted proof exists.

### 3. Prepare only the permitted derivative

Use the existing pre-export-redaction procedure before any outward channel. Include permitted source excerpts or references, decision/effect rows, exact exclusions, evidence index, original-versus-derivative relationship and full accepted coverage accounting. Omit secrets, credential-bearing URLs, unrelated personal records and private conversations. Do not invent access to or export hidden chain-of-thought; provide factual decision summaries and authentic observable decision records only.

A sanitized derivative has its own bytes/version/digest and transformation/omission record; never label it with the raw source digest. Bound rendered/packaged output including metadata, filenames, attachments and logs. If the accepted complete export exceeds the bound or native supported format/control is missing, withhold delivery and name the exact owner prerequisite; do not truncate silently or build an exporter/parser.

### 4. Establish readback, recipient access and retention

For a separately authorized delivery, the existing custodian must bind the exact reviewed derivative and authenticated recipient to approved store/version, current ACL, expiry/retention and supported native operation. Factory effects use existing publication intent/receipt; genuine maintenance uses its actual authorized journal, never invented factory lifecycle evidence.

Require actual stored-byte readback/hash comparison and intended-reader retrieval evidence using an existing authorized route. Upload accepted, message sent, delivery acknowledged and recipient retrieval are separate observations. A URL, local artifact or provider acceptance alone proves none of the later predicates. Retain receipts without signed secrets, verify retention through the audit period and state access limitations/revocation responsibility.

### 5. Reconcile ambiguity without rewriting history

On lost receipt, interrupted delivery, wrong audience, missing source or post-review byte drift, stop dependent export and preserve safe original observations. Reconcile exact remote object/operation and recipient state with the actual owner before retry; duplicate exports create additional copies. Revocation or replacement does not retract an already downloaded copy. Route exposure to the existing privacy/security owner. Corrections are new traceable derivatives linked to the old version, not altered historical events or fabricated missing receipts.

## Constraints

No new audit role/schema/ledger/gate, certification claim, hidden-reasoning extraction, new backend, source mutation, credential discovery or actual host/provider operation. A complete honest review may conclude NOT_MET/BLOCKED; it must not call missing required source/effect/retrieval evidence a completed audit export. All continuing storage and recipients remain under their real owners and retention decisions.

## Format

Use the [response template](../../templates/response-template.md) or no-write chat. Return the precise question/cutoff/identities, all criterion/evidence rows, bounded completeness reconciliation, actual effect/decision/owner provenance, original versus derivative custody, omissions/privacy limits, actual or NOT RUN store/delivery/retrieval, ACL/retention and residual copies. Name every failure/blocker and its exact next owner/action, preserving the executing role verdict. Source/cutoff, accepted question, authority/audience, bytes, transform, control or retention changes invalidate affected conclusions.

### Parent consumer cases — illustrative, NOT RUN

- For a supplied release question, intent and approval exist but no remote receipt/readback does. Reconstruct authorization accurately and mark the actual-publication criterion BLOCKED; do not invent an effect.
- A finite source interval has all expected pages except one and contains an adverse failed attempt. Preserve that attempt and missing-page row; reject a complete/export-passed claim even if the latest run succeeded.
- A sanitized export has genuine native stored-byte and authorized-reader retrieval receipts. Support only that exact version/audience/window; a request for hidden reasoning is answered with concise source-grounded decision rationale, not fabricated chain-of-thought or certification.
