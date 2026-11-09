---
name: worker-admission-review
description: Review or separately commission one worker only against real native capacity, disjoint file and external-resource ownership, and observed execution placement; refuse prose-only caps and silent host fallback.
---

# Worker admission review

## Role

Assess actual admission, isolation and placement before a worker can own effects. Reuse the single existing coordinator and [worker contract](../../agents/WORKER_CONTRACT.md), [plan](../../state/plan-contract.md), [accepted limits](../../state/config-contract.md), [environment](../../state/environment-contract.md) and [candidate](../../state/candidate-contract.md) contracts. This is not a scheduler, hypervisor, resource provisioner, machine attestation service or native launcher.

[Ownership collision](../ownership-collision-review/SKILL.md), [liveness](../worker-liveness-review/SKILL.md), [cancellation](../cancellation-confirmation/SKILL.md) and [checkpoint coverage](../checkpoint-coverage-review/SKILL.md) retain their respective recovery boundaries. A direct review returns no-write chat; dispatch writes only its assigned Markdown report. Native reservation/provision/dispatch is a separately authorized effect.

## Context

Freeze exact job/task/fresh dispatch, current accepted DAG/revision and required role-specific dependency verdicts, instruction/policy/candidate/environment identities, authentic action-specific authority, requested placement, finite execution limits, existing native admission protocol and receipt store, resource owners and intended evidence audience. Maintenance uses its actual authorized journal, not invented factory IDs/events.

Obtain approved current native live-owner/attempt/helper and resource inventories with exact coverage/time/source. An absent native count is UNKNOWN, not zero. No private job/profile, credential, machine-account or unrelated database discovery is authorized.

## Task

### 1. Admit against a real cap, not a proposed wave

1. Verify dependencies under the accepted worker contract, current grant/expiry and nonoverlapping ownership. Host process success or a proposed DAG wave does not establish passing role verdicts, acceptance or admission.
2. Count all actual concurrent live/reserved workers and authorized helpers in the accepted scope, including uncertain interrupted owners and already submitted work. Preserve retries, elapsed/no-progress and spend history. A self-reported idle badge, report delivery or missing heartbeat cannot remove an unknown owner from the admission calculation.
3. Bind the existing native mechanism that enforces the accepted parallelism ceiling across concurrent admissions: exact authority/domain, observation freshness, atomic reservation or actual sole-admitter exclusion, reservation identity, reconciliation and release semantics. A read-then-spawn count without exclusion is racy. Markdown limits, local counters and hypothetical waves do not enforce a hard cap.
4. Require native metering/control for every mandatory elapsed, no-progress, cost and resource bound. Unknown required meter/cap blocks dependent admission. Null cost is unmetered/unknown, never free. Do not raise caps, create a second scheduler, split IDs/coordinators or ignore helpers to fit.
5. Under separate exact authority, the actual owner may reserve one slot through that existing protocol and retain/read back the actual receipt before dispatch. No available native reservation/exclusion means review complete but hard-capped dispatch BLOCKED. On interrupted admission, reconcile the original reservation and invocation before allocating another slot.

### 2. Isolate resources that Git does not isolate

Map every applicable surface, explicitly distinguishing not applicable with evidence from unknown:

| Resource class | Exact binding / required existing native isolation |
| --- | --- |
| Source and generated files | Repository/worktree/branch plus actual file/directory aliases, build outputs and owned reports; current native path identity, not string-prefix assumptions. |
| Database and storage | Provider/account/tenant/region/database/schema/bucket/namespace, credentials by protected reference, permitted data and write scope; a worktree does not clone or isolate data. |
| Queues and background jobs | Exact topic/subscription/consumer group/job namespace, current writers/readers and supported fence/cleanup ownership. |
| Ports and local domains | Actual machine/network namespace/bind address/port/domain or existing lease; selecting a number does not reserve it. |
| Browser and device state | Exact owned profile/context/session/device/app data, cookies/account boundary and teardown; a new tab can share credentials and caches. |
| Memory and context | Approved fact/store/session/index/cache namespace and current ACL; separate directories or the same SID do not prove tenant isolation. |
| External effects | Exact repository/PR/deploy/payment/provider resource, current intent/idempotency/fence identifiers and separately authenticated effect authority. |

Resolve alias/case/network/shared-backend collisions using actual accepted native identity evidence. Record each concrete resource's one current owner, lease/fence scope, native enforcement, permitted actions and release/recovery owner. Unknown consumers or overlapping writers block the affected effects; do not replace technical exclusion with a friendly agreement.

Do not clone databases, copy production data, provision a VM/container, create accounts, expose ports, create browser profiles or share credentials merely to obtain isolation. Those need separate exact provisioning/data authority and an existing supported native tool. A container/worktree/name prefix alone is not proof of effective separation. If no acceptable native isolation exists, keep affected work serialized/blocked under the accepted authority rather than inventing an isolation backend.

### 3. Prove actual placement independently from the request

1. Separate requested placement, configured route, dispatch acknowledgment and observed execution. Bind actual machine/native instance identity, compute provider/account/region where applicable, OS/runtime, native server/session/process birth/epoch, workspace/repository/revision and effective tool/configuration context. Model provider is not the compute-host identity.
2. Obtain accepted native runtime/control-plane observations linked unambiguously to this real dispatch/session and observation time. A worker's text declaration, hostname copied from a prompt, local absolute path, environment marker, selected remote UI or requested host is not independent placement proof. State the trust/attestation limit of each actual source.
3. Compare every required expected identity with observed identity; unknown is not a wildcard and null means only independently proven not applicable under the environment contract. Missing/stale/mismatched required placement blocks dependent execution/acceptance, not a silent fallback to the local machine or another provider.
4. Ensure the actual worker can read the exact frozen complete instructions/context and owns only the mapped resource namespace. Bind native placement/source receipts to the existing environment/candidate evidence through the coordinator; workers return owned observations and do not rewrite canonical environment/state.
5. Preserve original requested/configured/observed distinctions in delivery. A successful result proves neither the requested host nor its isolation unless those exact receipts exist. On migration/restart/epoch/workspace change, revalidate affected claims and preserve original evidence; never relabel an old local run as the new remote placement.

### 4. Dispatch and release without losing unknown owners

Only after all required checks and separately authorized native reservations may the coordinator persist the exact assignment/intent and invoke the existing native interface once. Preserve canonical IDs and store actual native handles as transport mappings. A submission receipt is not worker_started, completion, role acceptance or publication permission.

At completion/interruption, reconcile actual owner/liveness, resource/effect state, report/done/accepted evidence and manifests under existing owners. Native compute-slot release, file/resource ownership release and business acceptance are separate decisions. Release each only through its actual supported protocol after the required stop/fence/readback conditions; no TTL, missing heartbeat or completed message alone releases an uncertain writer.

Keep ambiguous admission/invocation/release evidence and block overlapping retry; the actual native custodian resolves it. Do not kill shared processes, steal leases, clear unknown locks, overwrite user work, reset counters or delete retained recovery material. Renewed capacity is not renewed action authority.

## Constraints

No native cap, OS isolation, placement attestation, IAM, durable reservation or exactly-once dispatch is supplied by Markdown. No new runtime/provisioner/registry, scans of private machine state, credentials, model/provider calls or unrequested resource creation. Preserve real policy/protection/reviewer requirements and user changes; required unknown controls remain blockers rather than accepted declarations.

## Format

Return the [assigned response](../../templates/response-template.md) or no-write chat: exact accepted scope/baselines/grants; dependency acceptance; accepted versus actual capacity and every counted/unknown owner; native reservation/control source; complete concrete resource/alias/owner/isolation matrix; requested/configured/observed placement and source trust; per-criterion predicate/actual evidence/MET–NOT_MET–BLOCKED with next owner; actual native intent/handle/result/release receipts or NOT RUN; uncertainty, retention/custody, invalidation and recovery action. An admission review can complete while dispatch remains blocked.

Illustrative cases, NOT RUN: three live plus one uncertain owner at cap four permits no fifth admission; a distinct worktree sharing one database/browser profile is not isolation; a remote target selected in a UI without same-session machine/workspace receipt is placement unknown. No local fallback or reservation reset repairs those gaps.
