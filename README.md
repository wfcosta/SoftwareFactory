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

## GSF CLI (Harness)
The GSF requires a coordination CLI (the "Harness") to manage agent signals, lifecycle, and gate resolutions. This CLI bridges the gap between autonomous workers and the persistent state directory.

### Why the GSF CLI?
Autonomous agents often fail because they lack a common "mailbox" and standard protocols. The GSF CLI provides:
1. **Standardized Communication**: Ensures all agents use the same `send` and `check` commands, preventing ad-hoc file-writing collisions.
2. **State Locking**: Acts as a gatekeeper for critical files in `.gsf/state/`, ensuring only one agent writes at a time.
3. **Auditability**: Logs every `worker_done` and `ask` event into standardized files, creating a perfect audit trail for human review.
4. **Portability**: By abstracting commands like `send` and `check`, the GSF can run on any agent-capable runtime without knowing the specific environment's native file-watcher capabilities.

To use the CLI, ensure `.gsf/bin/gsf.py` is in your environment PATH.

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

## Complex Orchestration Example
To initiate a complex feature development (e.g., building a Scientific Calculator module), use this prompt with your Harness:

```text
"ACT AS THE GSF ORCHESTRATOR.
PROTOCOL: ENFORCE THE DAG. NO CODE IMPLEMENTATION ALLOWED BY YOU.

TASK:
1. DESIGN AND IMPLEMENT A COMPREHENSIVE 'SCIENTIFIC CALCULATOR' MODULE.
2. CURRENT BASE: 'src/calculadora.py' (only has basic addition).
3. REQUIREMENTS:
   - Add subtraction, multiplication, division, and power functions.
   - Implement error handling (e.g., division by zero).
   - Create a 'src/tests.py' suite covering all operations.

WORKFLOW STEPS (FOLLOW RIGOROUSLY):
1. [PLAN]: Analyze the requirements and log them in .gsf/state/plan.json.
2. [INTAKE]: Trigger Intake Agent to validate the requirement. WAIT FOR USER GATE.
3. [SPEC-WRITER]: Trigger Spec-Writer to generate a technical specification. WAIT FOR USER GATE.
4. [BUILDER]: Trigger Builder Agent to implement the module and tests. WAIT FOR BUILDER 'worker_done'.
5. [REVIEWER-CODE]: Trigger Reviewer-Code to audit the implementation.
6. [APPROVER]: Final gate resolution.

BEGIN EXECUTION: Initialize the Intake Agent process and present the plan."
```
