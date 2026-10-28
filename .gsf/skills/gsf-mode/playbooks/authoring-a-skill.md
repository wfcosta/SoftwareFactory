### Authoring or modifying a skill

**You own the skill's voice.**

1. Use the local [create-skill](../../create-skill/SKILL.md) skill. Name the trigger, caller, inputs, steps, outputs, and failure path. Read the existing skill and its callers before editing; preserve GSF conventions rather than installing a host-specific authoring runtime.
2. Validate the skill: frontmatter has `name` and `description` and GSF invocation metadata required by the local authoring skill, referenced files exist, cross-skill links resolve.
3. For a structural change, exercise representative invocations including missing inputs and a failed gate. Validate frontmatter, file links, dispatch boundaries, and expected artifacts; capture the actual results. For a wording-only change, document why structural execution is unchanged instead of inventing a test.
4. Run [Opening a PR](./opening-a-pr.md).

When in doubt, delete. Keep only prose that changes a decision. Tell it to do the thing and skip the reason. Explain only when the rule is confusing without one. Match tone to scope. Point at structural sources (types, READMEs, config) per the [encode-lessons-in-structure](../../encode-lessons-in-structure/SKILL.md) principle skill. Delegate to other skills by path. Don't restate. A workflow you keep hitting but isn't captured → propose a new skill.

**Reply:** summary of the skill, key design decisions, validation notes.

## Applicability

Use [GSF mode](../SKILL.md) to select direct, read-only, or factory execution. The configured `<config.paths.agents>/WORKER_CONTRACT.md` is the normative policy, lifecycle, recovery, and candidate-evidence contract; this playbook adds only task-specific steps. Direct read-only requests create no jobs or evidence files. Factory execution uses [gsf-run](../../gsf-run/SKILL.md) only within authorized write scope; investigation evidence requires an explicit write grant.

