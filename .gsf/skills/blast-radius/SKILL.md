---
name: blast-radius
description: "Find what a change could break by mapping downstream callers, shared state, and test coverage. Use before making changes to assess impact, especially for small-looking changes that might have wide effects."
---

# Blast Radius

Evaluate a change's potential downstream impact by mapping what depends on it. This is for risk assessment before making changes, especially when a small-looking change might have wide effects.

## Process

1. **Identify the change.** What is being changed? Files, functions, classes, interfaces, data structures?

2. **Map direct callers.** Find all direct usages:
   - Function calls
   - Class instantiations
   - Interface implementations
   - Imports/requires
   - References in configuration or data

3. **Map indirect callers.** For each direct caller, find its callers. Build a call graph. How deep does the dependency chain go?

4. **Identify shared state.** Does the change affect:
   - Global state or singletons?
   - Shared data structures?
   - Database schemas?
   - External API contracts?
   - Configuration formats?

5. **Map test coverage.** What tests exercise the changed code and its callers? Are there tests for all the important paths?

6. **Assess risk by category:**
   - **High risk:** Changes to widely-used interfaces, shared state, or public APIs with many callers
   - **Medium risk:** Changes to internal interfaces with moderate caller count, or changes that affect data flow
   - **Low risk:** Changes to leaf functions with few callers, or changes isolated to a single module

7. **Identify the blast radius.** List all code paths, modules, or systems that could be affected by this change. Be exhaustive, not minimal.

8. **Recommend safeguards.** Based on the blast radius, recommend:
   - Tests to add before the change
   - Tests to run after the change
   - Rollback plans
   - Staged rollout strategies
   - Monitoring to add

## Output

A blast radius report listing:
- Direct and indirect callers
- Shared state affected
- Test coverage gaps
- Risk assessment (high/medium/low)
- Recommended safeguards

## Notes

The goal is to be thorough, not optimistic. Better to overestimate the blast radius than to miss a critical dependency. This informs how much testing and caution the change requires.
