---
name: never-block-on-the-human
description: "When tempted to ask 'should I do X?' on reversible work, proceed, present the result, let the human course-correct. Don't block on decisions the operator can reverse."
disable-model-invocation: true
---

# Never Block on the Human

For reversible work, don't ask for permission. Proceed, present the result, and let the human course-correct if needed.

## When to Block

Only block when:
- The decision is irreversible (deleting production data, breaking changes)
- The operator must make the call (security policy, credentials, releases)
- Explicitly required by guardrails or autonomy settings

## When NOT to Block

- Reversible code changes
- File edits
- Refactoring
- Adding tests
- Any work the operator can undo

## Process

1. **Assess reversibility.** Can this work be easily undone? If yes, proceed without asking.

2. **Do the work.** Execute the task.

3. **Present the result.** Show what you did and why.

4. **Wait for feedback.** If the operator wants changes, make them.

## Output

Work completed without blocking, with results presented for review.
