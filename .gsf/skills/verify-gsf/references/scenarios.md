# GSF acceptance scenarios

These are behavioral scenarios, not prefilled passes. The executor records actual inputs, host receipts, observed dispositions and limitations. Use independent scratch copies for destructive negative cases; never weaken the source policy to manufacture a pass.

| ID | Scenario | Required observation |
|---|---|---|
| F01 | Markdown distribution and reference closure | Only operational Markdown plus Git ignore metadata; valid frontmatter, contracts, paths and license; no legacy operational names or dual formats |
| F02 | Seven typed policy/state boundaries | Config/plan/event/models/candidate/environment/release schemas and new examples validated; unsupported versions and malformed fields rejected; semantic authority/DAG/identity checks performed separately |
| F03 | Fresh initialization then cold pickup | Exact explicit job ID, bootstrap intake, preserved prior attempts/evidence, no duplicate finished work |
| F04 | Configured layout without default resource copies | Canonical `.gsf/GSF_CONFIG.md` stays fixed; configured agents/skills/templates/jobs/constraints and corresponding checks resolve inside repository without stale default-resource fallback; missing canonical policy is a separate rejection case |
| F05 | Real implementation and independent approval | Actual intake/spec/builder/check/reviewer/approver receipts; real product interaction passes; final candidate agrees; publication disabled yields local approved handoff |
| F06 | Failed, unrun, stale and incomplete evidence | Missing security review, executed check failure, missing command, stale candidate or reviewer CHANGES keeps approval blocked |
| F07 | Candidate versus evidence identity | Evidence append leaves candidate unchanged; same-HEAD source edit, untracked source addition, binary edit and deletion change it; policy change is separately tracked |
| F08 | Duplicate and sender integrity | Equivalent parsed duplicate acknowledges once; conflicting ID, wrong role/job/task/current dispatch/report path and invalid reply target block; dependents not dispatched twice |
| F09 | Partial-write reconciliation | Dispatch intent without receipt, report without done, done without usable report, accepted inbox event before plan/report promotion and partial event tail reconcile by normative table; unknown liveness never permits overlapping retry |
| F10 | Pause/resume and instruction version | Explicit pause or capability suspension records valid state; active writers accounted for; pickup uses recorded branch instruction version, not a silent trunk substitution |
| F11 | Lost publication receipt | On authorized publication only, query real forge state before retry. Without authorization/capability mark live effect unexercised; inspect saved-state reconciliation without inventing a created PR |
| F12 | Read-only/serial fallback | Explicit no-write investigation does not initialize files; no-delegation host may execute serial allowed roles but cannot claim independent review/approval |
| S01 | bro | Rewrites the preceding assistant answer plainly, preserving facts; does not start work or invent status |
| S02 | sharpen | Produces professional-method/source/tool/proof diagnostics and rewritten prompt; leaves product decisions open and does not execute the prompt |
| S03 | verification lifecycle | Launch/doctor/drive/evidence/cleanup are exercised, failed-drive residue removed and evidence survives; maintenance distinguishes doc drift from real product regression |
| S04 | history and learning | Recall stays within authorized workspace/topic/window; unavailable history disclosed; reflection returns a proposal before durable edits |
| S05 | source comment audit | Read-only reviewer distinguishes legal/API/external constraints from redundant text; suppression removal needs correctness evidence; PR-thread triage remains separate |
| S06 | performance numbers | Errors and correct work counted, timed region verified, equivalent tuning and repeated alternating order documented; no unsupported speedup |
| O01 | Optional media | Real renderer output inspected before claiming video; unavailable renderer is a disclosed limit |
| O02 | Optional formal checker | Actual checker/tool version, model/code correspondence, bounds and counterexample or completed result; no proof inferred from syntax or diagrams |

F01–F10 and F12 remain required core lifecycle coverage for a complete framework check. Core operational contract coverage additionally requires D05, D09's locally observable limits/checkpoint/resume cases, D10's local retrieval/integrity cases, D11 and D12 below; no newly required capability can silently be waived. A missing core host/delegation/observer is BLOCKED. F11 live publication remains gated by authentic authorization and real capability and is not needed to prove denied-publication handoff. S scenarios are required when their skill changes. O scenarios and domain/live surface cases become mandatory for affected accepted requirements, not for every change. A complete framework-core result is not a claim all domain/live scenarios passed. A focused subset must name its exact scope and uncovered rows; it does not replace the complete configured gate.

## Canonical disposable product task

Create a small real CLI in an owned temporary Git repository, outside GSF source. It accepts a comma-separated integer list and an optional nonnegative minimum, prints the sum of retained integers and their count, and returns a documented nonzero error for invalid integers or a negative minimum. Require deterministic exact-output tests for mixed/negative values, filtering, an empty result and invalid input. Use the installed runtime, no dependency download. The specification must freeze exact invocation/output/error behavior before implementation. This is a lifecycle exercise, not a shipped product.

## Beyond-CLI operational corpus

The [full host-executable recipes](operational-scenarios.md) define concrete fixtures, inputs, expected values, adverse mutations, recovery, failure dispositions and cleanup. They are procedures, not executed evidence. Instantiate only outside the source distribution with real available tools; actual invocations and host bindings must be frozen in evidence before execution. Missing required infrastructure stays BLOCKED; recorded plans are never live cloud proof.

| ID | Surface and fixed oracle | Required scope |
|---|---|---|
| D01 | Authenticated browser, keyboard/a11y, two tenants; forbidden fetch 404, anonymous 401, persisted exact body and zero foreign sentinel leakage | Affected web/auth/privacy/a11y requirements |
| D02 | Real database; interrupted 2-row backfill, four preserved balances sum 155, idempotent resume, actual backup restore and row-level equality | Affected migration/backfill/recovery requirements |
| D03 | Durable async E1 +7/E2 -2; duplicate/crash/ack/replay yields two effects and balance 5; conflicting duplicate quarantines | Affected async/deduplication/replay requirements |
| D04 | Actual prior/current SDK consumers compile/run; exact values/errors, optional field compatible, required field removal rejected | Affected public API/SDK compatibility requirements |
| D05 | Recorded synthetic cloud plan/account/state/expiry/action mismatches reject effects; no live succeeded claim | Core authority/plan/release contract cases |
| D06 | Separately authorized real provider sandbox; actual immutable artifact/readback, receipts, abort/recovery, owned cleanup | Only authorized live-cloud requirement; otherwise explicit NOT RUN/BLOCKED |
| D07 | Real build/output A versus substituted B, dependency/config/toolchain drift; mismatched provenance blocks handoff | Affected build/supply-chain/artifact requirements |
| D08 | Actual host/version observations, unsupported adapter/version rejection, frozen old-job versus authorized policy2 migration | Affected portability/upgrade requirements; report each unexercised host |
| D09 | Parallel cap 1, two no-progress attempts, one-minute deadline, fenced checkpoint/cold resume with no silent reset | Core locally observable cases; real quota/cost cases only with actual counters/controls |
| D10 | Retained proof bytes retrieved after teardown/cold resume; missing/mutated proof blocks; actual ACL/expiry cases separately reported | Core local retrieval/integrity; affected selected-store ACL/retention capabilities |
| D11 | Configured paths with legacy sentinel ignored; dirty/ignored/untracked/binary/deleted inputs change identity; isolated external export/output links | Core no-fallback and candidate/evidence identity |
| D12 | Risk-selected minimal proofs preserve required gates; unavailable required surface blocks; exact dependency proof for reused evidence | Core scope/strategy/reuse semantics |

When reporting a scenario containing subcases, enumerate each one; one successful positive input cannot mark interrupted/adverse/recovery or unavailable live subcases PASS. A core-local D09/D10 result must explicitly exclude unexecuted provider quota, remote ACL and real expiry behavior. Platform/media/formal claims require their actual tools, supported versions and artifacts.
