# GSF verification record

The [operational-policy v2 verification record](operational-v2.md) records the newer typed-policy, domain, recovery, support-maintenance and artifact-publication exercises, including preserved failures and untested live surfaces. The historical results below are not promoted to that revision's results.

## Scope

This document retains the historical full lifecycle verification and the later self-contained-layout probes below. Their counts, schemas, identities and receipts describe those recorded revisions, not automatic certification of a newer operational policy or domain procedure. The historical full run verified the Markdown-only GSF instruction distribution and its bounded lifecycle behavior on Windows with Python 3.12, PyYAML, a Draft 2020-12 JSON Schema validator, Git and actual host workers. Source policy remained default-deny. Its operator authorization covered that source commit, branch push and PR update, not merge or deployment.

The observations and receipts below are retained unchanged in meaning. At the time, policy and several guides were at the repository root; they now live under `.gsf/`, with canonical policy `.gsf/GSF_CONFIG.md` and repository-root-relative configured paths. Historical source counts, identities and path checks do not establish current relocation correctness. The [reusable procedure](../../skills/verify-gsf/SKILL.md) and [scenario matrix](../../skills/verify-gsf/references/scenarios.md) define how to repeat checks. Scratch applications were outside the source repository and are not distributed.

## Structural and source review

- Parsed 62 skill frontmatters; matching names/descriptions and boolean invocation metadata were valid. All 23 playbooks and 19 five-pillar role prompts remain.
- Parsed all five embedded JSON Schema contracts and the then-root YAML policy. Permission booleans defaulted to false; the framework check named the real verification skill, not nonexistent npm scripts.
- Operational source files were Markdown only; `.gitignore` was the explicit technical exception. No bundled runtime helpers, standalone state-data files or operational foreign role names remained. Test products were ignored and absent from the source tree at that time. The current nested `.gsf/.gitignore` does not ignore root-level test products.
- Checked local Markdown references and actual route/role/format names. The shared worker contract is normative; the playbooks no longer copy its global policy blocks.
- An independent source review found three remaining multi-phase defects: narrative/DAG collision, silent trunk instruction replacement and an unsupported forge command. All were corrected. Fresh independent current-source code and security reviews returned no findings within their stated scope. A failed reviewer execution produced no accepted verdict and was replaced by an actual fresh review.

## Actual full worker flow

The disposable task specified a real standard-library CLI: signed comma-separated integers, optional nonnegative minimum, exact total/count output, and exit-2 input errors. The acceptance command and specification were frozen before implementation; the builder was not permitted to change them.

1. Coordinator initialized a real Git fixture and explicit job. Intake/specification/check execution ran serially and were labeled as coordinator roles, not independent reviews.
2. A real separate builder wrote the CLI and durable start/report/completion artifacts. The coordinator independently reproduced the builder's candidate identity before checking it.
3. Actual terminal interaction returned the specified mixed/filter results and the configured nine behavioral tests passed.
4. Actual independent code/security/source-comment reviews inspected sources and receipts. Code review returned **CHANGES** for an unbounded-integer output edge, so the gate remained blocked despite the nine passing tests.
5. The coordinator reproduced the error. A fresh builder attempt corrected bounded-chunk decimal input/output without changing global runtime safety limits, narrowing the specification or weakening tests. Old evidence remained immutable.
6. New check/review attempts ran for the changed candidate. The original nine tests passed again, and direct probes passed for a 4301-digit sum, 5000-digit input and exact signed cancellation. Fresh independent code/security/source-comment reviews returned PASS.
7. A separate actual approver inspected the current reports, accepted events and actual source, independently recomputed the complete 212-entry candidate and policy identities, and returned **APPROVE — local handoff only**.
8. Coordinator accepted/promoted the actual approval, confirmed the unchanged candidate and recorded gate_passed/job_completed. All scratch publication/merge/deploy flags stayed false; no scratch remote effect was attempted.

Sanitized terminal receipts:

```text
python stats.py --values "3,-2,5,0"
total=6 count=4

python stats.py --values "3,-2,5,0" --minimum 3
total=8 count=2

python check_cli.py
.........
Ran 9 tests
OK
```

The original large-number repro exited 1 with an uncaught decimal-conversion ValueError. The corrected real process exited 0 with the exact 4301-digit total; a 5000-digit input and large signed cancellation also matched exact expected output. Large output is omitted here rather than replacing evidence with thousands of digits.

Final scratch implementation SHA-256: `0b9a33a7eb80213613acc2ab8828c2e079c1382e55753262abd70ae23e01844c`.

Final independently matched scratch candidate: `sha256:26bb6202e8ee70ffb3d2bc077b6fbc16dd07cbf2123d780f3362ed07203df3a4`.

These identify the exercised disposable artifact, not a GSF source commit. Source publication is a separate subsequent operation; its real resulting commit/PR must be recorded and read back before reporting it as delivered.

## Boundary and recovery coverage

| Scenario | Observed result |
|---|---|
| Typed parsing and relationships | Seventeen invalid schema/YAML/graph cases rejected, including permissions, paths, checks, lifecycle fields, panels/pools, duplicate/non-string keys, nonfinite/multidocument data and a cyclic DAG |
| Nondefault installation | Configured agents/skills/templates/constraints resolved with default copies absent; canonical contracts retained |
| Windows path containment | Created a real scratch directory junction pointing outside the fixture root; resolved containment rejected it |
| Candidate versus evidence | Evidence append preserved identity; new untracked source, binary data, deletion tombstone and unexpected source changed identity |
| Negative approval | Actual CHANGES blocked approval; missing-security, failed/unrun-check and wrong-candidate artifact cases also remained blocked |
| Changed source | Actual corrective implementation changed candidate; old passing checks/reviews were retained but not reused; new attempts required |
| Event identity | Equivalent parsed YAML replay did not advance state twice; differing payload/source/task/dispatch/report identities were inspected as rejection cases |
| Actual malformed worker record | A reviewer emitted invalid YAML. Strict parsing rejected it; original completed evidence remained unchanged. Coordinator recovered only the worker's authentic final-delivery payload, preserving CHANGES rather than inventing PASS |
| Interrupted projections | Accepted real event/report history rebuilt a stale running projection without another invocation; incomplete tails stayed unaccepted and preserved |
| Missing dispatch intent | A real worker detected absent durable prerequisites, held writes and returned BLOCKED without synthetic lifecycle events |
| Actual pause and cold pickup | A fully initialized fresh job persisted intent before invocation; worker emitted started/checkpoint/paused and returned stopped without done/PASS. Only then coordinator recorded job_paused, reconciled the exact saved job and dispatched a fresh pickup worker. Actual summary/completion was accepted once; old pause evidence unchanged |
| Permissions | Scratch approval did not authorize any remote action. Source publication uses only the actual operator's scoped request; merge/deploy remain denied |

Artifact mutation/replay cases exercise the coordinator's specified procedure. They do not demonstrate an installed transactional dispatcher. Power loss at every possible filesystem write boundary was not fault-injected.

## Support-skill behavior

- Actual stateless model invocations exercised bro, sharpen, recall and reflect from their current instructions. bro's no-history case correctly returned that there was nothing to restate; a separately supplied real previous-turn context produced the plain rewrite while preserving missing review and denied publication. Sharpen returned its four diagnostics and a rewritten prompt without execution. Recall disclosed inaccessible live/history state; reflect proposed no unauthorized durable edits.
- Followed the verification generator on a separate real CLI copy, creating Launch/Doctor/Drive/Evidence/Cleanup and a four-feature map. Every feature received source and real live coverage, including an exit-2 failure. Short-lived processes exited and proof stayed readable.
- Ordinary maintenance found a deliberately stale map count, proved intended product behavior still correct, changed only the verification directory and re-drove the corrected journey. A separate deliberately broken product was correctly classified as a product regression/BLOCKED; the intended map predicate was not weakened.
- Actual source-comment reviewers preserved both legal SPDX notices and made no product edits. Source-comment PASS was not substituted for code/security review.
- Measurement exercise ran five alternating samples per side, counted 40 completed integer values and zero errors, and awaited real output inside the timed region. It returned **inconclusive for speedup**, not a winner: interpreter startup was included and no separate limiter/profile established a performance claim.

The communication/history model invocations used supplied bounded contexts without tools. They are representative behavioral cases, not proof of host registration, private-history integration or deterministic future compliance.

## Limits and repeatability

No CI result, actual media render, formal theorem/model-check result, production device/UI, forced host crash or cross-host certification is claimed. Live lost-PR-receipt fault injection was not performed against an external service; the denied-publication path and recovery rule were inspected. Any subsequent authorized source publication requires actual forge readback; this pre-publication verification record does not claim that remote operation has already occurred.

Markdown contracts cannot enforce process fencing, filesystem isolation, atomic appends, authentic writers or exactly-once external effects by themselves. Native host capabilities, honest evidence inspection and the specified fail-closed decisions remain necessary.

The disposable task recipe and expected outputs are retained in the scenario matrix. A new generated implementation can reproduce the behavioral checks but need not have the same source hash. Raw host/task receipts are retained locally as ignored job evidence; absolute private paths and generated executable products are not published. Cleanup removes only owned scratch resources after receipts are preserved.

## Historical self-contained layout checks

These observations cover the earlier directory relocation, not a new full lifecycle certification or the later operational-policy upgrade. At that revision all framework files moved under `.gsf/`; the distribution root contained only `README.md` and `.gsf/`, apart from Git administration.

- Validated the then-canonical `.gsf/GSF_CONFIG.md` against the five state schemas at that revision and resolved its configured paths from the repository root. Protected policy/constraint paths named their new locations; publication, merge and deployment remained false.
- Parsed all 62 skill frontmatters. Permission strings, repository-escaping agent paths, empty checks and missing mandatory security review were rejected by the policy schema.
- Exercised Git's actual ignore matching: `.gsf/jobs`, logs, bugs, local models and other explicitly named local-data directories are ignored, while policy, skills, state contracts and the root README remain visible. These nested rules do not ignore root-level products.
- Copied only the distributable `.gsf/` files into a fresh external Git repository, without the source README, jobs, logs or personal model preferences. The first portability check found two documentation links depending on the uncopied root README; those dependencies were removed. All 252 installed local Markdown links then resolved entirely within `.gsf/`.
- A separate actual `RelocatedSetup` context read that installation's setup skill, canonical policy, configuration contract, worker contract and constraints. Real YAML/schema validation passed, configured paths resolved without `.gsf/.gsf` duplication, and the absent jobs directory remained absent.
- A separate actual `MissingPolicy` context inspected a second fixture with no `.gsf/GSF_CONFIG.md` but a stale root policy granting publication, merge and deployment. It refused initialization, did not adopt the old policy and kept all permissions denied. Bootstrap was not authorized.
- Before/after SHA-256 snapshots confirmed that both read-only contexts left every fixture file unchanged and created no jobs. The negative case's expected BLOCKED disposition is a successful fail-closed observation, not a passing policy validation.
- The source tree contains no `produto/`, `products/` or installed test application. Disposable fixtures stay outside the source repository and are removed after retaining these sanitized observations.

The two setup contexts did not execute the configured full verification skill, run a product implementation lifecycle or perform remote effects. Historical lifecycle receipts above remain historical; these path/discovery checks must not be presented as a new full framework gate.
