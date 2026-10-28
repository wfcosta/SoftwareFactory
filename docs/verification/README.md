# GSF verification record

## Scope

Verified the Markdown-only GSF instruction distribution and its bounded lifecycle behavior on Windows with Python 3.12, PyYAML, a Draft 2020-12 JSON Schema validator, Git and actual host workers. Source policy remains default-deny. The operator separately authorized this source commit, existing-branch push and existing PR update; that does not authorize merge or deployment.

This report contains observed results, not a generated passing fixture. Scratch applications were outside the source repository and are not distributed. The [reusable procedure](../../.gsf/skills/verify-gsf/SKILL.md) and [scenario matrix](../../.gsf/skills/verify-gsf/references/scenarios.md) define how to repeat the checks.

## Structural and source review

- Parsed 62 skill frontmatters; matching names/descriptions and boolean invocation metadata were valid. All 23 playbooks and 19 five-pillar role prompts remain.
- Parsed all five embedded JSON Schema contracts and the actual YAML root policy. Permission booleans default to false; the framework check names the real verification skill, not nonexistent npm scripts.
- Operational source files are Markdown only; `.gitignore` is the explicit technical exception. No bundled runtime helpers, standalone state-data files or operational foreign role names remain. Test products are ignored and absent from the source tree.
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
