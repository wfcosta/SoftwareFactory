---
name: ephemeral-observability-review
description: Review an existing authorized workspace-scoped telemetry session against actual receiver, identity, ACL, resource, TTL and cleanup evidence without creating infrastructure or treating local shutdown as remote deletion.
---

# Ephemeral observability review

## Role

Assess whether a finite diagnostic session uses only existing authorized resources and has an evidenced lifecycle. This is an agent review and native-owner handoff, not a collector, container recipe, backend, service, infrastructure provisioner or automatic cleanup mechanism. “Ephemeral” describes a claim to establish, not a safety property conferred by a directory or a TTL label.

Follow the [worker contract](../../agents/WORKER_CONTRACT.md), [configuration](../../state/config-contract.md), [environment](../../state/environment-contract.md) and [candidate/evidence](../../state/candidate-contract.md) contracts. [Telemetry review](../telemetry-review/SKILL.md) owns diagnostic delivery/correlation coverage; [provider evidence review](../provider-evidence-review/SKILL.md) owns bounded source retrieval; [data residency review](../data-residency-review/SKILL.md) owns processing/copy-location comparisons. Do not replace their obligations or create a mandatory gate.

Direct no-write requests inspect only supplied/permitted retained evidence and answer in chat: no job, files, queries, exports or resource changes. Dispatched review writes only assigned owned Markdown evidence/report for coordinator promotion. This procedure performs no native activation, probe, provider/model call or cleanup; any missing observation or effect belongs to a separately authorized existing native owner.

## Context

Obtain the exact accepted diagnostic question and answer predicate, session/attempt and candidate/policy/environment identities, workspace absolute root and ownership receipt, reviewed artifact/configuration/runtime versions and authentic operational owner. Establish whether the workspace is genuinely local or backed by a remote filesystem. A workspace name or account credential is not scope authority.

Require a finite accepted boundary: exact resource and receiver list, data categories/fields and audience, tenant/population/time window, source/receipt count, per/total bytes, queries/pages/attempts, elapsed duration, storage/ingestion/query cost and currency, maximum live owners, session end, evidence-retention deadline and cleanup deadline. Include capture overhead, buffers, retries and delayed export. Unknown required limits block the dependent session; unmetered is unknown, not free. Accepted limits are not native enforcement.

Recover existing receipt locators and the actual native version-specific lifecycle/TTL/ACL documentation from approved sources. Record exact URL or immutable document revision, applicability and retrieval time when documentation is used; a tutorial is not this installation's receipt. No discovery of credentials, private HOME, personal histories, unrelated jobs or accounts is permitted.

## Task

### 1. Bind the entire existing resource path

1. Inventory only the accepted existing resources: emitter/runtime, local buffers/spool/cache, collector/processors, transports/proxies, receivers, query stores, exports and diagnostic copies. Record configured, loaded, receiving and unknown separately. If a required component does not exist, block its dependent session rather than create a Docker container, backend, service or replacement infrastructure.
2. For each resource bind the actual workspace/path or provider/account/tenant/region/resource identifier, current exclusive session owner, effective process/service identity, current reader/writer/export/admin ACL, access-observation time/expiry and relevant native resource/operation handle. A local listener can forward remotely; a local-looking mount can be remote. Proven nonregional scope follows the environment contract; unknown geography is not null or an invented global region.
3. Match each read, emission, export, retention change and destructive cleanup action to accepted policy and its distinct authentic scope. Review authority does not grant any of them. An existing receiver or writable identity does not authorize sending this session's data or deleting shared data.
4. Map classified fields and metadata through every hop/copy. Bind permitted processing/storage/support/backup locations, collection minimization, access and evidence custody to accepted policy. Redaction after broad capture cannot establish safe collection; hashes of secrets are not safe diagnostic identifiers.

### 2. Compare finite operation with actual controls

1. Use retained receipts to compare accepted stimulus/emissions with exact receiver records and source versions using telemetry-review. An emitter exit, exporter acknowledgment or collector ingress does not prove final receipt or complete coverage. Keep dropped, delayed, duplicate and partial records visible.
2. Establish actual native limits for session lifetime, owner concurrency, buffer/storage growth, network/receiver scope, query/ingestion charges and cancellation. Separate hard controls from estimates/manual obligations; a Markdown end time is not a kill switch. Required absent controls block dependent unattended or bounded operation.
3. For every copy distinguish collection stop time, export flush/drain interval, data expiry, evidence retention and resource lifetime. Obtain actual configured/effective TTL semantics, clock/reference instant, applicable legal hold, replicas/backups and evidence of enforcement or a named accepted manual custodian. Never invent a universal TTL, promise deletion at an unevidenced time or expire required evidence before its recovery/retention window.
4. Inspect available evidence for receiver unavailability, denied access, full buffers, interrupted export and expiry. Missing or empty telemetry is unknown, not healthy or free. Record any unobserved remote effect and its exact reconciliation prerequisite without generating new stimuli.

### 3. Hand off lifecycle decisions without performing effects

| Boundary | Required existing-native owner evidence before reliance |
| --- | --- |
| Proposed use of existing resources | Current exact identity/ACL, policy and action-specific authority, loaded configuration, real bounds and accepted receipt/cleanup owners; a favorable review is not activation |
| Session active | Actual owned handle/liveness and receiver observations within the accepted interval; do not infer running or stopped from a report label |
| Stop requested or local process exited | Actual acknowledgment/termination or fencing of the owned writer, plus known buffer/export state; remote work and retained data remain separate |
| Effect or export return ambiguous | Reconcile exact resource/operation/session intent with real native state before retry, overlapping use or deletion; unknown remains blocked |
| Cleanup proposed | Preserve required receipts first, prove all affected owners stopped/fenced, distinguish owned disposable data/resources from shared or user data, and obtain exact separate destructive authority |
| Cleanup or TTL asserted complete | Native readback of the exact resources/copies and ACL/retention scope; record confirmed removal, retained copies and unobservable remote state separately |

The existing owner retains responsibility for each continuing resource, queued export, remote copy and unknown operation until observed reconciliation and accepted transfer. Neither a cancellation label nor deletion of a local directory proves remote stop or deletion. If cleanup is unavailable or unsafe, retain the resource under an authentic acknowledged custodian or report owner-not-established and the dependent block; never silently leave residue described as cleaned.

## Constraints

No commands, probes, service starts, installations, new container/backend/infrastructure, network scans, provider/model calls, credential lookup, host enablement or actual deletion under this review. Existing-native handoff requires a separate grant, actual supported tool and authentic receipt/readback; Markdown does not enforce ACL, TTL, cost or cancellation. No new schema, ledger, role, runtime or shared record is introduced.

Keep original failed/partial observations immutable and private-safe under existing retrieval/digest/ACL/retention rules. Changes to workspace, owner, account, receiver, ACL, version, pipeline, TTL, grant or data policy invalidate affected reliance, even before nominal expiry. Finish safe unaffected analysis and name the precise decision owner instead of broadening the session.

## Format

Use the [assigned response template](../../templates/response-template.md) or no-write chat. Include accepted question/predicate and finite limits; identity/version/authority boundary; actual versus configured state; one report-local row per resource/copy; current ownership; unknown effects; and native handoff/recovery prerequisites. These rows are not a new canonical store.

| Criterion / resource and source → receiver/copy | Expected scope, identity, ACL, bounds and lifecycle predicate | Actual indexed evidence / observation level | MET / NOT_MET / BLOCKED; unknown or failure | Current owner / exact next action and readback |
| --- | --- | --- | --- | --- |

Account for every assigned criterion and earlier finding, distinguish actual source observations from inference and NOT RUN actions, and use the executing role's documented verdict. Include locators/raw digests/provenance, retrieval and real retention basis; modified product files normally `[]`; stop class (`environment`, `product` or `factory_bug`); residual resources/copies and ownership. Review completion is not session activation, successful receiver delivery, cleanup or remote deletion.

### Manual consumer cases — illustrative, NOT RUN

- **Existing bounded session:** supplied current receipts bind an already present workspace buffer and authorized receiver to one identity, accepted data/window/budget, effective ACL, actual delivery and lifecycle controls. Support only those predicates; no resource is created and no activation is implied.
- **Local stop, unknown remote copy:** local writer termination is proved but an export may have reached a remote receiver and no remote readback exists. Preserve the stopped-local fact, retain remote-state/cleanup BLOCKED and hand exact operation identity to its authorized custodian; do not retry or purge.
- **TTL and ACL drift:** an old receipt shows a one-hour TTL but the current copy has changed ACL or hold/backup scope. Invalidate affected reliance; neither the label nor elapsed time proves expiry/deletion. Required evidence must retain its own authorized custody.
- **Absent backend or shared cleanup:** the question requires a receiver that is absent, or cleanup would delete a shared store. Block dependent use/removal, finish existing-source analysis and name the missing native resource/authority; do not bootstrap infrastructure or infer disposable ownership.
