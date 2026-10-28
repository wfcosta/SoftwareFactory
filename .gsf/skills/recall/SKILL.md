---
name: recall
description: "Rebuild recent working context from authorized workspace history, shared records, and live state. Use for catch me up, recall my work on X, or where did I leave off."
disable-model-invocation: true
---

# Recall

Reconstruct where the user's work stands now before resuming it. This is bounded context loading, not implementation, preference mining, or a public activity report. A specific prior chat to resume belongs to [session-pickup](../gsf-mode/playbooks/session-pickup.md); durable habits belong to [automate-me](../automate-me/SKILL.md). If the user supplied a complete current capsule, use it and check only material uncertainty instead of mining everything again.

## Ordered work

1. **Lock scope.** Use the named topic, active workspace and requested time window. Default `recent` to the last seven days and state that bound. Do not quietly narrow an explicit `all`; report accessible bounds and expand within the user's actual request. Use only the host-supplied authorized transcript/archive location. Do not guess a vendor home path, scan other workspaces, include private DMs, or request wider access without permission.
2. **Find relevant history.** Order candidates by actual timestamps, not UUID spelling. Search topic/symbol/branch/ticket terms before reading relevant excerpts. Exclude the active chat and obvious test/evaluation/noise records; include a referenced subagent transcript only when needed to establish actual actions. For a small set inspect inline. For a substantial corpus, delegate nonoverlapping bounded slices to read-only investigators in parallel where available. Each returns topic, user goal, decisions, open threads, corrections/struggles, artifact IDs, dates and exact private transcript locators. Do not copy raw transcripts into the main output or a persistent skill.
3. **Sweep the shared record for a named target.** When the request names a feature, file, subsystem or bug, use [why](../why/SKILL.md) and its [source recipes](../why/references/source-playbook.md), asking about current state, past failed/reverted fixes and remaining user symptoms rather than only original rationale. Search available source/PR, issue, doc, chat, runtime, error and analytics records within scope. Record unavailable categories and null searches distinctly. Run this alongside history mining when independent. Skip the shared sweep for pure activity recall without a named target; do not turn a week summary into a broad investigation.
4. **Reconcile live state.** Check surfaced branches, relevant working tree, PR/ticket status and revisions with available read-only repository/hosting tools. A prior assistant saying `done` is not evidence of merge, verification or current validity. Inspect full relevant tool transcript when the answer hinges on what actually ran or failed. Keep user-reported observations as ground truth; never rerun a reported failure just to confirm it. Mark inaccessible or uncertain status as unknown, not completed. Do not checkout, fetch with unintended writes, initialize jobs, edit files or alter external state under a recall-only request.
5. **Build the brief.** Group by relevant thread. Resolve stale claims against dated live evidence; preserve contradictions and known regressions. Keep an adjacent issue out unless it blocks the target. Stop searching once the requested window/topic is covered and actionable uncertainty is named. Capability limits are explicit, never filled with a plausible story.

## Output

- **Capsule:** at most five bullets describing the work and overall current state.
- **Threads:** one line each with exactly one evidence-backed status: `[merged #N]`, `[open PR #N]`, `[in flight <branch>]`, `[verified, uncommitted]`, `[reverted #N]`, `[planned, not started]`, or `[unknown: <specific gap>]`. Verification status requires actual run evidence tied to the candidate.
- **Problems:** at most five recurring symptoms, failed approaches or reverted fixes that should shape the next attempt.
- **Next move:** the single most useful concrete action. Proposing it does not execute it.

Cite private chat findings with stable transcript/session locators and shared findings with PR/ticket/record links. Sanitize private names, personal data, customer context and secrets before any public output; public publication needs separate authority. When the brief exceeds a screen, cut detail before omitting relevant threads. Say which window and sources were inaccessible. No writes or new durable memory by default.

Adapted from [pstack at the pinned revision](https://github.com/cursor/plugins/tree/c742dd61706fbacc1b95f1a20b7b988cf096ce6c/pstack).
