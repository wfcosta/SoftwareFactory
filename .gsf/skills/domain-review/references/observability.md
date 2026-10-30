# SLIs, SLOs and actionable signals

Use [domain review](../SKILL.md), [architecture quality](architecture-quality.md) and actual host/product monitoring capabilities. A proposed dashboard or alert rule is not an operating monitor; no always-on scheduler or notification transport is supplied by Markdown.

## Inputs

Obtain critical consumer journeys and product owners, selected objectives/windows, actual telemetry pipeline/provider versions, request/event populations, traffic volumes, privacy/data classification, routing/on-call ownership and incident runbooks. Inspect existing instrumentation and alert delivery evidence. Unknown data completeness, unsupported instrumentation or missing receiver blocks claims of actionable coverage.

## Sequence and decisions

1. Define each **SLI** with the user's observable success/latency/freshness/integrity condition, numerator, denominator, units, measurement point and population. Specify exclusions and why they cannot hide user failures; include edge failures/timeouts before the application where relevant. Distinguish successful responses from correct consumer outcomes, especially asynchronous acceptance versus completion.
2. Select the **SLO**, target/window and error-budget policy from accepted product requirements. Define rolling/calendar windows, low-traffic and no-data behavior and consequences when budget is exhausted. A synthetic probe can detect a path failure but does not establish all-user success. Avoid product thresholds inferred from generic defaults.
3. Review instrumentation for bounded cardinality: stable route templates/operation/outcome labels, bounded tenant classes if approved, no raw user IDs, tokens, request bodies, email addresses or unbounded URLs/error strings in metric labels. Restrict/redact logs and traces with actual access, sampling and retention controls. Link detailed diagnostic identifiers without propagating personal data into public alerts or job evidence.
4. Design user-impact alerts with evaluation/window/delay, severity, burn-rate or equivalent rationale, low/no-data handling, deduplication/grouping, destination and responsible responder. Include a runbook with first safe diagnostic, likely causes, decision/abort thresholds, escalation and authorized mitigation/recovery. Tune against accepted noise/detection objectives; a threshold without an action/owner is not an actionable alert.
5. In the authorized environment inject a controlled consumer failure or use supported test delivery, verify SLI accounting, evaluation and actual notification receipt, then recovery/resolution. Measure detection/delivery timing and cardinality/volume under representative load. Test missing telemetry separately: no data cannot silently mean perfect health. Synthetic alert delivery validates routing, not the real SLI query or user path; record that coverage limit.
6. Bind dashboards/queries/rules to candidate/configuration and tool version, and retain sanitized query results/receipts. Compare observed numerator/denominator with a known fixture count to detect missing or double-counted outcomes. Establish who maintains the rule and objective when behavior changes.

## Evidence, failure and recovery

Deliver SLI formulas/population/exclusions, chosen objective source, query/rule/config identity, telemetry completeness/cardinality/privacy results, actual failure and notification/resolution timestamps and runbook ownership. On broken instrumentation, missing receiver, excessive cardinality or sensitive-data emission, stop the unsafe assigned stimulus, preserve minimal sanitized evidence and block the affected monitoring claim. Correct the control and re-exercise failure/recovery; do not silence the alert or count missing data as success. Telemetry cleanup follows retention/privacy policy and does not erase incident evidence.

## Consumer acceptance scenario

A controlled checkout dependency failure contributes to the failure SLI rather than a successful 'request accepted' counter. Its sustained user impact triggers the chosen burn/error rule and reaches the real assigned receiver within the selected detection objective, with a usable runbook and no customer identifiers. Restoration clears the condition after the documented window; disabling telemetry separately produces the documented no-data signal instead of an all-green dashboard.
