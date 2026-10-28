---
name: gsf-help
description: "Navigate the actual GSF skills and playbooks, explain the best fit, and provide a ready-to-use invocation without starting the task. Use when new to GSF or unsure which workflow fits."
disable-model-invocation: true
---

# GSF help

Find the smallest existing workflow matching the user's goal. Infer intent from the conversation before asking questions; ask only when the ambiguity changes routing. Read the selected skill's actual description and boundaries before recommending it. This is navigation, not permission to initialize jobs, write state, delegate implementation, run commands, or publish.

## Entry points and policy

- [gsf-setup](../gsf-setup/SKILL.md): establish or adapt a repository's factory configuration.
- [gsf-mode](../gsf-mode/SKILL.md): shared working policy and task/playbook routing.
- [gsf-run](../gsf-run/SKILL.md): execute an authorized factory job using the current policy and job lifecycle.
- Root `GSF_CONFIG.md`: canonical policy; `.gsf/state/*-contract.md`: state formats and validation contracts. Active job plans and model preferences are Markdown (`plan.md`, `models.md`), not a separate runtime installation. Resolve root paths from the actual repository; never invent an absent skill or command.

## Investigation and understanding

| Goal | Actual workflow |
| --- | --- |
| How does this execute? | [how](../how/SKILL.md) |
| Why this decision, guard, threshold or regression? | [why](../why/SKILL.md), with available evidence sources and confidence tiers |
| Teach mechanics and rationale plainly | [teach](../teach/SKILL.md) |
| Catch up across recent authorized work | [recall](../recall/SKILL.md) |
| Resume a specific existing session | [session-pickup](../gsf-mode/playbooks/session-pickup.md) |
| Inspect impact | [blast-radius](../blast-radius/SKILL.md) |
| Explore a design before implementation | [architect](../architect/SKILL.md) |
| Investigate production/runtime evidence | [runtime-forensics](../gsf-mode/playbooks/runtime-forensics.md) or [trace-forensics](../gsf-mode/playbooks/trace-forensics.md) |

## Change and execution

| Goal | Actual workflow |
| --- | --- |
| Fix a bug | [bug-fix](../gsf-mode/playbooks/bug-fix.md) |
| Build a feature | [feature](../gsf-mode/playbooks/feature.md) |
| Restructure while preserving behavior | [refactoring](../gsf-mode/playbooks/refactoring.md) |
| Diagnose performance | [perf-issue](../gsf-mode/playbooks/perf-issue.md) plus [benchmark-checklist](../benchmark-checklist/SKILL.md) |
| Optimize against a fixed objective | [hillclimb](../gsf-mode/playbooks/hillclimb.md) |
| Multi-phase work | [multi-phase-plan](../gsf-mode/playbooks/multi-phase-plan.md) |
| Coordinate parallel implementation | [orchestrate](../gsf-mode/playbooks/orchestrate.md) or [swarm](../swarm/SKILL.md), chosen by their actual contracts |
| Compare independent solutions | [arena](../arena/SKILL.md), not generic parallel execution |
| Test-first behavior | [tdd](../tdd/SKILL.md) |
| Review a proposed change | [interrogate](../interrogate/SKILL.md) |
| Prepare an authorized PR | [opening-a-pr](../gsf-mode/playbooks/opening-a-pr.md) |
| Final release/readiness work | [shipping](../gsf-mode/playbooks/shipping.md) |

Autonomy in a workflow name does not grant publish, merge, deploy, destructive actions or access to private sources. Check the active policy and caller authority. Missing capabilities are reported, not simulated as independent review or proof.

## Verification, skill maintenance and communication

- Generate real surface verification: [create-verification-skill](../create-verification-skill/SKILL.md). Maintain its complete source/live map: [maintain-verification-skill](../maintain-verification-skill/SKILL.md).
- Formal properties have separate workflows: [create-formal-verification-skill](../create-formal-verification-skill/SKILL.md) and [maintain-formal-verification-skill](../maintain-formal-verification-skill/SKILL.md). Do not substitute ordinary UI checks for formal proof.
- Drive an actual interface with [control-ui](../control-ui/SKILL.md) or [control-cli](../control-cli/SKILL.md); preserve evidence with [show-me-your-work](../show-me-your-work/SKILL.md).
- Author a reusable workflow with [create-skill](../create-skill/SKILL.md). Capture approved personal working conventions with [automate-me](../automate-me/SKILL.md). Propose session learnings first with [reflect](../reflect/SKILL.md).
- Deepen a prompt without executing it: [sharpen](../sharpen/SKILL.md). Restate the previous assistant message plainly: [bro](../bro/SKILL.md). Improve prose: [unslop](../unslop/SKILL.md).
- Review source comments safely: [no-comments](../no-comments/SKILL.md), which requests the independent source-comment-reviewer. It is not PR discussion triage.
- Optional language-specific advice for product TypeScript: [typescript-best-practices](../typescript-best-practices/SKILL.md). GSF itself remains Markdown-only.

## Other existing capabilities and close calls

- [in-your-own-words](../in-your-own-words/SKILL.md) checks understanding before action; [figure-it-out](../figure-it-out/SKILL.md) shapes a rigorous run for a large change.
- [ketchup](../ketchup/SKILL.md) catches up only this chat; [ketchup-video](../ketchup-video/SKILL.md) provides its visual form when actual media tools exist. Recall spans authorized recent chats instead.
- [statechart](../statechart/SKILL.md) models user-visible state and transitions; read its proof/tool requirements before promising a checked diagram.
- [technical-writing](../technical-writing/SKILL.md) guides technical documents; [correct](../correct/SKILL.md) captures an applicable correction. Neither grants durable preference-edit authority on its own.
- Playbooks are documents beneath gsf-mode, not separate slash commands: [babysit](../gsf-mode/playbooks/babysit.md), [pause-safely](../gsf-mode/playbooks/pause-safely.md), [autopilot-stack](../gsf-mode/playbooks/autopilot-stack.md), [autopilot-full](../gsf-mode/playbooks/autopilot-full.md), [autonomous-run](../gsf-mode/playbooks/autonomous-run.md), and [eval](../gsf-mode/playbooks/eval.md) retain their own scope and authority limits.
- A failed live check needs diagnosis and actual surface proof, not a claim that a green build suffices. Missing model preferences or host delegation must be disclosed, not papered over with vendor defaults or fake independent reviewers. Overlapping workers need explicit ownership/isolation before writes.

For a skill not listed here, discover the actual installed directory and read its frontmatter. The skill/playbook owns its details if this navigation map disagrees. Do not manufacture host installation commands, persistent modes, vendor automations, or UI hotkeys that the current host has not established.

## Response contract

Return the understood goal, one primary recommendation (one companion only if needed), its exact repository path, a brief reason and boundary, and a copyable natural-language invocation using that skill's name. For example: `Use why to investigate the rationale for <named guard>; inspect available sources read-only and separate evidence from inference.` Replace the target with the user's real context when known. Do not output a shell command or claim the workflow already ran.

If an expected path is absent in the actual installation, say so and select an existing equivalent only when it fulfills the same goal; do not fabricate navigation. If the user then asks to execute, leave this helper and follow the chosen workflow and active authority contract.

Adapted from [pstack at the pinned revision](https://github.com/cursor/plugins/tree/c742dd61706fbacc1b95f1a20b7b988cf096ce6c/pstack).
