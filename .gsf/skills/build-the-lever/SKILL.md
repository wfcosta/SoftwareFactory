---
name: build-the-lever
description: "Build the tool that does or proves it (codemod, script, generator), not by hand. The tool is the artifact a reviewer reruns. Use for any non-trivial work that can be automated."
disable-model-invocation: true
---

# Build the Lever

Applicability and host-capability boundaries follow [GSF mode](../gsf-mode/SKILL.md), with shared factory policy in the configured worker contract.

For non-trivial work, build a tool that does it or proves it, rather than doing it by hand. The tool becomes a reviewable artifact that others can run and verify.

## When to Build a Lever

- Making similar changes across many files
- Performing a complex refactoring
- Generating code from a specification
- Proving a property holds across the codebase
- Any work that would be tedious or error-prone to do manually

## Types of Levers

- **Codemods:** Automated code transformations
- **Scripts:** Automation of repetitive tasks
- **Generators:** Code generation from templates or specs
- **Test generators:** Property-based tests or fuzzing
- **Linters/Analyzers:** Static analysis tools
- **Proof scripts:** Formal verification or model checking

## Process

1. **Identify the work.** What needs to be done? Can it be automated?

2. **Design the lever.** What tool would do this work? What's its input and output?

3. **Build the lever.** Prefer existing host tools. In a target product, write a codemod or generator only within authorized scope. GSF framework artifacts remain Markdown-only: record the repeatable host procedure and evidence, never bundle `.sh`, `.py`, `.js`, or `.ts` runtime. Make the procedure:
   - Deterministic (same input → same output)
   - Idempotent (running it twice is safe)
   - Well-documented (what it does, how to use it)
   - Testable (has tests or examples)

4. **Run the lever.** Apply it to the target code.

5. **Verify the output.** Review the changes. Did the lever do what you intended?

6. **Preserve the lever.** Commit authorized product tooling when appropriate; in GSF preserve the reproducible Markdown procedure and actual receipts instead of a runtime script.

## Benefits

- Reviewers can rerun the lever to verify your work
- The lever can be reused for similar work
- The lever documents the transformation logic
- Less error-prone than manual edits
- Faster for large-scale changes

## Output

The lever (script, codemod, generator) and the output it produces.

## Notes

Building a lever takes upfront time. For one-off trivial changes, it's not worth it. But for non-trivial or repetitive work, the lever pays for itself in reviewability and reusability.
