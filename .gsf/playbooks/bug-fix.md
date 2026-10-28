# Playbook: Bug Fix

**Objective:** Reproduce a defect with failing test evidence, trace root cause to the originating flaw, implement the minimal fix, and verify regression safety.

## Operational Steps
1. **Reproduction Gate:**
   - Write a failing test or isolated reproduction script that exercises the exact failure mode.
   - Run the test and confirm it fails for the correct reason. Never proceed without observing failure.
2. **Root Cause Analysis:**
   - Trace symptom back to the first place the system went wrong (*Fix Root Causes* principle).
   - Inspect call stack, state transitions, and boundary inputs.
3. **Minimal Implementation:**
   - Apply *Laziness Protocol* and *Subtract Before You Add*.
   - Make the smallest possible change that addresses the root cause without adding speculative abstractions.
4. **Verification:**
   - Run test suite and confirm regression test passes cleanly.
   - Inspect diff for unintended modifications.
