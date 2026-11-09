---
name: budget-admission-control
description: Assess one bounded action against current accepted remaining budget, exact metering, disjoint in-flight liabilities, authority and real native caps before handing admission to its authorized owner.
---

# Budget admission control

## Role

Produce an evidence-bound admission recommendation for an exact proposed action. This agent procedure is not a spend controller, reservation service, billing ledger, scheduler, quota resetter or native enforcement mechanism. A paper decision does not reserve funds, cancel work or stop a provider from charging.

Follow the [worker contract](../../agents/WORKER_CONTRACT.md), [configuration](../../state/config-contract.md), [candidate/evidence](../../state/candidate-contract.md) and [environment](../../state/environment-contract.md) contracts. [Usage evidence review](../usage-evidence-review/SKILL.md) owns source-bound exact quantities; [provider evidence review](../provider-evidence-review/SKILL.md) owns bounded retained-source assessment; [scheduled job commissioning](../scheduled-job-commissioning/SKILL.md) owns occurrence and aggregate authority. Preserve their existing owners and the coordinator's single-writer lifecycle.

Direct requests use approved existing evidence and return no-write chat without jobs, files, refreshes or calls. Dispatch writes only its assigned owned Markdown report. Admission, native reservation/cap changes, execution and cancellation are separate effects owned by the existing authorized executor; this review makes no provider/model call or probe.

## Context

Freeze the exact action/attempt/occurrence, current job/candidate/policy/environment, requested and effective account/model/deployment/resource, accepted budget authority and validity, and the current owner of every spending operation sharing that budget. Obtain the authentic source and scope of the accepted cap, already consumed amount, existing commitments, concurrent usage and any separate account/provider cap. Credits, plan entitlement and a displayed balance are not spending authority or guaranteed future funds.

Require finite accepted bounds for inspected sources/records/bytes, exact arithmetic digits/scale/work, elapsed review time, decision freshness, live owners, proposed attempts/retries and maximum incremental charge including request overhead, nested tools, storage/ingestion, cancellation lag and capture. Bind actual native meter/cap/reservation/stop documentation and receipts to their version, exact scope and observation time/expiry. Documentation needs an approved immutable revision or exact URL and retrieval qualification; it is not a live control receipt.

## Task

### 1. Establish compatible exact money and coverage

1. Use the current effective policy/grants and original metering receipts, not a new task ID or refreshed balance that omits earlier attempts. Preserve consumption across retries, handoffs, failures, interruptions and occurrences. Require identity/coverage for all operations sharing the accepted budget; independently changing account usage needs actual native isolation/capacity control or a bounded liability.
2. Record cap and meter currency and actual ISO 4217 minor-unit exponent. Policy `max_cost` is an exact nonnegative integer in those minor units; null is unknown/unmetered, never free. Verify the original meter representation, charge dimensions, effective price/rate revision where needed, discounts/credits applicability and settlement lag. Tokens, credits or resource counts are not money without an accepted source-backed monetary interpretation.
3. Preserve original exact decimal strings and conversions through existing approved exact-decimal/scaled-integer capabilities. Do not use binary floats, assume two decimal places, invent exchange rates, convert foreign currencies or silently round down. Accrued costs round conservatively upward to the accepted minor unit; document conversion order and any resulting conservative excess. Unknown exponent, incompatible currency, ambiguous meter/rate or absent exact arithmetic blocks dependent capped execution.
4. Distinguish observed charges, observed monetary usage not yet posted, enforceable maximum future liability, estimates and unknowns. A list price or average historical cost is an estimate, not a bound. A zero reading with incomplete coverage is not proof of zero accrued liability; an unobserved chargeback/refund does not restore capacity.

### 2. Reconcile disjoint exposure before admission

Use report-local calculations referencing existing job/native records; do not create a canonical reservation store. The coordinator serializes the decision with the actual owner; Markdown alone cannot atomically reserve shared capacity.

- Let **B** be the authentic accepted total cap in one exact currency and policy scope. Let **A** be all already incurred liability included once, whether posted or source-proven unposted, through the stated observation boundary.
- For each existing operation **i**, let **Uᵢ** be a conservative native-backed bound for additional or not-yet-accounted liability outside A, including meter delay, pending provider work and cancellation tail. Include existing commitments that can still charge even when their local task appears complete.
- Partition native reservations/commitments against A and U explicitly: a charge already in A cannot also be counted as future exposure, and a reservation enclosing that charge contributes only its still-unaccounted remainder. Conversely, do not release reserved liability merely because a request returned or a meter has not updated. If this nonoverlap mapping cannot be established, the dependent decision is BLOCKED, not a guessed subtraction.
- Current safe remaining capacity is **R = B − A − ΣUᵢ**. Negative R is exhaustion/overrun evidence, never clamped into a passing zero balance. Require coverage and current native remaining-capacity evidence to agree with this scope; a broader account dashboard is not a job-level reservation.
- Let **N** be the complete enforceable maximum incremental liability of the proposed action, including bounded attempts and all dependent charges not already included. Admission requires N ≤ R, every other elapsed/concurrency/no-progress limit satisfied, and native remaining capacity sufficient for the same scope. Equality is usable only if all tails/overhead are already bounded and native semantics support it. Unknown N or U blocks affected execution even when the expected cost is small.

Use tighter authentic applicable caps; do not add unrelated balances or subtract overlapping caps as if independent charges. An actual zero-price claim needs source/version/account/interval evidence and complete charge coverage, not the absence of a meter. Even valid zero monetary liability does not waive other resource/time/authority limits.

### 3. Bind the recommendation to actual native admission

1. Confirm current authentic action-specific authority, expiry/revocation, effective target/identity, exact meter observation and the real native cap. Separate a billing alert, soft quota, token limit, projected estimate and postpaid balance from a hard stop that prevents exceeding this accepted monetary scope. Record what the native control actually bounds and excludes.
2. Require actual hard-cap/reservation/fencing controls adequate to enforce the accepted bound before dependent execution. If the host cannot expose/enforce a required cap, leave admission BLOCKED; manual arithmetic, a configured timeout or prose reservation is not an alternative enforcement claim.
3. Hand the exact frozen action, policy/environment, exposure calculation, native control revision/handle, decision expiry and required readback to the existing authorized executor. Immediately before any separate execution it must revalidate freshness, remaining capacity, concurrent ownership and current authority, then use its real serialized/conditional admission mechanism. A stale recommendation cannot be reused, and a route change requires a new compatible budget assessment.
4. The executor's authentic native reservation/admission receipt and effective cap/readback bind actual admission; its operation/request receipt binds actual execution. Retain the distinction from this recommendation. No receipt means not observed, not presumed admitted. No unsupported native fields or new grant/event types are introduced.

### 4. Stop, reconcile and renew without resetting limits

On expiry, exhaustion, no progress, cap drift or required meter uncertainty, withhold dependent admission and route stop/fence to the exact authorized current owner. Keep every in-flight liability reserved until actual stop/fence and final charge/upper-bound reconciliation. A cancellation request, local timeout, transport close or failed attempt does not prove remote stop or final billing.

After an ambiguous return, reconcile exact operation/intent/native reservation and liveness before retry or releasing capacity; unknown spend remains unknown or bounded by an evidenced residual maximum, never zero. Read back settlement, released reservation and current native cap before using restored capacity. If final spend is unavailable, retain the conservative bound and its owner. Restore execution only with observed safe ownership, satisfied prerequisites and authentic renewed authority/new effective policy where required. Do not reset elapsed/attempt/cost counters, assume periodic credits replenish, upgrade a plan, sign up or promise a quota reset.

## Constraints

No commands, native probes, new reservation/controller/runtime, service, parser, ledger, schema/model key, provider/model calls, credentials, paid-plan activation or host enablement. Unknown native controls or monetary sources cannot be replaced by optimistic estimates or a self-chosen allowance. This review grants no execution, publication or policy mutation rights.

Keep original contrary/failed receipts, exact derivations and safe evidence custody under the existing contracts. Drift in action, owner, account, model/deployment, meter, currency/exponent, prices, native cap, reservation, authority or policy invalidates affected admission. Complete unaffected source analysis without admitting blocked actions.

## Format

Use the [assigned response template](../../templates/response-template.md) or no-write chat. Include exact action and budget authority, scope/currency/exponent, source-pinned original meter amounts and conversion/rounding, all-attempt coverage, A and disjoint Uᵢ breakdown, R and N, native hard-cap versus estimate evidence, current owners and freshness.

| Criterion / accepted bound | Expected admission predicate | Actual source / exact amount / native receipt and limitations | MET / NOT_MET / BLOCKED | Held action / current owner / exact reconciliation or renewal prerequisite |
| --- | --- | --- | --- | --- |

Cover every criterion/finding; use the executing role's verdict without creating an admission event/state. Separate recommendation, actual native admission, execution, cancellation and settlement; include actual versus NOT RUN actions, private-safe locators/digests/provenance/retrieval/ACL/retention, stop class, modified product files normally `[]`, unknown spend and continuing ownership. Never label a paper recommendation “enforced.”

### Manual consumer cases — illustrative, NOT RUN

- **Disjoint exact boundary:** synthetic USD cap B=1000 cents, incurred A=300, and an existing native reservation of 500 includes 200 already in A, leaving U=300. R=400, not 200 or 700. A proposed N=400 can satisfy the arithmetic predicate only with complete tail coverage, current authority and the actual hard-cap/serialized-admission receipts; N=401 cannot.
- **Exact conversion:** if the independently evidenced currency exponent is 2, original accrued decimal `0.001` converts conservatively to 1 minor unit, not zero. An unknown exponent or a credit meter without monetary mapping blocks capped execution; this example supplies neither a currency source nor a rate.
- **Uncertain cancellation:** a failed request has no final usage and cancellation is only requested. Retain its native-backed residual bound; if no finite bound is evidenced, block new dependent admission. A fresh dispatch or scheduler occurrence restores neither money nor counters.
- **Soft limit and drift:** a dashboard alert/estimate claims sufficient funds but no actual compatible hard cap exists, or another live spender changed capacity after review. Block dependent execution/revalidate under the existing owner; do not implement a controller, reset limits or switch to a paid plan.
