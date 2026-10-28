---
name: in-your-own-words
description: Have the agent play back your goal and the problem before it starts. Use when you want to ensure the agent understands what you're asking for before it begins work.
---

# In Your Own Words

Before starting work, have the agent restate your goal and the problem in its own words. This catches misunderstandings early.

## When to Use

- Before any non-trivial task
- When the request is complex or ambiguous
- When you want to confirm understanding
- When precision matters

## Process

The agent should:

1. **Restate the goal**: What are we trying to accomplish?
2. **Restate the problem**: What's the issue or need?
3. **Identify constraints**: What are the boundaries or requirements?
4. **Confirm approach**: How do you plan to solve it?
5. **Ask for confirmation**: Is this correct? Should I proceed?

## Output

A restatement of:
- The goal
- The problem
- Constraints
- Planned approach

Followed by: "Should I proceed?"

Only after you confirm should the agent begin the actual work.
