### Refactoring

**You own the shape. Plan, review, verify.** Delegate implementation. Stay in the lead.

A refactoring is a behavior-preserving change to structure or shape. If behavior changes, this is a feature or bug fix, not a refactoring.

1. **how** over the affected subsystem to understand the current shape and invariants.
2. **Define the new shape** and prove it preserves behavior. Write down:
   - What changes and what stays the same
   - The invariants the current shape maintains
   - How the new shape maintains the same invariants
   - Any observable behavior differences (there should be none)
3. **Blast-radius** the change to understand downstream impact.
4. **If the shape crosses boundaries, architect** for parallel design exploration.
5. **Write the throughput checkpoint** as in Feature step 3.
6. **Delegate implementation** to a subagent with a specific scope (files, new shape, preservation invariants, success criteria). When multiple valid reshaping approaches exist, delegate via **arena**. Apply the same arena mandate as Feature step 4.
7. **Verify behavior preservation.** Run the full test suite. Verify that all existing tests pass. If any test fails, either the refactoring broke behavior (wrong) or the test was checking implementation details (fix the test as part of the refactoring). Document any test changes with the rationale.
8. **Rebase into small, ordered commits.** Use **sequence-verifiable-units**.
9. **Run Opening a PR.**

**Reply:** the shape change, preservation proof, throughput checkpoint, any test changes and why.
