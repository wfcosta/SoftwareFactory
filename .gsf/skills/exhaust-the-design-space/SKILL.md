---
name: exhaust-the-design-space
description: "For novel interactions or architectural decisions with no precedent, build 2-3 competing prototypes and compare before committing. Use when there's no clear right answer from existing patterns."
disable-model-invocation: true
---

# Exhaust the Design Space

For novel decisions with no precedent, explore multiple approaches before committing. Don't pick the first idea that seems good enough.

## When to Apply

- Novel interaction or UX pattern
- Architectural decision with no clear precedent
- Major system redesign
- When you're unsure which approach is best
- When the decision has long-term consequences

## Process

1. **Identify the decision space.** What are the viable approaches? What are the dimensions of the decision?

2. **Prototype 2-3 distinct approaches.** Build competing prototypes that explore different parts of the design space. They should be:
   - Structurally different (not just variants of the same idea)
   - Focused on the key decision (not full implementations)
   - Quick to build (throwaway code is fine)

3. **Compare the approaches.** Evaluate each on:
   - How well it solves the problem
   - Tradeoffs (performance, complexity, maintainability)
   - Edge cases it handles or fails to handle
   - Future extensibility

4. **Pick the best.** Choose the approach with the best balance of tradeoffs for your context.

5. **Discard or evolve the others.** Delete the throwaway prototypes, or evolve the winner into production code.

## Example

Designing a new state management system:
- Prototype 1: Redux-style centralized store
- Prototype 2: Component-local state with props drilling
- Prototype 3: Reactive signals with computed values

Compare and pick based on the project's needs (complexity, team familiarity, performance characteristics).

## Output

2-3 prototypes, a comparison analysis, and the chosen approach with rationale.

## Notes

This is the **architect** skill made concrete. The arena skill is the implementation of this principle for code and design artifacts.
