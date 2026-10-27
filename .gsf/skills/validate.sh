#!/bin/bash
# .gsf/bin/validate.sh
echo "Validating GSF environment..."
if [ ! -d ".gsf" ]; then
    echo "ERROR: .gsf directory not found."
    exit 1
fi
if [ ! -f "config.json" ]; then
    echo "ERROR: config.json missing."
    exit 1
fi
echo "Environment looks healthy."
exit 0
