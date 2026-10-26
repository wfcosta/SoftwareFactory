# Generic Software Factory (GSF) — orchestrator runbook

Load with `agents/orchestrator.md`. Execute with the **GSF-compliant Harness CLI** (e.g., Hermes, Claude Code) against a running orchestration runtime. A person is not the orchestrator. Ignition (one coordinator launch or a GSF automation) is the only human step.

Classify stops as **factory_bug**, **environment_fault**, or **product_ambiguity** (`bugs/README.md`). Do not invent product behavior.

## Mission

One request → gated, reviewed branch → factory-owned PR, using **supervised workers**. You send the spec; you read `worker_done`.

## Runtime

```text
orca status --json
orca skills get orchestration --full
```

Same binary for the whole Run. Experimental orchestration must be on. If status
fails: environment_fault, fail closed, do not invent results.

Forbidden: Cursor/Task subagents; `worktree create --agent --prompt` for factory
roles; retired `orchestration run` / `run-stop` / `coordinator-start`.

## DAG

```text
orca orchestration run-create --objective "<job-id>: <summary>" --json
```

Create `jobs/<job-id>/` from `templates/job-template.md`.

| Stage | How to start | Worktree |
|---|---|---|
| intake | `task-create` + `worker-start --task` | current (read-only) |
| spec | task depends on intake | current (read-only) |
| builder | task depends on spec | `new-child` from `base_branch` |
| checks | task depends on builder | builder worktree |
| reviews | **parallel** `worker-start --spec` after GATE PASS | isolated `new-child`, read-only |
| approver | after all required reviews PASS | current or isolated |
| publish | orchestrator `gh pr create` | builder branch |

Every spec = `WORKER_CONTRACT.md` + role file + Target/Change/Constraints/Ownership/acceptance.

## Inbox

```text
orca orchestration check --wait --types "worker_done,escalation,question" --timeout-ms 900000 --json
orca orchestration reply --id <message_id> --body "<answer>" --json
```

After accepted `worker_done`: reuse **or** retain **or** `worker-release`. Then
`--ack` and wait until every expected Dispatch settles.

Timeout / empty Delivery = checkpoint. Three empty waits →
`worker-list --include-remote --json` and follow `projection.nextAction`.
`unverifiable` ≠ permission to kill. Coordinator turn ends when
`worker-list --terminal-state reclaimable` is empty.

Questions and gates: coordinator `reply` / `gate-resolve` from evidence.

## Verdicts

- Intake `REJECT`: end Run.
- Intake `NEEDS-INFO` operational: record assumption, continue.
- Intake `NEEDS-INFO` product: `gaps.md`, fail closed.
- Gate FAIL: re-dispatch builder.
- Gate BLOCKED: environment_fault.
- Review CHANGES: builder → gate → reviews, cap `max_review_rounds`.
- Approver FAIL: repair dispatch or factory_bug; never name a human as next actor.
- Approver APPROVE: publish if configured.

## Per-worker reminder (inject every spec)

- Preamble is law.
- `check --terminal <handle>` at checkpoints and immediately before `worker_done`.
- `ask` only the coordinator.
- `worker_done` once with `--task-id`, `--dispatch-id`, `--outcome`.
- Heartbeats only as the preamble says.

## Command chooser

| Need | Command |
|---|---|
| Durable job | `run-create` + tasks + `worker-start` + `check --wait` |
| Dependencies | `task-create` then `worker-start --task` |
| Parallel wave | several `worker-start --spec`, then one wait |
| Worker question | `ask` → coordinator `reply` |
| DAG decision | `gate-create` / `gate-resolve` by the orchestrator |
| One-off prompt you already watch | `terminal send` (not factory default) |
| Fire-and-forget worktree | **forbidden** for factory roles |
