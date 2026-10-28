### Worktree Cleanup

**You own the safe reclamation.** Reclaim disk by pruning merged or abandoned worktrees and stale iOS simulators, safety-gated.

1. **Identify candidates for cleanup.**
   - Git worktrees: List all worktrees (git worktree list)
   - Identify merged branches (git branch --merged)
   - Identify abandoned worktrees (no recent commits, no active PR)
   - iOS simulators: List available simulators (xcrun simctl list)
2. **Safety checks.** Before deleting anything, verify:
   - The worktree's branch is merged to main or a protected branch
   - There is no open PR for the worktree's branch
   - The worktree has no uncommitted changes
   - The simulator is not the currently active one
3. **Propose the cleanup.** List what you intend to delete and why. Ask for confirmation if this is a destructive operation the operator should review.
4. **Execute the cleanup.**
   - Remove worktrees: git worktree remove <path>
   - Prune merged branches: git branch -d <branch>
   - Delete simulators: xcrun simctl delete <device>
5. **Verify the cleanup.** Confirm that the candidates are gone and that no active work was deleted.
6. **Report the outcome.** List what was deleted and what was skipped (with reasons).

**Reply:** candidates identified, safety checks performed, cleanup executed, verification results, what was deleted.
