---
name: separate-before-serializing-shared-state
description: "When concurrent actors might write the same file, branch, key, or object, eliminate the sharing first. Only serialize when there's a real invariant that requires it."
disable-model-invocation: true
---

# Separate Before Serializing Shared State

Before adding locks or serialization, eliminate the sharing. Only serialize when there's a real invariant that requires coordination.

## Process

1. **Identify shared state.** What are concurrent actors competing for?

2. **Can you eliminate the sharing?**
   - Give each actor its own copy
   - Use immutable data structures
   - Partition the work so actors don't overlap
   - Use queue-based coordination instead of shared state

3. **If sharing is necessary, identify the invariant.** What must be protected? Is it a real invariant or just convenience?

4. **Serialize only for real invariants.** Add locks or coordination only when necessary for correctness.

## Output

Code with shared state eliminated where possible, and minimal serialization only for real invariants.
