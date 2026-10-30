---
name: outcome-oriented-execution
description: "For planned rewrites and migrations with explicit phase boundaries, converge on the target architecture without preserving throwaway compatibility states."
---

# Outcome-Oriented Execution

For planned rewrites and migrations, converge on the target architecture. Don't preserve intermediate compatibility states that will be discarded.

## When to Apply

- Large rewrites
- Migrations between architectures
- Multi-phase projects
- Work with explicit phase boundaries

## Process

1. **Define the target.** What's the final state you're converging to?

2. **Define phases.** Break the work into phases with explicit boundaries. Each phase produces a verifiable artifact.

3. **Execute phases.** Work through each phase, converging toward the target.

4. **Don't preserve throwaway states.** Don't add compatibility layers or intermediate abstractions that will be deleted in the next phase. Move directly toward the target.

5. **Verify each phase.** Each phase should be verifiable and correct on its own path to the target.

## Output

Work executed in phases, each converging toward the target without throwaway compatibility states.
