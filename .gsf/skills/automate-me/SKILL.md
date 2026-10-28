---
name: automate-me
description: Capture your working style into a personal -mode skill, or update an existing one. Use for "automate me", "turn my preferences into a skill", or when you want agents to follow how you work.
---

# Automate Me

Create or update a personal skill that encodes your working style, preferences, and patterns so agents can emulate how you work.

## Steps

### 1. Understand the context

Where should this skill live?
- Workspace level (specific to this project)
- User level (across all your projects)
- Plugin level (if using as a plugin)

### 2. Observe or extract patterns

If you have a working session to extract from:
- What did you do?
- How did you approach the task?
- What patterns did you follow?
- What did you prioritize?
- What did you avoid?

If creating from scratch:
- Ask the user about their preferences
- What do they value? (speed vs. quality, simplicity vs. completeness)
- How do they like to structure code?
- What principles do they follow?

### 3. Design the skill

Create a skill with these sections:

**Frontmatter:**
```yaml
---
name: your-mode
description: Your personal working style and preferences.
---
```

**Style Guidelines:**
- How you approach tasks
- What you prioritize
- Your coding style preferences
- Your communication style
- Your decision-making patterns

**Common Patterns:**
- Things you always do
- Things you never do
- Your go-to approaches for common problems

**Tools and Preferences:**
- Tools you prefer (if any)
- Frameworks you favor
- Patterns you like

### 4. Write the skill

Create the skill file at the appropriate location:
- Workspace: `.devin/skills/your-mode/SKILL.md`
- User: `~/.cursor/skills/your-mode/SKILL.md`
- Plugin: Plugin skills directory

### 5. Test it

Have the agent use the skill on a task and verify it follows your style. Iterate as needed.

## Output

A personal skill that encodes your working style, ready for agents to invoke so they work the way you do.
