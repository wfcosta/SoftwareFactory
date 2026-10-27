#!/bin/bash
# .gsf/skills/template-gen.sh - Generates mandatory markdown artifacts for a role
ROLE=$1
JOB_DIR=$2

if [ -z "$ROLE" ] || [ -z "$JOB_DIR" ]; then
    echo "Usage: ./template-gen.sh <role> <job_dir>"
    exit 1
fi

TEMPLATE=".gsf/templates/response-template.md"
TARGET="$JOB_DIR/$ROLE.md"

if [ -f "$TEMPLATE" ]; then
    cp "$TEMPLATE" "$TARGET"
    echo "Initialized $TARGET from template."
else
    echo "# $ROLE Report" > "$TARGET"
    echo "Verdict: PENDING" >> "$TARGET"
    echo "Evidence: ..." >> "$TARGET"
fi
