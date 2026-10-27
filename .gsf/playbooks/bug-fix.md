# Playbook: Bug Fix

**Objective:** Reproduce a defect, trace root cause, and implement a verified fix with zero regression.

## Steps
1. **Reproduction:** Observe and capture the failure behavior (failing test case, script, or reproduction steps).
2. **Root Cause Analysis:** Trace symptom to the exact originating flaw using code inspection and logs. Apply *Fix Root Causes* principle.
3. **Minimal Fix:** Implement the smallest change necessary. Apply *Laziness Protocol* and *Subtract Before You Add*.
4. **Verification:** Run tests and smoke verify the fixed path. Confirm passing regression.
