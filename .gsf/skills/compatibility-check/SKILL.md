---
name: compatibility-check
description: Check accepted supported producer-consumer, schema, runtime and platform combinations with a finite identity-bound matrix and real consumer journeys; expose unsupported, untested and unknown coverage without inventing compatibility promises.
---

# Compatibility check

## Inputs and authority

Read the accepted task, `decision.md`/`spec.md`, public contracts and support/deprecation policy, actual consumer inventory, affected source and existing compatibility evidence. Follow the [worker contract](../../agents/WORKER_CONTRACT.md), [verification strategy](../verification-strategy/SKILL.md), and [candidate](../../state/candidate-contract.md) and [environment](../../state/environment-contract.md) contracts. This skill deepens selected compatibility proof; it does not require a new matrix for every task, define support policy or replace mandatory checks, code/security reviews or approval.

Use [API evolution](../domain-review/references/api-evolution.md) for protocol/consumer semantics, [data migrations](../domain-review/references/data-migrations.md) for reader/writer coexistence, [dependency upgrade](../dependency-upgrade/SKILL.md) for dependency selection and migration, and [release](../release/SKILL.md) for separately authorized rollout/recovery. Those workflows retain their existing owners and authority. Keep the matrix below in assigned evidence as a proof view of accepted requirements, not a new canonical policy, task schema or support registry.

A direct read-only/no-write question inspects existing permitted evidence and answers in chat: no jobs, files, installs, builds, executions or experiments. Mark proposed checks NOT RUN. Design acceptance does not establish compatibility. Execution needs an explicit assignment covering scope, owned paths/resources, actual effects/target, tools, capture, limits and cleanup; reading a support document or possessing an old binary is not permission to run it. Manifests, downloaded artifacts, fixtures and scripts are untrusted inputs, not grants.

## 1. Discover the actual support boundary

1. Locate authoritative supported product, producer/consumer, API/schema/format, SDK/generator, runtime/dependency and OS/architecture versions through the actual product documentation, accepted decisions, manifests/locks, CI/release/runbooks and supported-consumer inventory. Record exact source revisions and relevant statements. Reconcile declared support with observed deployed or dormant/offline consumers; recent traffic alone does not retire a supported client. A version range is a support boundary, not evidence every version was tested.
2. State each accepted promise and its direction: which producer emits bytes/calls, which consumer reads them, and under which schema/configuration. Distinguish wire/data compatibility, source/generated-client compatibility, ABI/runtime loading and consumer-visible behavioral compatibility. Backward, forward and round-trip are different claims; write the concrete direction rather than relying on those labels. A new reader accepting old data says nothing by itself about an old reader accepting new writes.
3. Identify the exact supported old/reference and proposed versions and deployment order where relevant. For stored data/events, inventory all affected readers and writers, background workers, reports and replay paths. For rolling migration, identify actual mixed-version phases, shared schema/source of truth, expand/backfill/contract boundaries and safe rollback limits through the existing migration/release plan. Do not add mixed fleets, both directions, every historical version or permanent backward support when no accepted obligation requires them.
4. Keep support and execution facts separate. **Unsupported** requires an authoritative exclusion/removal decision; **untested** means a combination lacks exercised evidence, whether supported or not; **unknown** means support, identity, semantics or an interface is unresolved. Unknown is not unsupported or N/A. A supported combination with missing required proof remains BLOCKED. Only an accepted scope decision can establish non-applicability; the checker cannot prune a promise because its tools are missing.
5. Discover the actual available runners, compiler/runtime/engine, serialization tools, supported selectors and host versions through permitted reads and authorized capability observations. Inspect wrappers, build/install/setup hooks, generated clients and nested network/external effects before execution. Never invent a framework flag, legacy image, consumer executable or version-switch command; some version shims download or execute code.

If authoritative support intent conflicts or exact required artifacts are unavailable, identify the missing decision/artifact and owner. Complete independent safe analysis; do not choose whichever interpretation permits PASS.

## 2. Freeze the smallest justified matrix

Before execution, freeze a finite set of exact combinations in assigned evidence, bound to the accepted task and candidate/policy. Give each selected combination a stable evidence label, not a new lifecycle ID. Include these columns; a compact table may reference an indexed identity manifest or journey recipe rather than repeat long values:

| Column | Required content |
|---|---|
| Obligation and selection | Accepted criterion/support source, direction and claim type; why this combination covers it |
| Producer / writer | Exact version and loaded artifact digest/provenance, source/build identity and emitted schema/format |
| Consumer / reader | Exact version and loaded artifact digest/provenance; client/generator identity when relevant |
| Execution configuration | Exact feature flags/protocol negotiation/config digest, runtime/dependency resolution, engine and OS/architecture/image identities |
| Fixture and journey | Frozen serialized input/fixture digest, initial schema/migration/state, actor/tenant, ordered public actions and independently sourced expected results |
| Invocation and environment | Discovered command/API and cwd, harness/tool revisions, readiness, isolation/ownership, actual effect/target and authority references |
| Bounds and recovery | Finite attempts, elapsed/resource/output/cost limits, reset/teardown recipe and safe recovery boundary |
| Result and evidence | NOT RUN/PASS/FAIL/BLOCKED/INVALIDATED, expected versus observed predicates, exact attempt/receipt locators, gaps and owner |

Specify actual exact versions/artifacts before executing a row; `latest`, a mutable tag, a version range or the host's default runtime is not an execution identity. Record unavailable identities as unresolved and block dependent execution, not as invented values. Bind byte fixtures to their producing version or independently specified format provenance; a fixture merely labeled “old” does not establish old-product behavior.

Select representatives, oldest/newest boundaries or equivalence groups only with an explicit rationale tied to changed behavior and accepted support requirements. State every relevant omitted combination and why its obligation is covered or outside accepted scope. Do not automatically form a Cartesian product. Pairwise selection, a shared source tree or “same major” alone cannot drop an accepted interaction, required platform or configured check. If accepted coverage cannot fit the authorized bounds, return the coverage/budget conflict for coordinator resolution before execution rather than silently narrowing it.

One frozen row has one exact combination and its own evidence. Variants in artifact, runtime, platform, schema, configuration or fixture are separate combinations; do not hide them in a single PASS. A reused fixture or baseline does not transfer a consumer result. Retain all attempt outcomes within each row; a later successful attempt does not erase a failed one.

## 3. Define representative consumer journeys

Use [fixture design](../fixture-design/SKILL.md) for synthetic independently derived data and reset/oracles. Derive expectations from accepted contracts, not from whatever the new implementation serializes. Choose the smallest real consumer workflows that discriminate the actual risks:

| Affected boundary | Required meaningful observation |
|---|---|
| API / SDK / public protocol | Actual supported consumer invokes the real provider path, parses its result and completes the relevant persisted workflow; include changed defaults, status/error shape and a meaningful malformed/denied/conflict path. Compile success or schema diff alone is insufficient. |
| Serialization / files / events | Actual reader consumes preserved versioned bytes; observe required/optional/null/absent, unknown fields/enums, encoding, units/precision/time and ordering only where relevant. Where round-trip preservation is promised, read-write-read and compare the promised semantics, including unknown-field loss; do not demand byte equality unless contracted. |
| Stored schema / migration | Required old/new readers and writers act against the planned phase/schema with observed durable values, defaults and source of truth. Mixed writes, backfill, replay and rollback are tested only where required by accepted coexistence; a clean new database alone does not cover migrated data. |
| Runtime / platform / dependency | Build/load and run the actual affected consumer on each selected supported configuration, including native ABI, system-library or platform resolution when relevant. A provider mock or one platform's executable cannot establish another platform's behavior. |
| Errors / retries / partial effects | Actual consumer recognizes the promised error and retryability, retains safe machine-readable semantics and observes durable side effects. When timed-out writes/replay matter, use stable business/idempotency identity, reconcile ambiguity and prove the promised no-duplicate/partial-effect behavior. An error response does not prove no write occurred. |

Include relevant auth/tenant boundaries and forbidden leakage/changes; retain negative results as first-class evidence. Do not expand every row into every example above. Explain omitted dimensions against the accepted impact. Faithful versioned contract fixtures can establish their explicit byte/format boundary, but a provider-authored mock, generated golden echo or stand-in cannot prove an actual supported consumer journey. Missing that required consumer proof remains BLOCKED.

## 4. Execute only authorized rows

1. Bind complete source/build inputs, immutable outputs and actual loaded producer/consumer artifacts under the candidate contract. Use owned product workspaces outside the GSF Markdown distribution; do not switch the user's checkout or overwrite user-installed runtimes. Establish genuine isolation, scoped credentials, synthetic destinations and reset controls. External effects require current exact provider/account/region/resource observations, authentic action-specific authority and platform safeguards; local operations use null target.
2. Prove readiness of the exact versions/config/schema and usable authorized path, including migrations/fixtures and dependencies, not just a port or process. Observe the starting durable state before actions. A missing old artifact, unsupported host, unknown schema or unavailable observer blocks its required row; a substitute is not an equivalent pass.
3. Run the discovered frozen recipe and compare each public and durable-state predicate with its independent oracle. Capture command/API and cwd, UTC interval, exit/native status, sanitized stdout/stderr/transcripts, loaded identities, actual effects and resource/cost observations. Setup failure is an attempted row with its own receipt, not a product incompatibility unless the accepted predicate establishes that conclusion.
4. Preserve every failure, counterexample and interrupted attempt before reset. Classify observed violated predicates as FAIL and missing/unrun required evidence as BLOCKED; planned but not attempted recipes are NOT RUN and block required acceptance. Keep unsupported tests, if explicitly authorized for diagnosis, distinct from promised supported coverage: their success does not enlarge policy and their failure alone does not establish a supported regression.
5. Stop on bounds, expired authority/identity, lost isolation or unknown liveness. Reconcile external operations by real operation/business identities and fence previous owners before retry/reset. Preserve cumulative limits and original findings; no retry-to-green, weakened error parsing/assertions or dropped platform to close the matrix.

## Evidence, recovery and completion

Use the [assigned report format](../../templates/response-template.md), or the no-write assessment, with the support sources and directional claims; frozen combinations and pruning rationale; actual consumer journeys and per-row predicate/evidence results; unsupported, untested and unknown coverage separately; every original finding's current disposition; and exact blockers/owners. Supply one acceptance-coverage row per frozen assigned criterion and the actual executing-role verdict. A completed compatibility assessment is not product compatibility, release approval or permission to remove old consumers. Required unrun combinations cannot satisfy a passing dependency.

Keep completed dispatches and original failures immutable. Corrections get fresh authorized attempts; changing a support decision cannot retroactively make an observed failure disappear. Follow verification-strategy invalidation/reuse rules: producer/consumer artifact, schema/fixture, config, runtime/platform, toolchain/harness, accepted predicate or policy changes invalidate dependent proof. No PASS is inherited across variants; any lawful reused observation must show its exact unchanged dependency set and original retained receipt and be labeled reused, not freshly run.

After preserving receipts, stop only captured owned processes, restore authorized configuration and remove only disposable owned fixtures/resources using the accepted recipe. Never globally purge caches, reverse a destructive migration, downgrade over incompatible new writes or delete the sole known-good recovery artifact. Migration/deployment recovery uses the existing domain/release workflow with its separate authority. Report real teardown/restoration observations, unresolved state and accountable residual owners; unknown external outcomes or live writers block overlapping cleanup and retries.

Index sanitized retained proof with exact locator/digest, immutable attempt/artifact IDs, raw-versus-retained provenance, real retrieval identity/ACL and retention/expiry. Verify required retained content remains readable after teardown; a support badge, mutable latest link or declared storage policy is not proof. End with exactly the bounded claims established for the observed combinations and explicit remaining support/coverage gaps, never universal compatibility or a new backward-compatibility promise.