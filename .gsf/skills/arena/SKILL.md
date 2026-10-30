---
name: arena
description: "Spawn N parallel candidates at the same task, pick a base, graft the strongest parts of the losers into it. Use for /arena, 'arena this', 'throw it in the arena', or when one attempt at a non-trivial artifact would lock in the wrong shape."
---

# Arena

Applicability and host-capability boundaries follow [GSF mode](../gsf-mode/SKILL.md), with shared factory policy in the configured worker contract.

Open a todolist with one entry per phase (Frame, Fan out, Cross-judge, Pick, Graft, Verify) before launching anything.

## Phase A: Frame

Every candidate gets the same prompt, so the prompt is the contract.

1. State the artifact each candidate is producing.
2. Derive the rubric, 3-6 concrete gradeable criteria for what success looks like on *this* task. It is the picker's tool in Phase D. Candidates only see the task.
3. Pick available runners from optional `.gsf/state/models.md` role `arena runners`. Prefer different families; otherwise use independent contexts and disclose the diversity limit.
4. Give each candidate its own output location (a git worktree where possible, otherwise a temporary directory), per the **separate-before-serializing-shared-state** principle skill.

## Phase B: Fan out

Launch candidates together through the host's native delegation facility, each with task, grounding, owned output path, and rationale naming alternatives considered and rejected. Without delegation, execute isolated candidates serially and disclose the limit.

Record dropouts. Continue only when enough candidates remain for comparison; one surviving artifact is not a completed bakeoff.

## Phase C: Cross-judge

After all Phase B candidates complete, spawn one readonly judge subagent. The judge should be from a different model family than the runners for adversarial pressure. The judge sees the rubric and the candidates by path label, scores each criterion, and recommends a base with rationale. It runs in parallel with your reading in Phase D. Don't spawn it while candidates are still writing. Without independent delegation, compare serial artifacts inline and label Phase C unavailable, not independently judged. This fallback cannot satisfy a configured independent review gate.

## Phase D: Pick a base

Read every candidate end to end before picking. Score each against the rubric criterion by criterion, not on holistic feel, and compare with the cross-judge when Phase C ran one. Agreement on the base confirms the pick. Disagreement means one of you is biased or the rubric was ambiguous. Read both rationales before deciding.

Pick the base a future maintainer can extend most easily without breaking invariants. When two feel tied, prefer the cleaner boundary or smaller API, per the Laziness Protocol.

## Phase E: Graft

Walk each losing candidate once more for what is worth porting into the base, usually one or two things per candidate, not most of it. Fold each graft in by hand, per the **redesign-from-first-principles** principle skill, so the result stays coherent under one mental model. Don't paste mechanically.

If the candidates converge on one shape, that is strong agreement. Note it and ship the consensus shape. No graft is needed. If they wildly diverge, Phase A was under-specified. Reframe and re-run rather than averaging the divergence.

## Phase F: Verify

Verify the synthesized artifact like any other output, per the **prove-it-works** principle skill. If verification finds a problem the arena missed, either Phase A was wrong (re-frame and re-run) or a candidate caught it and you missed the graft (go back to Phase E). Don't paper over it.

## Outputs

One synthesized artifact, with a short synthesis note alongside naming the base and why, the cross-judge's verdict or that Phase C skipped the judge, each graft with its source candidate, what was rejected and why, any convergence or dropouts, and the verification result.
