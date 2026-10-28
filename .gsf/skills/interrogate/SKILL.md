---
name: interrogate
description: "Have models attempt to break changes, adversarial review for contested designs or critical code. Use for 'interrogate this', 'stress test this design', or when a design is contested and needs adversarial pressure before shipping."
disable-model-invocation: true
---

# Interrogate

Applicability and host-capability boundaries follow [GSF mode](../gsf-mode/SKILL.md), with shared factory policy in the configured worker contract.

Adversarial review: have models attempt to break the changes, retaining only findings proven by test runs or concrete evidence. This is for contested designs, critical code paths, or when you need pressure before shipping.

## Process

1. **Identify the target.** What design, code, or change is being interrogated? What are the key properties or invariants that must hold?

2. **Select interrogators.** Prefer two independent available model families from `.gsf/state/models.md` role `interrogate reviewers`. Disclose unavailable diversity or delegation; never claim a panel that did not run.

3. **Define the mission.** Give each interrogator a clear brief:
   - What they're reviewing
   - What properties must hold
   - What attack vectors to probe (edge cases, error conditions, concurrency, performance, security, etc.)
   - How to report findings (with evidence, not speculation)

4. **Spawn interrogators in parallel.** If delegation is unavailable, probe the attack vectors serially inline and label the result self-audit, not independent review. Required independent gates remain blocked. Each actual reviewer uses a read-only context. Commands producing repro artifacts or mutating fixtures run only in its own scratch workspace. Product fixes and shared-ledger writes are forbidden during review.

5. **Collect findings.** Aggregate all interrogator reports. Group related findings together.

6. **Validate findings.** For each finding:
   - Behavioral findings need an exact runnable reproduction, observed output, and expected output under the stated intent.
   - Static evidence may establish a broken contract or missing file; label it separately from runtime proof.
   - Open evidence and validate the failure claim; do not rerun merely to reconfirm conclusive failure.
   - Discard speculative issues and false positives with reasons; merge findings sharing a root cause.

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

State intent, candidate snapshot, actual reviewers/models, proven findings with severity and evidence, discarded findings with reasons, and gaps. `No verified findings` is valid but not approval when a required review was blocked. Return fixes to the implementation owner; a later patch invalidates affected verdicts.

## Notes

The goal is adversarial pressure, not harassment. Interrogators should probe vigorously but constructively. Focus on real issues that would cause problems in production, not theoretical concerns without evidence.
