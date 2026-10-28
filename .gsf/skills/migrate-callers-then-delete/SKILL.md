---
name: migrate-callers-then-delete
description: "When introducing a new internal API while old callers exist, migrate and delete in one wave. Don't leave dead code or parallel APIs."
disable-model-invocation: true
---

# Migrate Callers Then Delete

When introducing a new internal API, migrate all callers to it and delete the old API in one wave. Don't maintain parallel APIs or leave dead code.

## Process

1. **Introduce the new API.** Implement the new internal API alongside the old one.

2. **Migrate all callers.** Find every caller of the old API and migrate it to the new API.

3. **Delete the old API.** Once all callers are migrated, delete the old API.

4. **Do it in one commit (or closely related commits).** Don't leave the old API around "just in case."

## Benefits

- No code rot from dead APIs
- No confusion about which API to use
- Cleaner codebase
- Easier maintenance

## Output

New API introduced, all callers migrated, old API deleted.
