### Babysit

**You own the PR's path to merge.** Drive a PR or a stack to merge-ready: conflicts, review threads, CI. This is triggered by PR-status requests, not by merely opening a PR.

1. **Declare the mode.** State that you're entering Babysit mode for this PR or stack. Don't poll. Own the work.
2. **Assess the state.** Check:
   - CI status (passing, failing, flaky)
   - Review threads (addressed, pending, blocked)
   - Conflicts (clean, needs resolution)
   - Approvals (satisfied, missing)
   - Open questions or blockers
3. **Triage by priority.** Order the work:
   - Critical: Blocking merge (failing CI, unresolved conflicts, missing required approvals)
   - High: Reviewer questions that need answers
   - Medium: Nice-to-have improvements or suggestions
   - Low: Nits or optional changes
4. **Execute in priority order.**
   - Failing CI: Investigate, fix, rerun. Don't merge with red CI.
   - Conflicts: Resolve locally, test, push.
   - Review threads: Address each. If you disagree with a suggestion, explain why in the thread. Don't let it block if it's optional.
   - Approvals: Request from approvers if missing. Follow up if delayed.
5. **Reassess after each action.** CI may turn red again. New comments may appear. Conflicts may re-emerge. Loop until the PR is clean.
6. **Once merge-ready, report.** Summarize what you did, what's left (if anything), and that the PR is ready to land.
7. **If shipping is requested**, hand off to the Shipping playbook.

**Reply:** initial state, actions taken in priority order, current state, any remaining work, merge-ready confirmation.
