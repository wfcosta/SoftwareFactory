---
name: ketchup
description: Catch the user up on changes since their preceding message and list every decision that still requires them, from observed evidence.
disable-model-invocation: true
---

# Ketchup

Keep this turn read-only. Start at the last user message before this invocation; agent notifications do not reset the window. Include unresolved operator-only calls from earlier turns too.

1. Collect this conversation's work, delegated results, and actual artifacts. Observe the current state of PRs/checks/jobs touched by this task when access exists. Do not start an app, modify code, publish, or merge while catching up. Mark stale or inaccessible status as unknown.
2. Pair each user-requested item with its outcome: done, running, failed, or not checked. Describe what changed for the user in plain language, not internal activity. Never repeat an unverified worker claim as established success.
3. Identify only calls the user owns: material preference, authorization for irreversible action, missing private access, or policy decision. Work you can still do is not a user action item. List every unresolved call, not a count in place of a list.
4. Open with one sentence saying what waits on the user, or that nothing does. Give one concise bullet per outcome. Use existing screenshots for visible changes; if none exists say so. Draw a small Mermaid diagram only for genuine dependency/flow structure; use a table for comparable numbers. Do not invent pictures or duplicate facts across forms.
5. For each call, name the exact item/known link, the choice, your recommendation, evidence, risk, and prerequisites. For competing options include the gain and cost of each. Say unknown where a necessary fact is missing. The reply itself must let the user decide without opening a link.
6. Name remaining agent-actionable work separately. Do not ask for approval of safe work already authorized. Do not offer a merge that configuration forbids as if it were permitted.

Return a short catch-up plus the complete decision list. If nothing changed and nothing waits on the user, say so and stop. Do not expose secrets or unrelated private history.
