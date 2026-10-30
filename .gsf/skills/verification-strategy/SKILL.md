---
name: verification-strategy
description: Select minimal sufficient proofs from requirements, invariants and impact risks; bind real fixtures, typed effects, environment and immutable evidence before checks or approval.
disable-model-invocation: true
---

# Verification strategy

## Inputs and authority

Read the accepted specification, impact assessment, candidate and policy snapshots, configured checks, required reviewers, [worker contract](../../agents/WORKER_CONTRACT.md), and [candidate](../../state/candidate-contract.md), [environment](../../state/environment-contract.md) and [release](../../state/release-contract.md) contracts. Use [domain-review](../domain-review/SKILL.md) for affected domain obligations. This procedure designs proof; it does not grant permission, install a runner, or replace required code/security review. A read-only request creates no job or evidence files.

## 1. Turn claims into falsifiable obligations

Read the accepted task matrix in `decision.md`/`spec.md`, built with the [impact-routing reference](../gsf-mode/references/impact-matrix.md), as the routing authority. Do not create a separate canonical matrix file. The strategy below is a proof view of those accepted rows, not a second impact schema or decision owner. Give each accepted requirement and invariant a stable ID. Include negative promises (no cross-tenant access, no duplicate business effect, no unauthorized publication), compatibility, recovery and operational limits when affected. For each, name the harmed actor, failure consequence, changed boundary, source entry points and observable pass predicate. Separate intended behavior from implementation details. Unknown intent stays unresolved; do not select an easier claim.

Create a strategy table in authorized job evidence with these columns; none may be silently omitted:

| Column | Required value |
|---|---|
| Obligation | Requirement/invariant ID, risk and acceptance predicate, including adverse case |
| Minimal proof | Selected check IDs and proof type; why it detects this failure; excluded types and reason |
| Fixture | Exact inputs and expected outputs/state, fixture digest or reproducible construction, reset/ownership recipe |
| Environment | Environment record reference, capability/target observations and expiry, host/tool versions, readiness predicates |
| Invocation | Actual command and repository-relative cwd or exact skill path; nested tools; timeout and resource bound |
| Effects | Configured `effect` and `target`, actual side effects, required authentic grant and platform controls |
| Identity | Candidate/policy IDs, instruction/check revision, build-input/config/toolchain identity and output digest |
| Evidence | Exact receipt/artifact locator, observation method, timestamp, expected/observed comparison, retrieval/retention proof |
| Limits | Assumptions, bounds, stand-ins, unavailable surfaces and explicitly unproved claims |
| Invalidation | Exact dependent inputs and triggers from the matrix below; rerun or justified reuse |
| Outcome | NOT RUN, PASS, FAIL, BLOCKED or INVALIDATED; executor and independent review references |

NOT RUN means no execution was attempted. BLOCKED means an identified prerequisite prevents the required proof; FAIL means an observed predicate was violated. INVALIDATED means a prior result no longer covers the accepted inputs. None counts as PASS. Record attempted invocations even when setup fails.

## 2. Select the smallest sufficient combination

Do not demand every test type for every change. Do not drop an accepted configured check or required reviewer through risk selection; changing those requires authorized policy acceptance. Select enough independent observations to cover the actual obligations:

| Proof | Select when | Minimum useful oracle and limitation |
|---|---|---|
| Unit | Local algorithm or validation rule changes | Invoke real implementation on positive/boundary/invalid input; compare independently calculated result. Does not prove wiring or deployment. |
| Integration | Persistence, auth, transport or service boundary changes | Real supported dependency and state before/after; inject relevant failure at the boundary. A substitute proves only its stated contract. |
| Consumer contract | SDK/API/schema compatibility changes | Compile/run actual supported consumer versions with real serialized messages, status/error/default behavior and upgrade matrix. A provider's own mock is not a consumer. |
| User journey | User-visible workflow, permissions or accessibility changes | Drive public surface through readiness, action and persisted result; test forbidden actor/path and relevant keyboard/focus/error semantics. |
| Property / fuzz | Parser, encoding, numeric or large input-space risk | Run real implementation with recorded seeds/corpus and an independent invariant/reference oracle; retain minimized failure input. Passing finite samples is not universal proof. |
| Concurrency | Duplicate delivery, races, retries or interrupted ownership | Controlled competing real operations and durable observations at pre/post-commit, pre/post-ack boundaries; assert business effect, ownership and replay behavior, not message count alone. |
| Load | Capacity, latency, saturation, quota or resource-risk change | Accepted workload, correct-result/error counts, concurrency, duration, warmup, percentile/SLO window and resource limits; compare equivalent builds. A throughput number without correctness is not a pass. |
| Formal | High-consequence state space or invariant poorly reached by tests | Actual available checker, model/code correspondence, bounds/fairness assumptions and completed properties/counterexample. Use [formal creation](../create-formal-verification-skill/SKILL.md); not a substitute for real boundary tests. |

Source-text assertions, mock responses that echo the expected value, tests that merely forward to the same helper, and checks asserting only that another check was invoked cannot establish product behavior. Structural schema/reference checks are useful only for their explicit structural claim. Reuse an existing trustworthy harness before adding product-side tests; no executable or test application belongs in the GSF distribution.

## 3. Freeze fixture, authority and environment

1. Discover actual repository/host interfaces and record precise versions before writing the recipe. Check capability evidence in `JOB_DIR/environment.md` under its canonical contract; an available shell does not imply browser, cloud, broker, model entitlement or scheduler capability. Never invent a target account, privilege, isolation or live receipt.
2. Resolve each configured check's required `effect` (`read`, `local-write`, `external-write`, `destructive`) and `target` (null or accepted environment ID). Include setup, nested tools, capture and cleanup effects. Local checks require null target. A read-labelled check that writes is a mismatch: stop it, report and seek authorized correction; do not silently relabel or accept its result.
3. Match accepted target declaration to observed provider/account/region/resource scope, identity time/expiry and state. External write/destruction requires an authentic action-scoped grant and actual platform safeguards. A policy declaration and a dry-run flag are not isolation or authorization. Apply shared grant semantics from the worker contract rather than inventing skill-local permissions.
4. Bind real resource ownership, credentials without secret values, seed state, ports/handles, reset and cleanup. Readiness proves the exact build and usable required authenticated path, dependency migrations/fixtures and external state, not only PID/port/health. Bound waiting and capture failure diagnostics before reset.
5. If a required surface, observer, cap, authorization, readiness predicate or supported version is unavailable/stale, keep that obligation BLOCKED and prevent affected downstream approval/effect. Complete independent safe work and list its narrower scope. Do not replace a database with a mock, a UI with source inspection, or a live deployment with a recorded plan and claim equivalence.

## 4. Execute against immutable inputs

Serialize writers for snapshot collection and checks. Follow the candidate contract exactly, including dirty, ignored, hidden, binary, deleted and untracked input coverage, narrow evidence exclusions and post-check recapture. HEAD alone is insufficient. For large products use its clean source-export procedure: freeze the full candidate first, prove the exported source corresponds to it, and build in an owned external directory. Record complete build inputs (source/export, dependency lock/resolution, generated inputs, config and toolchain), output manifest and immutable artifact digests. Link each output back to those inputs and the checked source; tests must identify the actual loaded artifact. A file copied into the output after verification is not covered.

No blanket cache/build/jobs ignore may hide a source input. An unclassified in-repository output participates in candidate identity or blocks collection; moving builds outside the repository does not excuse omitting their consumed inputs. Record exact invocation, cwd, start/end, exit/status, actual stdout/stderr or safe artifacts, resource observations and predicate comparisons. Skill checks need actual execution receipts too, not a prose declaration that the skill exists.

Execute the smallest sufficient proof set plus all accepted mandatory checks/reviews. A failed check remains a finding; fix authorized product scope and rerun affected proof, never weaken the predicate. Preserve failure inputs before cleanup. A host interruption requires reconciled ownership and receipts before retry; no unknown-live concurrent rerun.

## 5. Apply exact evidence invalidation

| Change or condition | Required disposition |
|---|---|
| Candidate entries change, including same-HEAD dirty/untracked/binary/deletion changes | New candidate; prior overall approval/check/review gates invalid. Recapture and run the new gate; individual evidence can only be carried with the dependency proof below. |
| Policy, accepted grant, mandatory check/instruction, required reviewer or proof predicate changes | New applicable policy/strategy identity; re-evaluate authority and affected checks/reviews. Never retroactively excuse a failure. |
| Build input, lock/resolution, generated input, toolchain, feature flag or runtime config changes | Invalidate all consuming checks/artifacts and downstream release claims; rebuild and rebind actual outputs. |
| Fixture/seed/schema/auth role/tenant boundary or dependency version changes | Invalidate dependent integration/journey/contract/property observations; rerun against the new fixture and supported matrix. |
| Target/account/region/resource/state fingerprint, plan, runtime artifact or observed version differs; identity/plan expires | Block affected external effect; rediscover, replan/revalidate and renew scoped authority where required. A matching source alone is insufficient. |
| Formal code correspondence, model, assumptions, fairness, bounds or property changes | Invalidate dependent proof; audit correspondence and rerun, preserving counterexamples. |
| Resource limit reached, required cost/quota unobservable, unknown writer liveness or incomplete cleanup | Stop/fence affected ownership, checkpoint, reconcile and require authentic renewed authority where needed; no automatic wake or silent limit reset. |
| Evidence missing, expired, ACL-denied, tampered, unindexed or not tied to exact lifecycle/candidate | Block the dependent gate even if candidate is unchanged. Retrieve a verified retained copy or rerun; a locator/hash without accessible content is not proof. |
| Evidence-only lawful append with candidate manifest unchanged | Reindex evidence and preserve result only if provenance, lifecycle authority and artifact integrity remain valid. |

**Reuse proof:** record original immutable receipt and content hash, original candidate/policy/check/tool/fixture/environment identities, its exact dependency set, and byte/content equality or a reviewed dependency comparison proving every consumed input and assumption unchanged. Establish provenance and independent reviewer acceptance; show unmodified outputs are the ones actually consumed. Cite retrieval and current retention/expiry/ACL evidence. A guess that a file is unrelated, a clean HEAD, a passing old CI badge or identical command text is insufficient. A candidate-wide result never becomes a new candidate-wide PASS solely by reusing one result. If dependency completeness or trust cannot be demonstrated, rerun. Reused results must be labeled reused, not newly executed.

## 6. Evidence, failure and handoff

Store authorized sanitized receipts under the configured evidence policy and exact job evidence index. Record `store`, `location`, `retention_days`, retrieval identity/time, real ACL observation and retention mechanism/expiry; policy values are a request, not evidence the host enforces retention. Retrieve a representative required artifact after upload and again after fixture teardown/cold resume; verify its digest and readable contents with authorized identity. For external/CI stores, preserve immutable run/artifact IDs and actual expiry. A local manually managed store must say so and name its owner. Never expose credentials or tenant data in evidence. See [evidence operations](../../docs/operations/README.md).

Hash exact retained bytes at each locator. Where authorized raw receipts need redaction, retain separate raw/retained digests and provenance/sanitization relation; a raw digest cannot validate different sanitized bytes. If raw retention is prohibited, record disposal/non-retention and leave any raw-dependent claim blocked. Sanitize canonical environment content before freezing its raw-byte identity; never redact in place while keeping the old ID. Reject ambiguous mutable “latest” locators and insufficient retention through decision/recovery windows; preserve the sole verified copy until authorized migration and destination retrieval succeed.

Clean up only owned resources on success, failure or blocked setup after preserving receipts. Report leftovers and safe recovery precisely; evidence is never teardown scratch. Return the obligation/proof table, executed versus NOT RUN/reused outcomes, invalidations, retained artifact retrieval/expiry evidence, cleanup result and final scoped PASS/FAIL/BLOCKED. Required unavailable proof blocks completion, not merely an optional footnote. Framework regressions use [verify-gsf](../verify-gsf/SKILL.md) and its actual scenario corpus; no universal reliability or permanent proof is implied.
