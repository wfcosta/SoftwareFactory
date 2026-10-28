# Playbook: Refactoring

**Objective:** Behavior-preserving structural improvement that reduces cognitive load and simplifies domain models.

## Operational Steps
1. **Baseline Verification:**
   - Ensure all existing tests and checks pass before touching code.
2. **Structural Design:**
   - Apply *Foundational Thinking* and *Model The Domain*. Simplify types and call graphs.
3. **Migration & Deletion:**
   - Migrate callers and delete legacy APIs in the same wave (*Migrate Callers Then Delete* principle).
4. **Post-Refactor Validation:**
   - Run complete test suite and verify behavior remains identical.
