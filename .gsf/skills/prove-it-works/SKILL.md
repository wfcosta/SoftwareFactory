---
name: prove-it-works
description: "After a task, before declaring done, verify against the real artifact, not a proxy or 'it compiles'. Use for final verification of any work."
disable-model-invocation: true
---

# Prove It Works

After completing a task, verify it works against the real artifact. Don't rely on proxies like "it compiles" or unit tests alone.

## What to Verify

- Run the actual code or system
- Test on the real surface (not a mock)
- Verify end-to-end behavior
- Check against the original requirements
- Confirm no regressions

## Process

1. **Identify the verification method.** How do you prove this works in reality?

2. **Run the verification.** Execute the real system, not a test harness.

3. **Confirm success.** Does it work as intended?

4. **Check for regressions.** Did anything else break?

5. **Only then declare done.**

## Example

For a UI change, open the app and click through the actual UI. Don't just verify the code compiles.

## Output

Verification that the work works in reality, not just in theory.
