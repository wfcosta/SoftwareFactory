# BUG-002 — Copied package README still described a human orchestrator

- **Status:** `corrected`
- **Class:** `factory_bug`
- **Opened (job id):** bootstrap
- **Human intervention attempted:** `false`
- **GSF surface:** `ui-fallback`
- **Blocked role:** orchestrator

## What happened

`software-factory/README.md` (the folder teams copy into a product repo)
still told people to create agents in the UI, paste role prompts, and merge PRs
by hand, while the root README and `orchestrator.md` already required the CLI.

## Why this class

The package README is what operators actually open. Drift back to a human loop
reintroduces BUG-001 in the copied tree.

## Autonomous workaround used (if any)

Rewrite the package README to the same CLI contract and point at the root
walkthrough for a worked feature example.

## Correction to apply

Keep `software-factory/README.md` aligned with `agents/orchestrator.md`.
Any future “paste into five UI agents” instruction is a regression of this bug.

## Verification

- Job that should prove the fix: same first live Run as BUG-001
- Result: pending
