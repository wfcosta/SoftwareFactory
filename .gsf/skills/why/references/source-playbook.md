# Source playbook

Assign one available source/category to each investigator. Discover actual authorized tools and inspect their schema before calling them. Git, an authenticated hosting CLI, a read-only MCP, browser access to an authorized record, or a user-supplied export may provide evidence; no vendor is a prerequisite. Local history and remote review access are separate capabilities. Report unavailable categories and authentication/retention limits, not invented null searches. Never enable a service, request broader private access, or mutate external state just to fill a category.

For every source: start with the anchor's symbols, paths, exact errors, constants, author, feature synonyms and ship window. Record literal queries, bounds, items read, dates, quotes, precise locators, contradictions and empty results. Read full context before quoting. Follow links within the assigned source; send cross-source leads to the coordinator. Search absence is bounded by access, retention and query coverage; it is not proof that no rationale existed.

## 1. Source control and code archaeology

1. Use line blame to identify last touches, then rename-aware file history to find the original introduction, not merely the latest cleanup. Inspect complete substantive diffs and commit messages. Use exact-string pickaxe for constants/errors and regex history for renamed patterns.
2. Read PR bodies, review threads and resolution comments through available authenticated tools. Follow revert/reapply and predecessor PRs. Extract linked issue IDs and hand them to the issue investigator.
3. Inspect nearby tests, ADRs, comments, changelog and co-changed files to identify edge cases and constraints. A test shows protected behavior; it proves intent only if its text or contemporary review states the reason.
4. Return commit hashes, file/line anchors, PR/thread links, author/date, exact rationale quotes, prior alternatives and reversions. If remote PR access is absent, state precisely that local history was read but review deliberation was not.

## 2. Issue and ticket tracker

1. Fetch linked IDs first, including full descriptions, comments, status history and attachments available within scope.
2. Search feature/business names, symptoms, customer requirement terms, error strings and symbols with several phrasings. Read parent initiatives, sibling issues, duplicate chains and project/milestone context; tactical subtasks often omit the forcing function.
3. Distinguish actual decisions from template filler and planned requirements from shipped behavior. Track reopenings and scope changes against the code date.
4. Return ticket ID/link, exact motivating quote and location, author/date, labels, parent/project, status and contradictory later updates. Inaccessible private tickets are gaps. This recipe works with GitHub Issues, Linear, Jira or any available tracker; none is mandatory.

## 3. Long-form documents

1. Search available ADRs, specs, PRDs, RFCs, design-review notes, runbooks and postmortems by feature, symbols, authors, exact error and ship-period terms.
2. Read full pages, linked appendices, alternatives/rejection sections, child pages and meeting decisions. Check draft/final status, revision dates and superseding docs.
3. Compare the proposal with the implemented PR; flag divergence rather than quietly treating a pre-implementation plan as fact.
4. Return page URL/ID and section, verbatim motivation/alternatives quote, author/date, document status and known stale or missing revisions. An unsearchable attachment or notebook is a named gap, not an empty result. Any authorized document system or in-repo ADR works; no Notion dependency.

## 4. Real-time team chat

1. Inspect available search capabilities and authorization. Stop on auth failure and record the gap; do not browse unrelated DMs or workspaces.
2. Search the PR URL/number, ticket IDs, exact errors, feature/symbol synonyms, and messages by relevant authors around the ship date. Narrow by relevant team/incident channels and expand the date range only for a concrete lead.
3. Fetch entire threads, including follow-ups and corrections. Separate deliberation, jokes, proposals and actual decisions. A single extracted message can reverse meaning without its parent.
4. Return permalink, author/time, concise exact quote with context and remaining disagreement. Record retention cliffs and unsearchable private messages. Slack, Teams, Discord or an authorized archive are access options, not requirements.

## 5. Infrastructure observability

1. Discover the actual owning service and dependency names; search related dashboards, monitors and metric descriptions before guessing log fields.
2. Inspect the exact alert condition, threshold, units, tags and creation/update time. A matching monitor may explain a bound, but its existence alone does not prove the code's motivation.
3. Query time-bounded aggregate metrics and log patterns around the change; inspect representative relevant traces/spans and incident timelines. Prefer compact counts/distributions to bulk raw logs. Record sampling, deployment/version tags and query window.
4. Return dashboard/monitor/trace/incident links, literal query, relevant condition or quote, numeric trajectory and chronology relative to ship. Separate correlation from causation and note neighboring deployments. Missing old telemetry is a retention gap. Use the available runtime tooling, not assumed Datadog APIs.

## 6. Error and exception tracking

1. Discover the authorized organization/project/environment; search exception classes, exact error strings, stack functions, file paths and handled conditions from the target.
2. Bound by release and time. Inspect first/last seen, counts, affected versions/environments and frequency changes around the candidate fix. Open representative full events: stack, breadcrumbs and safe contextual tags must actually match the defensive code.
3. Read resolution/author comments and linked releases. A cessation after a PR is supporting chronology, not proof of causation when sampling, traffic or releases also changed.
4. Return issue/event IDs and links, sanitized stack excerpt, query window, first/last seen, counts/sampling and affected releases. AI-generated root-cause summaries are hypotheses, never primary evidence. Use Sentry or any available tracker; unavailable tooling is a gap.

## 7. Product analytics and warehouse

1. Discover schemas/tables and describe relevant columns using read-only metadata. Never assume company-specific table names, event keys or experiment schemas.
2. Time-bound all data queries, initially around the ship window (often roughly 30 days either side). Prefer typed/deduplicated models. If raw events are necessary, explicitly deduplicate and document identity, freshness and refresh lag.
3. Query compact usage counts and distributions, first/last seen, experiment exposures/decisions, relevant threshold quantiles and query cost/history. Inspect lineage metadata for upstream changes and hand repository-history leads back to source control. Do not dump user-level rows or sensitive payloads.
4. Return fully qualified confirmed table names, exact read-only query, time bounds, compact numeric summary, units, freshness, sampling/dedup assumptions and relation to ship date. Distinguish instrumentation changes from user behavior and temporal correlation from rationale. Missing retained history, not-yet-existing models or inaccessible notebooks are explicit gaps. No Databricks, Snowflake or other warehouse is required.

## Incident and postmortem overlay

Apply this when the question names an incident, postmortem, regression, reliability decision or prior failed fix, and whenever target code is defensive: null guards, catch blocks, retries, timeouts, rate limiting, circuit breakers, flags, OOM handling, egress or resource bounds.

1. Establish introduction/change/revert dates and the exact protected failure. Use those dates and symptoms to search *inside every assigned source*: incident/severity/reliability/postmortem labels in tickets; incident channels and PR links in chat; postmortem/runbook sections in docs; monitor firings, traces and error issues in runtime records; revert/hotfix/reapply messages in history; relevant failure or exposure events in analytics.
2. Recover trigger, blast radius, root cause versus contributing factors, mitigation, permanent action item, owner and timeline. Follow the documented fix to its actual PR/release and any recurrence/revert. An action item marked complete is not proof that the intended behavior was verified.
3. Preserve external/protocol/legal constraints and past failures as evidence-backed planning constraints. Do not strip a guard merely because its purpose is not obvious today.
4. Return incident/postmortem identifier, exact quote linking the defensive behavior to the incident, dates, linked corrective work and observed recurrence. If searches find nothing, name the queries and limits. With no direct link, phrase a plausible connection as inference, not author intent.

Adapted from the source and incident recipes in [pstack at the pinned revision](https://github.com/cursor/plugins/tree/c742dd61706fbacc1b95f1a20b7b988cf096ce6c/pstack).
