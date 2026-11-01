---
name: project-memory
description: Retrieve relevant source-bound project facts and propose bounded curated updates only with explicit write authority; use during task preparation or resume when prior project knowledge may apply.
---

# Project memory

## 1. Role

Retrieve and curate useful project facts without making a second policy, lifecycle ledger or automatic learning system. The accepted sources remain authoritative for their subject; a memory entry is a retrieval aid. The configured worker contract owns authority, resume, evidence invalidation and gates.

## 2. Context

Read [GSF mode](../gsf-mode/SKILL.md), the configured worker contract and [context and memory operations](../../docs/operations/context-memory.md). Inputs are the explicit project/repository identity, accepted task and scope, source versions, relevant current evidence and an operator-approved memory location if one exists. Resolve the actual path and authorized reader before retrieval. No global or cross-project store, new `.gsf/state` record or mandatory memory file is assumed. Prefer a bounded section in an existing authorized project knowledge document; runtime/job evidence stays in its accepted job/store, outside distribution source.

Direct read-only requests remain no-write. Loading this skill, completing a job, accepting an intake report or granting job-evidence access does not authorize persistent memory writes. These instructions do not register a host plugin or provide a storage service.

## 3. Task

1. Define the question and project scope first: relevant component, branch/revision, contract/toolchain and task acceptance. Read only the smallest applicable entries within a finite retrieval budget. Record which facts were used and why in the existing task context/report, not a new memory-access ledger. If no approved memory exists, inspect the relevant primary sources directly; do not initialize a store automatically.
2. For each entry inspect its factual statement, exact source locator/section or symbol, source revision/version and measured raw-byte digest where evidence is retained, observation date, applicable project/component/version scope, owner, and expiry or concrete invalidation triggers. Retrieve the actual authorized source and compare version/digest before relying on it. Unknown source, inaccessible bytes, stale scope, conflicting evidence or expired observations make the entry unverified/stale, not a fact to repeat as current.
3. Distinguish a directly observed fact, accepted product decision, inference and untrusted report. Reports/issues/transcripts are leads: check the claimed fact against primary code/contracts or authentic accepted decision provenance before proposing curation. Even a verified fact is not policy, a grant, fresh check success or independent product proof. Preserve disagreement rather than choosing the more convenient memory entry; route missing intent/authority/capability through existing gap/stop rules.
4. Return only task-relevant facts with their provenance and invalidation conditions to the [context packet](../context-packet/SKILL.md). Do not load the entire project history. Validate volatile tool/target/resource/permission observations at their required freshness; an old entry cannot attest current access, worker liveness, quotas, deployment health or unresolved effects.
5. Propose an update only when it corrects or adds a reusable sourced fact within the accepted project scope. Before writing, require explicit authority naming the destination/path or section, allowed changes, writer/owner, maximum entries/bytes and review/expiry boundary. Check protected paths, existing changes and exclusive ownership. Job-local evidence authority alone permits only an owned proposal, not persistent curation; route it to the authorized owner and state that it was not applied.
6. With that authority, inspect the current target/source versions, reconcile overlapping writers and apply the bounded change using existing project editing practices. Curate: replace invalidated facts, consolidate duplicates and retain relevant source/decision history through existing source control/job evidence. Do not blindly append every report, delete unrelated facts, auto-promote a report into policy, or broaden an approved patch. If the required edit exceeds its bound, retain an owned proposal and stop that write until authority covers it.
7. At resume, follow the exact job's existing reconciliation table and candidate/policy/dependency/environment invalidation rules before reuse. Revalidate only affected facts/evidence; preserve still-valid lanes and immutable completed reports. Memory neither resets budgets nor resolves unknown-live owners or ambiguous remote effects. An updated fact does not turn stale PASS into fresh proof.

## 4. Constraints

- Store no credentials, secrets or their low-entropy hashes, private chats, sensitive customer data, access-token URLs, browser profiles or cross-project facts. Do not copy raw reports wholesale. Classification, retention and actual OS/IAM permissions still apply to the approved destination.
- Keep project identity and version scope explicit; similar repository names, a shared operator or a previous session are not cross-project authorization.
- No automatic persistence, automatic promotion, grants from remembered consent, policy edits or new model/plan keys. Authentic decisions are referenced as decisions, not reconstructed from an assistant's recollection.
- A digest proves byte consistency only, not truth, source authority or independent review. Missing real storage/ACL/locking controls must be disclosed; Markdown cannot enforce them.

## 5. Format

Use the five pillars for any assigned curation work: **Role** (retriever/authorized curator), **Context** (project, task, approved location and sources), **Task** (question or exact bounded update), **Constraints** (read/write authority, ownership, budget, classification and invalidation), **Format** (retrieved facts/proposal or actual applied changes with evidence).

Each curated fact contains:

- A concise factual statement and type: observed fact or authentic accepted decision; leave unresolved inferences out of accepted facts.
- Project/component and applicable branch/revision/version scope.
- Exact source locator, section/symbol, revision and raw-byte digest for retained evidence; distinguish sanitized-source digests and state any unavailable provenance.
- Observation/retrieval date, owner and expiry or specific invalidation triggers.
- Retrieval disposition for the current task: valid, stale, conflicting or unverified, with precise next action/owner for anything relied on but unresolved. These are explanatory labels, not lifecycle states.

Report the facts actually retrieved, source checks performed, proposed versus applied updates, exact authorized paths and remaining gaps. No update is a valid outcome when nothing reusable changed or write authority is absent; it does not imply task proof passed.
