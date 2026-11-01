---
name: authorization-review
description: "Review accepted subject/action/resource/tenant/context decisions across object, property and alternate paths; produce source-linked allow/deny rows, privilege findings and explicit runtime-proof gaps."
---

# Authorization review

## Scope and authority

Use this skill when permissions, tenant boundaries, ownership, delegated work or enforcement paths change. Follow [GSF mode](../gsf-mode/SKILL.md), the [worker contract](../../agents/WORKER_CONTRACT.md) and [domain review's security/privacy reference](../domain-review/references/security-privacy.md).

[Threat model](../threat-model/SKILL.md) owns broad asset/actor/flow and abuse-design analysis; this skill specializes the **accepted authorization decision matrix** and its enforcement evidence. [Reviewer-security](../../agents/reviewer-security.md) retains general security review, including authentication, injection, credentials and privacy. Neither this skill nor the conditional [authorization-reviewer](../../agents/authorization-reviewer.md) replaces that mandatory reviewer or adds a universal gate.

Choose the assigned stage: **design** specifies accepted decisions and proof requirements; **independent review** challenges candidate enforcement and existing evidence; **bounded proof** executes only separately assigned, authorized checks. A design conclusion is not runtime evidence. An author cannot independently review their own matrix or implementation.

For a direct read-only/no-write request, answer in conversation using already authorized source/evidence: no job initialization, files, requests, traffic, fixtures or evidence capture. Factory work writes only authorized dispatch evidence; the coordinator promotes shared reports. Attaching this file is sufficient to request its procedure, not to register a host command or grant execution authority.

## Inputs

Obtain the accepted permission requirements and accountable product/security owner, exact design/candidate and policy identities, supported subjects/roles and tenants, resource/property ownership, actions and contextual constraints. Read actual entry points, policy/configuration, enforcement code, prior findings and indexed proof; include service identities, delegated authority and relevant environment/configuration revisions.

For each intended decision recover an **accepted normative source**: exact specification/contract revision and section, or authentic owner decision with scope/date/locator. Implementation, existing tests, framework defaults and observed permissive behavior do not define intended policy. Missing or conflicting intent makes affected decisions unknown and blocks their evaluation; request the exact owner decision rather than inventing allow or deny rules.

## Procedure

### 1. Separate identity from permission

1. Bind scope, stage, candidate/design revision, policy, environment and evidence date. List changed permissions/paths and invalidated prior evidence; retain original finding IDs.
2. Identify where authentication establishes subject identity/session validity. Separately trace where authorization decides whether that subject may perform this action on this resource/property in this tenant and context. A successful login, valid token or administrator label alone proves no resource permission.
3. Record trusted sources for subject, role/entitlements, tenant and resource ownership. Trace request/header/body/query tenant selectors to validation against trusted identity; distinguish client claims from server-accepted facts. Include support/service identities and explicit delegation, not only interactive users.
4. Recover accepted context rules: resource state, ownership/membership, region or workflow constraints where applicable, expiry, permission changes and revocation window. If timing or precedence is unspecified, record that policy gap instead of choosing a convenient TTL.

### 2. Build independent decision rows

Use stable report-local row IDs, linked to the accepted impact/proof matrix rather than a new shared registry. Split rows when expected decision, subject capability, property, enforcement path or lifecycle state differs. Record justified scope exclusions; do not exempt an assigned criterion yourself.

| Row | Subject / identity state | Action | Resource / properties | Tenant / context | Accepted decision + normative source | Enforcement source | Expected observable result | Actual evidence / result / gap |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |

Populate every cell from inspected evidence, explicitly marking unknowns. Accepted decisions are allow/deny/unknown, not verdicts. Normative citations name exact revision/section or authentic decision locator; enforcement citations name candidate-bound file/line/symbol/configuration. Keep them separate even when implementation matches intent. Actual evidence names inspected source or indexed runtime receipt and whether observed, statically deduced, assumed or unrun; never fill an actual-result cell with an expected value.

For each applicable family include a legitimate allowed control and discriminating denied cases:

- **Horizontal:** same-role subjects with different owners/resources; tenant A versus tenant B; forged tenant selector and nested parent/child mismatch. Distinguish same-tenant ownership rules from cross-tenant isolation.
- **Vertical:** member versus administrator/support/service action, role transition and delegated scopes; resource creation or transfer cannot silently grant privileged fields or capabilities.
- **Object/property:** direct IDs and nested references, read/write field projection, hidden sensitive fields, mass assignment and immutable/owner/role/tenant properties. An object-level allow does not authorize every field.
- **Bulk/search/export:** mixed authorized/unauthorized batches, list/search/count/aggregation facets, pagination and export generation/retrieval. Recover accepted partial-versus-atomic behavior; inspect rows, totals, metadata and artifact access, not merely the HTTP status.
- **Background/alternate:** API versions, downloads, queue consumers, scheduled jobs, retries and delegated services. Trace actor/tenant/resource binding from enqueue through execution and output delivery; identify whose authority applies and when it must be re-evaluated under accepted policy.
- **Lifecycle/cache:** unauthenticated, expired/revoked session, removed membership, changed role/owner/tenant and stale permission/resource caches or indexes. Distinguish decision-cache keys, lifetime/invalidation and resource-data caching; prove accepted revocation timing rather than assuming token expiry is sufficient.

### 3. Trace enforcement and denial behavior

1. Follow each row from entry point to the actual read/write/effect and serialization. Identify policy decision and enforcement points, tenant-scoped queries, field filters and alternate paths; a gateway guard does not establish worker or database enforcement.
2. Inspect ordering and state changes: authorization must use the accepted identity/resource state at the required point, including changes between enqueue/check and effect. Report evidenced check/use gaps without executing a race exploit.
3. Inspect missing/invalid identity, absent resource, missing tenant/context, policy-service error/timeout and stale/unavailable cache paths. Compare fallback behavior to accepted denial/error rules; unknown/default behavior is not a demonstrated safe deny.
4. For denials inspect response body/status/headers, counts, error distinctions, redirects, logs, notifications, exports and durable side effects. Compare evidence disclosure and resource-existence leakage to accepted requirements; an error status alone does not prove no read, mutation or queued effect. Timing claims require appropriate authorized observations, not intuition.
5. Distinguish observed policy violations from unverified plausible bypasses. Cite exact reachable source paths and preconditions for static findings; do not claim a cross-tenant runtime breach from a diagram or clean scan.

### 4. Inspect or obtain bounded proof

Independently inspect available current evidence first. For each required runtime row, bind subject/tenant fixture identities, initial ownership/role state, input/action, expected decision, actual sanitized response and relevant durable state/output to exact candidate/configuration/environment and receipt. A same-tenant allow cannot establish cross-tenant denial; a unit stub or mocked policy decision cannot establish end-to-end enforcement.

Execution needs a separate explicit assignment, real supported tools, owned isolated synthetic resources, authorized identities/data handling, exact effect/target, bounded cases/traffic, abort conditions and recovery owner. Even reads can disclose data or trigger effects. Without these prerequisites, do not contact live endpoints, guess IDs, enumerate accounts, brute-force, exploit, replay queues or change permissions/caches. Live external/production penetration testing remains prohibited for the reviewer; route separately scoped proof through the coordinator.

When authorized proof is assigned, establish legitimate controls, execute the finite denied cases and lifecycle transitions, observe response plus relevant effects, then reconcile only owned disposable resources under cleanup authority. On unexpected disclosure/effect, stop affected execution, preserve minimal sanitized evidence and notify the coordinator/authorized incident owner; do not investigate further by expanding access.

Missing runtime capability/evidence leaves required runtime rows BLOCKED with the exact fixture/tool/receipt and owner needed. Finish safe static/design work, but never relabel an unrun row as passed. Candidate, permission policy, fixture state or material configuration changes invalidate affected evidence.

## Report and completion

Use the assigned response template and dispatch report. Include scope/stage/identities, normative sources and unresolved decisions, the populated matrix, path coverage/exclusions, source-versus-runtime distinctions, findings, original-finding reconciliation and one coverage row per assigned criterion. Each finding needs impacted row/accepted rule, severity and business harm, exact source/receipt, preconditions, proposed correction and verifiable resolution condition. Redact tokens, real personal records and sensitive payloads; index retrievable evidence with actual access/retention limits.

The conditional specialist uses `PASS`/`CHANGES`/`BLOCKED` at coordinator-promoted `review-authorization.md`; other assigned roles retain their accepted report/verdict binding. PASS applies only to the accepted stage and rows with required evidence complete. Demonstrated violations require CHANGES where supported; missing necessary policy/runtime proof requires BLOCKED. Preserve both defects and gaps if they coexist. Design PASS is not implemented enforcement, runtime isolation, security-review PASS or release authority.

## Bounded invocation exercise

Only when explicitly assigned, attach this skill and ask: “Review the accepted invoice permission contract for the identified candidate; return source-linked decision rows and distinguish design from runtime evidence. Do not execute requests.” Recover real accepted policy and source locators, map tenant A's permitted invoice read, tenant B's denied read, forbidden owner-field update, mixed-tenant bulk/search/export and queued export after membership removal as applicable. These are scenario candidates, not assumed product rules: missing accepted decisions remain unknown.

An independently authorized synthetic fixture may then supply finite runtime receipts for those rows. The reviewer must identify actual cross-tenant evidence when present, or name the missing required runtime proof and return BLOCKED for that stage. Exercise a missing-policy case too: the implementation's current allow behavior must never become the expected policy. Record actual outcomes only; this procedure's existence is not an executed exercise.
