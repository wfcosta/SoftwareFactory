# Observed environment contract

`JOB_DIR/environment.md` contains exactly one fenced `yaml` mapping. Strictly parse as required by [config-contract.md](config-contract.md), then validate with this single Draft 2020-12 schema using format assertion for date-time. Unsupported versions fail closed. The coordinator alone promotes/replaces the canonical record; workers supply owned indexed observation receipts under [WORKER_CONTRACT.md](../agents/WORKER_CONTRACT.md). Preserve prior raw snapshots and their digests. This is observation, never authority or a claim that Markdown enforces access.

## Collection and mandatory acceptance semantics

1. Observe the actual execution repository/worktree, host/tool versions and required capabilities using authorized host interfaces. Use capability names tied to task requirements (for example yaml-parser, schema-validator, independent-review, isolated-workspace, cloud-read). Available requires a real successful probe/receipt; unavailable or unknown records limitations and blocks only dependent work. Version is the actual observed version or null when not discoverable; null cannot satisfy a version-dependent prerequisite. Do not probe a denied external target or install software without authority.
2. Record UTC observation and expiry for the record and every capability/target. Set expiry from accepted host/session/credential constraints, not an invented universal TTL. Require observed_at <= current time < expires_at and observed_at < expires_at; no future, stale or unparseable observations pass. Clock uncertainty blocks time-sensitive acceptance. Changes in credential/session, repository, provider context, account, region, resource ownership or tool versions invalidate affected observations immediately even before expiry.
3. Targets are observed using authentic provider/host identity and resource-state queries. Each id must exist in accepted policy; compare exact provider/account/region and explicit resource identifiers with policy and authentic action-specific grant. `region` is required and is a nonblank string for a regional target, or null only for a proven nonregional target: index authentic provider identity observations plus provider documentation establishing no region dimension for this exact service/target. Null is not unknown, missing, a wildcard or permission to ignore regionality. Reject missing/blank region, unknown regionality, regional targets observed with null, fabricated provider identities and invented `global`/`unknown` strings. Accepted policy, fresh observation and grant must bind the same real identity, including the explicit proven nonregional scope when null; a mismatch blocks the effect. Record state_fingerprint as SHA-256 of the indexed canonical observation bytes, not a guessed cloud revision. The receipt explains how those bytes map to real provider revisions/locks/resources. Target IDs and capability names must be unique. Empty targets is the normal workspace-only record, never evidence that any external target is allowed. Insufficient read access is a blocker, not permission to infer identity.
4. Every evidence reference names a real immutable receipt or frozen indexed copy, raw SHA-256 and observation time. Resolve relative locators from JOB_DIR; other locators use their documented store resolver. Before relying on it, retrieve and compare bytes, verify authorized reader/writer ACL, retention through the decision/recovery window and source provenance under [candidate-contract.md](candidate-contract.md). A digest detects substitution only relative to the trusted recorded digest, not cryptographic authenticity of a caller. Keep secrets/tokens out of every receipt. Unknown isolation, privileges, authenticity, metering or host cancellation must be recorded as limitations, never inferred from a tool name.
5. Bind the candidate/gate/release evidence to the digest of the frozen raw environment.md bytes (`environment_id`). A new observation produces a new snapshot and digest; re-evaluate every affected target/capability before an effect. Keep job event/attachment indexing and coordinator single-writer semantics; there is no environment-specific scheduler or event type.

## Record example

This is a schema-valid synthetic unavailable-capability example, not an observation or receipt to copy into a job. It deliberately cannot satisfy verification. Replace every value with actual collected facts; no configured external target is assumed.

```yaml
version: 1
job_id: job-20261028-000000
repository: C:/work/example
observed_at: "2026-10-28T00:00:00Z"
expires_at: "2026-10-28T01:00:00Z"
capabilities:
  - name: isolated-workspace
    status: unknown
    tool: unobserved
    version: null
    observed_at: "2026-10-28T00:00:00Z"
    expires_at: "2026-10-28T01:00:00Z"
    evidence: []
    limitations:
      - No isolation probe or ownership receipt has been collected.
targets: []
```

```json
{
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "title": "GSF observed environment",
  "type": "object", "additionalProperties": false,
  "required": ["version", "job_id", "repository", "observed_at", "expires_at", "capabilities", "targets"],
  "properties": {
    "version": {"const": 1},
    "job_id": {"type": "string", "pattern": "^job-[0-9]{8}-[0-9]{6}(?:-[0-9]{2,})?$"},
    "repository": {"$ref": "#/$defs/text"},
    "observed_at": {"$ref": "#/$defs/time"},
    "expires_at": {"$ref": "#/$defs/time"},
    "capabilities": {
      "type": "array",
      "items": {
        "type": "object", "additionalProperties": false,
        "required": ["name", "status", "tool", "version", "observed_at", "expires_at", "evidence", "limitations"],
        "properties": {
          "name": {"$ref": "#/$defs/id"},
          "status": {"enum": ["available", "unavailable", "unknown"]},
          "tool": {"$ref": "#/$defs/text"},
          "version": {"oneOf": [{"$ref": "#/$defs/text"}, {"type": "null"}]},
          "observed_at": {"$ref": "#/$defs/time"},
          "expires_at": {"$ref": "#/$defs/time"},
          "evidence": {"type": "array", "items": {"$ref": "#/$defs/receipt"}},
          "limitations": {"type": "array", "uniqueItems": true, "items": {"$ref": "#/$defs/text"}}
        },
        "allOf": [
          {"if": {"properties": {"status": {"const": "available"}}}, "then": {"properties": {"evidence": {"minItems": 1}}}, "else": {"properties": {"limitations": {"minItems": 1}}}}
        ]
      }
    },
    "targets": {
      "type": "array",
      "items": {
        "type": "object", "additionalProperties": false,
        "required": ["id", "provider", "account", "region", "resource_scope", "observed_at", "expires_at", "state_fingerprint", "evidence"],
        "properties": {
          "id": {"$ref": "#/$defs/id"},
          "provider": {"$ref": "#/$defs/text"},
          "account": {"$ref": "#/$defs/text"},
          "region": {"oneOf": [{"$ref": "#/$defs/text"}, {"type": "null"}]},
          "resource_scope": {"type": "array", "minItems": 1, "uniqueItems": true, "items": {"$ref": "#/$defs/text"}},
          "observed_at": {"$ref": "#/$defs/time"},
          "expires_at": {"$ref": "#/$defs/time"},
          "state_fingerprint": {"$ref": "#/$defs/hash"},
          "evidence": {"type": "array", "minItems": 1, "items": {"$ref": "#/$defs/receipt"}}
        }
      }
    }
  },
  "$defs": {
    "text": {"type": "string", "minLength": 1, "pattern": "\\S"},
    "id": {"type": "string", "pattern": "^[a-z][a-z0-9-]*$"},
    "hash": {"type": "string", "pattern": "^sha256:[0-9a-f]{64}$"},
    "time": {"type": "string", "format": "date-time"},
    "receipt": {
      "type": "object", "additionalProperties": false,
      "required": ["locator", "digest", "observed_at"],
      "properties": {
        "locator": {"$ref": "#/$defs/text"},
        "digest": {"$ref": "#/$defs/hash"},
        "observed_at": {"$ref": "#/$defs/time"}
      }
    }
  }
}
```
