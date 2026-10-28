### Opening a PR

**You own the PR structure.** Open a ready PR from small ordered commits with a conventional commits title and a briefing-style body. Invoked at the end of every other playbook.

1. **Rebase into ordered commits.** Ensure the commit history is:
   - Small, focused commits (one logical change per commit)
   - Ordered logically (earlier changes first, dependent changes later)
   - Following conventional commits format (type(scope): description)
   - Clean (no fixup commits, no merge commits)
2. **Write the PR title.** Use conventional commits format. Be concise but descriptive. Example: "feat(auth): add OAuth2 login flow"
3. **Write the PR body.** Use briefing style:
   - **Summary**: One paragraph describing what this PR does
   - **Why**: Why this change is needed (link to issue if applicable)
   - **How**: High-level approach taken
   - **Changes**: Bullet list of key changes
   - **Testing**: How this was tested and verified
   - **Risks**: Any risks or considerations
   - **Checklist**: [ ] Tests pass, [ ] Lint passes, [ ] Manual verification
4. **Link to issues.** If this PR closes an issue, include "Closes #123" in the body or commit message.
5. **Add reviewers.** Assign appropriate reviewers based on the code touched.
6. **Add labels.** Apply relevant labels (feature, bugfix, refactor, etc.).
7. **Open the PR.** Use `gh pr create` with the title and body.
8. **Report the PR.** Provide the PR URL and a summary.

**Reply:** commit count and ordering, PR title, PR body summary, reviewers assigned, labels applied, PR URL.
