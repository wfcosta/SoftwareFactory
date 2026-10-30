---
name: test-behavior-not-implementation
description: "When writing, changing, or keeping a test, assert what the code's users can observe, so the test fails when that behavior breaks and keeps passing when only the internals change."
---

# Test Behavior, Not Implementation

Tests should assert observable behavior, not implementation details. This makes tests robust to refactoring.

## What to Test

- Observable behavior: inputs → outputs
- User-visible effects
- API contracts
- Error cases

## What NOT to Test

- Internal function names
- Implementation details
- Private methods
- Exact code paths (unless behavior-critical)

## Process

1. **Identify the observable behavior.** What can users of this code observe?

2. **Write tests for that behavior.** Assert inputs produce expected outputs.

3. **Avoid implementation assertions.** Don't test that function X calls function Y unless that's a critical invariant.

4. **Refactor-proof.** The test should pass if you refactor the internals without changing behavior.

## Example

Bad: `assert that function calls database.query()`
Good: `assert that given input X, the function returns output Y`

## Output

Tests that assert behavior, allowing internals to change without breaking tests.
