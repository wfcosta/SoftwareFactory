---
name: supply-chain-review
description: Review a bounded dependency, build and artifact graph against exact provenance and advisory claims, separating supported trust evidence from contradictions, unknowns and owned exceptions.
---

# Supply-chain review

## Scope and authority

Use for a provenance, dependency-source or artifact-trust assessment of a named product/candidate. Follow [GSF mode](../gsf-mode/SKILL.md), the [worker contract](../../agents/WORKER_CONTRACT.md), [candidate evidence contract](../../state/candidate-contract.md) and [supply-chain guidance](../domain-review/references/supply-chain.md). This procedure reviews evidence; [dependency-upgrade](../dependency-upgrade/SKILL.md) owns migration and resolver changes, and [release](../release/SKILL.md) owns publication/deployment. Do not duplicate their execution workflows.

A direct read-only/no-write assessment creates no job, files or evidence. In an authorized factory dispatch, write only assigned dispatch evidence/report; the coordinator owns routing, canonical reports and shared records. Review is not permission to remediate, register tools/plugins or introduce a new mandatory blanket gate. Preserve required security/code reviews and configured checks.

Default to supplied source and existing immutable receipts: never download artifacts/dependencies, install tooling/packages, execute package/build/hook/verifier code, generate signatures, publish, unpublish/yank or change registry aliases. Even an audit/metadata command may execute plugins or use credentials. Separately assigned observations or verification require explicit real effects, targets, access, tooling and isolation under the worker contract; missing capability is a gap, not permission to bootstrap it.

## Inputs and review stage

- Exact accepted question and trust claims, candidate/policy or immutable reviewed source identity, owned report location, finite package/workspace/platform/artifact set, graph boundary and excluded surfaces with rationale.
- **Design** or **runtime-evidence** scope: design reviews proposed controls and their acceptance predicates; runtime-evidence reviews actual resolved/built/published or deployed objects using existing receipts. Design PASS never attests a future artifact, executed verifier or deployed identity.
- Manifests/locks/resolver configuration, registry/mirror routing, source and build definitions, transitive graph, base images/toolchains, input/output manifests, artifact identities and original evidence with retrieval/ACL/retention basis.
- Accepted trust policy: required signature/attestation kinds, trusted roots, expected publisher/builder identity and issuer, source repository/ref constraints, permitted build workflow and advisory/exception rules. Discover existing policy; do not invent universal signing or provenance requirements.
- Actual available evidence tools/versions and permitted observations, advisory database/source timestamp, SBOM generation scope and named security/release/exception owners. Never request secret values.

## Procedure

### 1. Freeze exact claims and the bounded graph

1. Translate each accepted question into a falsifiable claim: for example, “archive digest D was built by workflow W from source commit C using lock L,” not “package is secure.” Give each claim an ID, required evidence and review stage. Separate content identity, publisher/builder authenticity, known vulnerability applicability and deployed identity into different claims.
2. Inventory nodes and edges from declared dependency through resolution, transitives, install/build inputs, builder and output to the reviewed distribution object. Record node identity, source locator and edge evidence; include architecture/OS/optional variants actually in scope. Mark omitted, unresolved or dynamically fetched edges explicitly. A bounded graph is not a claim of complete organization-wide inventory.
3. Bind each artifact to exact name/version/media type and digest algorithm/value over the identified bytes. Distinguish archive, extracted directory, OCI index, selected platform manifest, config and layer identities; a tag, local image ID or source-directory hash cannot substitute for distribution bytes. Preserve mappings where a registry transforms content; unexplained mappings stay unknown or contradicted.

### 2. Trace resolution and build inputs

1. Compare manifest constraints, actual lock entries, resolver/tool versions and frozen-install semantics. Trace workspace/path/git/vendor references, overrides, peers, optional/platform dependencies and authoritative lock scopes. Determine whether the evidence describes intended resolution, an observed resolved graph or actual build inputs; those are not interchangeable.
2. Inspect effective registry/index/mirror routing, scoped configuration and source overrides. Match exact package namespace/name/version, registry endpoint and observed integrity/source to the accepted source policy. Include mutable git refs, redirects, caches and dependency-confusion/typosquat or ownership-change evidence where relevant. A familiar name or configured URL alone does not prove the responding publisher.
3. Follow transitive install hooks, native compilation, postinstall downloads, code generation, CI actions/plugins/reusable workflows, base images and toolchains. Trace their pins, fetched bytes, credential/network access and influence on outputs. Lockfiles and hooks-disabled receipts cannot establish the identities or behavior of separately fetched or hook-generated content.
4. Check source commit/candidate, lock/configuration, behavior-affecting environment and secret-version references, toolchain/builder, cache provenance and complete input/output relationships against original build receipts. Distinguish an immutable input from an unresolved mutable reference. Do not rebuild, regenerate locks or execute a hook to fill an evidence gap during this review.

### 3. Assess authenticity and attestations

1. Evaluate digest equality only as content identity against an independently trusted reference. A hash stored beside attacker-controlled bytes does not authenticate either; **hash-only evidence is never publisher proof**. State who supplied the expected digest and why that reference is trusted.
2. Where signatures are required or claimed, inspect original supported-verifier receipts and exact verified bytes/subject digest. Record verifier/version/options, trust-policy revision/root, signer key or certificate identity, exact expected identity and issuer, observed identity/issuer, validity and policy-required revocation/freshness/transparency evidence. Cryptographic validity from an arbitrary key, permissive identity pattern or unrelated issuer does not satisfy the expected publisher/builder claim.
3. For each attestation, identify format/predicate type/version, signed envelope and subject digest, authenticated signer, expected builder ID, invocation/workflow/source identity and materials/input/output bindings. Check that the signer is authorized to assert that builder and that the predicate establishes this exact claim; a signed SBOM is not build provenance, and an attestation for a neighboring version is not evidence for this digest.
4. Examine untrusted contribution-to-privileged-build paths, workflow/action pins, artifact/caching substitution, approval separation and publication/signing credential exposure. A successful CI badge or self-reported builder string does not prove protected execution. Label unsupported isolation/hermeticity/reproducibility claims unknown; signatures establish attributable statements, not their universal truth or safe content.

### 4. Assess inventory, advisories and exceptions

1. Bind each SBOM to its actual subject digest, format/tool/version, creation time, generation phase and component identifiers/relationships. Reconcile it with locks, observed inputs and outputs; document missing bundled/vendored/native/optional/runtime-loaded components and platform coverage. Presence of an SBOM does not establish completeness, authenticity, deployment or vulnerability absence.
2. For each relevant advisory, retain authentic advisory ID/URL/revision, retrieval time, affected ecosystem/package/range and actual resolved component/source. Inspect platform, configuration, build/runtime presence, reachability and exploit prerequisites. Classify applicability as affected, not affected or unknown with exact evidence; scanner absence or an unexecuted call path alone is not proof of non-applicability.
3. Record scanner/version/database timestamp, scan subject digest and exclusions when consuming a scan. Separate “no matching known advisory in this scope at this time” from “no vulnerabilities.” Explain conflicting feed/version matches; missing advisory freshness or unresolved version mapping cannot become a clean result.
4. Inspect accepted exceptions for authentic accountable owner/approval source, exact artifact/component/advisory/claim scope, rationale, compensating controls, expiry/review trigger and remediation owner. Missing, expired or mismatched approval is not an exception. An exception may accept a scoped risk under policy; it never changes an affected component to unaffected, makes a false trust claim true or waives unrelated mandatory reviews.

### 5. Classify claims and review adverse boundaries

Use this report-local table; it is not a new state schema or gate:

| Claim / stage / subject | Expected basis | Exact evidence and observation | Status | Gap or correction / owner |
| --- | --- | --- | --- | --- |
| One falsifiable claim per row | Accepted policy/criterion and expected identity | Source path/line or immutable receipt/URL, digest, time and actual value | supported / contradicted / unknown | Precise next action and accountable owner |

- **supported:** authentic, current, retrievable evidence establishes this exact scoped claim; list residual limits. **contradicted:** observed evidence conflicts with it. **unknown:** missing, stale, ambiguous, inaccessible or unexercised evidence prevents a conclusion. Do not collapse unknown into supported or classify “no signature exists” as a defect unless required or falsely claimed.
- Inspect the relevant negative cases from source and receipts: changed artifact with old attestation; valid signature from wrong issuer/builder; lock integrity with a hook fetching mutable input; SBOM for another platform/digest; stale scan or expired exception; deployed tag resolving differently from reviewed bytes. Record observed rejection/defect versus merely proposed behavior. Runtime rejection proof needs actual assigned receipts, not a prose scenario or simulated PASS.
- Artifact authenticity, vulnerability absence and deployed identity remain independent. A trusted signed vulnerable artifact is authentic but affected; clean scan results do not authenticate its publisher. Deployment claims require authoritative exact target/running-digest/configuration observations via existing release evidence, not a registry signature or mutable tag. Do not demand future deployment receipts for a pre-deployment design/readiness claim.

## Outcome and handoff

Return reviewed boundary/stage, graph identities and exclusions, claim table, trust policy and original verifier/attestation evidence, SBOM limits, advisory applicability, accepted exception owners/expiry and separate material findings versus suggestions. Cite exact source revisions/lines and indexed immutable receipts with raw digest, capture/retrieval time and source/task/dispatch origin; apply existing ACL/retention rules. Preserve sensitive registry/build details only in authorized evidence, never tokens or secret values.

When accepted routing adds independent [supply-chain-reviewer](../../agents/supply-chain-reviewer.md), bind that role to **`review-supply-chain.md`** through the existing plan. PASS/CHANGES/BLOCKED applies only to its accepted design or runtime-evidence scope; this optional specialist never replaces security review, checks, approval or release authority. Do not add it indiscriminately to every job.

A demonstrated material violation produces CHANGES; missing required identity, independence, trust evidence or capability produces BLOCKED unless a demonstrated defect already requires CHANGES. Retain both defects and gaps. PASS means the assigned review is complete with no unresolved material defects or required-proof gaps, not that every possible trust claim is supported or that the product is vulnerability-free. Optional unavailable facilities stay explicitly unknown without inventing a blanket requirement.

Finish all reachable safe inspection. Report exact blocked claim, stop class (`factory_bug`, `environment` or `product`), evidence attempted, missing prerequisite and responsible next owner. Preserve existing receipts; never silently replace them, suppress findings, accept your own exception or repair the graph. Any changed source, lock, builder/trust policy, artifact, advisory basis or expired exception invalidates affected conclusions and requires scoped re-review.
