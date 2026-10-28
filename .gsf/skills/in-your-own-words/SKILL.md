---
name: in-your-own-words
description: Have the agent play back your goal and the problem before it starts. Use when you want to ensure the agent understands what you're asking for before it begins work.
disable-model-invocation: true
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
4. **State the approach**: Name the smallest likely change or investigation and its verification.
5. Proceed without confirmation unless the user requested a checkpoint, a material preference is unresolved, or an Always-pause gate applies.

## Output

A restatement of:
- The goal
- The problem
- Constraints
- Planned approach

Restatement is not authorization for new scope. Keep it short, then execute authorized work. If the request was only for a restatement, stop after it.
