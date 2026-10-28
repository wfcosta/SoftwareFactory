### Autopilot Stack

**You own the parallel build and verify.** Build and verify PRs for the operator to review and land, stacking a PR only on a PR it builds on. This is Autopilot Full without the merge step.

1. **Identify the work items and dependencies.** List the tasks and their dependency graph. Independent tasks can proceed in parallel. Dependent tasks must wait.
2. **Assign owners.** For each work item, assign a subagent as the owner.
3. **Launch independent owners in parallel.** Spawn owners for tasks with no dependencies simultaneously.
4. **Each owner executes:**
   - If complex, run **how** and **architect**
   - Implement the work (Feature or Refactoring playbook)
   - Verify on the real surface
   - Run checks from config.json
   - Open a PR (stacked correctly on its dependencies)
5. **Swarm verification.** After each owner opens a PR, spawn a swarm of reviewers to verify. The owner incorporates feedback.
6. **Re-verify on changes.** Every patch revision gets a fresh check.
7. **When dependent tasks are ready, launch their owners.** Once a dependency's PR is open and verified, spawn owners for tasks that depend on it.
8. **Report completion.** List each work item, its owner, PR status, verification status, and dependency satisfaction.

**Reply:** work items and dependency graph, owners, parallel execution, PR statuses, verification results, operator review handoff.
