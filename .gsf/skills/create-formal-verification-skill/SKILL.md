---
name: create-formal-verification-skill
description: "Generate a project-local skill that formally verifies the code where a bug costs the most and tests reach the least, in any language, with whichever verification tool fits. Use for /create-formal-verification-skill, \"model-check this race\", \"prove this invariant\", or when concurrency, retries, state machines, parsers, or unsafe code need more than tests."
---

# Create a formal verification skill

Applicability and host-capability boundaries follow [GSF mode](../gsf-mode/SKILL.md), with shared factory policy in the configured worker contract.

A test checks the cases that someone thought to write. Formal verification checks every case in a stated scope: every order of steps in a model, every input up to a bound, or every input. This skill finds the part of the repo where that matters most, verifies one property of it, and leaves a project-local skill that lets the next agent check a change against that property. Write that skill for an agent who reads it cold, mid-change, and has never seen your work. The user must be able to trust the result and act on it without learning the verification language.

## Choose the target from the code

Answer from the codebase, and ask the user only what you cannot observe. If the user named an area or a bug, start there.

A good target is a promise the code makes, where a break harms users and tests rarely reach the case that breaks it. Choose the strongest such target in the repo, not the one that is easiest to verify.

Use [verification-strategy](../verification-strategy/SKILL.md) and accepted task-matrix rows in `decision.md`/`spec.md` to link requirement/invariant, harm/risk, minimal sufficient proof, concrete fixture/environment, assumptions/limitations, exact evidence and invalidation dependencies. Formal proof is selected for the risk, not mandatory for every change; it never removes configured checks, required code/security reviews or real integration/consumer/journey obligations. A model is not evidence that a database, browser, broker or cloud target works.

## Let the question choose the tool

Pick the tool that answers the question at the lowest cost: a model checker, a proof assistant, an SMT-backed verifier, or another tool. Whether events can happen in a bad order usually suits a model checker over a small model of the design, and TLA+ is the default for that in any language. Whether the code itself behaves for every input, as with memory safety, overflow, or a data-structure invariant, usually suits a verifier that runs on the code. If no verifier runs on this language, say so, and test the real code with generated inputs, not a hand model of the function. A property that must hold at every size, where a bound is not enough, can need a proof. Prefer a tool that the repo's developers can install and run, and tell the user why you chose it.

## What makes it good

- **True to the code.** Every part of the model or proof points to code that a reviewer can open. What the verification treats as one indivisible step is one indivisible step in the code. Names come from this repo.
- **Able to fail.** A check that you have never seen fail proves nothing. Show each property failing on a broken variant of the code it guards, such as a removed check or a reordered step.
- **Findings stay findings.** When the current code breaks the property, report it with the counterexample in the code's terms. Do not weaken the property or the model until it passes, and do not change product code unless the user asks.
- **Honest about scope.** Say what is verified, under which bounds and assumptions, and what is left out. A pass covers the model or the bound, not the whole system.
- **Readable without the tool.** State the property and the harm in one plain sentence each. Tell a counterexample as a short sequence of steps in the code's words.
- **Cheap to rerun.** One command, a reproducible tool version, and a run short enough that the next agent will use it on every relevant change.
- **Kept in step with the code.** Record which files and functions each check covers, and the commit at which you last confirmed that the verification describes them. When the covered code changes after that commit, the next agent can see that the verification needs another look.

GSF framework skills remain Markdown-only. Verifier models and product test harnesses belong in the target project's authorized verification directory, not bundled `.gsf/` scripts. Obtain permission before installing tools or changing dependencies. If no suitable verifier is available, report the exact prerequisite; generated-input testing is not a formal proof.

Record the actual available checker/version and capability/expiry in the canonical environment record. Every configured formal check requires `effect` and `target`, actual command/cwd or skill path, nested tool/setup/capture/cleanup effects, bounded resource use and readiness (correct checker/model/dependency/config, not a live process alone). Local generated outputs use local-write/null, not read. External effects require authentic scoped grants and real platform safeguards. Unavailable required verifier/version/capability keeps the formal obligation BLOCKED; generated inputs or a syntax pass cannot be substituted as proof.

Bind candidate/policy, model/property/code correspondence, actual build-input/toolchain/config identity and immutable result/counterexample artifact digests. Use canonical bounded collection and isolated external source export/build manifests for large workspaces, not blanket cache/build exclusions. Keep verifier artifacts outside GSF source. The result must distinguish all properties completed, violated, timed out or not checked; early termination does not pass the remaining properties.

## Generate the verify skill

Write a project-local skill with frontmatter that names the area and says when to use it. Without frontmatter, the skill never registers. From the skill alone, the next agent must be able to tell whether a change touches the verified code, run the check, tell a real bug from a modeling error, and update the verification when a change is intended. Put the coverage record and the sync commit in the skill, and tell the next agent to move the sync commit forward only after it confirms that the verification describes the code at the new commit. Use this repo's real commands, paths, and nouns, and leave no placeholders.

For TLA+ checks, refer the next agent to GSF's [statechart](../statechart/SKILL.md) procedure to run the installed checker and explain actual transitions/counterexamples. It ships no automatic extraction script. A checker stopping at one violation has not checked every property; mark the rest unchecked. Call a path shortest only when the observed breadth-first run establishes it. Keep discovered tool paths and exact project commands in the generated verification record, not assumptions about a bundled executable.

## Prove it before you hand off

Follow the generated skill once, as the next agent would, on a scratch change that breaks the property in the real code. It must catch the break. Then drop the scratch change and confirm that the check is back where it started: passing, or failing only on the findings you will report. A verify skill that was never run is a draft. If the skill misses the break or a step does not run, fix the skill or the verification, not the scratch change.

Preserve exact failing and restored invocations/exit statuses, inputs, checker receipts, independent code correspondence and findings. Apply verification-strategy's invalidation matrix: code or consumed model/property/bounds/assumptions/toolchain/config changes invalidate dependent proof. Reuse only with exact immutable dependency/provenance equality and current retrieval proof, labeled reused; an unchanged sync commit alone is insufficient. A new code candidate still needs its new gate.

Store proof using configured evidence store/location/retention and exact artifact index. Actually retrieve bytes, verify content/digest with an authorized identity, and record ACL/retention/expiry control versus manually managed local retention; repeat after owned scratch teardown and cold resume. Missing/expired/denied/altered proof blocks the dependent claim. Clean only owned verifier jobs/output and preserve evidence on both successful and failed runs. Unknown worker liveness is reconciled/fenced before retry.

## Hand off

Tell the user requirement/invariant and risk, verified property, actual checker/version/invocation, exact candidate/policy/model/build/config/fixture/environment identity, bounds/assumptions, completed/violated/unrun properties, counterexample or actual completed result, mutation rejection, newly executed versus reused evidence, retrieval/retention/expiry and cleanup. Explain real-code correspondence and unproved surfaces plainly. Required unavailable proof is BLOCKED, not a completed generation. Suggest a second target only if a close one was found; point to [maintain-formal-verification-skill](../maintain-formal-verification-skill/SKILL.md) for upkeep.
