---
name: make-operations-idempotent
description: "For commands, lifecycle steps, or loops that run amid crashes and retries, design them to converge to the same end state regardless of how many times they run."
disable-model-invocation: true
---

# Make Operations Idempotent

Design commands, lifecycle steps, and loops to converge to the same end state even if they run multiple times due to crashes or retries.

## When to Apply

- Commands that may be retried
- Lifecycle steps (deploy, migrate, initialize)
- Loops that process queues or batches
- Any operation that might run multiple times

## Process

1. **Identify the operation.** What does it do? What state does it modify?

2. **Design for idempotency.** Ensure that running the operation multiple times:
   - Doesn't cause errors on subsequent runs
   - Produces the same end state
   - Doesn't create duplicates or side effects

3. **Techniques:**
   - Check if the work is already done before doing it
   - Use unique IDs to prevent duplicates
   - Design operations as "set to this state" rather than "increment"
   - Use transactions for multi-step operations
   - Record completion markers

## Example

Instead of "add user to group" (fails if user already in group), use "ensure user is in group" (no-op if already present).

## Output

Operations designed to be idempotent, safe to retry.
