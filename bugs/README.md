# Factory ledger

Stops are classified. Only **factory bugs** are defects in this playbook.
Environment faults and product gaps are recorded so the next Run does not lie.

## Classes

| Class | What it is | What to do |
|---|---|---|
| `factory_bug` | The factory used the wrong Orca surface or asked a human to operate it | File `BUG-NNN`; correct prompts/config; retry or fail closed |
| `environment` | Runtime/CLI/credentials/checks cannot run | File the row; **fail closed**. Never invent PASS |
| `product` | User-visible behavior is not in the repo or request | `jobs/<id>/gaps.md`; **fail closed**. Do not invent UX |

## What is a factory_bug

- Orchestrator or worker wanted a human to click, paste, approve, or inspect
  **instead of** `worker-start` / `ask` / `gh`.
- Worker opened a local TUI question instead of `orca orchestration ask`.
- Coordination happened in the Orca UI by a person instead of CLI workers.
- Worker never sent `worker_done` with `--outcome`.
- `publish_pr` is true but the factory asked a human to create the PR in GitHub.
- `merge_pr` is true but the factory asked a human to click merge.

## What is not a factory_bug

- Product-code findings from reviewers (job findings).
- `autonomy.merge_pr: false` or `deploy: false` (policy).
- Orca Settings a human must flip once (Experimental → orchestration). That is
  **ignition**, recorded as environment until it is on.
- Intake `NEEDS-INFO` on product intent (class `product`).
- `orca status` failing (class `environment`).

## Lifecycle (factory_bug only)

`open` → `corrected` (playbook/prompt/config changed) → `verified` (a later
**autonomous Run** passed the same failure without a human).

Do not mark `verified` without that Run. Never delete rows; supersede.

## How to file

1. Copy `../templates/bug-template.md` to `BUG-NNN-short-slug.md`.
2. Set `class`. Add a row to `REGISTRY.md`.
3. If you can correct a factory_bug in the same job, do it and set `corrected`.
4. The ledger is the handoff. Do not ping a person to “please look”.

## Orchestrator duty

Before ending a Run, list every ledger item opened or verified in that job.
