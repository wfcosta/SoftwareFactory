# BUG-NNN — <short title>

- **Status:** `open` | `corrected` | `verified`
- **Class:** `factory_bug` | `environment` | `product`
- **Opened (job id):**
- **Human intervention attempted:** `true` | `false`
- **GSF surface:** `dispatch` | `events` | `question` | `gate` | `resume` | `setup` | `other`
- **Blocked role:** orchestrator | intake | spec | builder | checks | reviewer-* | approver | publish

## What happened

Quote the actual stop condition (unanswered product gap, tool error, missing evidence, or interrupted dispatch), with job/task/dispatch IDs and sanitized evidence links.

## Why this class

## Autonomous workaround used (if any)

Document the operational assumption, safe retry, or fail-closed action with evidence. Required checks/reviews and security policy cannot be skipped as a workaround.

## Correction to apply

Concrete authorized change to prompts, `.gsf/GSF_CONFIG.md`, coordinator procedure, worker contract, typed checks or state contracts. Preserve the immutable policy baseline and never suppress a failure to manufacture PASS.

## Verification

- Job that should prove the fix:
- Result: (empty until the correction is exercised against the relevant live behavior; never mark an unrun scenario `verified`)
