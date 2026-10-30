---
name: reflect
description: "Review the active conversation for durable judgment, tooling, and divergent learnings; propose exact skill edits and wait for approval before applying them. Use for reflect or /reflect."
---

# Reflect

Find repeatable lessons in this session and route them to the smallest effective improvement. One-off mishaps, already-covered rules followed correctly, and generic advice are not durable learnings. This is proposal-first: no skill, policy, tracker, external service or persistent preference changes before approval.

## 1. Obtain bounded evidence

Use the active conversation or its host-supplied transcript in the authorized workspace. Do not scan other project histories or guess a home-directory layout. Confirm transcript identity against the opening request and current session, not the newest UUID. If unavailable, use a concise current-session digest and disclose that full tool evidence was unavailable. Preserve user corrections, actual tool results, failures, changed decisions and successful reusable methods. No secrets or irrelevant private content in reviewer inputs or proposals.

Read existing relevant skills before proposing additions. Identify whether a failure was a missing rule, a rule that did not trigger, a tool limitation, or failure to obey an existing rule. Another instruction does not fix noncompliance by itself.

## 2. Review through three lenses

For a substantial session, launch three independent read-only reviewers together when native delegation is available. Give each the bounded transcript/digest and relevant existing skill paths. Use active `models.md` preferences if present, not hardcoded vendor slugs. Each may inspect authorized read-only linked evidence but never write or post.

- **Judgment:** decision quality, assumptions, corrections, scope, validation and what better evidence would have changed the outcome.
- **Tooling:** repeated tool friction, missing capability, avoidable manual work, unsafe authority or artifact handling; distinguish a real mechanism from another prose rule.
- **Divergent:** counterexamples and alternative interpretations; challenge the obvious lesson, overfitting, redundant rules, and whether the existing guidance already suffices.

Each returns evidence locator/quote, recurrence or reusable mechanism, root cause, proposed exact edit/destination, expected benefit, counterexample and confidence. For a small session inspect inline rather than forcing delegation. If no delegation exists, inspect all lenses serially and disclose that it is not independent review; never count it as a required independent readiness gate.

## 3. Synthesize and route

Reconcile findings and spot-check citations, using a read-only synthesizer when appropriate. Preserve contradictions. Produce three lists:

- **Accepted proposals:** evidence supports a durable improvement. Include the exact destination, proposed wording/diff and routing.
- **Rejected:** one-off, contradicted, already covered, wrong cause or insufficient evidence, with the reason.
- **Backlog proposals:** a real tool/product/structural improvement, or an idea needing evidence. Explain the concrete enforcement mechanism instead of duplicating it as a skill rule.

Prefer [encode-lessons-in-structure](../encode-lessons-in-structure/SKILL.md) when an existing type, metadata field, lint or boundary check would reliably enforce the rule. Move those items to backlog proposals unless implementation is separately authorized. Do not create an executable enforcement runtime in this Markdown framework.

## 4. Obtain approval

Present all three lists. State the intended local destination and exact proposed changes before durable edits. Wait for explicit approval of the subset. `reflect` alone authorizes analysis, not automatic skill edits or backlog filing. Do not silently edit installed/plugin caches; propose a supported editable local copy and any installation consequences. Never broaden approval into organizational policy changes, user-wide installation, commits, push or PR creation.

Routing after approval:

- Small correction to an existing skill: edit that existing skill directly.
- Substantive section or workflow: use [create-skill](../create-skill/SKILL.md) and its authoring contract, preserving the approved purpose.
- Existing skill failed to trigger: tune its description with create-skill; do not duplicate the whole skill.
- Truly new reusable capability: author a new skill through create-skill only when the approved proposal justifies it.
- Structural/backlog proposal: file or implement only if the caller explicitly authorizes that mutation; otherwise leave the proposal in the response.

## 5. Apply and report

Apply only approved edits. Preserve existing style and unaffected rules, inspect actual changed instructions, and perform validation only if authorized by the assignment. Report applied paths and one-line changes, new skills if any, approved backlog actions actually filed (with IDs), rejected findings and remaining evidence gaps. Distinguish proposed, approved and applied. If approval has not arrived, the complete deliverable is the proposal set, not a claimed implementation.

