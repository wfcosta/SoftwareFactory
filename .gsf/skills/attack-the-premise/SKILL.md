---
name: attack-the-premise
description: "When two or more fixes that share one premise have failed the same gate, write the premise down and test it directly before writing another fix that assumes it. Use for debugging recurring failures or when multiple solutions fail."
disable-model-invocation: true
---

# Attack the Premise

When multiple fixes fail because they all assume the same thing is true, test that assumption directly. Don't keep piling on fixes that share a false premise.

## When to Apply

- Two or more fixes have failed with the same symptom
- The fixes all assume something is true (e.g., "the cache is invalid," "the network is flaky," "the user is logged in")
- Each fix fails because that assumption is wrong

## Process

1. **Identify the shared premise.** What do all the failed fixes assume? What belief underlies all of them?

2. **Write it down explicitly.** State the premise clearly. "We assume X is true."

3. **Test the premise directly.** Don't assume. Verify:
   - Write a test or check that proves or disproves the premise
   - Run it and observe the result
   - If the premise is false, you've found the root cause

4. **Fix the premise, not the symptom.** Once you know the premise is false:
   - Fix the actual root cause (why the premise is false)
   - Or adjust your approach to not depend on that premise
   - Don't add guards or workarounds that assume the premise might be true

5. **Verify the fix.** Test that the issue is resolved and won't recur.

## Example

Three fixes fail:
1. "Clear the cache" - assumes cache is the problem
2. "Retry the request" - assumes network is flaky
3. "Add a timeout" - assumes the call is hanging

All three assume "the external service is responding slowly or incorrectly."

Test the premise: Is the external service actually responding? Direct check reveals it's returning 500 errors due to a configuration issue on their end.

Fix: Address the configuration issue (or report it to the service provider), not the cache, retries, or timeouts.

## Output

The tested premise (true or false), the evidence, and the fix that addresses the actual root cause.
