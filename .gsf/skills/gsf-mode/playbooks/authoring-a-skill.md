### Authoring a Skill

**You own the skill definition.** Write or edit a SKILL.md file that defines a reusable engineering pattern or workflow.

1. **Identify the pattern.** What engineering work does this skill codify? When should it be invoked? What problem does it solve?
2. **Name it descriptively.** The skill name should be clear and searchable. Use kebab-case.
3. **Write the frontmatter.** Include:
   - `name`: The skill identifier
   - `description`: When to use it (trigger phrases)
   - `disable-model-invocation: true` if the skill manages subagents itself
   - Optional: `icon`, `color` for UI display
4. **Define the steps.** Write a step-by-step procedure that is:
   - Deterministic (no "you might want to", "consider")
   - Actionable (clear instructions, not abstract guidance)
   - Complete (covers the full workflow from start to finish)
   - Principle-grounded (cite which principles apply)
5. **Add references if needed.** If the skill uses templates or prompts, create a `references/` subdirectory with those files.
6. **Test the skill.** Invoke it on a real task. Does it work? Do the steps make sense? Are there gaps?
7. **Iterate.** Refine based on testing. Remove ambiguity, add missing steps, tighten language.
8. **Document the skill** in the main README or skill catalog if it's meant for others to use.

**Reply:** what pattern this skill codifies, when to invoke it, the step-by-step procedure, any references/templates, how you tested it.
