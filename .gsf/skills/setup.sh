#!/bin/bash
# .gsf/skills/setup.sh - Smart Environment Setup
echo "--- GSF Environment Setup ---"

# Detect Node.js
if command -v node &> /dev/null; then
    echo "[OK] Node.js detected: $(node -v)"
else
    echo "[WARN] Node.js not found. Please install Node.js."
fi

# Detect npm
if command -v npm &> /dev/null; then
    echo "[OK] npm detected: $(npm -v)"
    echo "Installing dependencies..."
    npm install
else
    echo "[WARN] npm not found."
fi

# Detect GitHub CLI
if command -v gh &> /dev/null; then
    echo "[OK] GitHub CLI detected: $(gh --version | head -n 1)"
else
    echo "[WARN] GitHub CLI (gh) not found. Required for automated PR publication."
fi

echo "--- Setup Complete ---"
