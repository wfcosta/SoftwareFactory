### Investigation

**You own the answer. Plan, route, write.**

Investigation requests are read-only. They produce a cited explanation or a recommendation, not a code change.

1. Route through the [how](../../how/SKILL.md) skill. For motivation questions, also route through the [why](../../why/SKILL.md) skill.
2. Throughput checkpoint stays one line: `throughput checkpoint: n/a, read-only investigation`.
3. Produce the `how`-shaped output (Overview / Key Concepts / How It Works / Where Things Live / Gotchas), or a recommendation with a tradeoffs table if the request is a decision between alternatives.
4. Apply the [unslop](../../unslop/SKILL.md) skill to the reply.

No PR, no babysit, no architecture implementation. If a change is requested after the answer, route that authorized work to Bug fix or Feature. Cite file/symbol/line or primary-source URL for each load-bearing claim, separate observed facts from inference, list rejected hypotheses and remaining uncertainty. If the evidence cannot answer the question, return that bounded result and the missing evidence, not a guessed explanation.

**Reply:** the investigation output. For "are we sure?" answers, include your real judgment with reasons. Push back if the premise is wrong (see Autonomy).

## Applicability

Use [GSF mode](../SKILL.md) to select direct, read-only, or factory execution. The configured `<config.paths.agents>/WORKER_CONTRACT.md` is the normative policy, lifecycle, recovery, and candidate-evidence contract; this playbook adds only task-specific steps. Direct read-only requests create no jobs or evidence files. Factory execution uses [gsf-run](../../gsf-run/SKILL.md) only within authorized write scope; investigation evidence requires an explicit write grant.

Reference: adapted from [cursor/plugins/pstack investigation.md](https://github.com/cursor/plugins/tree/c742dd61706fbacc1b95f1a20b7b988cf096ce6c/pstack). GSF authority, evidence paths, and tool mappings override reference-specific runtime details.
