---
name: correct
description: Find repeated agent mistake classes and prevent them structurally, proving the fix against an observed mistake. Use for /correct or repeated operator corrections.
disable-model-invocation: true
---

# Correct

Applicability and host-capability boundaries follow [GSF mode](../gsf-mode/SKILL.md), with shared factory policy in the configured worker contract.

Fix recurring mistakes structurally, not just the latest symptom. For a single isolated defect, use gsf-mode's bug-fix playbook.

1. Read relevant corrections, commits, reverts, review comments, and agent instructions from this task/repository. Group actual mistakes by root cause; a repeated class needs two observed occurrences. Do not mine unrelated private chats or invent repetition.
2. Select the most harmful authorized classes. Record examples and the consumer-visible invariant broken by each.
3. Try architecture first: one state owner, one supported path, inaccessible internals, derived rather than hand-synchronized lists. Delete obsolete paths an agent would copy, not add compatibility aliases.
4. If architecture cannot prevent it, encode the constraint in types. If bad code still compiles, use a lint/check whose error names the supported fix. For widespread legacy violations, fail new cases rather than suppressing everything.
5. Use a behavioral regression test when the mistake cannot be excluded structurally. It must fail on a real past mistake and survive valid implementation changes. Docs are last, for judgment calls that cannot be enforced.
6. Prove prevention: reproduce the observed mistake in an isolated scratch change, run the actual check, capture failure, remove only that change, and confirm the corrected path passes. Run configured checks; do not claim CI results without observing CI.
7. Update the existing agent instruction rule table with mistake, evidence, enforcement, and rerun command. Drop redundant prose once the mistake is unrepresentable. Exceptions require scope, reason, expiry, and operator authorization.

Report each class, evidence, enforcement level, why a higher level did not work, and failing/passing proof. Preserve protected-path and autonomy gates; absent permission is blocked, not permission to weaken the guard.
