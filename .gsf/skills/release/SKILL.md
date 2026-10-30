---
name: release
description: Publish an immutable verified artifact to an authorized registry, or deploy/apply/recover it on an exact environment with real rollout and health receipts; choose the accepted intent first.
disable-model-invocation: true
---

# Release

## Role and boundaries

Choose the accepted endpoint first: **A — artifact-publication-only** or **B — environment deploy/apply/recovery**. Publishing a package/image is not deployment or health. A deployment is an observed change of an exact artifact/configuration on an exact target, not a merge, tag, upload, successful command or green build. Follow [GSF mode](../gsf-mode/SKILL.md), the configured [worker contract](../../agents/WORKER_CONTRACT.md), [environment contract](../../state/environment-contract.md) and [candidate contract](../../state/candidate-contract.md). For B only, the [release contract](../../state/release-contract.md) owns deployment schema/lifecycle. This skill grants no deployment, merge, publication or emergency permission and cannot bypass required code/security reviews, configured checks, APPROVE or the current candidate/policy gate.

The coordinator alone writes canonical lifecycle records and `JOB_DIR/environment.md`; for B it also owns `JOB_DIR/release.md`. A uses existing `publication_intent`/`publication_receipt`, immutable dispatch reports and indexed build/artifact/target evidence, **not** `release.md`, a new statefile, event vocabulary or release action enum. Workers execute only assigned effects and return immutable indexed evidence within dispatch ownership. Direct read-only release questions write nothing. Use [shipping](../gsf-mode/playbooks/shipping.md) for forge merges; a shipped PR or published package is not a deployed service. Use [cloud-change](../cloud-change/SKILL.md) for infrastructure effects and [incident-response](../incident-response/SKILL.md) when impact requires incident coordination.

## Common inputs and authority

- Current accepted job/candidate/policy identities, source repository/commit, applicable build/check/review/approval evidence, scoped action authority and exact allowed target. Accepted policy/grants are resolved only through the worker contract. `autonomy.publish_pr`, merge/deploy booleans and possession of a credential do not authorize registry publication.
- Real immutable artifact identity and retrievable locator, build provenance, builder/toolchain and complete input/output identities. Retain authentic immutable source→build→artifact→checks/reviews/approval bindings with indexed retrieval/ACL/retention evidence. Do not rebuild after testing and call it the same artifact. A digest proves content identity, not publisher authenticity; required signature/provenance/trust verification uses the actual supported verifier and accepted trust policy.
- Installed supported transport/API/console and observed version/help, authenticated target/principal identity, actual operation/readback capability and one accountable resource owner with effective fencing/idempotency controls. Discover these through the product's real runbook and [host mapping](references/host-rollout.md); no universal publication/deployment command is assumed.
- Fresh exact policy/observed/grant match for provider/account/resource scope and endpoint/namespace as applicable, bound to frozen `environment.md` bytes and indexed evidence. Required `region` is a real string for regional providers; `null` only when authentic provider identity/documentation proves no region dimension. Unknown/missing identity is BLOCKED, never converted to null or invented `global`/`unknown`. Old frozen records are not reinterpreted. Credential/context/scope drift or expired observations requires fresh binding and affected approval.

Respect execution/time/cost limits and evidence retention/ACL requirements. `execution_limits.max_cost` is an integer in the configured currency's ISO 4217 minor units, or null for unknown/unmetered; null is not free. A required cap needs a real currency-exponent/meter-conversion receipt and observable enforcement, including billing lag. Unobservable mandatory bounds, missing required tools, identity, evidence or authorization block the affected effect. Do not infer a capability from a repository manifest or planned CI workflow. No secret values, credentials or low-entropy secret hashes belong in public evidence.

## 0. Select the accepted intent before host prerequisites

1. Read accepted scope and distinguish **verify-existing** from permission to publish/change. Select A when the endpoint is only an immutable package/image present and retrievable at the exact authorized registry identity. Select B for environment deploy, infrastructure apply, traffic/rollout change or deployment recovery. Record the branch and endpoint in existing spec/dispatch evidence; ambiguity blocks the affected effect until accepted scope resolves it.
2. Both branches require the common controls above. A does **not** require a deployment adapter, service owner, runtime config/schema, traffic control, health telemetry/window, rollback artifact or deployment permission. Their absence is not an A blocker. A still blocks on missing publication receiver/transport/authentication/authority, required evidence, immutable readback or safe reconciliation.
3. B requires all deployment-only prerequisites and all B steps below; it cannot use A's publication receipt to satisfy rollout/health. If both publication and deployment are accepted, complete A and independently gate B with the same proven immutable identity (including provider-normalized identity mapping). A success does not authorize B.

## A. Artifact-publication-only

### A1. Freeze registry identity, content and nondestructive scope

1. Discover the actual installed publication transport and supported version/help, selected endpoint and authentication mechanism through the product runbook. Obtain authenticated principal/account and exact registry host/API endpoint, namespace/organization/repository, package-or-image name and exact immutable version or content-addressed reference from authoritative provider responses. A local config URL, CLI context label, writable token or unauthenticated search result alone is not identity proof. Constrain credentials and transport so redirects, default registries, package hooks, implicit tag updates or config overrides cannot send content to a different target.
2. Match those observations to the accepted target allowlist and authentic action-specific registry publication grant. Bind endpoint/account/namespace/name/exact version/content digest, candidate/policy/build, current environment identity/expiry, allowed create-only effect and operation/idempotency lookup in indexed immutable dispatch evidence. Verify installed transport flags/API requests actually enforce that scope. If the tool necessarily moves an alias or runs other ungranted effects, select a supported constrained operation or BLOCK; do not silently broaden authority.
3. Resolve the exact bytes from the authorized immutable build output, independently hash and retrieve them, and verify required provenance/signatures and all current configured checks, code/security/applicable reviews and approval for that same artifact. Record the media type and provider's normalization rules before comparison:
   - For a package, bind exact package name/version and the registry's supported integrity algorithm over the actual published archive/content. A repack/recompression or generated metadata step creates a distinct output needing indexed build/provenance and affected proof; do not substitute a source-directory hash for published bytes.
   - For OCI, hash exact manifest/index bytes and retain media type, manifest/index digest, selected platform manifest relationships, config and every referenced layer digest/size. A local image ID or tar/archive digest is **not necessarily** the registry manifest digest. Verify any transport conversion/normalization with the real resulting manifest/blob bytes and provenance linking them to reviewed build outputs; block unexplained identity changes. A mutable tag is never sole identity; if the provider requires one, prove its exact version binding and any alias creation/movement is separately scoped.
4. Read the exact destination version/digest before any submission. If absent, retain the authoritative absence response and proceed only under create-only authority. If present with the same complete immutable identity and valid provenance/readback, a verify-existing assignment may acknowledge **already published, no write**; do not invent a new submission or native receipt. For a publish assignment, reconcile an existing matching object against the accepted intent before deciding no write is needed. Same version with conflicting digest, unexpected name/scope or unverifiable identity is DENIED/BLOCKED with no overwrite, forced publish or automatic new version.
5. Name the sole owner of endpoint/account/namespace/name/version and its native conditional-create, immutable-version rule, operation key or effective lock/fence. Record the actual guarantees and readback, expiry/renewal, request lookup and stopped-owner evidence. A job file is not a registry lock. Ensure concurrent/stale owners cannot overwrite or duplicate the intended object; when the provider has no request key, use proven immutable create-if-absent semantics plus exact-version/digest lookup and effective exclusive ownership. If neither is provable, BLOCK publication.

### A2. Persist intent, submit once and independently retrieve

1. Immediately recheck candidate/policy gate, build/provenance/content identity, required approval, authentic grant expiry/scope, observed environment freshness, receiver/principal, fencing, execution limits and holds. The coordinator persists existing `publication_intent` **before** the effect, with indexed exact request/identity, operation/idempotency scope, preflight observations and reconciliation/owner references. This does not create a release transition.
2. Use the discovered supported native create-only publication operation for the pinned bytes and exact target. Preserve the real sanitized request parameters, UTC interval, native submission response/receipt and provider request/operation ID when exposed. Record asynchronous acceptance as pending, not published. A successful exit, upload progress, CI success or locally generated receipt is insufficient.
3. Query the actual native operation and exact immutable version/reference through authenticated registry interfaces. Retrieve the actual published package bytes or exact OCI manifest/index and referenced config/layer blobs, independently compare their supported digest/integrity, sizes, package name/version and full identity relationships, and retrieve/verify required provenance/signatures against source/build/trust policy. Retain native version/registry-digest metadata and retrieval observations, not a cached local echo or mutable-tag-only lookup. Follow accepted visibility/consistency bounds; missing bytes/provenance or an unexplained digest remains BLOCKED, never green by timeout.
4. Return actual observations to the coordinator for existing `publication_receipt`, linked to the original intent and indexed dispatch/build/artifact/target receipts. Store only true observed facts: newly published with native submission receipt and verified readback, or verified-existing with actual read observations and explicitly no new submission. Do not fabricate missing native request IDs. No `planned`/`deploying`/`observing`/`succeeded` record, publish action enum or deployed/healthy claim is produced for A.

### A3. Failure, reconciliation, cleanup and outcome

- **Before submission:** a failed precondition/denial means no publish; retain actual no-effect proof. Fixing credentials, changing version/target/content or expanding authority requires accepted ownership/scope and affected fresh gate evidence, not an implicit retry.
- **Failed, interrupted, timed-out or ambiguous submission:** preserve the original request/operation/version identity and stop/fence that owner. Even a reported failure may have committed. Query native operation/history and exact version/digest/provenance first; recover the real receipt where available. Matching stored content can establish published/readback or verified-existing, but do not invent unavailable submission proof. Conflicting content is denied; unknown/pending outcome stays BLOCKED with ownership retained and no overlapping submission.
- **Repeat only after reconciliation:** prove the original operation terminal/no-effect or the existing exact immutable object, and prior writer stopped/fenced. Only a still-authorized bounded retry using the original idempotency scope or proven create-if-absent semantics is eligible. A fresh client request ID does not erase an unknown old operation. Missing native submission proof required by acceptance remains a precise blocker even if retrieval succeeds.
- **No automatic compensation:** never delete/yank/unpublish content, move tags/aliases or overwrite a version to repair/tidy publication. Each is a distinct effect requiring its own exact authentic grant, current gate and reconciliation. Escalate an irreversible or conflicting publication to its accountable owner with immutable evidence.
- **Cleanup:** stop only owned transient upload/probe processes and remove only owned local scratch after protected evidence retrieval is proven. Release publication locks only after terminal disposition/stopped writers or accepted fenced handoff. Retain remote artifact/provenance under accepted retention policy; an upload session cleanup, if needed, must be supported, proven not to delete the artifact and separately within granted scope.
- **Outcome:** return branch A; published-only or verified-existing/no-write (or BLOCKED/DENIED); exact endpoint/account/namespace/name/version, registry and build identities, candidate/policy/environment bindings; native submission/operation and retrieval/provenance evidence; actual effects, remaining uncertainty/owners and cleanup. Published-only means the accepted publication predicate actually passed, **not** deployed or healthy. No deployment tooling may be demanded to close that predicate.

## B. Environment deploy/apply/recovery

### Deployment-only prerequisites

- Supported installed deployment adapter/API/console, artifact fetch/verification, authenticated exact account/region/resource scope, native operation status, traffic/health queries, exclusive deployment ownership and recovery controls.
- Runtime config identity including flags and nonsecret secret-version references, schema/migration identity and compatibility boundary; named deployment, service/data, observation and handoff owners; approved rollout/observation window, thresholds/baseline, abort triggers, recovery decision boundary and recovery time/data objectives.
- Retrievable prior known-good immutable artifact/config/schema combination, accessible backups and proven applicable restore where data can change. Missing required recovery capability blocks risky deployment, not merely its report.

### Deployment procedure

### 1. Freeze identity and prove artifact promotion

1. Resolve the actual built output from an authorized build/registry/pipeline. Read its digest from the authoritative content and compare independently using the host's supported hashing/registry mechanism. Record provenance, exact source commit, lockfiles/dependencies, build inputs, toolchain and outputs. A mutable tag, branch, timestamp or CI run name alone is not an immutable artifact.
2. Verify artifact authenticity/provenance with the product's actual supported verifier and trust policy if required. A digest proves byte identity, not signer authenticity or safe content. Missing required signature/trust evidence blocks promotion.
3. Promote the same immutable bytes between environments; do not rebuild and call it the tested artifact. For a platform that necessarily rebuilds per target, each resulting digest is a new artifact requiring its own identity, provenance and affected proof before deployment. Content-addressed IaC/config bundles are valid artifacts when that is the real release surface; do not invent a container image.
4. Freeze runtime config, secret version references, feature-flag scope, schema version, migration/backfill identity and dependency/API compatibility. Material changes to any of these invalidate affected acceptance even if the executable digest stays the same. Link [data migration](../domain-review/references/data-migrations.md) and [API evolution](../domain-review/references/api-evolution.md) proof where applicable.
5. Retrieve the artifact and provenance using the intended deployment principal or an equivalent authorized preflight. Confirm the previous recovery artifact is retrievable too. A locator existing in Markdown is not availability evidence.

### 2. Bind environment and exclude competing writers

1. Discover the installed host deployment tool/API and versions, read-only identity and real target inventory, following [cloud host discovery](../cloud-change/references/host-operations.md) and [deployment host mapping](references/host-rollout.md) when applicable. Observe provider/account/region/resource IDs and currently deployed artifact/config/schema from authoritative service responses, not local context labels.
2. Match the observations to accepted environment allowlists and scope. The coordinator validates and freezes `environment.md`; set release `target.environment_id` to the SHA256 identity of those exact bytes. Target expiry, changed credentials/context, config drift or changed baseline requires fresh observation and invalidates affected reliance.
3. Identify all writers, including deployment pipelines, controllers and manual operators. Acquire the actual native environment/deployment lock or effective fencing control with owner, operation, generation and expiry/renewal proof. A repository file or job task owner does not lock an external service. Do not overlap deployments while an old operation is live or unknown.
4. Record baseline service versions, traffic routing, health and data/schema state. If another actor changed the target, stop and reconcile; do not deploy over unexpected drift under stale approval.

### 3. Choose a strategy with real abort/recovery boundaries

Choose the simplest supported strategy appropriate to the service and data model. Gradual delivery is not mandatory when traffic cannot be partitioned meaningfully or the platform lacks it. Record the reason, blast radius and proof limits rather than pretending a canary exists.

| Strategy | Required evidence before use |
| --- | --- |
| Canary or weighted traffic | Real routing controls and cohort isolation, old/new compatibility, session/background-worker behavior, meaningful sample size, per-step traffic/exposure limit, hold duration and halt/rollback operation. Include cumulative population effects and cross-cohort shared data. |
| Blue/green or parallel deployment | Identified old/new environments, config/data compatibility, actual smoke path, capacity/cost headroom and supported traffic cutover/readback. Confirm old resources remain recoverable for the observation period. |
| Rolling update | Availability/capacity budget, mixed-version compatibility and actual platform rollout/rollback semantics. Readiness probes alone do not establish business correctness or data safety. |
| In-place or maintenance window | Explicitly accepted downtime/blast radius, entry/exit and traffic-drain procedure, backup/recovery readiness and named operator. Do not relabel it zero-downtime. |

Define numeric thresholds with units, population/cohort and evaluation interval: availability/errors, latency distribution, saturation/capacity, queue lag, business correctness and data integrity as relevant. Specify baseline/comparison window, minimum observations, telemetry ingestion delay and missing-signal behavior. Small canaries with no representative traffic cannot pass on zero observed errors. Reuse accepted SLOs where present; do not invent organizational objectives.

For schema/data changes, verify expand/contract order, old/new coexistence, idempotent migration checkpoints, backfill bounds and restore evidence. Identify the exact irreversible boundary. A downgrade executable cannot undo writes or destructive migrations. Delay contraction/destruction until the accepted compatibility window closes, or require explicit data-owner acceptance of irreversibility and an executable roll-forward/restore procedure. See [restore/recovery](../domain-review/references/restore-recovery.md).

Declare before execution:

- Abort conditions and who watches them; observation unavailable or lost ownership is a stop, never green by omission.
- Safe cancellation points, in-flight requests/jobs and eventual side effects to reconcile.
- When rollback is safe, exact previous digest/config/schema and restoration predicates.
- When rollback is unsafe, a tested compatible roll-forward or restore path with required data-owner authority and acceptable data loss/downtime. If none exists for the proposed risk, block release.
- The bounded authorized effects per step, real platform-enforced controls, and the maximum observation/execution interval within accepted limits. No implicit scheduler or automatic wake is supplied by this skill.

### 4. Prepare the canonical release record and gate

Use exactly the release contract's single YAML block; the following is a field mapping, not a second schema:

| Contract fields | Evidence supplied |
| --- | --- |
| `job_id`, `candidate_id`, `policy_id`, `source` | Current accepted identities and exact repository/commit. |
| `build`, `artifact`, `config_id` | Actual build identity/provenance/toolchain/input/output references; immutable artifact digest/locator/media type; exact effective config identity, with schema/migration evidence indexed. |
| `target` | Observed target id/provider/account/region/resource_scope and exact frozen `environment_id`. |
| `plan` | `null` only when no infrastructure plan applies; otherwise reviewed `digest`, `state_fingerprint`, `expires_at`, `evidence`. |
| `action` | Actual kind/effect, authentic `grant_refs` and existing coordinator `intent_event_id`; no fabricated authority. |
| `rollout` | Observation window minutes, concrete acceptance, abort and recovery predicates backed by the full indexed strategy. |
| `state`, `transitions` | Only observed schema-permitted transitions with actual UTC `at`, lifecycle `event_id`, receipt and observation references. |

All evidence references use the contract's `{locator,digest,observed_at}` shape and indexed retrieval/ACL/retention proof. Use `version: 1`; preserve each prior raw release snapshot and digest before coordinator replacement. Append ordered transitions only: first `from: null` to `planned`, subsequent `from` matches the preceding `to`, current `state` equals the last `to`, timestamps are monotonic and every transition has nonempty real receipts plus its actual coordinator event. Never store raw credentials or unrestricted customer telemetry. Validate with real host parsers/schema tools when assigned; Markdown is not an enforcer.

The coordinator records `planned` only after the real immutable artifact and complete source/build/config/target/rollout identities exist; earlier planning stays in spec/build evidence. `verified` requires current configured checks, independent required/applicable reviews, artifact/plan-specific proof, APPROVE and gate_passed. `authorized` additionally requires fresh target/state/plan, real provider safeguards and distinct effective action authority with persisted publication_intent. The contract's transition rules remain normative. Any material candidate/policy/artifact/config/target/plan change reopens affected proof before authorization.

### 5. Execute and read back each bounded step

1. Immediately recheck the exact candidate/policy gate, authority expiry/scope, environment identity/expiry, artifact digest/config/schema, plan expiry/state if applicable, native lock/fencing and absence of new holds. The coordinator persists the existing `publication_intent` before the effect, including operation/idempotency lookup and recovery reference.
2. Start the actual supported deployment of the pinned artifact/config to the pinned target. Retain real platform release/deployment ID, request/operation receipt, timestamps and accepted parameters. The coordinator uses `deploying` for an actual started operation, not a prepared command.
3. Query actual deployment state. Confirm running instances/workloads report the intended artifact digest and config/schema identity, routing exposes only the allowed cohort, capacity/readiness is as planned and unintended resources have not changed. A pipeline success, tag update, upload or accepted asynchronous request is not a deployed receipt.
4. Enter `observing` only with real deployed-state proof. Observe the declared entire window with actual metrics/synthetic/business/data checks, retaining query definitions, units, denominators, cohort, start/end, data freshness and gaps. Sanitize dimensions; constrain label cardinality and avoid user/token/trace payloads in public evidence. Use [observability review](../domain-review/references/observability.md) for diagnostic design.
5. Advance traffic/replicas only after the preceding step's acceptance and applicable authority remain valid. Persist each real step's receipts and observations; never batch speculative success transitions for later reconstruction.
6. On abort threshold, lost ownership, unknown target or missing required signal, stop expansion and use the declared supported halt/cancel. Record what is actually stopped and what can still complete. Preserve remote operation identity for reconciliation.

### 6. Abort, recover or complete truthfully

- **Before any effect:** use `planned`/`verified`/`authorized` → `aborted` only with authentic cancellation or an unmet precondition and evidence no effect occurred. Earlier blocked preparation stays outside an invented release record. If an effect is possible, reconcile instead of asserting abort.
- **Ambiguous call/disconnection:** query the actual deployment/operation and desired-versus-running state by immutable identity. Recover the existing receipt; never redeploy blindly. Unobservable outcome blocks completion and overlapping retries until fenced and reconciled.
- **Safe rollback:** with actual scoped authority and current fencing, restore the exact known-good artifact/config through the platform. Check schema/data compatibility again against writes already performed. Observe the full recovery criteria and confirm traffic/running state/data invariants. A rollback command exit does not establish `rolled_back`.
- **Irreversible or incompatible change:** do not downgrade blindly. Use `rollback_required` for an observed unsafe/partial rollout, retaining that state with blocked incident ownership while recovery is unresolved. Execute the separately authorized roll-forward or different-identity restore through its owner with a new release identity/candidate and affected checks/reviews when content changes. Only fully verified stable recovery and recovery-owner acceptance permit the original `rollback_required` → `failed`, preserving original intent and linking successor intents plus immutable artifact/config/data/resource receipts. Roll-forward is never mislabeled `rolled_back`. An unknown/partial outcome cannot become terminal failure just to close the record.
- **Success:** the coordinator records `succeeded` only when actual target/digest/config readback, the complete observation window, all declared acceptance and reconciled receipts meet the release contract. A finished worker or merge is insufficient. Failed/aborted/rolled-back history is preserved, not rewritten as the originally intended deployment succeeding.

An observed failed operation with proven stable remote disposition requiring no rollback may take `deploying`/`observing` → `failed` with recovery-owner evidence. Terminal `succeeded`, `aborted`, `rolled_back` and `failed` records never reopen: later recovery/re-release uses a new indexed record and intent linked to the prior identity. Changing action/grants/effective policy preserves prior snapshots and requires a newly verified/authorized identity rather than rewriting an old binding.

Send actual receipts for existing lifecycle `publication_receipt` and indexed release transitions. Release state does not replace task completion acceptance, approval or job lifecycle.

### Deployment positive, negative and recovery proof

Run assigned behavioral proof only on authorized external product fixtures/targets. Record expected/actual observations, exact commands/API operations, versions, candidate/artifact/config/environment identities, UTC windows and indexed sanitized evidence.

- **Positive:** promote the identical verified bytes/config, deploy to the exact allowed target and meet representative business/health/data predicates throughout the window.
- **Negative:** in safe isolated rehearsal, wrong target/digest, expired grant/plan, competing deployment, incompatible schema and absent/stale telemetry each prevent or halt the affected step as specified. Exercise actual platform access denials where authorized; document any condition not exercised rather than inventing a PASS.
- **Recovery:** interrupt a deployment/lose a client receipt, reconcile the existing remote operation without duplicate effect, then exercise the applicable halt and rollback or roll-forward/restore with final running-state and data readback. Prove stale owners cannot write after transfer. Do not inject production faults solely to satisfy this proof.

A required missing predicate is BLOCKED. A plan-only assignment may pass its own planning criteria while explicitly stating no deployment or behavioral-health proof occurred; it cannot satisfy release-execution acceptance.

### Deployment cleanup and final outcome

Remove only owned temporary probes, external fixture resources and transient raw exports after protected evidence is retained and retrievable. Read back deletion and remaining costs. Retire old replicas/artifacts only after the recovery/retention window and explicit owner policy allow it; do not delete the only rollback or audit artifact to tidy a job. Release deployment locks only after confirmed terminal operations/stopped writers or an accepted fenced handoff.

Return exact artifact/build/config/schema/environment and candidate/policy identities; actual release state and deployment/receipt IDs; each rollout/health/recovery result; unresolved impact; authorized versus actual effects; evidence locators; cleanup and remaining resource/data owners. PASS means the assigned scope actually completed, not permission to ship. Unknown external state, failed mandatory criteria or missing recovery remains BLOCKED with stop class, last known state and precise resume prerequisite. End only at verified terminal acceptance or explicit accountable blocked recovery/handoff; never represent a pending queue or unobserved service as healthy.
