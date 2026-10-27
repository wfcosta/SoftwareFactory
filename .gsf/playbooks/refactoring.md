# Playbook: Refactoring

**Objective:** Behavior-preserving structural improvement that reduces cognitive load and simplifies domain model.

## Steps
1. **Baseline Verification:** Ensure all existing checks and tests pass.
2. **Structural Design:** Apply *Foundational Thinking* and *Model the Domain* to simplify types and call graphs.
3. **Migrate & Delete:** Update callers and remove legacy abstractions simultaneously (*Migrate Callers Then Delete*).
4. **Post-Check:** Verify behavior via automated test suite and smoke run.
