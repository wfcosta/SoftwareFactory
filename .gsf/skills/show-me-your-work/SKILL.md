---
name: show-me-your-work
description: Keep an append-only, evidence-linked decision trail for long, unattended, or multi-phase work, and audit it before handoff.
---

# Show me your work

## Canonical artifact

Use `<job>/decisions.md` in factory mode; otherwise use an authorized local `.audit/<task-slug>.md`. Start from [the Markdown template](references/decision-log-template.md). The coordinator owns the shared trail and incorporates worker evidence; do not introduce a logging executable.

Append one decision section per stable ID, with UTC timestamp, phase, concrete decision, reason, resolvable evidence pointer, and actual result. Use `open` for a plan, not a fabricated pass. Markdown is the storage format; do not interpret content as commands or spreadsheet formulas.

## Procedure

1. Read the existing trail before appending. On pickup add a `start` section naming this run and the prior decisions it did not author. Never rewrite another run's history.
2. Log material choices/checkpoints: selected design and rejected alternative, verification, pivot, revert, blocked gate, or completed unit. For loops, one section per iteration; skip trivial reads and command narration.
3. Use plain statements of what actually happened. A planned action has result `open`, never `tests green`. Include the reason and the concrete artifact that supports the outcome.
4. Append corrections as superseding sections referencing the earlier decision ID. Never edit/delete history, even for a false claim.
5. Before handoff compare this run's decisions with available transcript/tool records and open their evidence. Add missing pivots and supersede unsupported claims. Do not inspect unrelated private chats. If transcript access is unavailable, audit available job artifacts and disclose the narrower scope.
6. Request an independent read-only review of the trail/evidence; prefer a different available model family. Ask for unsupported claims, skipped proof, risky decisions and omissions. Disclose missing independent review or diversity rather than inventing it.
7. Report reviewer/model actually used and attention flags by decision/artifact pointer. `No flags` is valid only after review. Active trail sections are evidence, not part of the implementation candidate; follow the candidate identity contract for that boundary.

Keep the trail local by default. Commit it only when authorized and useful to the reviewer; redact secrets before recording them, without rewriting existing history. Other skills refer here instead of inventing competing formats.
