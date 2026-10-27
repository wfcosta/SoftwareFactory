#!/bin/bash
# .gsf/skills/validate-run.sh - Validates that mandatory job evidence exists before PR publication
JOB_DIR="${1}"

if [ -z "$JOB_DIR" ] || [ ! -d "$JOB_DIR" ]; then
    echo "ERROR: Invalid or missing job directory for evidence validation."
    exit 1
fi

echo "Validating mandatory artifacts in $JOB_DIR..."

MANDATORY_FILES=("job.md" "intake.md" "spec.md" "build.md" "checks.md" "approval.md")

for file in "${MANDATORY_FILES[@]}"; do
    if [ ! -f "$JOB_DIR/$file" ]; then
        echo "ERROR: Missing mandatory artifact: $file. Pipeline cannot proceed."
        exit 1
    fi
done

echo "All mandatory GSF artifacts present. Gate passed."
exit 0
