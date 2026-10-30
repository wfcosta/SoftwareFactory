---
name: maintain-formal-verification-skill
description: "Bring a project's formal verification back in line with the code after the code changes: find the commits that touched verified code, update the model, harness, or properties to describe the code as it is now, rerun, and say whether each failure is drift in the verification or a bug in the code. Use for /maintain-formal-verification-skill, \"is the model still true to the code\", or after merges and refactors that touched verified code without rechecking it."
disable-model-invocation: true
---

# Maintain a formal verification skill

Applicability and host-capability boundaries follow [GSF mode](../gsf-mode/SKILL.md), with shared factory policy in the configured worker contract.

A formal check proves a property of what it describes. When the code changes and the verification does not, the check can keep passing while it describes code that no longer exists. That pass is the dangerous case, because it looks like a proof. This skill is the upkeep loop for a verify skill that `/create-formal-verification-skill` generated, or for any project-local skill that runs a model checker, prover, or code-level verifier against named code. The project-local skill handles a change that an agent makes while it uses that skill. This skill handles the changes that skipped it: merges, edits made without the skill, and drift that builds up across many commits.

Consume accepted task-matrix rows in `decision.md`/`spec.md` through [verification-strategy](../verification-strategy/SKILL.md). Preserve requirement/invariant/risk→minimal proof→fixture/environment→limitations→evidence/invalidation links. Formal is selected by risk rather than mandatory everywhere; this maintenance pass cannot waive accepted configured checks, independent code/security review or affected integration/consumer/journey proof. Each check records `effect`/`target` and actual nested effects, command/cwd or skill path, time/resource bounds, readiness, observed host/checker version and environment expiry. Local generated output is local-write/null. External effects need authentic scoped authority and real platform safeguards, not Markdown sandbox claims. Required unavailable capability/version or stale target leaves the affected check BLOCKED.

## Outcomes

Give each check one outcome, and say which:

- **in sync**: no change since the last sync alters what the check describes, and the check passes.
- **updated**: the code changed, the verification now describes the new code, and the check passes.
- **bug**: the verification describes the current code, and the code breaks the property. This is a finding about the code. It is not drift.
- **blocked**: the check could not be brought back in line or could not run. Say exactly why.

A check can be both updated and bug: the update makes the verification describe the code again, and then the property fails on it.

## Edit scope

Edit only the verification: models, harnesses, property files, and the verify skill itself. Never edit product code during a run, unless the user asks you to. When a property fails on the current code, do not weaken the property or the model to make it pass. Report the failure.

## Pass

1. **Find the checks.** A verify skill has no fixed name, so find it by what it does: a project skill that runs a model checker, a prover, or another verifier against named code. Read each one you find, or the one the user named. For each check, collect the property, the code it covers, the bounds and assumptions, the command that runs it, and the commit where it was last confirmed to describe the code. If no verify skill exists, stop and point at `/create-formal-verification-skill`. If the skill does not record a sync commit, use the last commit that changed the verification files, and say that you did.

2. **Run it as it is.** Run each check once before you change anything, and record the result. A pass here does not tell you that the code is correct. It tells you that the old description still holds. A failure here can be drift or a bug. Do not decide which until step 5.

3. **Read every change to covered code.** Compare the sync commit with the actual execution snapshot, including committed, staged, unstaged, and relevant untracked files; inspect renames and new writers of guarded state. Record HEAD plus a reproducible content/diff fingerprint for dirty work, and preserve that snapshot during checking. A clean-commit comparison alone cannot establish synchronization of a dirty worktree. Read each relevant commit message, then classify each change:
   Bind the canonical candidate/policy IDs, actual consumed fixture/model/property/assumption/config/toolchain inputs and immutable loaded/output artifact identities. Use candidate-contract bounded collection and clean external source export with complete input/output/artifact manifests for large projects; never blanket-ignore in-repository build/cache/source content. Check source identity again after execution and preserve correspondence, not only a sync commit.
   - **No effect.** The change does not alter anything the verification describes, such as formatting, comments, or code paths that the verification does not cover. Check this against the model or harness, not against the commit message.
   - **The verification no longer describes the code.** A step that was one indivisible action is now two, a branch was added or removed, a check moved, a new path reaches the guarded state, or a value now has a different range. The model or harness must change.
   - **The promise changed on purpose.** The change alters what the code promises, and evidence in the change says that this is intended: the doc comment, the tests, the changelog, or the commit message. The property must change, and you must cite that evidence.
   - **The promise may be broken.** The code changed, and no evidence says that the promise changed. Treat a failure that follows as a bug candidate.

4. **Update from the code, not from the result.** Change the model or harness so that each changed part again points to code that a reviewer can open, and keep one indivisible step in the code as one step in the verification. Write the update from the code before you rerun, and do not shape it by what makes the check pass. Change a property only for a promise that changed on purpose. Write down the old wording, the new wording, and the evidence. Keep the bounds unless the change makes them wrong. If you must reduce a bound, say so in the report.

5. **Rerun and judge each result.**
   - **Pass:** the check can now pass on a description that has lost the ability to fail. Break the new code the way the property guards against, such as removing a new check or reordering a new step, and confirm that the check catches it. Then drop the break.
   - **Fail:** replay the counterexample against the real code, step by step. If a step cannot happen in the code, the verification is wrong. Fix the verification, and say what was wrong. If every step can happen, it is a bug. Name the commit that introduced it, tell the counterexample as a sequence of steps in the code's own words, and state the harm in one sentence. If a cheap test or reproduction against the real code shows the bug, add it to the report as evidence. Do not commit it to the product code.

6. **Update the verify skill.** Record coverage, commands, bounds, assumptions, and the exact checked snapshot. Advance the sync commit only for committed code actually audited. For a dirty snapshot record its HEAD and content fingerprint separately; do not claim HEAD alone is synchronized or erase that distinction when the tree later changes. Do not advance either marker for blocked checks. Follow the skill as the next agent would and recheck snapshot identity after execution; any intervening edit invalidates synchronization.
   Apply the complete verification-strategy invalidation matrix to candidate/policy/instruction, dependent input/model/bounds/assumption/toolchain/config, fixture/target/expiry and evidence integrity changes. Reusing supporting evidence requires exact immutable dependency/provenance equality and current retrieval proof, explicitly labeled reused. It does not waive this procedure's required fresh baseline/rerun/mutation checks. Matching HEAD or an old completed checker badge is insufficient.

7. **Retain and clean up.** Index sanitized immutable receipts/counterexamples in the configured evidence store/location with retention days. Retrieve bytes and compare content/digest under an authorized proof-reading identity; record actual ACL/retention mechanism/expiry, explicitly manual if local. Retrieve again after teardown and cold resume. Missing/expired/denied/tampered proof blocks the dependent outcome even if code is unchanged. Clean only owned checker processes, scratch variants and output after preserving proof, on failure too; reconcile unknown liveness before retry and report any owned residue with safe recovery.

## Report

Tell the user, for each check:

- the outcome, and the commits that you read;
- what changed in the verification and why, with a short reason for each change: the code changed shape, or the promise changed on purpose (with the evidence);
- the rerun result, and the break that you used to show the updated check can still fail;
- each bug, in plain words: the counterexample as steps in the code's words, the harm, and the commit that introduced it;
- what the verification still does not cover, including new code that it should cover and does not.
- exact invocation/cwd or skill receipt, candidate/policy/model/build/config/environment/fixture identity, completed versus timed-out/unrun properties, newly executed versus reused proof, retrieval/retention/expiry and cleanup status.

Say outright which failures were drift in the verification and which were bugs in the code. For a check that passed before you updated it and fails after, say that the old pass was on a stale description.

Put the verification updates in a change of their own, separate from any product fix.
