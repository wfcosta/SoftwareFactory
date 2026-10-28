---
name: model-the-domain
description: "For stateful logic, or code that branches a lot or repeats a shape assumption across files, encode the domain in a structure (state machine, typed model, table or registry, reducer, boundary, the right collection) instead of scattered conditionals."
disable-model-invocation: true
---

# Model the Domain

Encode the domain in data structures and types instead of scattered conditionals. Make the domain model explicit.

## When to Apply

- Stateful logic with many states and transitions
- Code that branches heavily on the same conditions
- Shape assumptions repeated across files
- Business rules scattered throughout code

## Process

1. **Identify the domain.** What are the entities, states, and rules in the domain?

2. **Choose the right structure:**
   - **State machine:** For systems with discrete states and transitions
   - **Typed model:** For entities with properties and relationships
   - **Table/registry:** For mappings or lookups
   - **Reducer:** For state updates based on events
   - **Boundary types:** For input validation and parsing
   - **The right collection:** Choose the data structure that matches the access pattern

3. **Encode the domain.** Implement the structure. Make illegal states unrepresentable via **type-system-discipline**.

4. **Replace scattered conditionals.** Wherever code branches on domain conditions, use the domain model instead.

## Example

Instead of scattered `if status == 'pending'` checks, use a state machine with explicit transitions and guards.

## Output

A domain model that encodes the business logic, with scattered conditionals replaced by model operations.
