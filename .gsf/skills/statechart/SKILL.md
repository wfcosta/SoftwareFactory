---
name: statechart
description: Run a bounded TLA+ state model with an available checker and explain verified transitions or counterexamples as a Mermaid statechart.
disable-model-invocation: true
---

# Statechart

Applicability and host-capability boundaries follow [GSF mode](../gsf-mode/SKILL.md), with shared factory policy in the configured worker contract.

This is a Markdown procedure, not a bundled executable. Use the actual installed model checker and its documented CLI. Do not claim automatic graph extraction or an exhaustive result without the checker's output.

## Inputs

Read the TLA+ spec/config, the code it models, properties, bounds, and reader's question. Work in an authorized scratch directory, recording the model and tool version. Each model action must point to code or a stated design assumption.

## Check

1. Discover an available TLC distribution and Java runtime. With a verified `tla2tools.jar` path, the standard invocation is `java -cp <absolute-jar-path> tlc2.TLC -workers 1 -config <actual-config-path> <actual-spec-path>`. Substitute discovered real paths in the recorded command. Do not run an imaginary bundled wrapper or install software silently.
2. Define `Init`, `Next`, and named invariants. `Next` should be a disjunction of named actions so traces identify transitions. Preserve atomicity from the real implementation. Terminal states may stutter with `UNCHANGED vars`; do not disable deadlock checks just to hide a stuck state.
3. Bound constants and state space deliberately. Record every bound, assumption, symmetry/view reduction, and excluded path. A bounded pass is not a proof at all sizes. State constraints can hide deadlocks outside the explored boundary.
4. Run TLC and save command, stdout/stderr, exit status, distinct-state count, completion status, and counterexample traces. Timeout or partial exploration is INCONCLUSIVE. A failed invariant is a finding, not permission to weaken it.
5. TLC can stop at its first violation. Report unexamined properties as unchecked; to check another independently, use a separate scratch config and preserve the original result. Never imply all invariants were evaluated after early termination. Use breadth-first exploration for a shortest reported counterexample; otherwise call it an observed path, not the shortest.

## Draw and explain

1. Map model states to reader-visible labels and actions to plain-language arrows. Emit `stateDiagram-v2` Mermaid directly from observed transitions or checked model actions. Distinguish a diagram of the design from a complete explored graph.
2. Keep bug-path states distinct. Never merge states violating different rules; label partial abstractions that may violate a rule rather than calling all underlying states broken. State any transitions hidden for readability.
3. For each violation, name the rule, the user harm, and the action-by-action trace. Replay it against the real code. If a step cannot occur there, treat the model as suspect and repair its correspondence, not the product or property to force a pass.
4. Hand off the Mermaid, saved output, exact rerun command, actual result, bounds, assumptions, and unverified behavior. Missing Java/TLC is blocked with an exact prerequisite, not a fabricated chart of checked states.
