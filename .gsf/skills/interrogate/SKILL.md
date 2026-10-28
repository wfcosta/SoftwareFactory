---
name: interrogate
description: "Have models attempt to break changes, adversarial review for contested designs or critical code. Use for 'interrogate this', 'stress test this design', or when a design is contested and needs adversarial pressure before shipping."
disable-model-invocation: true
---

# Interrogate

Adversarial review: have models attempt to break the changes, retaining only findings proven by test runs or concrete evidence. This is for contested designs, critical code paths, or when you need pressure before shipping.

## Process

1. **Identify the target.** What design, code, or change is being interrogated? What are the key properties or invariants that must hold?

2. **Select interrogators.** Use at least two different models for diversity. They should attempt to find different classes of issues.

3. **Define the mission.** Give each interrogator a clear brief:
   - What they're reviewing
   - What properties must hold
   - What attack vectors to probe (edge cases, error conditions, concurrency, performance, security, etc.)
   - How to report findings (with evidence, not speculation)

4. **Spawn interrogators in parallel.** Each works independently to find issues.

5. **Collect findings.** Aggregate all interrogator reports. Group related findings together.

6. **Validate findings.** For each finding:
   - Is it backed by concrete evidence (test failure, reproduction, code analysis)?
   - Is it speculative? Discard speculative findings without proof.
   - Is it a false positive? Document why and discard.
   - Is it a real issue? Keep it.

7. **Prioritize issues.** Classify findings by severity:
   - Critical: security vulnerabilities, data corruption, crashes
   - High: incorrect behavior, performance cliffs, major usability issues
   - Medium: edge cases, error handling gaps
   - Low: nitpicks, style issues, minor optimizations

8. **Report.** Present the validated findings with:
   - Issue description
   - Evidence or reproduction
   - Severity
   - Suggested fix (if applicable)

## Output

A report of validated issues found, with evidence and severity classification. Speculative findings are excluded.

## Notes

The goal is adversarial pressure, not harassment. Interrogators should probe vigorously but constructively. Focus on real issues that would cause problems in production, not theoretical concerns without evidence.
