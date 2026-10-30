# Operational-policy v2 verification record

## Revision and evidence boundary

This record covers the operational-completeness change based on source commit `faf89633ec8db3c9e893964faaf4f0ebca65a859`, exercised on Windows with Python 3.12.10, PyYAML, a Draft 2020-12 validator, Git, actual native assistant workers and headless Chromium. It supplements, rather than relabels, the [historical verification record](README.md). Source commit/push/PR approval is separate from every disposable product approval; neither authorizes merge, cloud effects or deployment.

The first frozen implementation tree was `308de43b81cf82b6747ec0b98880081ea4e60bba`. Its complete source check **failed** on three fragment links to one operations heading. Replacing that heading's slash with a comma fixed its generated anchor; the other 163 raw source files were unchanged at that point. The next staged tree was `ff2d8bb5c3e28316531054e136c56e43431b4269`. A later independent code review correctly rejected that tree's coupling of registry-only publication to deployment prerequisites. The current procedure and its consumers now distinguish artifact-only publication from deployment, without extending the deployment state graph.

Before adding this report, current structural checks passed for 164 source files, 68 skill frontmatters, seven embedded JSON Schemas, 602 local file links and nine fragment links. Actual policy `2.0.0` and the explicitly synthetic environment/release examples validated. All 32 focused schema-boundary observations matched their expected outcomes: regional strings and nonregional-null representation, required/malformed region rejection, and rejection of publication/health additions to deployment actions or states. Schema validity alone does not establish authentic regionality, authorization, freshness or a successful effect.

The installed validator's optional `FormatChecker` had no date-time implementation and initially accepted an invalid timestamp. The host harness was corrected with an explicitly exercised canonical-UTC parser: calendar/hour validation, `Z` or `+00:00`, at most six fractional digits. Leap seconds, non-UTC offsets and higher precision were unsupported/fail-closed, not certified as general RFC 3339 coverage. Original observations and this host limitation remain retained.

## Actual behavior exercised

| Surface | Observed result | Boundary |
|---|---|---|
| Core CLI and worker lifecycle | Real builder, checks, separate code/security reviews and approver; original and packaged artifact A passed 14 cases each. Substituted artifact B failed four cases and received CHANGES. Current local handoff received APPROVE. | No source-publication, merge or deployment permission derived from fixture approval. |
| Candidate collection and isolated verification | Complete 271-entry, 998,389-byte fixture candidate collected in two measured seconds; exact source/export/input/output/artifact manifests. Real escaping Windows junction and missing/generated-input mutations rejected. | This is the measured fixture, not a performance promise for every repository. |
| Policy/version and event recovery | Frozen old-policy/candidate records validated read-only with their accepted schemas; unsupported versions rejected. Actual cold contexts reconciled retained dispatch evidence without inventing completion or repeating effects. | No silent migration of active jobs or second scheduler. No second OS certification. |
| D01 — authenticated UI/API | Actual browser login, keyboard empty-title validation/focus/ARIA, save/search/reopen/persistence; own API 200, foreign tenant 404, anonymous 401. Removing the actual privacy guard made the oracle fail; restoration passed. Parent personally drove the browser and visually inspected its screenshot. | Local authenticated HTTP/SQLite application; no full screen-reader/device certification. |
| D02 — data migration and restore | Four signed-value rows, total 155; real batch-two backfill interruption, process kill and cold resume, nonnull/idempotence predicates. Skipped-row mutation failed. Actual backup restore recovered exact rows. | Local restore measured 0.51186 seconds; not a production RTO/RPO guarantee. |
| D03 — durable async delivery | Real SQLite queue/outbox, concurrent duplicate event applied once, pre/postcommit/preack interruption, conflicting payload/schema quarantine and replay. Final balance five with two ledger entries. Removing the actual guard made the oracle fail. | Local durable queue protocol, not certification of every broker. |
| D04 — compatibility | Actual interpreted SDK clients against old/new HTTP implementations, four supported pairs, typed 404 and optional-field behavior; missing/numeric title rejected. | Enumerated consumer/version combinations only. |
| D05 — infrastructure/state semantics | Actual instructed checker rejected plan/state/artifact/config/environment drift, wrong target/grant, stale observations and invalid transitions using frozen recorded inputs. | Provider facts were hypothetical. No cloud apply or deployment claimed. |
| D07 — build lineage | Real packaged A bytes independently loaded and checked; wrong B bytes failed. Complete build/input/output lineage and consumed-dependency invalidation inspected. | No live signing, vulnerability scanner or managed registry certificate. |
| D08 — compatibility/host | Current supported local profile and frozen historical schemas exercised; unsupported versions denied. | No second OS or actual incompatible-tool installation. |
| D09 — limits and interruption | Actual single-slot process admission, two no-progress failures, elapsed-limit pause, stopped/fenced owner and cold pickup without unauthorized renewal. Actual model usage-limit interruption and explicit user-authorized continuation preserved original clocks/counters. | No provider balance, billing meter, finite monetary-cap enforcement or automatic reset/wake observed. |
| D10 — evidence custody | Actual retrieval and raw-byte hash comparison after scratch teardown, missing/tampered evidence rejection and independent cold artifact retrieval. | Manually managed local retention; no remote ACL denial, enforced TTL, WORM or disk-loss guarantee. |
| D11/D12 — scale and selected proof | Bounded complete collection and exact dependency reuse; auth/persistence unit-only coverage rejected, async requires duplicate/crash/replay, required formal remains blocked without its checker. | Focused PASS never becomes candidate-wide or formal PASS. |
| Issue triage | Actual local synthetic report classification, embedded privilege instruction rejection and two real CLI verify-existing cases. Authenticated source-repository read worked; bounded issue query was empty. | No trusted webhook receiver or real report-to-fix integration was available. |
| S03 — verification creation/maintenance | Complete new two-feature skill/map and six real journeys. Wrong documented flag caused exit 2; correction touched only its Markdown feature file, then all six journeys passed. Separate sum-plus-one product regression remained BLOCKED without changing predicates or product. | New scoped execution, not a replay or certification of all unchanged support skills. |

Actual product-surface code/security/UI/UX reviews closed their scoped findings. Independent means an actual separate non-author native context, not a different model family or OS principal. Coordinator/intake/spec/check roles executed serially in one context are identified honestly, not presented as independent workers.

## D13 — artifact-only publication regression

A genuinely new fixture exercised the [artifact-only release procedure](../../skills/release/SKILL.md) and [D13 recipe](../../skills/verify-gsf/references/operational-scenarios.md#d13--artifact-only-publication-retrieved-bytes-and-lost-receipt-reconciliation). It used an authenticated owned loopback HTTP receiver, actual durable SQLite content/operation storage, immutable version creation, generation fencing and exact retrieved artifact/provenance bytes. It is a specified local protocol, **not npm, OCI, a managed registry or public provenance certification**.

Actual separate check/code and security contexts reviewed the fixture before a distinct native consumer approved its bounded local execution. No root factory approval/event, external registry grant or live deployment authority was fabricated.

- Artifact A was the exact ten UTF-8 bytes `artifact-A`, SHA-256 `f208912477fd3bc784e26fe904085e22e159621fba4d38c702cf91e2579df396`. Actual 201, native operation/version receipt and independent stored-content/provenance retrieval established local published-only. Deployment capability was deliberately absent; no `release.md`, traffic/health task or deployed/healthy claim was produced.
- Verify-existing issued reads without another submission/commit. Conflicting bytes and wrong receiver/account/namespace/name/version/provenance, missing authority/transport/authentication/proof and expired observations were denied. Separate authorized receiver probes produced real 401/403/400/409 and no unauthorized commit.
- A real after-commit/before-response disconnect produced an ambiguous client result. After stopped-owner fencing and cold receiver restart, native operation/version lookup recovered the original commit and exact bytes: **one submission, one commit**, no duplicate publication.
- A real precommit disconnect proved terminal/no-effect and 404 before a bounded same-operation retry. Exact replay returned the same receipt; changed payload and stale generation were rejected without a second commit.
- Independent observation produced eight passing checks and two intentionally failing mutation observations: disabling immutability allowed wrong bytes and failed the original-A oracle; retained-content corruption also failed despite committed metadata. Restoration passed without weakening predicates.
- Authenticated protocol identity plus retained receiver source/documentation established nonregionality only for this owned fixture. A separate canonical probe passed 15 target-schema cases, ten regionality judgments and strict deployment-denial checks. Unknown/regional null was rejected semantically; required null representation was never treated as universal provider proof.
- Parent personally reopened/read the persisted positive receiver using six authenticated GETs, proxy-disabled and redirect-denied. Exact content/provenance hashes, original metadata/operation commit and one-version/one-commit inventory matched; no POST occurred. Owned service then stopped and its port refused connections.

Initial fixture security CHANGES caught ambient proxy/redirect handling **before any publication**. The owned helper was corrected, rebuilt/rebound and freshly reviewed; original blocked receipts remain. One semantic command failed with `StopIteration` because its helper guessed the canonical schema location incorrectly. That original FAIL remains unchanged; a distinct frozen no-HTTP canonical-schema followup supplied the missing proof. Five successful effect suites were not replayed or relabeled.

## Failures are not rewritten

The first core approver returned FAIL because a missing-command raw receipt had been overwritten by its own wrapper. That original raw output remains irretrievable and unaccepted. Exactly one newly authorized, distinct missing-script case produced a real exit-2 raw receipt at an immutable content-addressed locator; a fresh actual approver accepted only the new evidence. No missing stdout or worker completion was reconstructed.

Quota-interrupted reviews without authentic completion remained unaccepted until their original author actually finalized them after user continuation. Invalid timestamp/lifecycle records remained preserved beside distinct corrected attempts. The original source-anchor FAIL, code-review rejection, fixture security CHANGES, semantic-command FAIL and support-skill CRLF recipe diagnosis remain visible at their actual scope. No global PASS is inferred by adding together unrelated local results.

## Evidence identity, reuse and cleanup

Retained local indexes were independently retrieved and hashed by the parent after teardown; every indexed byte matched its recorded digest:

| Evidence set | Files retrieved | Index SHA-256 |
|---|---:|---|
| Product surfaces | 941 | `435ceb406b444e7034e0d54cd022327fde0fcc018e71785b21e13e690b51cbc2` |
| Core/control plane | 493 | `28f53c9a0771a51956888d96fd68483079b8c5ca208e13a81e77119f1ce57a85` |
| New S03 maintenance | 78 | `7fa2e097460d8a83c141e66db9e36762a1a3e149df16b4b66c230c0dad6ed34b` |
| New D13 publication | 307 | `32ae30ef3ee1381cf7eee20873d5fa44cfdf5e50f86cd1cfd00d4de15704feeb` |

These indexes identify private manually retained evidence, not downloadable source assets or cryptographic author attestations. They omit their own digest objects to avoid circular identity. Raw fixture apps, executable harnesses, credentials, native databases and screenshots are not distributed with GSF. All owned temporary product roots, receivers and processes were removed/stopped after retained-byte retrieval; the shared host browser infrastructure was not an owned cleanup target.

Earlier behavioral evidence is retained with its original source/fixture identities. Its bounded reuse is justified by unchanged exercised product bytes and consumed dependencies; the source-anchor repair was isolated, and the later publication/nullable-region delta received new focused proof. D13's frozen worker/check/approver/release/contracts inputs were independently compared to current source bytes. This is not a relabeling of the original failed whole-source result. Final source/document identity and publication readback belong to the separately reviewed source candidate and PR, avoiding a report that tries to contain its own commit/hash.

Current source remains Markdown-only under `.gsf/` with root `README.md`; `.gsf/.gitignore` is the explicit exception. No distributed product/runtime or donor branding was introduced; the existing legal notice was preserved. Policy defaults retain empty environments and false publication/merge/deployment flags. User-authorized source branch/PR publication is distinct from those distributed product defaults.

## Explicit limits and reproduction

Live cloud apply, real deployment/rollout/health/rollback, production IAM/rotation, live registry normalization/signatures, managed webhook integration, provider cost/quota meters, enforced remote retention and a second host/OS remain **NOT RUN or BLOCKED when required**. No formal theorem/model-check result, media render, screen-reader/device certification or universal coverage of every feature/fix is claimed. Markdown procedures do not enforce OS isolation, authentic writers, transactional appends, fencing or exactly-once effects by themselves.

Use the [verification skill](../../skills/verify-gsf/SKILL.md), [core/support corpus](../../skills/verify-gsf/references/scenarios.md), [operational corpus](../../skills/verify-gsf/references/operational-scenarios.md), [proof strategy](../../skills/verification-strategy/SKILL.md), [host capability guide](../hosts/README.md) and [evidence operations](../operations/README.md) with a fresh explicitly authorized external fixture. Freeze actual inputs/oracles/tooling and preserve every failure. Reproduce live effects only with authentic target identity, exact scoped grants, current evidence and owned cleanup; a local synthetic receipt is never their substitute.
