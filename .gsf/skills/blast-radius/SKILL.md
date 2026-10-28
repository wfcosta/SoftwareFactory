# Skill: Blast Radius

**Trigger:** When evaluating a small-looking change to determine potential downstream impact.

## Operational Steps
1. **Dependency Mapping:**
   - Identify all downstream callers, shared state actors, and test suites affected by the change.
2. **Empirical Proof:**
   - Prove safety by running tests and tracing code paths, rather than asserting assumptions.
3. **Guard Placement:**
   - Concentrate guards at system boundaries if external input handling is involved.
