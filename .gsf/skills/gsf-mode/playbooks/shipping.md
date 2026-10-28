### Shipping

**You own the independent verification and landing.** Independently verify a green stack, then land the contiguous verified run bottom-up through GitHub by default or origin when available.

Green is not safe. Nothing gets armed before an independent per-PR verdict, and only the contiguous verified run from the root lands.

1. **Assess the stack.** Identify all PRs in the stack and their dependencies. Draw the dependency graph.
2. **Verify each PR independently.** For each PR from the root upward:
   - Check out the PR
   - Run the full verification (build, test, lint per config.json)
   - Review the changes for correctness and adherence to principles
   - Confirm CI is green
   - Make a verdict: VERIFIED or NEEDS WORK
3. **Only verified PRs proceed.** If a PR fails verification, stop. Fix it and re-verify. Do not merge unverified PRs.
4. **Land bottom-up.** Once all PRs are verified, merge them in dependency order:
   - Merge the root PR first
   - Update dependent branches
   - Merge the next PR
   - Repeat until the stack is landed
5. **Handle merge conflicts.** If a conflict arises during landing:
   - Resolve locally
   - Re-verify the merge
   - Continue landing
6. **Use GitHub API by default.** Use `gh pr merge` for the actual merge commands. If GitHub is unavailable (origin-only mode), use local git merges and push.
7. **Confirm the stack is landed.** Verify that all PRs are merged and the target branch reflects the full stack.
8. **Report the outcome.** List each PR, its verification status, and whether it landed.

**Reply:** stack dependency graph, verification results per PR, merge order, any conflicts and how they were resolved, final confirmation that the stack is landed.
