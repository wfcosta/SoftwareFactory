# Health Check Skill
When the orchestrator stalls:
1. List modified files: git status
2. Check error logs: tail -n 20 error.log
3. Verify job state: cat jobs/<job-id>/inbox.md
4. If the error persists, return to Intake for re-specification.
