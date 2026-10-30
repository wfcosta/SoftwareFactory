---
name: subtract-before-you-add
description: "When sequencing an addition, refactor, or rewrite, remove dead weight first, then build on the simpler base. Apply laziness-protocol before adding."
---

# Subtract Before You Add

Before adding new code, remove dead or unnecessary code first. Build on a simpler base.

## When to Apply

- Refactoring
- Rewrites
- Adding features to complex code
- Any work that involves adding to existing code

## Process

1. **Identify dead weight.** What code is obsolete, unused, or unnecessary?

2. **Delete it.** Remove the dead weight first.

3. **Now add the new code.** Build on the simpler base.

4. **Verify.** The result should be simpler and easier to understand.

## Benefits

- Less code to maintain
- Clearer understanding of what's needed
- Easier to see the new changes
- Reduces complexity

## Output

Dead code removed, then new code added to a simpler base.
