# Laziness Protocol

**Rule:** Bias toward deletion and the smallest change that solves the problem.

- Never add abstraction, helper functions, or configuration flags speculatively.
- Delete obsolete code, comments, and wrappers in the same commit where callers are migrated.
- If a problem can be solved by deleting code or simplifying existing structures, always choose that over writing new code.
