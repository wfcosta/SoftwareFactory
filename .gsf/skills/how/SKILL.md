---
name: how
description: "Use for \"how does X work\", code walkthroughs before changing something, and placement / ownership / layering questions (\"where should this live\", \"which package owns this\", \"is this the right layer\"). Explains subsystem architecture, runtime flow, onboarding mental models. Use why for motivation."
---

# How

Applicability and host-capability boundaries follow [GSF mode](../gsf-mode/SKILL.md), with shared factory policy in the configured worker contract.

Explore the codebase to answer "how does X work?" questions. Produce architectural explanations at the level of a senior engineer onboarding onto a subsystem, enough to build a working mental model, not so much that it reads like annotated source code.

Use the host's available read-only investigation capability and supported models; do not assume a `generalPurpose` API. Consult optional `.gsf/state/models.md`. Answer narrow questions inline; parallelize independent slices only when the read set warrants it.

## 1. Assess complexity

If the scope is ambiguous, state your interpretation and explore. The user can redirect.

- **Simple** (one module or a narrow question): explore and explain inline using `references/explainer-prompt.md` without the explorer-findings section. Go to step 4.
- **Complex** (a subsystem spanning multiple files or services, a cross-cutting feature, a full architectural overview): go to step 2.

When in doubt, take the simple path.

## 2. Explore (complex only)

Decompose the question into 2 to 4 angles, each a distinct slice of the subsystem. When delegation is available, spawn all explorers in a single message; otherwise investigate the same angles serially inline. Give each explorer `references/explorer-prompt.md` and its angle filled in.

## 3. Synthesize (complex only)

Once explorers return, synthesize using `references/explainer-prompt.md`. A separate explainer is useful only when independent judgment or context size warrants it; preserve null findings and uncertainty.

## 4. Present

Present the explainer's output. Light edits for clarity or context from the conversation are fine. Do not substantially rewrite it.

## Output format

The explanation uses the sections defined in `references/explainer-prompt.md`, dropping any that do not apply: Overview, Key Concepts, How It Works, Where Things Live, Gotchas.
