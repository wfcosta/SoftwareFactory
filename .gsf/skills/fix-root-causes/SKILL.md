---
name: fix-root-causes
description: "Debugging: trace each symptom back to the first place the system went wrong and fix it there. A guard is a fix only when the state it handles is legitimate."
---

# Fix Root Causes

When debugging, trace symptoms back to the first place the system went wrong. Fix it there. Don't add guards for symptoms when the root cause is upstream.

## Process

1. **Identify the symptom.** What's failing? What's the observable problem?

2. **Trace backward.** Follow the call stack, data flow, or event chain back to where the problem originates.

3. **Find the first wrong turn.** Where did the system first deviate from correct behavior?

4. **Fix at the source.** Fix the problem at that first wrong turn, not at the symptom.

5. **Distinguish guards from fixes.** A guard (try/catch, validation, null check) is a fix only when the state it handles is legitimate business logic. If the state indicates a bug upstream, the guard is a band-aid, not a fix.

## Example

Symptom: Null pointer exception in display function.

Wrong fix: Add null check in display function. (Band-aid)
Right fix: Fix the upstream code that's passing null when it shouldn't. (Root cause)

## Output

The root cause identified and fixed, with guards only for legitimate edge cases.
