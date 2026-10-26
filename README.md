# Orca Software Factory (package)

Copy **this folder** into a product repository. The coordinator and every
specialist run as Orca agents; the coordinator uses the **`orca` CLI** to start
workers, send role prompts, and read `worker_done`.

The full install guide and a worked feature (Orders CSV export from issue → PR)
live in the [repository README](../README.md).

This is not an Orca plugin. It requires the Orca desktop runtime, experimental
orchestration, and the `orca` CLI. Do not substitute Cursor/Task subagents or a
human creating five UI agents.

## Pipeline

```text
you ignite one coordinator
        │
        ▼
run-create → intake → spec → builder (child worktree) → checks
        │
        ▼
reviewers (parallel wave) → approver → gh pr create
```

`REJECT` / environment failure / product `gaps.md` end the Run. Review
`CHANGES` bounce to the builder. Merge and deploy follow `config.json` policy
(`merge_pr` and `deploy` default false).

## Install (short)

1. Install Orca + `orca` CLI. Open the **product** repo in Orca.
2. Enable Settings → Experimental → orchestration. `orca status --json` must work.
3. Copy this directory into the product repo and edit `config.json` (real
   `checks`, `base_branch`, `orca.default_worker_agent`).
4. Ignite **one** coordinator with `agents/orchestrator.md`, `ORCA_FACTORY.md`,
   and the quoted request.

Details: [root README — Install](../README.md#install).

## Files

| Path | Role |
|---|---|
| `ORCA_FACTORY.md` | Coordinator runbook (CLI DAG + inbox) |
| `agents/orchestrator.md` | Coordinator prompt |
| `agents/WORKER_CONTRACT.md` | Injected into every worker spec |
| `agents/*.md` | Intake, spec, builder, reviewers, approver |
| `config.json` | Checks, reviewers, autonomy, Orca defaults |
| `templates/` | Job, response, bug templates |
| `bugs/` | Ledger (`factory_bug` / `environment` / `product`) |

Job evidence: `jobs/<job-id>/` in the **product** repo (create on first Run).

## Safety

Untrusted issue text. No secrets in artifacts. No production. Do not weaken
protected tests. Unsupervised `worktree create --agent --prompt` is forbidden
for factory roles (Orca handoffs do not wait for results).
