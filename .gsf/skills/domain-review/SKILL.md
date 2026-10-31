---
name: domain-review
description: "Design, independently review, or prove task-specific data, API, async, security, supply-chain, quality, reliability and inclusive-experience obligations using real environment evidence."
---

# Domain review

## Authority and scope

This skill deepens existing specialist foundations; it is not a coordinator, agent catalog, additional approval authority or executable enforcement layer. Follow [GSF mode](../gsf-mode/SKILL.md), the [worker contract](../../agents/WORKER_CONTRACT.md), accepted policy, assigned ownership and exact candidate/policy identity. Existing mandatory code/security reviews and the five-pillar roles remain unchanged. A designer cannot independently approve its own implementation. Reviewers do not modify product code, perform production penetration testing, run live production database queries or mutate cloud resources.

Use one assigned mode: **design** (executable specification and proof plan), **review** (independent candidate assessment), or **proof** (explicitly authorized execution on an actual supported host). Design acceptance is not evidence of implemented behavior; static review is not an exercised test. Markdown defines obligations, not a sandbox, lock, scheduler or cloud capability.

## Inputs

Read the assignment, requirement and consumer workflows, candidate/diff identity, accepted policy and applicable constraints, architecture/contracts, actual host/environment evidence, existing tests and sanitized operational evidence. Identify affected domains from behavior/data/dependency changes, not filenames alone. For external effects read the configured target and actual identity, scoped authority and prerequisites under the worker contract; possessing credentials is not permission. Missing product objectives, supported consumers or required host capability blocks the affected claim rather than licensing invented defaults.

## Procedure

Use the coordinator's accepted `impact-matrix.md` to trace domain invariants, resource owners, proofs and effect/target blockers; do not establish a competing registry or schema. Consume observed capabilities/targets under the [environment contract](../../state/environment-contract.md), with real receipt retrieval, expiry and identity checks. Unknown/stale capability, isolation or target identity cannot satisfy a prerequisite. Workers provide owned receipts; the coordinator owns the canonical environment record.

1. Select every applicable reference below. Record why each selected domain applies; document scope-grounded non-applicability without removing any required role/check. Combine references for cross-domain changes, such as a replay that crosses tenant boundaries or a schema migration affecting old API clients.
2. For each domain record its concrete inputs, consumer-visible invariant, starting state, ordered actions, decision thresholds, observable acceptance, failure/abort conditions and recovery owner. Select numeric product objectives and observation windows from accepted requirements with their source; examples in references are not universal defaults.
3. Trace each obligation to exact candidate surfaces and required evidence. Capture versions, configuration, dataset/load shape, environment identity, timestamps, commands/tool versions when executed, result/exit status and sanitized artifacts. Bind evidence to immutable content and the actual consumer scenario. Do not copy secrets, tokens, personal records or unredacted production dumps into job evidence.
4. In design mode deliver the sequence and proof plan for the builder/checks. In review mode inspect implementation and existing exercised evidence independently; request missing proof through the coordinator. In proof mode execute only assigned checks with real tools and safe isolation; no inferred browsers, database engines, model availability, keys or platform controls. Product fixtures and test assets belong in the owned external product workspace, not the Markdown distribution.
5. Check normal behavior, boundary cases, interruption, rejection and recovery. A command returning zero, a scan returning clean or a procedure's existence is not sufficient consumer acceptance. Record observed versus inferred outcomes and coverage limits; invalidate affected evidence after candidate, policy, tool/configuration or environment changes.
6. Return findings and the role's existing verdict to the coordinator using its response template. A demonstrated defect yields CHANGES where supported; missing necessary evidence yields BLOCKED, never PASS. Roles whose verdict vocabulary has no CHANGES use BLOCKED for unmet acceptance. A design PASS/APPROVE means only the assigned design acceptance is satisfied, not deployment approval.

## Domain references

| Impact | Required task-specific procedure |
| --- | --- |
| Schema, stored data, backfill or coexistence | [Data migrations](references/data-migrations.md) |
| Backup, restore or recovery claims | [Restore and recovery](references/restore-recovery.md) |
| Public or inter-service API evolution | [API evolution](references/api-evolution.md) |
| Jobs, events, queues, callbacks or replay | [Asynchronous delivery](references/async-delivery.md) |
| Authorization, abuse or personal/sensitive data | [Security and privacy](references/security-privacy.md) |
| Credentials, workload identity or access rotation | [Credentials](references/credentials.md) |
| Dependencies, builds, images or CI trust | [Supply chain](references/supply-chain.md) |
| Architectural or quality-attribute changes | [Architecture and measurable quality](references/architecture-quality.md) |
| Metrics, logs, objectives or alerts | [Observability](references/observability.md) |
| User interfaces, accessibility or localization | [Inclusive experience](references/inclusive-experience.md) |

## Failure, evidence and cleanup

Stop the affected effect on unknown identity, missing authority, unsafe isolation, unavailable evidence or exceeded assigned limits; report the exact prerequisite and safe recovery under the worker contract. Preserve ambiguous effects for reconciliation, never blindly replay them. Recovery is separately authorized and must not destroy evidence. Reports index exact artifacts and retrieval locations with access/retention limitations; a locator is not proof of durable retrieval.

When assigned execution finishes, stop owned load generators/consumers and remove only authorized disposable fixtures/resources after preserving sanitized evidence; verify resource ownership and report residuals. Never erase shared diagnostics or production backups as cleanup. Outcome states what was designed, inspected and actually exercised, unresolved findings, consumer acceptance results and remaining limitations. The coordinator alone promotes reports and decides lifecycle transitions.
