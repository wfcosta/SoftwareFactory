---
name: encode-lessons-in-structure
description: "When you catch yourself writing the same instruction a second time, encode it as a lint, metadata flag, runtime check, or script instead of more text. Use for repeated patterns or recurring issues."
disable-model-invocation: true
---

# Encode Lessons in Structure

When you find yourself writing the same instruction repeatedly, encode it as a structural element (lint, check, script) rather than more documentation.

## When to Apply

- You've explained the same thing multiple times in docs or comments
- The same bug keeps recurring
- The same pattern keeps being implemented incorrectly
- A rule exists but people keep forgetting it

## How to Encode

### Lints
- Add a linter rule to catch the pattern
- Configure existing linters to flag the issue
- Example: ESLint rule for a specific anti-pattern

### Metadata Flags
- Add a flag or annotation to the code
- Example: `@deprecated`, `@internal`, `@experimental`
- These flags can be enforced by tooling

### Runtime Checks
- Add assertions or invariant checks
- Fail fast when the rule is violated
- Example: `assert invariant in production`

### Scripts
- Write a script that enforces the rule
- Run it in CI
- Example: Script that checks for forbidden patterns

### Types
- Encode constraints in the type system
- Make illegal states unrepresentable
- Example: Use enums instead of string constants

## Process

1. **Identify the pattern.** What keeps happening? What instruction keeps being repeated?

2. **Choose the encoding mechanism.** Lint? Type? Script? Runtime check?

3. **Implement the encoding.** Add the structural element.

4. **Remove the redundant text.** Delete the repeated instructions from docs and comments.

5. **Verify.** Does the structural element catch the pattern? Does it replace the need for the text?

## Output

The structural element (lint, type, script, etc.) that encodes the lesson, with redundant text removed.
