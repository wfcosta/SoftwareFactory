---
name: failure-drill
description: Exercise an explicitly scoped fault and recovery hypothesis in an owned isolated product fixture with bounded real injection, independent stop controls and durable-state observations; separate fault delivery from demonstrated tolerance or recovery.
---

# Failure drill

## Inputs and authority

Read the accepted task, `decision.md`/`spec.md`, relevant invariant and recovery objectives, actual service/dependency runbook and existing failure evidence. Follow the [worker contract](../../agents/WORKER_CONTRACT.md), [verification strategy](../verification-strategy/SKILL.md), [candidate](../../state/candidate-contract.md) and [environment](../../state/environment-contract.md) contracts. This is a selected bounded proof procedure, not a mandatory chaos stage for every task, a fault-injection runtime or a grant of production access. Preserve configured checks, mandatory code/security and applicable independent reviews, original findings and existing role verdicts.

Prefer application-level fixtures exercising the real product at the changed boundary. An accepted diagnostic failure response, dependency fixture or narrowly scoped supported fault hook can discriminate a recovery mechanism without modifying infrastructure. State the boundary it proves: a simulated provider failure cannot establish actual provider outage handling, regional failover, provider restoration or production safety. Stronger claims require separately authorized real boundary evidence, not a more realistic label.

Use [asynchronous delivery](../domain-review/references/async-delivery.md) for leases, commits, acknowledgment, retries and external effects; [restore/recovery](../domain-review/references/restore-recovery.md) for backup/data recovery; [cloud change](../cloud-change/SKILL.md) and [release](../release/SKILL.md) for actual infrastructure/deployment/recovery effects. Those workflows and their existing records retain authority. Escaped impact uses [incident response](../incident-response/SKILL.md), not an improvised emergency permission. Do not add a second drill policy, event vocabulary, canonical ledger or release state.

A direct read-only/no-write question inspects existing permitted evidence and returns a proposed drill in chat: no jobs, files, setup, instrumentation, injections or experiments. Mark recipes NOT RUN. Execution requires explicit actual scope, owned resource/actor, effect/target, authorized injection mechanism, observation, bounds and restoration. An investigation assignment, generic test permission, credential or tool's example command does not authorize cloud or production chaos.

## 1. State one falsifiable, bounded hypothesis

In assigned evidence, bind the accepted criterion and actual candidate/policy to a short drill card. It is a proof recipe in the current report, not a new task schema. Specify:

| Item | Required value before injection |
|---|---|
| Hypothesis and invariant | Exact fault, product boundary and predicted failure/recovery; independently sourced allowed result/error and forbidden durable effects |
| Resource and actor | Exact owned fixture/tenant/resource IDs, current writer/consumer and credentials facility without secrets; consumers/downstream resources in the blast radius |
| Mechanism | Discovered installed tool/API/hook and exact version/config/command/cwd; selected fault, activation boundary and actual nested effects |
| Comparison | Controlled no-fault baseline, fault phase and post-removal recovery phase with equivalent inputs or an explicit explanation of necessary state differences |
| Observers | Independent-enough injection evidence, product/error and durable-state observers; exact methods, freshness, sample/window and missing-signal behavior |
| Limits and stop | Numeric total elapsed and injection duration, injection/action/attempt count, concurrency, affected requests/resources/data, output/storage and cost/resource limits; stop predicates and actual stop owner/control |
| Restoration | Supported revoke/disable/expiry path, handling of in-flight effects/leases, safe baseline or recovery target, final service/data predicates and residual owner |

Choose numeric acceptance/recovery thresholds from the accepted requirement or service/data owner's decision, with units and defined start/end milestones. A drill duration cap is not an invented product RTO/SLO. If the assigned claim needs an objective that has not been accepted, block that claim rather than select a convenient number.

Choose the smallest fault and finite sequence that separates the leading hypothesis from a competing explanation. Do not stack outages, add unbounded retries or broaden into a general resilience suite. Count setup, baseline, injector startup/shutdown, automatic product retries, recovery and cleanup against applicable limits; do not reset counters after interruption or an interesting failure.

## 2. Discover the mechanism and establish real containment

1. Read the actual product/harness runbook and discover host tools, installed versions and supported help/API before choosing commands. Inspect injector wrappers, setup/teardown hooks, inherited configuration, proxies, subprocesses and nested calls. Identify whether the tool changes application state, routing, credentials, files, processes or external resources, and whether an asynchronous controller can keep injecting after the client exits. Never invent an option, fault hook, container boundary, stop API or automatic expiry.
2. Pin source/build/config/runtime/dependency and fixture/schema identities, loaded artifact digests, injector/harness revisions and synthetic inputs. Use [fixture design](../fixture-design/SKILL.md) for independent oracles and reset. An “isolated” directory or loopback URL does not contain credentials, nested tools or outbound effects. Establish actual owned application-level namespaces, synthetic non-delivering destinations and required platform isolation/least privilege. Block if required containment is unavailable.
3. Match actual setup, injection, capture, restoration and cleanup effects to the accepted assignment. Local operations use null target. External write/destruction needs current exact provider/account/region/resource observations, authentic action-specific authority and real platform safeguards under the worker contract. Follow cloud/release procedures when the effect reaches those boundaries; never treat a fixture drill as permission to change shared infrastructure.
4. Enumerate all processes/controllers/writers and acquire the required real ownership controls. Record actual captured host handles, native operation/resource IDs, lock/lease scope, holder/generation, expiry/renewal and supported stop/fence method. A Markdown owner entry or cancellation label is not enforcement. Include product leases/visibility timeouts and possible re-delivery after the injector stops.
5. Before injecting, establish a stop observer/control independent enough of the injected failure to detect limits and stop the effect. It must remain live, have the required limited stop authority and use an actual reachable path. For example, an application fault must not disable its only stop route; a client disconnect must not leave an unbounded remote injector. Record real availability/readiness of the control, effective maximum lifetime or lease behavior, and how interruption is handled. A prose deadline, assumed `finally` block or promise to watch the same blocked process is insufficient. If no reliable bounded stop/restoration is available, do not inject.
6. Do not use arbitrary process kills, shared network/host firewall changes or global clock changes as faults. Use the application's supported isolated mechanism. Stopping a captured owned transient process during authorized teardown is different from indiscriminately terminating a process to manufacture a crash; do not target user/shared processes or widen scope to obtain the desired symptom.

## 3. Establish baseline and controlled observation

Prove readiness before the fault: the exact artifact/config and supported dependencies are usable through the actual authenticated consumer path; fixture/schema and durable state match the recipe; observers report current data; ownership, stop control and recovery inputs are available. PID, port, health flag or mock success alone is not readiness. If the no-fault workflow fails, preserve it as baseline failure and stop the dependent drill; do not attribute preexisting failure to the injection.

Capture the bounded no-fault comparison with exact synthetic operation identities, inputs, expected/actual public result, timing and durable state. Then predeclare the fault trigger and its distinguishing observations. Use a clean equivalent fixture for comparison or document justified phase/state differences; changing artifacts, actors, data and faults together cannot isolate the proposed mechanism. Record unavoidable confounding and narrower conclusions.

Keep three observations separate:

- **Injection delivered:** actual tool/native operation receipt plus boundary observation that the intended resource/request experienced the exact fault, with interval, scope and correlation/operation IDs. Injector startup or a command returning zero proves neither delivery nor blast radius. No delivered fault means tolerance/recovery is unproved, not PASS.
- **Product behavior during fault:** actual consumer result/error, responsiveness, retry/admission/backpressure behavior and forbidden effects, checked independently of the injector's success message. An observed error is not automatically a failed resilience criterion; compare the accepted degraded-mode predicate.
- **Recovery after removal:** actual removal/expiry readback, in-flight/lease reconciliation and restored consumer service plus durable data invariants over the full accepted window. Stopping the injector or seeing a green health probe is not recovered product behavior.

Where retries, asynchronous work or partial commits matter, select the relevant pre/post-commit and acknowledgment boundaries from the existing domain plan. Observe stable business/idempotency identity, transaction/result records, external effect/status lookup, queue/lease state and actual bounded attempts. Prove the promised no-duplication/no-loss or documented partial-effect outcome with durable effects, not message counts, a drained queue or HTTP status alone. Do not assume timeout means no commit or that a retry means recovery.

## 4. Execute the finite drill

1. Recheck current authority/target/ownership, identity and budget, baseline readiness, observers and stop/restoration controls. Begin only the exact approved injection through its discovered supported interface. Capture sanitized command/API and cwd, start/end times, native response/operation ID and effective duration/scope; keep the stop control active throughout.
2. Verify actual delivery through the declared independent boundary observer. If it did not reach the intended boundary, preserve the ineffective attempt and its narrower result. Do not increase fault strength, widen targets, repeat indefinitely or claim a successful drill. A retry needs remaining budget, established no-live/terminal ownership and unchanged valid authority.
3. Exercise the fixed consumer sequence and observe its independent predicates. Retain original output, partial effects, errors, contrary evidence and timing. Keep every attempt immutable; later success does not erase an invariant violation, settle an original finding or establish causality for an unrelated failure.
4. On the first applicable duration/action/impact/resource/cost limit, breached invariant, missing required signal, lost isolation/ownership, target drift or expired authority, stop injecting through the declared control. Cancel only supported owned work; preserve what can still complete. Do not suppress alarms, discard failing requests, relax product timeouts or weaken assertions to finish green.
5. Disable/revoke the exact fault and observe its actual absence through the real mechanism and affected boundary. Check controllers, scheduled recurrence and leases, not just the original CLI. Observe post-removal recovery for the full accepted window and compare service behavior and durable state with the predeclared predicates. If restoration requires a different artifact/config/schema or provider effect, use its separately authorized domain/release recovery; no blind reverse migration or destructive automatic repair.

## Interruption, restoration and residual ownership

Establish the supported fail-safe stop/restoration path before starting, and use it on success, failure, interruption, cancellation and blocked partial setup. On disconnect or ambiguous return, preserve exact injector/operation/resource and business identities, current counters and last observations. Reconcile actual host/controller/provider state; a cancellation request or elapsed local timeout is not proof injection stopped. Stop/fence the prior owner with observed native acknowledgment/terminal state or effective fencing before retry or ownership transfer.

Unknown liveness blocks overlapping injection, reset and cleanup. Use the pre-established independent stop/fencing path; do not launch a competing cleanup writer or release an uncertain live owner's protections. Query ambiguous external business outcomes by actual operation/idempotency identity before retrying requests or compensating. If the service cannot establish whether an effect occurred, keep that operation blocked for its accountable owner rather than blindly repeat it or claim no effect.

After fault removal, reconcile delayed jobs/retries, leased work, committed/partial data, downstream effects and stale owners. Read back the actual restored configuration and required dependency state; exercise the real consumer journey and inspect durable invariants, including forbidden duplicate/missing effects. For restore claims, observe actual restored data/application readiness and selected recovery objectives through the existing restore procedure. A mock provider, reset fixture or manually generated receipt cannot prove real provider restoration or production recoverability.

If a threshold is missed, record the observed violation even when eventual restoration succeeds. If restoration is incomplete or unknown, retain the last observed state, exact resource/operation/lease IDs, ongoing risk/cost, safe next action and an acknowledged accountable residual owner. Without acknowledgment do not declare handoff complete. Escalate actual escaped impact through the authorized incident process; never claim the drill certified safety or hide the failed fault/recovery phase behind cleanup success.

## Evidence and completion

Return the [assigned report](../../templates/response-template.md), or no-write assessment, with:

- Accepted scope/invariant and hypothesis, comparison rationale, exact identities/actors/resources, discovered tool interfaces and nested effects, authority/isolation, bounds and actual counters.
- One evidence row per planned comparison/fault/recovery case: expected versus actual injection, consumer and durable-state predicates; exact command/action/cwd and interval; native receipts and independent observations; NOT RUN/PASS/FAIL/BLOCKED/INVALIDATED and the precise gap/owner. Required unrun or inconclusive proof is BLOCKED, never PASS.
- Every original finding and retained counterexample with current disposition; separate demonstrated mechanism from inference, fault delivery from tolerance, and restored service/data from mere injection removal. A completed diagnosis or design can satisfy its own assignment while product recovery remains unproved or failed.
- One acceptance-coverage row per assigned criterion and the actual executing-role verdict, without creating verdicts or treating a tool exit as gate success. Required checks/reviews, approval and publication/deployment authority are unchanged.
- Actual stopped/fenced handles/controllers, fault-removal/restoration and cleanup receipts, reconciliation, residual impact/resources/cost and acknowledged owners, including exact prerequisites for blocked recovery.

Index sanitized retained evidence with exact locator/digest, immutable attempt/artifact IDs, raw-versus-retained provenance, retrieval identity, real ACL and retention/expiry. Verify required proof remains readable after teardown; do not delete it with disposable fixtures. Preserve completed attempts and failed predicates; a changed artifact/config/fixture/observer/injector, objective, policy, environment or mechanism invalidates dependent observations under verification-strategy rules.

Remove only authorized owned temporary hooks/probes/resources after preserving evidence and observing stopped/fenced ownership. Restore temporary configuration and verify removal through actual readback; do not purge shared queues, acknowledge away work, alter retained backups or delete the only recovery artifact. End with the bounded diagnosis/proof actually established and real restoration or an accountable blocked recovery state. No finite drill proves universal resilience, provider safety, production readiness or permission to publish.