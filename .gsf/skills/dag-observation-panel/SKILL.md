---
name: dag-observation-panel
description: Render a bounded source-bound view of the existing GSF DAG, attempts, dependencies, owners and waits without mutating canonical state or promoting transport status into acceptance.
---

# DAG observation panel

## Role

Explain the current accepted plan and its evidence, not create another scheduler, dashboard service, event ledger or coordinator. Follow the [plan contract](../../state/plan-contract.md), [worker contract](../../agents/WORKER_CONTRACT.md), [event contract](../../state/event-contract.md), [candidate contract](../../state/candidate-contract.md) and [evidence operations](../../docs/operations/README.md). Their exact states, role verdicts and acceptance rules remain authoritative.

Direct questions return no-write chat; a dispatch writes only its assigned Markdown view. Rendering never changes plan, inbox/outbox, report acceptance, ownership, grants or publication state.

## Context

Obtain one exact authorized job and accepted plan revision/raw identity, frozen policy/instructions, finite task/attempt/edge/event limits, complete approved accepted-event coverage/head, actual report/dispatch origins and intended reader. Use only explicit supplied records or approved exact reading routes; no private-job discovery or historical transcript scan.

Record snapshot capture time, source observation times, stale/partial/unavailable surfaces and refresh mechanism. An available host task listing is transport evidence, not a canonical GSF plan; an authorized maintenance journal must be labeled as such, without manufacturing formal IDs or events.

## Task

1. Retrieve the complete bounded accepted plan and its independently retained identity. Use existing authorized strict native parsing/schema capabilities when required; absent parsing blocks a validated-plan claim, not permission to implement a parser. Validate explicit job/task/dispatch IDs, unique IDs, existing dependencies, no cycles/self-edges, configured roles/reports and exact current-attempt membership.
2. Preserve every task and prior attempt. Canonical plan states are pending, running, succeeded, failed, blocked, cancelled and paused; unknown values are errors, not new states. Running/succeeded/failed require their current dispatch under the plan contract. Do not split a hyphenated identifier to infer a job or map native handles into lifecycle IDs.
3. Reconcile accepted events and actual current report origin/verdict separately from plan projection. Native execution succeeded with reviewer CHANGES is not a passing dependency. A report file, worker_done, host completion, acknowledgment or green badge alone is not completion_accepted/report_promoted/gate_passed. Preserve contradiction as an explicit source mismatch, not a repaired plan.
4. Map every original dependency and unresolved blocker, including transitive blocking chains, unanswered questions, current ownership, exact pending approval/effect and stale required capability. Do not drop blocked nodes, skipped attempts or failed branches to produce a cleaner picture. Preserve independently accepted role-specific passing verdicts; CLEAN is not code/security PASS.
5. Derive readiness only from current accepted prerequisites, current grants/capabilities and reconciled nonoverlapping ownership. Display inferred eligibility separately from canonical task status. A visually ready node is not admitted, dispatched or authorized; a proposed wave is not a live capacity lease.
6. Record capacity and wait facts only from actually observed native controls and timestamps. Separate queue, dependency, reviewer, human decision, provider quota, resource ownership and unknown causes. Correlation is not causation; overlapping intervals are not additive wall time. Missing liveness or meter evidence remains unknown, not idle/free.
7. Render validated dependency structure as Mermaid with safely quoted display labels and original identity references, not executable content from source descriptions. Keep node status/evidence in either graph annotations or a separate table, not conflicting duplicate status presentations. Use a separate gap/owner table for unresolved sources/actions; never include secrets, private prompts or unrestricted artifact URLs.
8. Include a finite completeness statement: all expected tasks/attempts/edges covered or exact missing/over-limit sections. If the complete graph cannot fit, supply an explicitly partial view plus approved whole-source retrieval route; do not label a sampled subgraph complete or hide nodes behind unexplained ellipses.
9. Refresh only through an actually available authorized event subscription or explicit bounded read. Retain snapshot/revision history and invalidate on changed plan/events/owners/grants/candidate. No polling daemon, automatic wake or live-update guarantee is supplied. Unknown current state blocks claims of current readiness, not delivery of a qualified historical snapshot.

## Constraints

Read-only projection cannot accept completion, fix malformed records, fabricate worker events, rerun checks, release ownership, dispatch work or authorize merge/deploy. Canonical changes belong solely to the coordinator under existing contracts. A graph is not a lock, scheduler, ACL, native liveness attestation or proof of business success. Preserve original failures and user changes; never query private jobs merely to populate a panel.

## Format

Return the [assigned response](../../templates/response-template.md) or no-write chat: exact job/plan/event/candidate/policy identities and observation times; validated dependency visualization or explicit reason it cannot be validated; actual state/current-attempt/role-verdict/acceptance distinctions; finite coverage; wait/capacity/ownership sources and unknowns; per-criterion predicate/evidence/MET–NOT_MET–BLOCKED; exact gaps/next owners; retention/access and invalidation/refresh mechanism; executed versus NOT RUN actions and modified files (normally `[]`).

Illustrative cases, NOT RUN: succeeded execution plus CHANGES keeps dependents ineligible; a superseded attempt's later completion remains history; four spawned native handles without a canonical plan can be described only as a qualified transport view, not four accepted running DAG nodes. A cycle blocks validated graph/readiness claims rather than being silently removed.
