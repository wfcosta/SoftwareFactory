---
name: swarm
description: "N parallel workers across different slices or races, yielding an aggregated report. Use for coverage matrices, gauntlets, exploration partitions, or when you need parallel work across independent dimensions."
---

# Swarm

Applicability and host-capability boundaries follow [GSF mode](../gsf-mode/SKILL.md), with shared factory policy in the configured worker contract.

Run N parallel workers across different slices or races, then aggregate their findings. This is for coverage matrices, gauntlets, exploration partitions, or any work that can be split across independent dimensions.

## Frame

1. State the done predicate and artifact. Build a matrix of required slices; for races declare `first pass`, `rank all`, or `best-of` before spawning.
2. Give writers disjoint output paths. Verification briefs name the exact candidate commit plus uncommitted snapshot if present; measurement briefs name sampling method, ordering, and what one sample means.
3. Read optional `.gsf/state/models.md` role `swarm workers`; select only available models. Unconfigured roles inherit the current model. Disclose unavailable diversity.
4. Give each brief the goal, inputs, owned paths, skills, method, done predicate, output, and failure behavior. Use [runner-prompt.md](references/runner-prompt.md). Workers do not write shared job ledgers.

## Fan out

Launch independent slices together through the host's delegation tool. Choose an environment with actual access; cloud workers may not see local services. Without delegation, run slices serially and disclose the limit. This preserves coverage but cannot create independent reviewers; mandatory independent gates remain blocked. Select coverage proportional to risk and actual surfaces, not a fixed lane count.

Workers report `PASS`, `ISSUES`, or `BLOCKED`, candidate identity, method, commands/observations, evidence pointers, and every proven issue. A result without required evidence is incomplete.

## Aggregate

1. Receive terminal results through the host's completion facility. A dropout is a gap, not a pass.
2. Read actual artifacts. Retry a missing candidate identity or method once with a corrected brief; a second miss stays a gap. Do not rerun observed failures merely to make them green.
3. Merge findings by root cause while preserving evidence. Every required coverage slice needs a result; `N-1` cannot satisfy full coverage. For races, apply the declared rule and stop owned surplus workers only when safe.
4. Use [aggregation-prompt.md](references/aggregation-prompt.md). Keep optional dropouts separate from required blocked coverage.

Return one result table, proven issues, gaps, and race-selection rationale. Arena synthesizes competing artifacts; swarm combines coverage or applies a declared race rule.
