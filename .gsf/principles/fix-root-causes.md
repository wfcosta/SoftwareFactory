# Fix Root Causes

**Rule:** Trace each symptom back to the first place the system went wrong and fix it there.

- A guard or fallback is a fix only when the state it handles is legitimate.
- Never suppress exceptions, warnings, or error logs without resolving the underlying failure condition.
