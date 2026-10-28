---
name: tdd
description: "Test-driven development: write failing tests first, then the minimal implementation to make them pass. Use for 'tdd this', 'test-first', or when implementing features or fixing bugs with a clear test path."
disable-model-invocation: true
---

# Test-Driven Development

Write a failing test first, then the minimal implementation to make it pass. This enforces the **sequence-verifiable-units** principle and ensures tests cover the actual behavior.

## Process

1. **Understand the requirement.** What behavior do you need? What should the code do?

2. **Write a failing test.**
   - Write a test that exercises the desired behavior
   - Run the test and confirm it fails
   - Confirm it fails for the right reason (not a syntax error or missing dependency)
   - The test should be as specific as possible to the behavior you want

3. **Write the minimal implementation.**
   - Write the smallest code that makes the test pass
   - Don't add extra features or abstractions
   - Don't optimize prematurely
   - Follow the **laziness-protocol** principle

4. **Run the test.** Confirm it now passes.

5. **Refactor if needed.** If the implementation needs improvement (for clarity, performance, or maintainability), refactor it while keeping the test green.

6. **Repeat for each behavior.** Add tests for edge cases, error conditions, and other behaviors, implementing each minimally.

7. **Run the full suite.** Ensure all tests pass, not just the new ones.

## When to Use TDD

- When implementing a new feature with clear testable behavior
- When fixing a bug and you can write a failing test for the bug
- When adding a new public API or interface
- When behavior is complex and needs verification

## When NOT to Use TDD

- When the test would be expensive (integration tests, end-to-end tests)
- When the behavior is exploratory and you're still figuring it out
- When the test setup is more complex than the implementation
- When you're doing a pure refactoring that shouldn't change behavior

## Output

A test suite that covers the behavior, and the minimal implementation that makes all tests pass.

## Notes

TDD is a discipline, not a rigid rule. The goal is verifiable units and tests that prove behavior works. If TDD is slowing you down without adding value, switch to writing tests after the implementation, but still ensure tests exist before the change ships.
