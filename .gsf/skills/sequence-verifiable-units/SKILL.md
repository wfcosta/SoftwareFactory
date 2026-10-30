---
name: sequence-verifiable-units
description: "For multi-step work (sweeps, migrations, runs of similar edits) and commit/PR stacking, break work into small units that each end in a check, verify each before the next, and order delivery so the sequence proves itself."
---

# Sequence Work into Verifiable Units

Break multi-step work into small, verifiable units. Verify each unit before proceeding to the next. Order delivery so the sequence proves itself.

## When to Apply

- Large refactors spanning many files
- Migrations with multiple steps
- Sweeps of similar edits
- Stacking multiple commits or PRs

## Process

1. **Decompose into units.** Break the work into the smallest verifiable pieces.

2. **Order the units.** Sequence them so each can be verified independently.

3. **Execute unit by unit.** Complete one unit, verify it, then move to the next.

4. **Verify each unit.** Run checks, tests, or manual verification for each unit before proceeding.

5. **Commit or PR per unit.** Each unit gets its own commit or PR. Stack them in order.

6. **The sequence proves itself.** If any unit fails verification, stop and fix it before proceeding.

## Output

Work broken into verifiable units, each verified before the next, with commits or PRs stacked in order.
