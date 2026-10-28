---
name: redesign-from-first-principles
description: "When integrating a new requirement into an existing design, redesign as if it had been foundational from day one. Don't bolt onto a shape that doesn't fit."
disable-model-invocation: true
---

# Redesign from First Principles

When a new requirement doesn't fit the existing design, redesign as if the requirement had been there from the beginning. Don't bolt on awkward workarounds.

## When to Apply

- A new requirement reveals the current design is wrong
- Adding the feature requires ugly hacks
- The design keeps accumulating complexity
- Workarounds are piling up

## Process

1. **Identify the mismatch.** Why doesn't the requirement fit the current design?

2. **Ask: if this requirement were day-one, how would we design it?** Design from scratch with the new requirement as a foundational constraint.

3. **Compare with current design.** How different is it? Is the redesign worth it?

4. **If yes, redesign.** Implement the new design, migrating existing code to it.

5. **If no, accept the cost.** If redesign is too expensive, acknowledge the debt and document it.

## Output

A redesigned architecture that accommodates the requirement naturally, or a documented decision to accept technical debt.
