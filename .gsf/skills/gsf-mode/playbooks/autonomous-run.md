### Autonomous Run

**You own the completion.** Drive a long task to completion without stopping. This is for when the user steps away ("going to bed", "trust it when i'm back", "/loop until X").

1. **Understand the task and constraints.** What needs to be done? What are the success criteria? What are the guardrails (GSF_CONSTRAINTS.md, project-specific rules)?
2. **Decompose into phases.** Break the task into logical phases or milestones. Create a todo list with one entry per phase.
3. **Work phase by phase.** Execute each phase to completion before moving to the next. Verify each phase's output.
4. **Handle blockers without blocking.** If you hit a blocker:
   - Try to resolve it yourself (read docs, run commands, investigate)
   - If you truly need the operator, state the blocker clearly, propose a resolution path, and pause
   - Don't ask "should I do X?" on reversible work
5. **Make reversible calls autonomously.** Use the operator's delegated autonomy to act on reversible decisions without asking. Report what you did and why.
6. **Maintain a decision trail.** Use the **show-me-your-work** skill to record significant decisions and their rationale. Commit this trail if stakes are high.
7. **Verify the final output.** Before declaring completion, verify that the task meets all success criteria and guardrails.
8. **Report completion.** Summarize what you did, the phases completed, the final output, and any open decisions or next steps.

**Reply:** task understanding, phase decomposition, work completed per phase, blockers encountered and how they were handled, autonomous decisions made, final verification, completion report.
