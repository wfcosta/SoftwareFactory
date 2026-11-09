---
name: task-secret-scope
description: Bind one task to minimum necessary native credential scope and lifetime using secret-free identity and grant receipts, with separate provisioning authority, revocation and ambiguous-use reconciliation.
---

# Task secret scope

## Role

Review or hand off a task-only credential requirement without ever handling credential values. Produce the minimum subject/action/resource/tenant/lifetime decision and a safe **scope receipt** from actual existing identity controls. This procedure is not a vault, credential issuer, login flow, environment injector or permission grant.

[Authorization review](../authorization-review/SKILL.md) owns normative decisions; [privacy request](../privacy-request/SKILL.md) owns personal-data collection/export/deletion; [data residency review](../data-residency-review/SKILL.md) owns routes and retained copies. Follow the [worker contract](../../agents/WORKER_CONTRACT.md), [environment](../../state/environment-contract.md) and [candidate evidence](../../state/candidate-contract.md) contracts. Use the [response template](../../templates/response-template.md), not a new secret registry. Direct questions return no-write chat; authorized dispatch writes only its assigned report.

## Context

Obtain exact task/dispatch/candidate/policy identities, authentic operator grant and decision source, actual intended actor/process/host/build, exact provider/endpoint/account/tenant/region/resource, required operations and denied operations, audience and finite work/deadline/cost boundaries. Bind a repository to its immutable identity where applicable, not just a name or URL. Record real credential-custodian, provider-permission owner, executor and recovery owner; missing owners remain unknown.

Request only existing sanitized issuer/provider metadata or an opaque custodian-issued reference. Do not search credential files, HOME, environment dumps, command history, browser profiles, chats or keyrings, and do not ask anyone to paste a token. Possession, authentication, plan entitlement and native access do not confer task authority.

The desired criterion is no reusable unrelated personal credential inherited by the task, and no capability beyond accepted task effects. A broader credential with a Markdown restriction is not minimum native scope. The native platform may be unable to issue task-only rights; record that gap and block dependent credentialed work instead of silently using a personal/admin identity.

## Task

### 1. Derive minimum rights before credential provisioning

For each actual operation fill a separate report-local row:

| Task operation / accepted source | Effective actor and provider/account/tenant/resource | Minimum native permission + explicit denied scope | Required lifetime/audience/delegation | Actual native restriction and safe receipt | Decision / gap / owner |
| --- | --- | --- | --- | --- | --- |
| One finite read/write/destructive operation | Exact observed binding, or unknown | Named provider-native scope/resource constraint, not a guessed generic permission | Expiry or single-use bound; allowed child/receiver, normally none | Issuer/configuration/identity metadata without values | accepted / failed / unknown |

1. Prefer already available noncredentialed/supplied evidence when it satisfies the authorized task; do not introduce authentication merely for discovery.
2. Separate read from write/admin/delete, metadata from payload retrieval, issue/PR publication from merge/deployment, and issuance from use/revocation. Include hooks, shell children, SDK/provider chains, MCP servers and browser/connector identities that could inherit credentials.
3. Determine actual provider-supported attenuation: resource-scoped identity, short-lived workload/session credential, action scope and audience binding where genuinely supported. Cite its exact native product/version/source and actual issuer receipt. Do not invent a TTL, single-use enforcement, token-exchange API or downscoping flag.
4. If a platform's smallest credential remains broader than required, preserve both the minimum available and minimum accepted scopes. Only authentic policy authority can decide an explicit risk exception; an exception does not make native scope narrow or satisfy a criterion that requires it.

### 2. Require separate native setup and non-inheritance evidence

The authorized custodian, not this reviewer, provisions or selects the exact credential through an existing approved system. Any real action needs a separate current grant, actual tool/version, finite target, private handling and receipt; no values pass through prompts, reports or this skill. Settings edits, sign-in, minting, permission changes and injection are not read-only review.

Before the credentialed executor starts, require sanitized evidence that:

- Effective authenticated principal, issuer, audience, account/tenant/resource and action permissions match the accepted rows; an authentication success proves identity only.
- The task's child environment/profile and credential-provider chain contain only approved references and required nonsecret runtime settings. Describe present/absent/unknown classes, never values, prefixes or hashes. An SDK overlay does not automatically remove inherited variables or config.
- Mounts, credential files, ambient cloud metadata identities, user sign-in, refresh agents, browser cookies, SSH agents and connector accounts cannot supply unrelated credentials through an alternate path, within the claimed native boundary. Where inspection is not authorized, obtain scoped custodian evidence, not a broad dump.
- Delivery to the executor uses the actual protected native injection/reference mechanism, not command-line arguments, source files, URLs or copied plaintext. File/secret visibility to hooks/children and network forwarding limits are explicit.
- Task expiry and revocation mechanism are real and observable. Credential expiry, refresh-token lifetime, child-process environment copies and provider authorization caches are distinct.

Use [SDK memory isolation](../sdk-memory-isolation/SKILL.md) for inherited personal SDK configuration; minimum credential scope alone does not isolate memory or instructions.

### 3. Record the scope receipt without secret material

Return only permitted metadata: authentic task/grant reference; issuer/provider and opaque credential-reference identifier if authorized; effective nonsecret principal or protected handle; exact granted actions/resources/audience; issuance/observation/expiry; native policy revision/receipt; custodian/executor; declared injection boundary; permitted children; denied/unknown alternate routes; revocation owner and safe state-read method. Record whether metadata was supplied, directly observed or unrun, plus its retrieval/access/retention basis.

Never record token values, partial masks, authentication headers, signed URLs, password lengths, secret-derived fingerprints or hashes. Do not claim a safe receipt exists when no actual provider/custodian metadata is available; use UNKNOWN and name the exact prerequisite. A report-local receipt is evidence, not a new authorization ledger.

### 4. Decide, stop and reconcile

- **Accepted for the bounded handoff:** accepted authority, exact current native identity/scope/lifetime/injection evidence and every required row agree. This permits only routing to the separately authorized executor, not invocation by the reviewer.
- **Failed:** observed broader scope, wrong tenant/audience, leaking injection, unapproved inheritance or use after revocation. Hold affected use and notify the authentic custodian/security owner with minimal safe evidence.
- **Unknown / BLOCKED:** missing scope/identity/expiry/containment proof or native downscoping capability. Complete safe analysis; do not test a credential by making a provider/model request.

At task completion, interruption, permission drift or expiry, the actual owner stops/fences known executors and uses separately authorized revoke/disable/cleanup controls. Read back provider validity and known refresh/child access at the accepted consistency window. A process exit, local variable removal or token-file deletion is not remote revocation, deletion of every copy or erasure. A failed/ambiguous issuance/use/revoke response is reconciled by opaque operation/resource identity before retry; do not mint duplicates, replay effects or reveal the value to investigate. Exposure goes through [incident response](../incident-response/SKILL.md); personal-data residue stays with the privacy owner.

## Constraints

No credential retrieval, minting, authentication probes, provider calls, secret handling, permission edits or environment mutation is authorized by reading this procedure. Existing native controls and grants must pre-exist or be separately supplied by their actual owners. Missing native enforcement blocks only dependent dispatch/delivery, not analysis. Recheck after task/target/principal/tool/config/grant/lifetime changes; preserve original receipts and findings.

## Format

Return exact scope and owner identities; full minimum-rights matrix; actual secret-free scope receipt or missing fields; proposed versus observed restriction and injection evidence; accepted/failed/unknown disposition per operation; held work, native prerequisite/recovery owner; actual actions versus NOT RUN; safe provenance, freshness, retrieval/ACL/retention and residual copies. Retain the existing role verdict and canonical report binding.

Manual cases, **illustrative NOT RUN**: task-scoped read identity with current native resource/expiry receipts supports only that read handoff; a personal admin token with a no-write prompt fails native minimum scope; an empty SDK environment overlay with documented merge semantics leaves inheritance unknown; wrong tenant/audience blocks use even if login succeeds; ambiguous revoke remains pending reconciliation rather than a false secret-free completion.
