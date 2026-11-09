---
name: cancellation-confirmation
description: Review or perform separately authorized bounded cancellation requests while distinguishing intent, native acknowledgment, exact-scope stop and durable ownership fencing from retry, transfer and business acceptance.
---

# Cancellation confirmation

## 1. Role

Keep cancellation intent separate from actual confirmation for one exact owned operation. This Markdown procedure supplies no cancellation token, process supervisor, durable queue, registry or native stop/fence implementation. Missing real native controls block the requested effect; a report cannot replace them.

Follow [GSF run](../gsf-run/SKILL.md) and the configured [worker contract](../../agents/WORKER_CONTRACT.md). Use its existing cancellation/reconciliation protocol and the accepted [event](../../state/event-contract.md), [plan](../../state/plan-contract.md) and [candidate evidence](../../state/candidate-contract.md) contracts. Do not add lifecycle events, role verdicts or a second cancellation ledger.

A direct read-only request returns the review in conversation and performs no cancellation. An authorized dispatch writes only its assigned report/dispatch evidence. The coordinator alone persists canonical cancellation intent, accepts results and decides any subsequent assignment with separate authority.

## 2. Context

Read the actual assignment and approved native source contract before requesting anything:

- Exact operation and actual current owner; repository/worktree, task/dispatch or genuine maintenance ID, native process/birth/generation/session/context, owned child scope, transport/observer and ownership reservation where exposed. Unknown IDs remain unknown; maintenance never needs invented factory IDs.
- Explicit cancellation authority: requester, authentic permission, exact target, allowed notification/request method, resource/child scope and any exclusions. A cancel event, available credential or target label is not a native grant.
- Actual existing control/owner channel and its version/build, supported acknowledgment and stop semantics, finite wait/cleanup limits, race behavior and durable ownership mechanism if applicable.
- Prior intent/request/status/result receipts, child/transport/observer facts, before/after manifests and exact persisted reservation disposition with provenance, time, freshness and authorized reader.
- Accepted finite notification/request count, observation samples/bytes, total wait/review budget and stop condition; assigned report destination/audience. Missing bounds blocks new requests/collection, not supplied-evidence review.

Saved status JSON, copied receipts and edited booleans are not a live control or current stop authority. Do not discover controls or permissions through private settings, HOME, credentials, arbitrary PIDs or unrelated host sessions.

## 3. Task

1. **Freeze the exact target.** Match accepted owner/attempt and native scope to the existing control. Record declared versus native-observed identities and unknowns. A matching PID/name or old host handle alone cannot bind the live instance; unclear identity blocks the request.
2. **Separate review from effect.** With read-only authority inspect supplied evidence only. A cancellation request requires its own explicit exact-target permission and existing supported control; never infer it from loading this skill, a report-write grant or a coordinator's stale intent.
3. **Reconcile existing intent first.** Read the last accepted request and actual native status. The coordinator persists any new formal cancellation intent under the existing contracts before an authorized request. Workers do not fabricate coordinator events or overwrite request history.
4. **Notify/request within bounds.** Use the approved owner/control channel once or idempotently only as its real contract permits. Record actual request receipt and phase, not assumed delivery or acceptance. Do not turn a wait timeout into another operation, token reuse or unscoped process kill.
5. **Observe without inventing authority.** Use only the permitted same-instance status/wait operation for the finite budget. Preserve pending, timeout, finished-unconfirmed and error outcomes. A false pending flag or a returned wait means the observation ended, not necessarily cancellation acknowledged.
6. **Distinguish request consumption from cause.** An eligible native supervisor/gate must actually observe the request for acknowledgment. An exit, timeout or concurrent fault may coincide with consumption; do not claim cancellation caused exit without evidence. A late first request after normal stop/finish cannot acknowledge an earlier stop retroactively.
7. **Check a proven-no-launch branch narrowly.** Require the source's scoped never-launch proof and known no-acquired-reservation outcome. No process means stop may be unknown/not applicable, never an invented stopped Job. A prelaunch request after reservation can leave retained/quarantined ownership and is not a complete fence.
8. **Check actual launched-scope stop.** Require the source's actual owned native scope-empty/stop evidence, relevant descendant containment/reaping, transport closure/cleanup and observer drain/cancel/finalization as applicable. Direct-child PID exit, a terminal-looking error, context leftovers or unknown descendants cannot establish broader closure.
9. **Check the durable ownership fence.** When a reservation/lease was acquired, require complete applicable manifests, finalized observation, no unresolved identity/cleanup/loss faults and the actual committed disposition. Independently read back the exact persisted receipt/disposition through an approved existing surface; ambiguous commit or missing readback remains retained/unknown.
10. **Determine acknowledgment without widening it.** Require observed intent plus the full applicable local fence, or an authentic scoped no-launch/no-acquisition branch. Preserve each unknown separately. Even a genuine local acknowledgment does not prove arbitrary host, remote or model-worker termination or grant retry/transfer.
11. **Reconcile effects and hand off.** Keep writes already made, failed/partial execution and unknown external effects visible; cancellation is not rollback or business acceptance. Terminal unconfirmed/unknown outcomes block overlap, reuse and replay. Route exact missing native evidence/fencing to the current owner/coordinator without resetting history or bypassing admission.

### Outcome and race matrix

| Actual boundary | Required interpretation |
| --- | --- |
| Intent only, unbound control or unknown target | Requested, not acknowledged; stop/lease facts unknown; no reuse |
| Scoped no launch before reservation, no acquisition established | May confirm only that invocation's no-launch fence if native contract supports it; cannot clear another owner's reservation |
| Reservation acquired, launch skipped | Preserve no-launch fact separately; retained/quarantined lease prevents acknowledgment even if observer cleanup completed |
| Request races launch | Effects may already have happened; require actual owned stop and full finalization, not zero-effects claim |
| Request observed during execution | Consumption is not stop or causality; wait for actual complete scope/fence evidence |
| First request arrives after final eligible poll/finish | Late/unobserved cancellation remains unacknowledged even if normal completion independently fenced |
| Direct child exits, descendants/context/observer unknown | Unconfirmed; ownership remains blocked for the uncertain scope |
| Stop succeeds but registry/cleanup/readback fails | Retained/unknown fence, no acknowledgment/reuse |
| Crash, expired wait or terminal error with no full fence | Preserve unconfirmed uncertainty and any existing reservation; no synthetic crash acknowledgment |
| Full authentic scoped acknowledgment | Local cancellation confirmation only; separate coordinator authority, admission and effect reconciliation still required |

## 4. Constraints

- Never kill guessed/stale PIDs, unrelated host processes or remote operations, broaden child scope, discover credentials, install a supervisor, change registries, prune history or force-release ownership. Use only the supported exact-owner control already authorized.
- TTL, heartbeat loss, freed locks, stdout, future completion and kill-on-close promises are not durable scope-empty evidence. A saved receipt remains historical; it cannot become a live control by reloading.
- Where the source proves only direct-child cleanup, record descendants/host/remote stop as unknown. Missing native prerequisites block confirmation rather than being replaced by an assistant declaration.
- Keep source contracts, prior receipts and partially delivered effects intact. No workspace deletion, restore, compensation, report promotion or attempt replay is authorized here.
- Restrict source/output handling to the approved audience and existing evidence custody. Do not retain arguments, environment, raw stdout/stderr, secret payloads or private history merely to prove a request.
- Stop affected requesting/observation at authorization loss, identity drift, unsafe handling or accepted limits; finish independent supported report sections without claiming the target stopped.

## 5. Format

Return in conversation for read-only work, otherwise only the assigned report and authorized dispatch evidence. These are explanatory fields, not a new token/receipt schema:

| Section | Required content |
| --- | --- |
| Target and authority | Exact owner/attempt/native scope/build, declared versus observed identities, authentic request permission, supported control, exclusions and finite limits |
| Intent and request | Existing coordinator intent reference, actual request/delivery/consumption facts, first-request phase/time, repeated/late/racing request disposition and provenance |
| Observation timeline | Actual bounded waits/status samples, expiry/clock/coverage, raw flags, pending/finished/timeout/error distinctions and unknowns |
| Confirmation matrix | Requested; request observed; scope bound; stop; no launch; child reaping; transport/observer cleanup; manifests; lease disposition; durable readback; complete fence; acknowledgment, each with evidence or unknown |
| Outcome and retained effects | Actual execution failure/partial effects, unproved descendant/host/remote scope, retained reservation, terminal uncertainty and unchanged business acceptance |
| Coordinator handoff | Exact next evidence/action and accountable owner; overlap/reuse/replay blocks; separate remaining authority/admission prerequisites |
| Assignment coverage | Each exact criterion, actual evidence, MET/NOT_MET/BLOCKED, next owner/action and separate actual role verdict |

### Failure and acceptance cases

- Request and wait return while cleanup is pending: report intent/pending or timed out, not acknowledgment or release.
- First request arrives after a clean normal finish: preserve real stop facts but mark cancellation unobserved/unacknowledged.
- Direct child exits while a context or descendants remain unknown: terminal unconfirmed blocks reuse; no unscoped kill.
- No launch is proven after reservation: keep both facts; do not invent a stopped native job or release the retained row.
- Native stop and observer completion exist but durable disposition is ambiguous: preserve partial failure and block overlap/replay.
- Complete exact-scope confirmation still grants no retry, ownership transfer or business acceptance. These cases are instructions, not claims that a request, native stop or fence was exercised.
