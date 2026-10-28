# Decision trail

Append a section for each real decision. Fill fields before use; never claim a planned result as observed.

## decision-001

- Timestamp: actual ISO 8601 UTC timestamp
- Run / phase: actual owner and phase
- Decision: concrete choice or action
- Why: reason and material alternative rejected
- Evidence: resolvable command receipt, artifact, file/line, commit, or PR
- Result: open, verified outcome, failed, blocked, or inconclusive
- Supersedes: none, or earlier decision ID

On pickup append a start section identifying the run and the decisions it did not author. Keep history append-only; a correction supersedes rather than edits. Do not store secrets. The coordinator alone appends the shared job trail.
