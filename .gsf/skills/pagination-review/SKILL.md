---
name: pagination-review
description: Review paginated traversal against accepted ordering, consistency and cursor-scope promises using a finite matrix and retained consumer evidence; expose duplicates, omissions and unknown coverage without inventing snapshot guarantees.
---

# Pagination review

## Role and boundaries

Deepen the pagination step in [API evolution](../domain-review/references/api-evolution.md) under [domain-review](../domain-review/SKILL.md); those procedures retain API compatibility and domain ownership. This skill assesses traversal evidence, not general API design, architecture, asynchronous delivery or release readiness. Mandatory product/code/security and other applicable reviews remain unchanged.

Follow the [worker contract](../../agents/WORKER_CONTRACT.md) and [candidate](../../state/candidate-contract.md), [environment](../../state/environment-contract.md) and [release](../../state/release-contract.md) contracts where applicable. Review is evidence-only by default: inspect permitted sources and retained receipts, without calling endpoints or starting consumers. A direct no-write request returns the assessment in chat without jobs, files or factory evidence.

Runtime is opt-in only through an explicit scoped assignment naming actual tools, effects/target, owned resources, data, capture, bounds and recovery. Reading this skill grants no external calls, installation, configuration changes, reset or concurrency experiments. Missing runtime permission does not prevent static analysis; missing required runtime proof blocks that claim.

## Context and inputs

Read accepted requirements/decisions and deployed contract revisions, candidate identity, affected provider and consumer versions, tenant/authorization model, pagination implementation and existing sanitized traces. Resolve paths from the repository root or linked skill location. Record exact source clauses and revisions; source code or observed provider output alone cannot define accepted intent.

Obtain independently grounded expected membership/order, starting dataset or snapshot identity when relevant, and retained page requests/responses plus actual supported-consumer observations. Record which evidence is static, simulated, provider-only or exercised by a real consumer, with environment, capture time and provenance. Unknown semantics or missing evidence stays unknown, not an invented guarantee.

## Task

### 1. Freeze the accepted traversal contract

1. State snapshot versus live-view semantics and their exact scope/lifetime, including inserts, deletes, updates and permission changes between pages. No universal snapshot requirement applies; absence of a snapshot promise is not a defect by itself. Resolve conflicting or absent acceptance intent with its owner before judging dependent consistency claims.
2. Identify the stable total order: sort fields, direction, unique tie-breaker and applicable null/collation rules. Trace equal-key rows across boundaries; a sort field that can tie is not by itself a deterministic total order. State whether backward traversal reverses presentation or only selection, from the accepted contract.
3. Record offset/index origin or cursor boundary inclusivity, supported forward/backward movement, default/minimum/maximum page size and invalid-size behavior. Identify whether changing size within a traversal is supported; do not infer that offset and cursor modes share guarantees.
4. Map cursor binding to tenant/actor authorization, filter, sort/direction and contract version, plus size where promised. Identify accepted incompatible-reuse rejection, tampered/malformed and expired-token behavior, and deleted-boundary handling. Assess the actual opacity/validation design; do not invent signing, encryption, key rotation or other cursor cryptography requirements.
5. Specify empty initial results, empty intermediate pages, terminal indication and continuation rules, including full final pages and stale/repeated continuation. A short or empty page is terminal only if contracted. State accepted progress/termination behavior and consumer recovery rather than assuming another request is always safe.

### 2. Select a finite traversal matrix

Freeze only rows justified by accepted obligations and affected behavior; explain omitted dimensions without silently dropping required coverage. Each row has a finite page/request/time bound, not an unbounded “fetch until done.” Keep the matrix in the assigned report or direct chat, not a new support registry.

| Row field | Required content |
|---|---|
| Claim and identity | Accepted clause/revision, provider/consumer/candidate identities and promised snapshot/live model |
| Starting state and oracle | Tenant, independently sourced row identities/order or allowed live-view predicates, snapshot/fixture provenance; expected outcome distinct from provider output |
| Traversal | Offset/cursor, direction, sort/tie-breaker, filter/version, sizes, exact ordered requests and finite bounds |
| Boundary/change | Selected empty/terminal, equal-key, invalid/reused/expired cursor or inter-page mutation, with its timing and accepted expected result |
| Observation | Retained ordered page rows, continuation/error metadata, actual consumer actions and provenance/locators; static or NOT RUN where unexercised |
| Assessment | Expected versus observed predicate, PASS/FAIL/BLOCKED/NOT RUN, coverage limit and missing evidence/owner |

Select equal-sort-key rows spanning pages; supported offset/cursor/direction/size boundaries; tenant/filter/sort/version reuse and token failures; empty/terminal/continuation; and concurrent insertion/deletion or deleted boundary where relevant. Separate variants that change the oracle or consistency model. This is not a mandatory Cartesian product or permission to manufacture mutations.

### 3. Assess retained evidence, or explicitly authorized execution

1. Match receipts to the frozen provider, consumer, configuration, query scope and dataset/snapshot identities. Preserve sanitized request order, page row identities and order, boundary values, continuation/terminal signals and errors. Do not retain credentials or reusable sensitive cursors; redaction must still permit boundary and scope correlation.
2. Compare each page and the concatenated traversal with the independent oracle: boundary exclusivity/inclusivity, total order, allowed membership, size and continuation. Count repeated identities across pages and identify missing expected identities only where the accepted model establishes them. Provider counts or a golden file copied from its output cannot supply that oracle.
3. For snapshot promises, compare membership/order against that accepted snapshot, including equal-key boundaries. For live views, align observed inter-page inserts/deletes with the accepted rules and actual timing evidence; a shifted offset alone does not establish a violation when movement is allowed. Flag duplicates/omissions only against promised consistency, not a stronger imagined exactly-once traversal.
4. Inspect real consumer behavior: how it advances, handles empty/terminal/error pages, presents or persists rows and resumes if promised. Consumer deduplication can hide a provider duplicate; retain raw page rows and assess provider and consumer obligations separately. Provider transcripts alone do not prove a supported consumer parsed or completed the traversal.
5. If runtime was explicitly assigned, use only the frozen discovered recipe and authorized environment/resources; capture real invocation, identities, timing, effects and receipts for each row. Stop at bounds or lost authority/isolation; preserve partial evidence before separately authorized recovery. Do not reset data, change clocks to expire tokens or inject concurrent writes implicitly.
6. Mark a demonstrated violated predicate FAIL; required unavailable/unrun or inconclusive proof BLOCKED, with proposed executions NOT RUN. Static findings remain static; source inspection never establishes runtime rejection, absence of duplicates or actual consumer completion. Continue independent evidence assessment when one row is blocked.

## Format and completion

Return the existing assigned role/report format, or chat for no-write mode: accepted sources and consistency promises; finite matrix; exact inspected/exercised evidence; per-row expected/observed results; duplicate/omission counterexamples; consumer coverage; unknowns and precise missing prerequisites/owners. Use the role's existing verdict vocabulary, not a new approval authority. Invalidate dependent claims when accepted semantics, candidate, provider/consumer, query/configuration, dataset/snapshot or environment changes.

Report only bounded established claims. If authorized execution occurred, preserve receipts and report actual cleanup/recovery and residual ownership under its accepted recipe; assessment itself grants no repair, rollout or release permission.

### Illustrative acceptance input and outcome

Given an accepted immutable snapshot ordered by `(created_at, id)` ascending with independent expected identities `[A, B, C, D]`, retained size-two pages `[A, B]` then `[B, D]` violate exclusive continuation: report duplicate `B` and omitted `C`, citing both pages and the independent snapshot. Equal timestamps still use `id` to decide order. This example is not an execution receipt or a requirement that all APIs provide snapshots.

If the same pages come from an accepted live offset view with documented movement under inserts/deletes, require the actual mutation timeline and promised consumer predicates before calling the repeated row a consistency defect. Without that evidence, report the observed repetition and the blocked consistency claim; do not invent a snapshot, token-signing requirement or runtime result.
