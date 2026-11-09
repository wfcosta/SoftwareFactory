---
name: accepted-outcome-cost
description: Assess exact source-bound all-attempt monetary spend per independently accepted outcome, preserving allocation, duplicates, currency separation, pending liabilities and undefined zero denominators without inventing costs or business acceptance.
---

# Accepted outcome cost

## Role

Review a finite accepted economic question: what actual evidenced spend belongs to a specified cohort, and which distinct outcomes were independently accepted? This is an agent accounting assessment, not a billing ledger, profitability model, automatic meter, acceptance authority or spend-control runtime. A successful tool call, completed task or produced artifact is not by itself an accepted outcome.

Follow the [worker contract](../../agents/WORKER_CONTRACT.md), [configuration](../../state/config-contract.md), [environment](../../state/environment-contract.md) and [candidate/evidence](../../state/candidate-contract.md) contracts. Reuse [usage evidence review](../usage-evidence-review/SKILL.md) for original quantity/event semantics and exact arithmetic, [provider evidence review](../provider-evidence-review/SKILL.md) for retained-source coverage, [telemetry review](../telemetry-review/SKILL.md) for meter delivery and [budget admission control](../budget-admission-control/SKILL.md) for future liability/admission rather than conflating those with actual spend.

Direct no-write questions use permitted retained evidence and return chat without files, jobs, refreshes or calls. An authorized dispatch writes only its assigned owned Markdown report. No commands, probes, billing/provider/model calls, new measurements or acceptance decisions occur under this review.

## Context

Freeze the exact question, authentic economic/outcome owners, job/candidate/policy/environment and original source identities. Obtain the accepted cohort definition, inclusion/exclusion boundary, account/tenant/resource scope, accounting interval/as-of instant, monetary basis (such as actual billed versus source-proven accrued cost), and allowed completeness qualifications. Separate producer usage time, posting/settlement time and outcome-acceptance time; do not silently move late bills or accepted results into a favorable window.

Obtain the finite original attempt/operation list, including failures, interruptions, retries, cancellations, live/in-flight operations, shared services and zero-outcome work. Obtain independently retained original charge/usage pins and original outcome/acceptance receipts, accepted allocation/deduplication semantics, currency/minor-unit exponents, exact source/rate revision if applicable, and report audience/custody. Missing history is a gap, not permission to reconstruct acceptance or omit costs.

Accept finite bounds for sources/records/outcomes/attempts, per/total bytes, parsing depth/nodes where required, decimal digits/scale, arithmetic/allocation work, report bytes and elapsed review time. Use only existing approved bounded readers and exact arithmetic; absence blocks dependent calculations rather than authorizing an implementation. Source documentation needs its actual version or exact URL, retrieval time and applicability; a price example is not this account's charge.

## Task

### 1. Recover all-attempt monetary evidence

1. Bind each fact to original pinned bytes/pointer, authentic producer/account, event/request/operation identity, source time/window, meter/unit, original exact quantity, currency and charge qualification. Apply usage-evidence-review's event/cumulative/epoch semantics; equal bytes or adjacent timestamps do not prove duplicate physical charges.
2. Reconcile the selected attempt population to original execution/operation history and the selected meter/invoice coverage. Include actually incurred failed, rejected, interrupted, cancelled and in-flight charges, retries, nested tools and attributable storage/network/telemetry charges within the accepted economic boundary. Keep unmetered or unobserved families visible; do not assert complete total spend because every listed record was processed.
3. Use actual charge receipts when available. A derived monetary amount needs original exact usage plus authentic effective account/service/rate/currency/interval and actual applicable tier/discount/credit/tax semantics under the accepted basis. Without those, preserve the original usage and block the monetary derivation. Never infer prices from token counts, advertised free tiers or another model/account. Keep estimates separate from actual incurred cost.
4. Store policy/derived cost bounds in exact ISO 4217 integer minor units using the observed currency exponent and existing approved exact-decimal/scaled-integer tools; preserve original exact decimal amounts and conversion trail. Conservatively round accrued costs upward under the configuration contract, state the aggregation/rounding boundary and report any conservative excess separately from source totals. Do not use binary floats, assume two decimal places or silently count rounding differences as provider charges.
5. Keep currencies separate, with no invented FX/global sum. Credits/tokens are distinct usage units, not money. Apply refunds/credits only when original authentic adjustment identity, original charge relationship and accepted accounting basis establish their treatment; pending or merely promised credits do not reduce actual incurred spend. Conflicting identity/amount or adjustment semantics blocks the affected total.

### 2. Reconcile identity and allocation without hiding waste

1. Deduplicate repeated snapshots, projection aliases and copied receipts for the same physical charge exactly once using source-backed identity, retaining duplicate lineage. Distinct attempts remain distinct even if payloads/amounts match. An invoice aggregate and its constituent charge rows are alternatives for the same covered spend, not additive independent costs; reconcile overlap explicitly.
2. Associate every included attempt/charge with its accepted cohort, operation and outcome attribution if evidenced. Preserve unsuccessful and zero-outcome rows; failed-attempt spend cannot disappear by assigning only successful attempts to an outcome.
3. Use an authentic accepted allocation rule for shared costs and cross-cohort activity, with exact basis, source quantities, finite weights and remainder handling. Allocate each included charge once overall; allocated pieces plus explicit unallocated residual must reconcile exactly to the original monetary basis within each currency. Do not make shared allocations appear independently billed or round each share in a way that creates/destroys cost. If exact minor-unit shares need rounding, preserve the accepted deterministic remainder assignment and its evidence; no invented rule.
4. Unknown required allocation remains unallocated/blocked, not zero or equally split by default. Distinguish cohort-wide attributable waste/overhead from optional per-outcome allocations. Cohort spend divided by accepted outcomes is an aggregate measure, not proof each outcome individually cost that amount.
5. Retain cross-boundary, excluded and disputed amounts with their exact accepted reason. A revised cohort or allocation rule creates a new review binding and requires affected recalculation; it cannot retroactively erase original attempts.

### 3. Establish the accepted-outcome denominator independently

1. Recover the exact accepted outcome definition, success predicate, accepting authority, required acceptance evidence, canonical outcome/business identity and acceptance instant/version. Use existing coordinator/product acceptance receipts appropriate to that definition; factory task completion alone cannot substitute for customer or business acceptance.
2. Count each distinct outcome once only when the authorized acceptance evidence satisfies the frozen predicate and cohort boundary. Several attempts, artifacts, notifications or receipt copies for one outcome do not multiply the denominator. One attempt producing multiple outcomes needs actual separate accepted identities and the accepted counting rule, not an inferred multiplier.
3. Keep accepted, pending, rejected, disputed, revoked and unknown outcomes separately visible. Apply the accepted as-of/revocation policy; an unresolved required outcome-state conflict blocks the denominator. Do not count pending acceptance or invent retroactive acceptance from a later successful run.
4. Reconcile denominator identities and membership against an independently accepted original population, not only a success-filtered report. If coverage is incomplete, report a known accepted count with explicit partiality; do not present it as the complete cohort denominator.

### 4. State the result only at its supported level

Let **Cᶜ** be complete reconciled actual incurred cohort cost in currency c, and **K** the complete independently accepted distinct-outcome count for the same frozen cohort/as-of semantics. Only with known complete Cᶜ and K>0 report **Cᶜ / K**, separately by currency, as an exact rational/decimal with an explicit accepted display-rounding rule. A cost-per-outcome ratio can be fractional minor units; a rounded display is not a new source cost and cannot enter a policy cap as a fractional JSON number.

| Situation | Honest result |
| --- | --- |
| Complete spend and complete K>0 | Source-bound cohort cost per accepted outcome, scoped to its currency/basis/window |
| Complete K=0, whether cost is zero or positive | Undefined/no accepted outcomes; show cost and zero count, never zero cost per outcome, division by zero or invented infinity |
| Pending/unknown outcome or incomplete accepted population | Known accepted count plus pending/unknown coverage; final ratio BLOCKED; any explicitly requested known-only calculation must be labelled conditional, not the final cohort result |
| In-flight operation with incomplete final cost | Include all observed accrued spend and preserve residual unknown/bounded liability separately; final all-attempt cost/ratio BLOCKED until reconciled |
| Missing charge, ambiguous allocation, meter conflict or unknown currency mapping | Known subtotal with explicit partiality and exact missing component; never a complete total or a free operation |

A reservation or maximum possible future liability is not actual spend: do not add it to Cᶜ as a charge. Conversely, do not omit incurred in-flight charges because settlement is pending. Final reporting needs closure/settlement coverage for every included attempt or exact accepted source-backed final-charge semantics. Local completion/cancellation does not prove remote stop or billing finality. Separate actual-spend coverage from any optional exposure bound, and hand unresolved operation/charge identity to its existing authorized owner without querying, replaying or cancelling it.

## Constraints

No invented rates, costs, credits, outcomes, allocation weights, currency exponents, resets or acceptance. No new ledger/schema/runtime/parser, commands, billing refresh, provider/model call, credentials or host enablement. This procedure grants neither future spend admission nor business acceptance and creates no mandatory gate or canonical economic source.

Original evidence stays immutable with real retrieval/ACL/retention and original-versus-sanitized provenance. Source, meter, rate, currency, cohort, acceptance definition/state, allocation, deduplication identity or as-of changes invalidate dependent results. Preserve historical originals and original findings; complete safe partial analysis while required unknowns stay blocked. Offline review has no cleanup effects; surrounding live resources retain their actual current owners.

## Format

Use the [assigned response template](../../templates/response-template.md) or no-write chat. Include the exact economic question/owner, cohort and as-of boundary, monetary basis/currencies/exponents, full attempt and meter coverage, original source pins/quantities, exact derivations and rounding, deduplication/overlap and allocation reconciliation, and independent outcome identities/acceptance authority/counts.

| Criterion / cohort and currency | Expected spend or acceptance predicate | Original source / exact calculation / actual result | MET / NOT_MET / BLOCKED; partial or pending reason | Existing owner / exact reconciliation prerequisite |
| --- | --- | --- | --- | --- |

State Cᶜ, K and ratio only at supported completeness, plus known subtotals, excluded/unallocated/unknown amounts and pending/zero denominators. Cover every assigned criterion/finding, actual versus NOT RUN actions, executing-role verdict, stop class, private-safe evidence locators/digests/provenance/retrieval/retention, modified product files normally `[]` and unresolved operation/settlement owners. A completed review may accurately conclude the requested ratio is unknown.

### Manual consumer cases — illustrative, NOT RUN

- **All attempts, one accepted outcome:** synthetic pinned same-currency charges of 20, 30 and 50 minor units belong to two failed attempts and one successful attempt for one independently accepted outcome. C=100 and K=1, not C=50; a copied final receipt contributes once. The example invents no actual charge or acceptance.
- **Zero and pending:** complete cost 100 with zero accepted outcomes has no defined ratio. If one candidate outcome is pending acceptance, show pending separately and block the final denominator; do not call it accepted to obtain a favorable quotient.
- **In-flight liability:** two settled receipts total 100 and a third live attempt has 5 observed accrued units with unknown tail. Known actual subtotal is 105 with partial coverage. A reservation of 40 is not an additional actual charge and does not make final cost known; reconciliation remains with the native owner.
- **Allocation, overlap and currency:** an aggregate invoice overlaps its itemized charge rows; count covered spend once. A shared charge with no accepted allocation remains unallocated, and EUR plus USD remain separate. Missing original rate/acceptance pins or a native billing interface cannot be replaced by a guessed price, average split or new collector.
