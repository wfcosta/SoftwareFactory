---
name: cloud-change
description: Plan, authorize, execute and reconcile an exact cloud or infrastructure change with target identity, native ownership controls and observable recovery.
disable-model-invocation: true
---

# Cloud Change

## Role and boundaries

Use this skill for infrastructure, IAM, network, storage, managed-service or cloud configuration changes. It is a host-executed procedure, not a cloud client, sandbox, scheduler or permission source. Follow the configured [worker contract](../../agents/WORKER_CONTRACT.md), [GSF mode](../gsf-mode/SKILL.md), [environment contract](../../state/environment-contract.md) and [release contract](../../state/release-contract.md). Retain required code/security reviews and every applicable check. A configured check, plan, approval or credential does not authorize apply.

A direct read-only request creates no job or captures. An authorized factory task writes only its assigned dispatch evidence; the coordinator alone updates `JOB_DIR/environment.md`, `JOB_DIR/release.md`, canonical reports and lifecycle ledgers. Supply proposed state and receipts to that coordinator, not a second state machine. A cloud-only change still needs an identified candidate, effective policy, reviewed desired configuration and the applicable release record. Bind its artifact to the actual immutable desired-configuration/plan bundle and provenance, never invented image data.

## Inputs and prerequisites

Before any effect, obtain:

- Exact job/task/dispatch, candidate/policy and active instruction identities, assigned resource ownership and observable acceptance. Read accepted `environments`, effect/target declarations, execution limits, evidence policy and authentic grants through the worker contract. Do not copy authority into this skill or broaden it through a plan.
- Named target ID; observed provider, account/project/subscription, region/location, cluster/namespace when applicable and explicit resource identifiers. Policy declares an allowlist; it does not observe a target.
- Desired-state source revision and config identity, IaC root/module versions, lockfile/provider versions, backend/workspace identity, current state serial/generation and fingerprint, plan validity deadline and available rollback/compensation surface.
- An authorized host terminal/API adapter, supported provider/IaC versions, read access to identity/state, native locking or effective fencing, and the specific write privileges for the requested effect. Secrets stay in the host's credential facility, never Markdown, command transcripts or plan summaries.
- Named execution and recovery owners; allowed effect count/resource scope, spend/time bounds, stop conditions, and an actual observation surface. `execution_limits.max_cost` is an integer in configured ISO 4217 currency minor units, or null for unknown/unmetered, never free. An active cap requires real currency-exponent and meter-conversion receipts, including billing-delay limitations. If a mandatory cap cannot be observed/enforced through the real platform, block the affected execution.

Missing prerequisites block only the affected effect. Continue safe authorized analysis without marking execution PASS.

## Procedure

### 1. Discover the real host and bind the target

1. Read the product's infrastructure runbook and installed tool help/version before choosing commands. Use an existing authorized provider console/API or host adapter when available. Do not install tooling, create credentials, switch accounts or initialize a backend just to manufacture capability; those are separate effects requiring scope.
2. Use [the tool selection reference](references/host-operations.md) for concrete discovery examples. Record command/API operation, working directory, tool/version, observation time and redacted receipt. Inspect all inherited profiles, endpoints, environment overrides, provider aliases and nested modules. A local default profile or kube context name alone is not observed target identity.
3. Resolve account and resource identities from actual provider responses. Match every touched target, including cross-account IAM, shared DNS, keys and replicas, against accepted environments and grants. Read back immutable resource IDs and location from their authoritative service. A mismatched, expired or unknown target stops writes; do not silently change credentials and continue under the old evidence.
4. Send observations, capability limitations and expiry to the coordinator for validated `environment.md`. Re-observe before each critical effect and after credential/context/backend changes. An identity response proves only the responding principal/account at that time, not comprehensive authorization or isolation.

### 2. Establish external ownership before planning effects

1. Inventory all writers: other jobs, provider operators, deployment controllers, autoscalers, scheduled platform tasks and separate state roots sharing resources. Repository ownership does not lock cloud resources.
2. Choose the actual native state/backend lock, deployment/environment concurrency control, API conditional revision/ETag, or externally enforced lease/fencing facility. Record lock scope, owner, acquisition receipt, expiry/renewal mechanism, fencing generation and how stale owners are rejected. Never disable locking, use force-unlock casually, or claim a Markdown owner field is a lock.
3. If the service has no lock, require demonstrated exclusive operational control that fences competing writers at the service boundary. Merely asking peers not to write is insufficient for a shared destructive operation. If no effective control exists, block that effect and retain a read-only plan.
4. Acquire only the needed scope, following the product runbook. If locking itself writes remotely, declare and authorize it. Respect execution limits while waiting; a timeout means checkpoint and reconcile ownership, not blind retry or overlapping apply.

### 3. Inspect baseline, drift and risk

Read desired and actual state through supported service queries and the IaC tool. Preserve state access controls: state and plan files can contain plaintext secrets. Store raw files only in an authorized external encrypted/ACL-controlled location; put sanitized summaries and retrieval references in indexed Markdown evidence.

Review, with a named owner and concrete predicate for each applicable surface:

| Surface | Required review and acceptance |
| --- | --- |
| IAM and secrets | Exact principals/actions/resources/conditions, trust and role chaining, key use/rotation, secret retrieval, privilege expansion and revocation. Exercise allowed access and a meaningful denied access in an authorized isolated target; never attempt unauthorized production access as a test. |
| Network and exposure | Ingress/egress, routes, public endpoints, TLS/DNS, firewall and private dependencies. Prove expected reachability plus a prohibited path remains blocked using authorized probes. |
| Persistence and availability | Storage lifecycle/encryption, retention, backups and demonstrated restore, replication, failover, deletion protection, replacement order and downtime budget. A configured backup is not restore evidence. |
| Cost and quotas | Resource quantity/size, provider estimates with assumptions, baseline spend, recurring/one-off transfer/storage charges and quota headroom. Record unknowns and use real budget/usage controls where required. Billing lag is explicit; an estimate is not a hard cap. |
| State and imports | Backend, lineage/serial, ownership, imports/moves, orphaned resources, provider-generated changes and drift. Do not adopt or destroy unmanaged resources merely to make a plan clean. |
| Destruction/replacement | Enumerate every delete, replacement, recreation, forced downtime and irreversible data loss. Name data owner, recovery prerequisite and specific authority; a generic apply grant cannot obscure a newly destructive diff. |

Unexpected drift is an investigation result: compare authorized baseline to provider state, identify its owner, and either explicitly incorporate it into a newly reviewed candidate or stop. Never overwrite another owner's change or refresh state to hide drift.

### 4. Produce a bounded, expiring plan

1. Generate the supported saved plan/change set in the exact IaC root with actual variables, backend/workspace, locked toolchain and provider settings. Inspect nested hooks, data sources and plan-time actions for side effects; a command named plan is not necessarily read-only.
2. Record desired configuration identity, saved-plan/change-set digest, state fingerprint/lineage/serial or equivalent service revision, provider versions, observed target, creation/expiry time, expected affected IDs and operation counts. The contract fingerprint is SHA256 of indexed canonical observation bytes; explain their mapping to actual backend/provider revisions, locks and resources rather than putting a serial into a hash field. Expiry is bounded by the earliest relevant credential/lease/target/approval validity and product-specific drift tolerance. Do not invent a universal safe duration.
3. Review the actual machine-readable and human-readable change set for unknown values, implicit dependencies, privilege/exposure/cost changes, sensitive content and replacements. Unknown material effects block apply until resolved or explicitly bounded in accepted scope; unknown is not no change.
4. Use the release contract's `plan` object (`digest`, `state_fingerprint`, `expires_at`, `evidence`) and indexed plan evidence through the coordinator. Bind `target.environment_id` to the SHA256 of the exact frozen `environment.md`; re-observation creates new identity and invalidates affected reliance. Attach risk review, positive/negative/recovery proof, protection controls and planned compensations. Any changed config, target, state, plan, relevant toolchain or grant invalidates affected plan/review/authorization evidence.
5. Run assigned isolated acceptance and obtain required current-candidate reviews/gate. Do not use plan exit status or a check result alone as apply permission.

### 5. Authorize and execute the exact effect

1. Obtain the distinct scoped action authority under the worker contract and record the coordinator's existing `publication_intent` with exact candidate/policy, target, operation identity, idempotency/reconciliation lookup and plan evidence. Use release `action.kind: apply` for the actual apply, with `effect` equal to `external-write` or `destructive` as actually required; recovery has separately scoped `rollback`/`recover` authority. The coordinator advances the validated release record only when its required preconditions hold. Follow [release execution](../release/SKILL.md) for exact state transitions, nonempty real receipts, frozen prior snapshots, stable recovery and successor roll-forward semantics; a plan-only result never enters deploying.
2. Immediately recheck native ownership/fencing, identity, grant and plan expiry, current state revision/drift and execution/cost bounds. If anything changed, stop, regenerate the plan and renew affected reviews/authority; never regenerate a different plan inside an already authorized apply.
3. Invoke only the reviewed saved plan/change set through the supported host operation. Pin immutable identifiers; do not substitute an unreviewed fresh plan, use a broad force flag or widen resource targeting. Record start time, request/operation ID and actual response without secrets. Keep the platform's durable operation handle for recovery if the client disconnects.
4. Observe progress and stop on the declared abort conditions, lost fencing, unexpected resource changes, material cost/health regression or expiry of required execution authority. Supported cancellation may not undo already-completed provider operations. Preserve actual partial effects and read them back before deciding recovery.

### 6. Read back, recover and close

1. Query the actual provider operation and every critical affected resource. Compare immutable identity, desired settings, IAM/network boundaries, persistence/health, state generation and allowed scope against the plan. A zero exit or updated state file is not provider convergence.
2. Perform the agreed observation window and positive, prohibited-path and recovery predicates. Use authorized non-destructive probes or isolated rehearsal for dangerous failure cases, naming their limits. Do not create a production outage to obtain negative evidence.
3. On timeout/lost receipt, first query by operation ID/change set/resource revisions and idempotency key. Recover the existing outcome; never blindly repeat apply. Unknown outcome remains blocked with fenced ownership until observable or transferred to an accountable operator.
4. For partial failure, enumerate succeeded, failed, pending and unknown operations. Compare current state to the reviewed baseline. Execute only preauthorized safe compensation with fresh target/ownership checks; otherwise obtain specific recovery authority. Reversible configuration may be restored from the immutable prior version. Recreating deleted resources does not restore their data or identity. Restore or roll forward using an approved verified procedure; do not apply a stale reverse plan.
5. Send actual operation/readback receipts, observation results and recovery state to the coordinator for the release contract and existing lifecycle `publication_receipt`. `succeeded` requires its semantic conditions; failed or recovered changes retain their truthful history.

## Acceptance and evidence

For each predicate record expected/actual result, target and candidate/policy identity, UTC window, exact command/API/tool version, sanitized output and indexed attachment. Product fixtures/IaC tests run only in owned external workspaces, not inside this Markdown distribution.

- **Positive:** the reviewed allowed change reaches the exact intended resource and persists on fresh provider readback; service and dependency health satisfy declared thresholds for the entire window.
- **Negative:** wrong account/scope, stale state/plan, expired authority and absent lock each block before the effect in a safe external rehearsal; prohibited access/exposure remains denied. Name conditions not exercised and block required unproved predicates.
- **Recovery:** rehearse interrupted/partial operation reconciliation plus the applicable compensation/restore on an authorized isolated target; prove old owners cannot resume writing after fencing. Compare recovered configuration/data invariants, not just a recovery command exit.

Do not manufacture a fault in production or call documentary inspection behavioral proof. A plan-only result states `not applied`; it cannot satisfy apply/readback acceptance.

## Cleanup and outcome

Remove only owned temporary external plan/state exports and probes after redacted evidence is safely retained under the accepted evidence policy. Confirm owned temporary resources are gone by provider query and record remaining spend/retention obligations. Release native locks only after terminal operation/readback and confirmed stop or explicit accountable handoff; never release an uncertain live owner's protection. Retain necessary state history/backups under their owners' policy, not arbitrary cleanup.

Return PASS only for completed assigned acceptance, otherwise BLOCKED with stop class, precise prerequisite, last observed external state, fenced/live ownership, compensation performed or pending, and named handoff. Include modified resources, plan/config/state identities, authority reference, actual effects/receipts, observation/recovery results and cleanup owner. Do not mark the job complete while required effects or outcomes remain unknown.
