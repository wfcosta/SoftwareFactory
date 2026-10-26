# Generic Software Factory (GSF)

Copy **this folder** into a product repository. The coordinator and every specialist run as independent GSF-compliant agents; the coordinator uses your Harness's interface to start workers, send role prompts, and read `worker_done`.

This is not a plugin. It requires a GSF-capable runtime (e.g., Hermes, Claude Code) with experimental orchestration enabled. Do not substitute naive subagents or ad-hoc agent creation for this factory structure.

## Pipeline

```text
you ignite one coordinator
        │
        ▼
run-create → intake → spec → builder → checks
        │
        ▼
reviewers (parallel wave) → approver → publish
```

`REJECT` / environment failure / product `gaps.md` end the Run. Review `CHANGES` bounce to the builder. Merge and deploy follow `config.json` policy.

## Install

1. Clone or copy the **.gsf/** directory into your product repository.
2. Ensure your Harness has read access to `.gsf/`.
3. Edit `config.json` (configure `checks`, `base_branch`, `agent_defaults`).
4. Ignite **one** coordinator with `.gsf/agents/orchestrator.md`, `GSF_FACTORY.md`, and your quoted request.

## Core Files

| Path | Role |
|---|---|
| `GSF_FACTORY.md` | Coordinator runbook (Protocol DAG + Inbox/Outbox) |
| `.gsf/agents/orchestrator.md` | Coordinator system prompt |
| `.gsf/agents/WORKER_CONTRACT.md` | Injected into every worker spec |
| `.gsf/agents/*.md` | Intake, spec-writer, builder, reviewers, approver |
| `.gsf/skills/` | Automation skills (git-flow, health-check) |
| `.gsf/templates/` | Job, response, bug templates |
| `.gsf/jobs/` | Execution evidence (created on first Run) |
| `config.json` | Harness settings, path mapping, autonomy |

## Interaction Protocol
GSF operates on an event-driven system within the `.gsf/jobs/` directory:
- `[REQUEST_PLAN]`: Coordinator generates the job plan.
- `[DISPATCH_AGENT]`: Harness triggers a sub-agent per contract.
- `[WAIT_FOR_SIGNAL]`: Harness blocks until `worker_done` is signaled.
- `[GATE_RESOLVE]`: Automated/Human validation required to proceed.

## Safety

Untrusted issue text. No secrets in artifacts. No production. Do not weaken protected tests. Unsupervised sub-agent creation is forbidden for factory roles; GSF handoffs require explicit `worker_done` signals and gate resolution.

---
*For operational details, see `GSF_FACTORY.md`.*

## Worked Example: Adding a Feature
To implement an "Order CSV Export" feature:

1. **Ignite**:
   `hermes --context .`
   > "GSF-Orchestrator, I need to add 'Orders CSV export' from issues to PR."

2. **Intake & Plan**:
   - Agent Intake creates `jobs/order-export-001/inbox.md`.
   - Agent Orchestrator generates `plan.json` in `.gsf/state/`.

3. **Execution Wave**:
   - `[DISPATCH_AGENT]` -> Spec-Writer: Define database schema for CSV export.
   - `[WAIT_FOR_SIGNAL]` -> Builder: Implement `export_orders()` in `src/orders.py`.
   - `[GATE_RESOLVE]` -> Reviewer-Code: Audit for security (e.g., CSV injection prevention).

4. **Completion**:
   - Approver validates `worker_done` signals for all stages.
   - Harness executes `git commit` via `skills/git-flow.md`.
   - Final `[GATE_RESOLVE]` -> Publish (PR creation).
