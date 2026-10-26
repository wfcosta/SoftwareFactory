# Generic Software Factory (GSF) — Orchestrator Runbook

## Visual Workflow
[User-Coordinator] -> [Intake] -> [Spec-Writer] -> [Builder] -> [Checks-Gate] -> [Reviews] -> [Approver] -> [Publish]

## Mission
One request -> gated, reviewed branch -> factory-owned PR.

## Protocol
- [REQUEST_PLAN]: Initiate job.
- [DISPATCH_AGENT]: Trigger sub-agent.
- [WAIT_FOR_SIGNAL]: Block until 'worker_done'.
- [GATE_RESOLVE]: Approve or Reject current stage.
