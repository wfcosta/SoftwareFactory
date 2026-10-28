---
name: sharpen
description: "Deepen a task through four professional-method diagnostics, then rewrite its prompt without executing it. Use for /sharpen."
disable-model-invocation: true
---

# Sharpen

Make the supplied task deeper, not bigger. Use the prompt in the request, or the immediately preceding task when the referent is clear. If no task can be identified, ask for it rather than inventing one.

Before rewriting, answer these four questions explicitly and in order:

1. What would a top professional in this field do here that the prompt is not asking for?
2. What is the rawest material they would start from, rather than a summary or already-digested account? Name concrete primary inputs appropriate to the task.
3. What specific methods and tools would they use on that material? Explain which uncertainty each method resolves, not merely tool names.
4. What independent evidence, other than the assistant's or user's opinion, would show the result is right? Name an observable acceptance test, external record, or reproducible comparison.

Then provide a rewritten prompt asking for exactly that depth. Preserve the original goal, scope, constraints, and requested output. Keep decisions belonging to the user open. Distinguish supplied facts from proposed inputs; do not invent credentials, data, or capabilities. More words, extra features, and additional deliverables are not inherently more rigorous.

Output the four diagnostics followed by the rewritten prompt. This is prompt work only: do not execute the rewritten task, inspect unrelated private material, initialize a factory job, or modify files.

Adapted from [pstack at the pinned revision](https://github.com/cursor/plugins/tree/c742dd61706fbacc1b95f1a20b7b988cf096ce6c/pstack).
