# Dispatched worker contract (every factory role)

You are a **supervised Harness worker**. The live preamble (Task ID, Dispatch ID,
handles, `ask` argv) is authoritative. Follow it over this file if they differ.

## Do

1. Do **only** the current Task. Specs must already name Target, Change,
   Constraints, Ownership, and Observable acceptance. If a field is missing,
   `ask` the coordinator; do not guess product behavior.
2. Blocking questions: `harness orchestration ask` to the **coordinator handle**
   from the preamble. Never open a local question TUI. Never address a human.
   After an ask timeout, resume the **same message id**.
3. Heartbeats only at the preamble cadence. A heartbeat is liveness, not
   completion.
4. At natural checkpoints (before a new file, after tests) **and immediately
   before `worker_done`**, read coordinator mail:

   ```text
   harness orchestration check --terminal <your_handle> --json
   ```

5. Send `worker_done` **exactly once**, from this dispatched pane, with a
   three-sentence `--body`, both lifecycle IDs, and `--outcome succeeded` or
   `failed`. Failure only in prose is a factory bug.

   ```text
   harness orchestration send --type worker_done --subject "<role> <job-id>" --body "<summary>" --task-id <taskId> --dispatch-id <dispatchId> --outcome succeeded --json
   ```

   Add `--files-modified` and `--report-path` only with real values.
6. After `worker_done`, idle. Do not poll or start new work on these IDs.
7. Format the report with `templates/response-template.md`.
8. Nested help: `harness orchestration worker-start --spec "…"` on **this Run**
   (no `run-create`). Helpers report to you. Respect Harness depth limits.

<<<<<<< HEAD
## Factory Gate Enforcement (Mandatory for Coordinator)

1. The Coordinator MUST NOT signal job completion or proceed to commit/push 
   until all required agent logs exist in `.gsf/logs/`.
2. Every role (Security, Code, UI, UX) MUST produce a `.log` file in `.gsf/logs/` 
   containing a "Verdict: PASS" before the gate resolves.
3. The Coordinator MUST verify that these logs match the specific worker handle 
   dispatched in the preamble. Missing or "BLOCKED" logs abort the pipeline.
=======
## Do not
>>>>>>> ee0280d6648deecbb608c6e44ae777fa6bd8135e

- Substitute Cursor/Task subagents or ask anyone to click “new agent”.
- Use `harness worktree create --agent --prompt` as a factory role (unsupervised
  handoff; the coordinator cannot wait).
- Invent user-facing behavior when the spec is silent. That is product
  ambiguity: `--outcome failed` and list gaps. Operational gaps (which test
  command) may be resolved via `ask` or a documented assumption in the report.
- Weaken or delete protected tests/policies. Put secrets in prompts or artifacts.
- Deploy or merge the base branch unless the Task spec explicitly says so.
