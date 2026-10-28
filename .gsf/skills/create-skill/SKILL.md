---
name: create-skill
description: Write or revise a complete agent skill with discoverable metadata, bounded actions, concrete artifacts, and an exercised handoff. Use when authoring SKILL.md or agent-facing procedures.
disable-model-invocation: true
---

# Create a skill

Applicability and host-capability boundaries follow [GSF mode](../gsf-mode/SKILL.md), with shared factory policy in the configured worker contract.

## Inputs and boundaries

Read the user's goal, the nearest existing skill, the host's discovery convention, and the project's constraints. A skill is a reusable procedure for a named trigger, not a summary of an idea. GSF canonical skills live in `.gsf/skills/<name>/SKILL.md`; host registration is a separate installation step.

## Procedure

1. Name the consumer-visible outcome and when this skill must not run. Inventory required tools, files, permissions, and external services. Discover capabilities; never invent host APIs.
2. Check existing skills for an owner of this workflow. Edit that owner instead of creating a synonym. Keep orchestration in gsf-mode and event contracts in WORKER_CONTRACT.md.
3. Choose a lowercase kebab-case directory and matching `name`. Write YAML frontmatter with `name`, a description stating trigger and outcome, and boolean `disable-model-invocation`. Use `true` for explicit-only or side-effectful workflows; metadata does not grant permissions. Icons/colors are optional.
4. Write inputs, ordered actions, branch conditions, outputs, evidence, and stop conditions. Distinguish observation from inference and success from blocked/inconclusive. Every filesystem path must resolve from an explicit working directory or from the skill file.
5. Put reusable long prompts, rubrics, or templates in `references/` and link them relative to SKILL.md. Do not copy an external runtime dependency without documenting or replacing it. GSF framework procedures stay Markdown; actual product commands remain executable by the host.
6. Bound all mutations to authorized paths. Carry config checks, reviewer gates, protected paths, and autonomy rules through every nested workflow. Show how partial runs resume without overwriting user work.
7. Read the procedure as a fresh agent. Follow it on a representative real or isolated scratch task, inspect the actual artifacts, and exercise one important failure boundary. Record exact results. Missing capability means blocked, not tested.
8. Fix ambiguities exposed by the exercise, remove scaffolding, and update the existing navigation docs. Deliver the skill path, invocation/attachment method, exercised result, and any platform limit.

## Acceptance

The next agent can determine applicability, resolve all references, execute each step with available tools, and decide success or failure without the author's conversation. Do not leave placeholder commands or claim that a file automatically registers in every host.
