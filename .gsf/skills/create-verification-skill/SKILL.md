---
name: create-verification-skill
description: "Generate and prove a project-local verification skill that launches, diagnoses, drives, and cleans up the real UI, CLI, service, or library. Use for create-verification-skill or make a control skill for this repo."
disable-model-invocation: true
---

# Create a verification skill

Write instructions the next agent can follow cold to exercise the real application through its public user surface and preserve proof. Output is Markdown only: `.gsf/skills/verify-<app>/SKILL.md`, `features/README.md`, and one Markdown file per identified feature. Use the existing project-local name when updating, preserving established valid coverage. Read [create-skill](../create-skill/SKILL.md). Do not bundle runtime helpers or hide a replacement executable in a code fence. Describe invocations of actual repository or host tools instead.

## 1. Interview the repository

Learn from source, existing tests/harnesses, manifests, and documented startup instructions before asking questions:

- **Surface:** primary and secondary UI, CLI/TUI, desktop/mobile, HTTP, or public library API; actual routes/commands and observable side effects.
- **Run:** existing build/install/start commands and working directory, versions, platform, environment variable names, ports, migrations, auth, and seed requirements. Never put secrets into the skill or evidence.
- **Drive:** reuse the real existing harness first; otherwise discover host browser/CDP, PTY, HTTP, or library tooling. Prefer stable accessible names, data attributes, prompt strings, and public route paths over coordinates.
- **Observe:** screenshots, action traces, terminal output and exit status, responses, logs, persistent state, files, or outgoing messages. Identify the independent predicate proving the user's goal.
- **Isolate:** owned ports, scratch data, profiles, fixtures and accounts. Determine whether concurrent instances are safe. If only a shared user session is possible, require explicit access and serialization; never double-drive it silently.

Record source paths supporting commands and selectors. Read [verification-strategy](../verification-strategy/SKILL.md) and accepted task-matrix rows in `decision.md`/`spec.md`: map each requirement/invariant/risk to the minimal sufficient proof, exact fixture/environment, limitation, evidence and invalidation dependencies. Unit, integration, consumer-contract, journey, property/fuzz, concurrency, load and formal checks are selected by affected risk, not universally mandatory. Preserve accepted configured checks and code/security reviews. A journey skill proves only its stated surface; do not replace required concurrency/restore/consumer proof with UI clicks.

Use `.gsf/GSF_CONFIG.md` and its typed checks; every check requires `effect` and `target`. Inspect setup, nested tools, drive, capture and cleanup effects against the declaration and accepted observed environment, not the command's name or dry-run label. Local checks use null target; external writes/destruction require authentic scoped grants and real platform safeguards under the worker contract. Policy, models, plans, environment, release and evidence follow their active canonical Markdown contracts. Unknown/stale required capability, target identity or tool version blocks that proof. Do not invent an npm command for a framework-only repository.

A broken baseline is not a valid recipe. Establish whether the app builds and starts only when that execution is authorized. Repair a baseline only within separately authorized product scope; otherwise report the exact blocker. A required empty asset directory may be temporary verification scaffolding only if irrelevant to the tested behavior, explicitly named, owned, and removed later. Missing authentication, seed data, or a real runtime is BLOCKED, not a substitute mock success.

## 2. Write the five-section procedure

Include valid YAML frontmatter with the actual `verify-<app>` name, explicit app/surface triggers, and `disable-model-invocation: true`. Populate every instruction from the repository; leave no guessed commands or placeholders in the deliverable.

### Launch

Give exact repository-relative working directories, existing tool invocations, setup/migration/seed order, time/resource bounds, readiness timeout and isolated resource choices. Start from an empty owned data directory. Record run ID, candidate/policy IDs including dirty inputs, actual build/binary digest, build-input/toolchain/config identity, process/session handle, bound address, port ownership, fixture identity and canonical environment observation/expiry. For scalable builds follow the candidate contract's clean external export and complete input/output/artifact manifests; no blanket build/cache ignore or stale unidentified build is allowed.

For a server or persistent UI, keep one owned instance alive and drive it serially. Readiness must prove usability: migrations and seed complete, correct build, usable authenticated user path, and required services ready, not just an open port or database health signal. Bound readiness waiting and name the diagnostic evidence to capture on timeout.

For a short-lived CLI/TUI, launch means building/installing once; each drive gets its own isolated invocation or PTY session, data and environment. Do not invent a persistent server. A library uses its real public entry point and records the loaded build/version. Document ownership and teardown for all owned services.

### Doctor

Provide a read-only diagnostic recipe answering whether this exact instance is worth driving: correct process/session and port owner, expected source/build version, usable fixture, credentials valid without printing secrets, dependencies ready, and known UI state. Run before the first drive, per fresh CLI session where applicable, and whenever anything surprises the driver. A healthy process with a wedged UI is not healthy enough: reset owned state or relaunch. Doctor must not silently repair, migrate, or mutate data.

### Drive

Use real selectors, commands, requests, or public APIs from this checkout. Describe ordered actions and waits, expected visible/output state, assertions and side effects. Drive the user's path, not internal state setters or test-only shortcuts. A preexisting production boundary may isolate an external service with an approved substitute; record that limitation. Observe what dry-run/test mode actually suppresses, including network, browser, files and refs, rather than trusting the label. Never perform a real purchase, send, deploy, or destructive operation without specific authority.

Define PASS (all predicates witnessed), FAIL (observed incorrect behavior), and INCONCLUSIVE/BLOCKED (missing prerequisite, unsafe interaction, or unavailable observation). A missing fixture fails the journey's precondition; do not delete the assertion or change the story to make it green.

For every selected check capture the actual command/cwd or skill invocation, readiness observation and loaded artifact identity; source-text checks, mock echoes and assertions forwarding to the same implementation are not behavioral proof. Use an independent result/persistence/side-effect oracle. Record why each unselected proof type is unnecessary for the stated risk, and enumerate target-only assumptions/untested surfaces. A required unsupported consumer runtime, database, broker, browser, formal tool or external observer remains BLOCKED; do not substitute a mock and mark the original obligation PASS.

### Evidence

Name an authorized durable Markdown evidence location outside teardown-owned scratch state, such as the existing job's evidence directory when the job contract permits it. A direct no-write request creates neither a job nor evidence files. Capture candidate/build identity, fixture, actions and resulting state, predicate results, side effects, timestamps, and actual tool outputs or safe artifact links. A final screenshot alone is insufficient. Redact secrets and personal data; if host captures cannot be stored under the project's artifact policy, use sanitized Markdown observations and explicitly state the missing proof. Do not claim unseen screenshots or outputs.

Capture failed actions and doctor output before reset/cleanup. Evidence survives teardown. If proof is on a stand-in (local stack versus remote target, container versus VM), enumerate every setup difference and mark target-only steps unverified; do not label the target proved.

Apply verification-strategy's exact invalidation matrix. Candidate source, accepted policy/instruction, consumed dependency/config/toolchain, fixture/schema/auth role, target state/expiry or proof predicate drift invalidates dependent results. Reuse needs immutable original receipts plus exact unchanged dependency, provenance, artifact and current retrieval/expiry proof; matching HEAD or command text is insufficient. Distinguish newly executed, reused, NOT RUN and BLOCKED.

Use configured evidence `store`, `location`, `retention_days` and exact indexed artifact paths. Retrieve required retained bytes with the authorized proof-reading identity, compare digest/content and record actual ACL/retention/expiry behavior; a policy locator is not availability proof. Repeat after cleanup and cold resume. Missing/expired/denied/tampered proof blocks its dependent gate even with unchanged candidate. Never label local manual retention an enforced TTL.

### Cleanup

Always clean up owned resources, including after launch, doctor, drive, or evidence failures. Stop only captured handles/processes this run created; never kill by name or steal a port. Close owned sessions, roll back only owned fixture state, and remove named scaffolding. Do not delete user data, shared services, or evidence. If cleanup fails, preserve diagnostics and report the exact owned resource still live and a safe recovery action. Check that the named evidence is still readable after cleanup.

## 3. Seed the feature map

Index all discovered user-facing features in `features/README.md`; initially write full journeys for the top three to five, or every feature when fewer exist. Explicitly list identified but unmapped surfaces as uncovered, never imply full coverage. Use [the worked feature-map example](references/feature-map-example.md) as the shape, not as assumed application behavior.

Each feature file has `Sub-features`, `How to get to it (user POV)`, `Driving it with <actual harness>`, and `Gotchas`. Include requirement/invariant IDs, selected proof and risk, preconditions, owned fixture construction, exact ordered user actions, expected output/visible and persistent state, a plausible negative/failure boundary, independent proof, limitations, exact invalidation dependencies and cleanup. Read existing feature files before extending them; preserve valid regression coverage. Missing prerequisite data is a reported gap with its source, not a reason to weaken a journey.

## 4. Prove the generated procedure

When execution is authorized, run the generated instructions from a clean fixture: Launch, Doctor, Drive at least one mapped feature, Evidence, Cleanup. Exercise a relevant incorrect condition to establish that its predicate rejects it, without damaging non-owned state. Capture failures and run cleanup after every failed iteration; correct the instructions and repeat as needed. Confirm evidence remains readable after teardown. A procedure that was never executed is unproved, not a completed generation. If execution is prohibited or impossible, finish reachable authoring, mark the deliverable BLOCKED/unproved, and name the precise missing prerequisite without inventing success.

## 5. Hand off

Report exact skill/map paths, discovered and exercised coverage, candidate/build, PASS/FAIL/BLOCKED results, durable proof, cleanup outcome, and stand-in limitations. Link it from existing authorized project guidance when in scope. Offer [maintain-verification-skill](../maintain-verification-skill/SKILL.md) as the ordinary maintenance loop, distinct from formal-verification maintenance. No automatic cadence, daemon, publication, or runtime is installed.

