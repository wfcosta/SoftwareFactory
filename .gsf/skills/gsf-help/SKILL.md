---
name: gsf-help
description: "Help when new to GSF or unsure which skill or playbook fits. Discovers what you're trying to accomplish, answers that part, and provides the exact prompt to execute."
disable-model-invocation: true
---

# GSF Help

When you're new to the Generic Software Factory or unsure which skill or playbook fits your task, this skill helps you figure it out.

## Process

1. **Understand the user's goal.** Ask what they're trying to accomplish. What's the task? What's the context?

2. **Match to the right skill or playbook.** Based on the task type:
   - Investigation question → **how** or **why** skill
   - Bug fix → Bug fix playbook
   - New feature → Feature playbook
   - Refactoring → Refactoring playbook
   - Performance issue → Perf issue playbook
   - Design decision → **architect** skill
   - Need parallel execution → **arena** or **swarm** skill
   - PR needs review → **interrogate** skill
   - Change impact assessment → **blast-radius** skill
   - Test-first implementation → **tdd** skill
   - And so on

3. **Explain the skill or playbook.** Briefly explain what it does and when to use it.

4. **Provide the exact prompt.** Give the user the exact prompt to type or invoke to execute the right skill or playbook.

## Output

- The user's goal (restated to confirm understanding)
- The recommended skill or playbook
- A brief explanation of what it does
- The exact prompt to execute

## Notes

This skill is for onboarding and navigation. Once the user knows their way around GSF, they can invoke skills directly without going through this helper.
