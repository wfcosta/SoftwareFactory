---
name: private-registry-access-review
description: Review exact private registry namespace, principal and immutable revision access through authentic native RBAC evidence, separating discovery, read, publish and administration without treating private Git access as registry authorization.
---

# Private registry access review

## Role

Assess the accepted access decisions for one existing private distribution channel. This is an agent review and existing-native handoff procedure, not a registry, authentication client, RBAC implementation or permission grant. A private Git repository, catalog, archive and native package registry are different distribution surfaces; identify the actual one rather than relabeling Git privacy as registry RBAC.

Follow the [worker contract](../../agents/WORKER_CONTRACT.md), [candidate evidence](../../state/candidate-contract.md), [configuration](../../state/config-contract.md) and [environment](../../state/environment-contract.md) contracts. Reuse [capability distribution](../../docs/hosts/capability-distribution.md), [plugin acceptance](../plugin-acceptance/SKILL.md), [authorization review](../authorization-review/SKILL.md), [license dossier](../license-dossier/SKILL.md) and [curation authority](../skill-curation-authority/SKILL.md). [Release](../release/SKILL.md) owns actual artifact publication.

Direct no-write questions return chat from supplied or already authorized evidence without jobs, files, account discovery or native calls. A dispatch writes only its assigned owned Markdown report. Native access observations or permission changes require a separately authorized existing operator/tool and receipts; this review starts none.

## Context

Freeze the accepted question and finite registry/package/revision set, expected allow/deny decisions and authentic product/security/distribution owner sources. Obtain:

- Exact registry product, endpoint, supported version or service documentation date, tenant/account/organization, namespace, package kind/name and immutable package version/content digest. Keep repository source revision and package bytes separate; mutable names are not exact revision proof.
- Principal type and nonsecret native identity: person, team, service/workload or repository workflow; current membership, organization/SSO restrictions, delegation, credential reference/type/expiry and observation time. Never collect credential values or infer effective identity from a local context label.
- Actual package visibility, inherited versus granular ACL mode, namespace membership, package roles, workflow access and relevant account restrictions. Include native deny/precedence and revocation rules only where the exact provider documents them.
- Distinct requested actions: discover/list metadata, read/download exact content, publish/create version, overwrite/alias update, delete and administer/grant. A grant for one row does not cover the others.
- Accepted limits for namespaces, principals, versions, decision rows, pages, requests, bytes, observation age, elapsed time and retention; permitted evidence audience and recovery owner. Bounds must cover the whole accepted set. Missing bounds block new observations, not safe analysis of existing evidence.

## Task

### 1. Establish what actually controls access

1. Bind source, package and installed bundle identities separately. Read the real provider's supported RBAC/authentication documentation and retained native ACL/identity receipts for this endpoint. If the supplied channel is only private Git, report Git access evidence and registry capability UNKNOWN/not established; do not invent a registry feature.
2. Determine whether this registry/package inherits repository permissions, has separate package ACLs, or combines scopes. Record the real inheritance setting and any overrides; a linked repository alone does not establish inheritance or workflow access.
3. Separate authentication, account entitlement, credential scopes, native effective permissions, organizational approval and component redistribution rights. Possessing a token or being a repository administrator proves none of the remaining layers by itself. Resolve missing normative decisions with the actual owner, not observed permissiveness.

### 2. Complete the access matrix

Use report-local rows, not a new registry or schema:

| Principal / current identity and membership | Exact endpoint/account/namespace/package/revision | Action and accepted decision/source | Native role/scope/inheritance/control | Expected observable result | Actual dated evidence and coverage | MET / NOT_MET / BLOCKED; next owner |
| --- | --- | --- | --- | --- | --- | --- |

1. Include every requested principal/action/revision, splitting read from publish and publish from delete/admin. Identify metadata leakage in discovery/list/search separately from artifact download.
2. Map native control to the exact subject/resource scope and current settings, including workflow/repository identity where applicable. Scope names are provider-specific; do not translate a generic role into invented API fields.
3. Consume authentic retained allow/deny and intended-reader retrieval evidence when provided. An authorized reader must retrieve the exact permitted immutable revision; a denied control must establish the accepted refusal and absence of the forbidden effect within the measured scope. A 404, empty catalog, login success or successful public-package pull alone cannot prove private access denial/allowance.
4. Include required lifecycle cases: removed membership, expired/revoked credential or changed package ACL, and the accepted propagation window. Old successful access is historical, not current authorization. Missing current native proof leaves those runtime rows BLOCKED; no account enumeration or access probes are authorized here.
5. If new evidence is necessary, hand off the exact bounded principal/resource/action cases to the existing authorized operator, with approved synthetic/private fixture, read/publish rights, supported native tool, current identity, limits and recovery. Use create-only fixture publication only where separately granted; never mutate ACLs or publish production content as an access test.

### 3. Reconcile and decide

Unexpected access or disclosure is NOT_MET and routes to the security/distribution owner; stop dependent loading/publication and retain minimal safe receipts. Unknown identity, inheritance, required denial or revocation proof is BLOCKED, not a negative permission result. Finish independently safe rows.

After an ambiguous publish/access-control change, preserve original operation identity, stop/fence the acting owner and require actual native state/operation readback before retry or transfer. Do not broaden credentials, make a package public, add a team or overwrite a version to repair evidence. Such changes need their own authentic grant. Readback of a newly changed ACL must identify the actual setting and affected subject; a review table is not enforcement or rollback.

## Constraints

No commands, credential discovery, host enablement, registry calls, installs, publication or access changes occur under this review. Matching digests establish content correspondence, not publisher authenticity, entitlement or authorization. Access approval does not grant installation, tool invocation or native effects. Preserve required independent checks/reviews and existing canonical records.

Primary reference, retrieved 2026-11-09: [GitHub Packages permissions](https://docs.github.com/en/packages/learn-github-packages/about-permissions-for-github-packages), a live unversioned service document, not installed capability proof. It distinguishes user/organization granular permissions from repository-scoped permissions, separate read/write/admin package roles, credential scopes and workflow access. Its rules are not universal registry rules; use the actual registry/version contract and current native observations. Do not infer that every private GitHub repository supplies package RBAC.

## Format

Use the [response template](../../templates/response-template.md) or no-write chat. Return exact accepted scope/identities, primary source qualification, full access matrix, intended versus effective versus actually exercised permissions, rights/curation references, stale/unread coverage, original criterion/finding outcomes, actual receipts and intended-reader retrieval/ACL/retention evidence. Name each blocked effect, unchanged safe state, next owner and invalidation condition. Actor/membership, scope/credential, ACL/inheritance, version/bytes, provider contract or observation expiry changes invalidate affected reliance. Preserve the executing role's actual verdict; review completeness is not native-access acceptance.

### Parent consumer cases — illustrative, NOT RUN

- A supplied package ACL receipt and independent exact-version read receipt support one named reader; the same principal lacks a required publish receipt. Read can be evidenced while publish remains BLOCKED, without probing either.
- A private repository and Git clone receipt, but no package namespace/ACL evidence, establish only source access. Reject the claimed registry-RBAC proof and name the missing native registry owner/receipts.
- A retained native denial after membership removal supports only its observed propagation window. An old successful pull or a token scope alone cannot support current access; no credential escalation is attempted.
