---
name: experience-first
description: "For product, UX, or feature-scope tradeoffs, choose user delight over implementation convenience. Use when making decisions that affect user experience."
disable-model-invocation: true
---

# Experience First

When making product, UX, or feature-scope decisions, prioritize the user experience over implementation convenience. Build what users will love, not what's easiest to build.

## When to Apply

- Product feature decisions
- UX design choices
- Feature scope tradeoffs
- Choosing between implementations that affect UX
- Deciding what to build vs. cut

## Process

1. **Understand the user's goal.** What is the user trying to accomplish? What would delight them?

2. **Evaluate options from the user's perspective.** For each option:
   - How does it feel to use?
   - Is it intuitive?
   - Does it solve the user's problem elegantly?
   - What are the friction points?

3. **Evaluate implementation complexity.** How hard is each to build? But don't let this drive the decision.

4. **Choose the best user experience.** Pick the option that provides the best UX, even if it's harder to implement.

5. **Find a way to build it.** If the best UX is complex, find clever ways to implement it. Don't compromise the experience for convenience.

## Example

Decision: Should we implement real-time collaboration or batch updates?

Implementation convenience: Batch updates are easier.
User experience: Real-time collaboration is delightful.

Choose: Real-time collaboration. Find a way to implement it (CRDTs, operational transforms, etc.).

## Output

The decision that prioritizes user experience, with implementation strategy for making it feasible.

## Notes

Implementation convenience is a false economy. Building the wrong thing because it's easy is more expensive than building the right thing even if it's hard.
