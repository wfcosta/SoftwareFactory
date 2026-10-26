# GSF Guardrails (Global Constraints)
- Security: Never expose API keys.
- Scope: Edit only files within src/ or authorized folders.
- Testing: All Builder changes must be validated by tests before commit.
- Transparency: At each checkpoint, update the log in jobs/<job-id>/inbox.md.
- Hallucination: If you do not know how to execute a task, stop and request assistance via [GATE_RESOLVE].
