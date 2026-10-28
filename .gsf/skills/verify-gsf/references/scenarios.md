# GSF acceptance scenarios

These are behavioral scenarios, not prefilled passes. The executor records actual inputs, host receipts, observed dispositions and limitations. Use independent scratch copies for destructive negative cases; never weaken the source policy to manufacture a pass.

| ID | Scenario | Required observation |
|---|---|---|
| F01 | Markdown distribution and reference closure | Only operational Markdown plus Git ignore metadata; valid frontmatter, contracts, paths and license; no legacy operational names or dual formats |
| F02 | Typed policy/state boundaries | Valid policy/plan/events/models accepted; malformed permissions/paths/events/panels rejected; semantic DAG/sender checks performed separately |
| F03 | Fresh initialization then cold pickup | Exact explicit job ID, bootstrap intake, preserved prior attempts/evidence, no duplicate finished work |
| F04 | Configured layout without default copies | Configured policy/agents/skills/templates/jobs resolve inside repository; no fallback to stale defaults |
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

F01–F10 and F12 are core lifecycle coverage for a complete framework check; live external publication in F11 is gated by explicit authorization and real capability and is not required to test a denied-publication handoff. S scenarios are required when their corresponding skill changes. O scenarios become mandatory only when the request requires their surface.

## Canonical disposable product task

Create a small real CLI in an owned temporary Git repository, outside GSF source. It accepts a comma-separated integer list and an optional nonnegative minimum, prints the sum of retained integers and their count, and returns a documented nonzero error for invalid integers or a negative minimum. Require deterministic exact-output tests for mixed/negative values, filtering, an empty result and invalid input. Use the installed runtime, no dependency download. The specification must freeze exact invocation/output/error behavior before implementation. This is a lifecycle exercise, not a shipped product.
