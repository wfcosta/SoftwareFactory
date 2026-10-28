---
name: gsf-run
description: Initialize a GSF job workspace, validate environment, and prepare evidence tracking. Use for "start a GSF run", "initialize job", or when beginning any factory task.
---

# GSF Run

Initialize a GSF job workspace, validate the environment, and prepare the evidence tracking structure for a factory execution run.

## Steps

### 1. Validate Environment

Check that the factory is properly installed in the target repository:
- Verify `.gsf/` directory exists
- Verify `config.json` exists in repository root
- Verify `GSF_*.md` documentation files are present
- Check that project checks are defined in config.json

If any validation fails, stop and report the missing component.

### 2. Generate Job ID

Generate a unique job identifier using timestamp format: `job-YYYYMMDD-HHMMSS`
Example: `job-20241027-143052`

### 3. Create Job Workspace

Create the job directory structure:
```
.gsf/jobs/{JOB_ID}/
├── inbox.md           # Task description and event log
├── issue.md           # Linked issue if present
└── [worker reports]   # Created as workers execute
```

Initialize `inbox.md` with the task description.

### 4. Detect and Link Issue

Search for issue files in the repository root matching pattern `issue-*.md`.
If found:
- Copy the issue file to the job directory as `issue.md`
- Log the issue tracking in the inbox
- Note the issue ID in the job metadata

If no issue file is found, log a warning but continue (not all tasks are issue-bound).

### 5. Initialize Event Log

Write the initialization event to `inbox.md` with:
- Timestamp
- Job ID
- Task description
- Environment validation status
- Issue linkage status

### 6. Prepare for Orchestration

Confirm that the workspace is ready:
- Job directory exists
- Inbox is initialized
- Event logging is functional
- All validation checks passed

Report readiness and the job ID to the orchestrator or agent initiating the run.

## Output

Return:
- Job ID
- Job directory path
- Validation status
- Issue linkage (if any)
- Confirmation that evidence tracking is active

## Notes

This skill replaces the previous script-based `run.sh` initialization. All subsequent work by workers and the orchestrator will write evidence to this job directory. The job ID serves as the unique identifier for this execution run and is referenced in all worker communications.
