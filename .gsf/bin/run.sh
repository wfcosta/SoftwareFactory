#!/bin/bash
# .gsf/bin/run.sh - GSF Main Execution Harness
set -e

TASK_DESC="${1:-"Default Task"}"
JOB_ID="job-$(date +%Y%m%d-%H%M%S)"
JOB_DIR=".gsf/jobs/$JOB_ID"

echo "=== [GSF] Initializing Run: $JOB_ID ==="
echo "Task: $TASK_DESC"

# 1. Run Validation Skill
bash .gsf/skills/validate.sh

# 2. Create Job Workspace
mkdir -p "$JOB_DIR"

# 3. Handle Issue Tracking: Move/Copy issue prompt into job dir
# We assume the issue prompt is located in the root or a 'docs/' folder
ISSUE_FILE=$(find . -maxdepth 1 -name "issue-*.md" | head -n 1)
if [ ! -z "$ISSUE_FILE" ]; then
    echo "Tracking issue: $ISSUE_FILE"
    cp "$ISSUE_FILE" "$JOB_DIR/issue.md"
else
    echo "Warning: No issue-*.md file found in root."
fi

# 4. Initialize Inbox
echo "$TASK_DESC" > "$JOB_DIR/inbox.md"
echo "Job workspace created at $JOB_DIR"

# 5. Setup Environment
if [ -f ".gsf/skills/setup.sh" ]; then
    bash .gsf/skills/setup.sh
fi

echo "=== [GSF] Ready. Evidence/Orchestration will be recorded in $JOB_DIR ==="
