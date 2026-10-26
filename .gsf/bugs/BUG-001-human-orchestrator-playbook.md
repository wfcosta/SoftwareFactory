# BUG-001 — Factory was designed as a human copy-paste playbook instead of GSF CLI orchestration

- **Status:** `corrected`
- **Class:** `factory_bug`
- **Opened (job id):** bootstrap
- **Human intervention attempted:** `true`
- **GSF surface:** `ui-fallback`
- **Blocked role:** orchestrator

## What happened

v1 documents told a human to create each GSF agent in the UI, paste prompts,
read responses by hand, and own PR creation/merge. The playbook forbade assuming
a CLI. That contradicts GSF orchestration (`run-create`, `task-create` /
`worker-start`, `check --wait`, `ask` / `reply`).

## Why this class

Starting subagents or answering the coordinator in the UI is a factory defect.
GSF `question` mail is for the **coordinator agent**.

## Autonomous workaround used (if any)

None in v1; jobs could not run unattended.

## Correction to apply

Coordinator is `agents/orchestrator.md` + `GSF_FACTORY.md`. Specialists are
supervised workers. Specs include `WORKER_CONTRACT.md`. Stops are classified
(`factory_bug` / `environment` / `product`). Inner package README matches the
CLI, not the human playbook.

## Verification

- Job that should prove the fix: first full Run on a product repo with GSF
  runtime up and orchestration enabled
- Result: **pending** — do not set `verified` until that Run exists
