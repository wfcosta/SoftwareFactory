---
name: no-comments
description: "Request an independent read-only source-comment-reviewer, evaluate its findings, and apply accepted scoped comment or root-cause fixes without deleting legal, API, or justified external constraints."
---

# No comments

Reduce comments that repeat code or conceal a fixable design problem. This is not a blanket deletion policy. Public API documentation, legal/license/compliance attribution, correct tool directives, and justified external/protocol constraints can be essential. Markdown framework instructions are documentation, not redundant source comments.

## Scope and inputs

Use the caller's files or diff. Otherwise discover `base_branch` from `.gsf/GSF_CONFIG.md` and use the current diff against that base, including working-tree changes; when no policy exists discover the actual upstream default without treating it as factory authorization. Do not silently assume a branch. Record scope and authorization to edit. A request for review alone remains read-only and creates no job.

## Ordered work

1. **Independent source review first.** Request [.gsf/agents/source-comment-reviewer.md](../../agents/source-comment-reviewer.md) through the host's native read-only delegation. Give it the precise files/diff/base, relevant language/tool conventions and access boundary. It returns KEEP / DELETE / RESHAPE / SUPPRESSION findings with path/line, scope, reason and evidence. It never edits application code, source comments, external services or job state. Do not substitute the PR discussion-comment reviewer. If no independent read-only capability exists, report that limitation and do an explicitly non-independent inspection only; do not apply edits requiring the missing review or claim an independent gate passed.
2. **Evaluate, do not rubber-stamp.** Read each finding against the actual code and surrounding behavior. Reject scope escapes, application edits from the reviewer, unsupported claims and deletion of protected exceptions. Preserve legal notices, attribution and intentional public API docs. Keep a real external constraint when the code cannot encode all its explanation; require a source/version/spec/incident citation where obtainable. Thin `IMPORTANT`, `do not remove` or `talk to X` wording is a reason to investigate, not proof of either redundancy or necessity. Use [how](../how/SKILL.md) or [why](../why/SKILL.md) on ambiguous behavior or historical constraints. Unresolved safety implications stay visible; do not delete the evidence to make ambiguity disappear.
3. **Inspect suppressions for correctness.** Include scoped lint directives, TypeScript suppression comments, generated-file markers and equivalent language annotations. Check the actual diagnostic, next-line/file scope, tool version, generated-code boundary and whether the assertion remains true. An unnecessary suppression can be removed; a suppression hiding a real correctness/security defect needs its root cause fixed, not blind deletion or a broader ignore. Correct deliberate interop/external-tool exceptions stay with the narrow reason and evidence. Do not manufacture a failing compile merely to reduce a comment count, and do not suppress a diagnostic to make this review green.
4. **Choose the smallest accepted fix.** Directly remove an obvious redundant narrative or stale dead-code note when safe and authorized. For RESHAPE findings, prefer a meaningful name, domain type, real API or testable invariant over relocating the same prose. Use [architect](../architect/SKILL.md) once for an accepted set needing a design sketch; it shapes, it does not authorize a refactor. Product changes, tests or broader fixes require caller scope. Never widen into unrelated code or bolt on symptom guards merely to eliminate a comment.
5. **Offer constraint encoding before durable changes.** For a proven constraint, offer the cheapest in-scope type, boundary check, behavioral test or existing lint mechanism that actually enforces it. Show the proposed edit and tradeoff; wait for acceptance unless the caller already authorized that exact class of edit. Encode first, remove a now-redundant explanation second. If encoding is out of scope, unsafe or declined, keep the necessary constraint comment and report the unencoded obligation. No automatic ticket filing, publication or policy changes.
6. **Apply accepted edits only.** Preserve user changes and the reviewed fence. Restore any accidental protected deletion. Record rejected findings with reasons. Run verification only when the assignment authorizes it; otherwise hand off the relevant check set without claiming it ran. A failed candidate is not ready for publication.

## Result

Report reviewed scope and reviewer independence, accepted/rejected findings, actual comment deletions/restorations, suppressions kept/removed/fixed and why, design/root-cause edits, approved encodings, retained external constraints and remaining open risks. Distinguish proposed changes from applied changes. Deletion count is accounting, not the success criterion.

