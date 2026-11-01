---
name: cache-correctness-review
description: "Review accepted cache isolation, freshness and invalidation contracts against source and bounded read/write timelines; distinguish static conflicts, exercised results and missing proof."
---

# Cache correctness review

## Scope and authority

Use when cached values, negative entries, keys, scope, refresh or invalidation can change consumer-visible correctness. This specializes [domain review](../domain-review/SKILL.md) and its [architecture failure-propagation clause](../domain-review/references/architecture-quality.md#sequence-and-decisions); it does not replace architecture, API or asynchronous-delivery review. Retain applicable [authorization review](../authorization-review/SKILL.md), mandatory product/code/security reviews and accepted policy under the [worker contract](../../agents/WORKER_CONTRACT.md).

Choose the assigned stage: **design** defines accepted invariants and proof needs; **review** inspects candidate source and existing evidence; **bounded proof** executes only explicitly assigned checks. Design or static conclusions do not prove runtime behavior or authorize release.

For direct read-only/no-write requests, answer in chat from authorized supplied source/evidence: no job initialization, files, fixtures, requests or evidence capture. Attachment requests this procedure, not host registration or execution permission. Factory reports stay within assigned ownership.

## Inputs and accepted intent

Read the exact candidate/design and relevant configuration identities, finite cache paths and layers, source-of-truth/read/write owners, prior findings and retrievable sanitized evidence. Identify process-local, shared service, CDN and browser scopes, including intermediate response caches and tenant partitions actually present.

Recover the accepted normative source for isolation, representation, consistency, freshness, negative-result lifetime, stale-on-error and permission-revocation timing: exact contract/specification revision and section or authentic scoped owner decision. Code, existing tests, cache defaults and observed behavior are implementation evidence, not accepted intent. Missing or conflicting semantics leave affected expectations unknown; request the owner's decision rather than choosing a convenient TTL or failure policy.

## Procedure

### 1. Map values, keys and scope

1. Enumerate the bounded reads, writes, fills, refreshes, evictions and invalidation producers/consumers affecting the assigned paths. Trace actual key construction, namespace/partition, cache selection, lookup and response serialization; distinguish a cache miss from a cached empty/not-found/denied/error entry.
2. For each response-varying dimension inspect **tenant, actor, permission state, projection/fields, locale and schema/API/data version**, plus product-specific selectors. Show where the effective key or proven scope separates it, or where a trusted post-hit check safely enforces the accepted result. Do not mandate every dimension in every key when the value does not vary or isolation is established elsewhere.
3. Compare positive and negative entries: payload/projection, metadata, expiry, creation-after-not-found, deletion, permission change and error caching. A prior absence or denial must not silently become permanent under refresh or violate the accepted visibility window.
4. Trace reuse across process/shared/CDN/browser boundaries, response headers and intermediary key variation where applicable. Inspect private/sensitive representations, shared storage eligibility, downstream retention and authorization on hits; an origin-only fix does not establish downstream isolation or permission-revocation behavior.

### 2. Reconstruct consistency and invalidation

1. State the accepted consistency/read-after-write and stale-on-error contract per path, including which actors may see which version until what sourced boundary. Distinguish intentional bounded staleness from forbidden stale permission/private data. Missing bounds are unknown, not permission for indefinite stale serving.
2. Draw ordered timelines for source read, source commit, cache fill/publish, invalidation issue/delivery/application, refresh and consumer response. Include concurrent readers/writers, delayed/duplicate/reordered invalidations and failure between commit and invalidation where the inspected design allows them. Follow cross-process or asynchronous propagation through the existing domain owner rather than inventing a new delivery protocol.
3. Challenge a fill started before a write that publishes after invalidation, old refresh overwriting newer data, delete/recreate resurrection, and permission revocation racing a hit or refresh. State reachable ordering and preconditions from source; mark unavailable scheduling/propagation observations unknown rather than claiming a reproduced race.
4. Inspect existing version comparisons, generation tokens, conditional writes or fences if present, including where they are checked and whether all publishers obey them. Do not prescribe adding a version/fence or a cache product without an evidenced unmet invariant and accepted design decision.
5. Derive any claimed staleness bound from the full read/write/refresh timeline and all serving layers. **TTL alone is not proof of a bound**: a delayed fill or repeated refresh may republish old data and restart expiry. Cache hit rate, latency improvements and successful invalidation calls are not correctness proof.

### 3. Record discriminating evidence

Use report-local rows linked to the accepted impact/proof matrix, not a new shared registry:

| Row / path / layer | Accepted invariant + normative source | Value or negative entry / varying dimensions / effective key and scope | Ordered timeline and preconditions | Expected observable result | Inspected source or actual receipt | Finding / gap |
| --- | --- | --- | --- | --- | --- | --- |

Keep expected and actual results separate. Cite exact candidate-bound file/line/symbol/configuration for static deductions; cite actual candidate/configuration/environment, synthetic identities, ordering observations and sanitized responses for exercised results. A plausible race is a hypothesis unless its reachable source ordering is evidenced; even an evidenced static conflict is not a claim of a live breach.

Retain only the bounded source excerpts and read/write timeline needed to establish each finding, with immutable source identity, locators and actual retrieval/access/retention limits. Do not copy credentials, real personal payloads or production cache dumps. Candidate, key/configuration, permission policy or material environment changes invalidate affected evidence.

### 4. Respect execution boundaries

Inspect current evidence first. No implicit external calls, cache installation/configuration, flush, disable, reset, traffic replay, production probe or experiment is authorized by this review. Missing required runtime proof stays BLOCKED while safe static work continues.

Execution requires a separate scoped assignment with supported tools, exact effect/target, exclusively owned isolated synthetic resources/identities, finite cases and ordering controls, bounds, abort conditions and cleanup/recovery owner. Exercise only those cases; stop affected execution on unexpected disclosure or unknown ownership, preserve minimal sanitized evidence and route through the coordinator. Cleanup touches only authorized disposable resources, never shared caches or diagnostics.

## Report and completion

Return the assigned role's existing report/verdict binding: scope/stage/identities, normative sources, populated rows, positive/negative and layer coverage, original finding reconciliation, findings with reachable preconditions and correction acceptance, required proof gaps and one coverage row per assigned criterion. Demonstrated conflicts require CHANGES where supported; missing necessary intent/proof requires BLOCKED. Preserve both when they coexist; static/design acceptance cannot satisfy required runtime proof or replace mandatory reviews.

## Bounded invocation examples

- **Static isolation conflict:** supply an accepted tenant-separated invoice contract, synthetic tenant A/B records with the same invoice ID but different permitted outputs, and complete source showing both reach the same shared namespace under `invoice:{id}` with no tenant partition or post-hit isolation. A no-write review reports the evidenced key/scope conflict and discriminating expected outputs; it does not claim requests ran or a live tenant breach. If partitioning is uninspected, report that gap instead of asserting exposure.
- **Freshness conflict:** supply an accepted post-write visibility bound and source permitting a pre-write read to publish after commit/invalidation and restart expiry. Reconstruct that timeline, compare it to the accepted bound and report the supported conflict or exact missing timing proof; a high hit rate does not resolve it. Any synthetic execution of the ordering needs the separate assignment above.
