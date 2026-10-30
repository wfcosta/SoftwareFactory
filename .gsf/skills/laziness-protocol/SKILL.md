---
name: laziness-protocol
description: "Bias toward deletion and the smallest change that solves the problem. Never add abstraction, helper functions, or configuration flags speculatively. Delete obsolete code in the same commit where callers are migrated."
---

# Laziness Protocol

Bias toward deletion and the smallest change that solves the problem. Don't add complexity speculatively.

## When to Apply

- Refactoring
- Sizing a diff
- Tempted to add abstractions, layers, or signal threading
- Any time you're about to add code

## Guidelines

1. **Delete before adding.** Can you solve the problem by deleting code? If yes, do that first. Apply **subtract-before-you-add**.

2. **Smallest change.** What's the minimal change that solves the problem? Do that. Don't add "just in case" code.

3. **No speculative abstractions.** Don't add helper functions, layers, or configuration "for future use." Add them when you actually need them.

4. **Delete obsolete code immediately.** When migrating callers, delete the old code in the same commit. Don't leave dead code "just in case."

5. **Simple over clever.** Prefer simple, straightforward code over clever but complex solutions.

## Example

Instead of adding a new abstraction layer to handle a special case, delete the special case if possible. If you must handle it, add the minimal code (a simple if statement) rather than a new layer.

## Output

The smallest change that solves the problem, with deletion of unnecessary code.
