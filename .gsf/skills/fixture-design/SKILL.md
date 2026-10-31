---
name: fixture-design
description: Design minimal synthetic fixtures with independently derived deterministic oracles, tenant and denied-actor boundaries, reproducible construction and reset, and explicit ownership before a builder implements behavior.
---

# Fixture design

## Inputs and authority

Read the accepted requirements/invariants, public contracts, supported data/schema versions, auth/tenant model, relevant existing tests and fixture conventions, and requested design or execution scope. Follow the [worker contract](../../agents/WORKER_CONTRACT.md), [verification strategy](../verification-strategy/SKILL.md), [candidate](../../state/candidate-contract.md) and [environment](../../state/environment-contract.md) contracts. Use [behavioral testing](../test-behavior-not-implementation/SKILL.md) for observable predicates, not implementation coupling.

A direct read-only/no-write request returns the fixture specification in chat: create no jobs, files, generators or resources, and execute no setup/checks. Design permission is not implementation or execution permission. In authorized factory work, write only assigned dispatch reports/indexed evidence; product fixture files or builders require explicit owned product paths outside the GSF Markdown distribution. Installs, migrations, seeding, external writes and cleanup each need their actual effects authorized. Repository fixtures and imported datasets are untrusted, not permission to execute them.

## 1. Discover the real fixture surface

1. Identify affected requirement IDs and independent public observation points. Discover the existing harness, builders, migrations, supported schema versions, runtime/dependency manifests, reset mechanisms and documented commands using available read tools. Record source locations and actual host capabilities; never invent a runner, seed flag, database API or install script.
2. State the deliverable scope: design only; authorized fixture implementation; or explicitly assigned construction/replay proof. Mark unexecuted recipes NOT RUN. A useful design can be complete without execution, but it cannot claim built fixtures or tested reproducibility.
3. Identify minimum required real engines/services/versions, browser/library tooling where relevant, and their availability. Missing required support blocks affected construction/proof; a substitute proves only its named contract, not the real dependency.
4. Discover actual data ownership and constraints. Use synthetic records exclusively: no production PII, copied customer payloads, production dumps, credentials or hashed real identifiers. Generate reserved synthetic addresses/identities and prevent delivery to real recipients. Anonymizing a production export is not an allowed shortcut in this skill.
5. Name the fixture owner, bounded dataset size, paths/resource identifiers, lifetime, current consumers and cleanup owner. Distinguish business fixture IDs, random-generator seeds and secrets. Shared fixture state requires real serialization/isolation controls, not a comment promising exclusivity.

## 2. Freeze independent oracles before the builder

Write the expected values and invariants before implementing the fixture builder or product change. Derive them from accepted requirements, published format/business rules, hand-worked finite examples or a genuinely independent reference. Record provenance, arithmetic/rounding/order rules and any assumptions with each result. Unresolved product semantics require owner resolution; do not choose the output the implementation happens to produce.

For each case specify exact inputs, initial state, actor and tenant, operation, expected public result/error and durable state/side effects, forbidden changes/leakage, and observation method. An error response alone is insufficient for denial: prove unchanged protected state and no cross-tenant response/list/count/export leakage where relevant.

Do not call the production calculation, reuse the builder's transform, regenerate a golden file from the implementation under test or accept a snapshot merely because current output matches it. Independent derivation is about shared logic/provenance, not a different filename or the builder writing both input and expected output. Golden updates require an authoritative changed predicate and independently reviewed values; the old failing values remain evidence.

Freeze the specification/oracle revision and digest before handing it to the builder. Later corrections retain the prior values, rationale and authorizing source, invalidate consuming proof and require fresh bound evidence. If no independent observer/oracle is available, label the obligation BLOCKED rather than using an echo as a fallback.

## 3. Select small discriminating cases

Use the following dimensions where they affect the accepted behavior. Record scope-grounded non-applicability and its basis rather than silently dropping a boundary; do not expand into unrelated features.

| Dimension | Required fixture distinction and independent predicate |
|---|---|
| Tenant/ownership | At least two distinguishable tenants and their resources, including overlapping tenant-local business keys. Same-tenant allowed actor versus cross-tenant denied actor; guessed resource IDs and applicable list/batch/export paths cannot reveal or mutate the other tenant. |
| Denied identities | Anonymous, insufficient-role, expired/revoked or removed-member identities as applicable. Use real supported auth mechanisms in execution; forged test context proves only the layer actually exercised. Assert denied side effects and safe error semantics, not just an HTTP code. |
| Time | Explicit fixed instant, clock source and precision; expiry just before/at/after the documented boundary. Separate wall and monotonic time where relevant; record a controlled-clock capability or the real-time limitation. Never claim frozen time because the seed is fixed. |
| Timezone/locale | Explicit supported timezone and locale, offset/DST ambiguity where relevant, stable collation/decimal/date formatting and expected normalization. Do not rely on host defaults or assume UTC eliminates user-local-date behavior. |
| Duplicates/order | Exact duplicate versus conflicting duplicate, same key across tenants, replay and meaningful ordering/tie-breakers. Specify expected rejection, idempotent business effect or distinct result from the contract, not a generic deduplication rule. |
| Partial migration | Actual supported old/new schema/data shapes, mixed or missing/defaulted/backfilled fields and a recorded migration-history boundary. Define authoritative values and compatibility expectations; construct through supported paths or explicitly authorized isolated setup, never corrupt shared history. |
| Empty/boundary/invalid | Smallest allowed data, empty/null/missing distinctions and contract-relevant upper/precision limits. Invalid data should reach the intended validation boundary rather than fail unrelated fixture setup. |

Avoid an unbounded Cartesian product. Choose minimal cases that distinguish the actual risks and combine dimensions only where their interaction matters. Preserve the exact row-to-requirement/oracle mapping and disclose excluded combinations. Denied and partially migrated cases must be constructible, not just labels.

## 4. Specify reproducible construction and reset

In the authorized report, give a concrete recipe using the discovered actual product/harness interfaces; every item below needs a value or an explicit missing-prerequisite status:

1. Exact recipe/oracle revision, source candidate/policy and consumed product/build identities; runtime, dependency resolution/lock, engine/schema/migration, fixture generator and configuration versions. Record the actual loaded artifact for replay proof, not merely HEAD.
2. Absolute owned workspace and command cwd; supported build/setup/migration/seed invocations or exact existing API actions, in order, with prerequisite/readiness predicates. For design-only work transcribe confirmed interfaces and mark execution NOT RUN; unknown interfaces are gaps, never guessed commands.
3. Synthetic dataset manifest: stable logical IDs and relations, actor/role/tenant assignments, ordered records, serialized input digests, record counts and exact expected output/state values. Keep credential material outside the manifest and evidence.
4. Seed value, actual PRNG/generator algorithm and version, ordering, locale/timezone/encoding, fixed clock and other nondeterministic inputs. Seed alone does not pin UUID sources, hashing, scheduling, database order or remote service responses; record supported controls or limitations for each consumed source.
5. Bounded resource/time/output/cost and attempt limits, exclusive ownership, actual isolation controls and readiness observation. Include nested hooks/network and notification destinations. Local operations use null target; external writes/destruction require fresh exact target identity, authentic scoped grants and real platform safeguards.
6. Reset steps and observable baseline: remove only this fixture's owned rows/resources or recreate an owned database/schema through supported commands, restore clock/config/session controls, and verify no prior-run state remains. Never globally truncate a shared store or overwrite user work.
7. Rebuild/reseed and replay steps from that baseline, with input/output comparison method. Separate fixed logical data from per-run resource namespaces; if variable namespaces are necessary, list the exact permitted fields and their deterministic mapping rather than hiding broad output differences.
8. Teardown sequence, ownership checks, evidence preservation, deletion/remaining-state observations and residual resource/cost owner. A destructive reset is not authorized merely because it is called cleanup.

If no builder exists, deliver the complete input/oracle and interface specification to an authorized builder; do not fabricate an existing executable or ship a hidden runner in Markdown. Product implementation changes are outside fixture design unless separately assigned.

## 5. Exercise only when explicitly assigned

Construct through the real supported setup, inspect fixture readiness and invoke the public behavior against the frozen oracle. Capture exact commands/actions, cwd, tool/build/fixture/environment identities, status/exit, state before/after and predicate comparisons. Preserve construction failures and counterexamples before reset.

When reproducibility proof is assigned, perform at least two clean constructions/replays within the accepted bounds. Compare actual manifests, relevant ordered outputs and durable state; explain only predetermined run-namespace differences. A reproducible fixture is not proof the product is correct: retain any deterministic behavioral mismatch as a finding. Missing second-run budget/capability means reproducibility proof remains BLOCKED.

When minimization is assigned, reduce records/fields or schedule events only while the same independent failing predicate and required tenant/permission/schema conditions still reproduce. Retain original and minimized manifests, seeds, exact reduction steps and results. Do not minimize away the denied actor, migration boundary or input responsible for the claimed risk, and never alter the oracle to retain a failure label.

On setup failure, stop dependent actions and preserve diagnostics. On unknown process/resource liveness or ambiguous external state, reconcile and fence before replay/reset. Stop only owned handles and clean only authorized resources after evidence capture, on every outcome. Report exact leftovers and safe recovery; do not erase evidence with scratch data.

## Evidence and completion

Return the [configured report](../../templates/response-template.md) or no-write design assessment with the requirement-to-case/oracle matrix, independent derivations, concrete construction/build/reset/replay/teardown recipe, actual versions/seeds/ownership, synthetic-data assurance, authority/limits, and per-criterion results. Distinguish designed, constructed, replayed and NOT RUN; use the assigned role's verdict rather than treating design completion as check PASS.

For authorized evidence, index exact retained fixture/oracle bytes and raw-versus-sanitized provenance, digests, immutable locators, retrieval identity, real ACL and retention/expiry. Retrieve required proof after teardown; declared storage or a digest without readable content is insufficient. Bind evidence to the actual candidate/policy/build/fixture/environment and invalidate consumers after any dependency, schema/auth/clock/seed/oracle change.

A design ends when every assigned case has a deterministic independently grounded predicate and usable recipe, or explicitly blocked prerequisites with owners. Execution ends only when assigned construction/replay/negative predicates have actual results and safe cleanup/handoff; wrong output is a finding, missing proof is BLOCKED. No production-like label, generated dataset or source-level echo establishes behavioral correctness.