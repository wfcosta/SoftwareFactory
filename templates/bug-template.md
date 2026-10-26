# BUG-NNN — <short title>

- **Status:** `open` | `corrected` | `verified`
- **Class:** `factory_bug` | `environment` | `product`
- **Opened (job id):**
- **Human intervention attempted:** `true` | `false`
- **Orca surface:** `worker-start` | `check` | `ask` | `gate` | `status` | `ui-fallback` | `other`
- **Blocked role:** orchestrator | intake | spec | builder | checks | reviewer-* | approver | publish

## What happened

Quote the stop condition (question asked, CLI error, missing evidence, wait for a person).

## Why this class

## Autonomous workaround used (if any)

Assumption (operational only), fail-closed, retry, skipped surface — with evidence.

## Correction to apply

Concrete change to prompts, `config.json`, orchestrator loop, worker contract, or checks.

## Verification

- Job that should prove the fix:
- Result: (empty until a live autonomous Run; do not mark `verified` before that)
