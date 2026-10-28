---
name: figure-it-out
description: Design and execute an auditable workflow when no narrower playbook fits, with falsifiable outcomes, isolated experiments, and a decision trail.
disable-model-invocation: true
---

# Figure it out

Applicability and host-capability boundaries follow [GSF mode](../gsf-mode/SKILL.md), with shared factory policy in the configured worker contract.

## Frame

1. Read gsf-mode's principles and the user's full goal. Check existing playbooks; do not invent another bug-fix or feature procedure.
2. State a falsifiable done predicate, authorized scope, blockers, and rigor proportional to risk. Ground assumptions with repository/runtime evidence.
3. Record one-way doors and prerequisites. Proceed on reversible authorized work; pause only operations needing an operator decision or unavailable access.

## Design

1. Write ordered phases with an artifact and check at each boundary. Put the riskiest unknown first and capture a real pre-change baseline.
2. Use architect/arena for an unresolved architectural fork, not settled mechanical edits. Name the data shape before logic.
3. Map independent slices and shared state. Give writers disjoint paths/worktrees and complete briefs. Read optional `.gsf/state/models.md`; disclose unavailable diversity.
4. Add concrete phases to the checklist before execution. Exercise any verification harness on the old artifact before relying on it.

## Execute and audit

1. For each unit state a hypothesis, make the smallest authorized change, and observe the real artifact against the predicate. Keep verified progress; remove only owned failed experiments.
2. Independently judge delegated artifacts. VERIFIED, NOT VERIFIED, and INCONCLUSIVE remain distinct; missing surface access is not a pass.
3. Repair wrong gates within scope rather than working around them. Repeated failure changes the hypothesis; it does not justify infinite identical retries.
4. Record choices, pivots, failures, and verification through show-me-your-work as they occur.
5. Run the original done predicate on the integrated product, configured checks, and required reviews. Preserve publication/merge/deployment gates. If execution suspends, use pause-safely.

Deliver the workflow, rigor rationale, trail path, results against every acceptance predicate, and exact blockers. A plan alone is not completion when implementation was requested.
