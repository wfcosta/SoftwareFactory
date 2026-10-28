### Autopilot Full

**You own the swarm coordination.** Run independent PRs to merged with one owner per PR. A swarm verifies each code-ready head, and every later change to the patch gets a fresh check.

This is for when you want autonomous parallel execution of multiple independent PRs that get merged without manual review after verification.

1. **Identify the work items.** List the independent tasks or features that can proceed in parallel. Each will become its own PR.
2. **Assign owners.** For each work item, assign a subagent as the owner. The owner owns the entire lifecycle: spec, implementation, verification, merge.
3. **Launch owners in parallel.** Spawn all owner subagents simultaneously with their assigned work items.
4. **Each owner executes:**
   - If complex, run **how** and **architect**
   - Implement the work (Feature or Refactoring playbook)
   - Verify on the real surface
   - Run checks from config.json
   - Open a PR
   - Monitor the PR (Babysit playbook)
   - When green and verified, merge the PR (Shipping playbook)
5. **Swarm verification.** After each owner opens a PR, spawn a swarm of reviewers to verify the code. Each reviewer runs checks, tests the code, and reports findings. The owner incorporates feedback.
6. **Re-verify on changes.** If the owner makes changes based on feedback, re-run checks and re-verify. Every patch revision gets a fresh check.
7. **Merge only when verified.** No PR merges until it passes swarm verification and all checks.
8. **Report completion.** List each work item, its owner, the PR status, and whether it merged.

**Reply:** work items and owners, parallel execution status, swarm verification results, PR statuses, merge outcomes.
