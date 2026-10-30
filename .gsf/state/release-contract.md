# Release identity and transitions

`JOB_DIR/release.md` contains exactly one fenced `yaml` mapping, strictly parsed under [config-contract.md](config-contract.md) and validated with the single Draft 2020-12 schema below, with date-time format assertion. Only version 1 is supported. The coordinator alone writes the canonical record; workers return owned indexed reports/receipts. This is an additional operational record, not a replacement for candidate, approval, event or plan authority. Workspace-only jobs need no release record and must not claim deployment.

## Applicability: environment operations versus artifact-only publication

`release.md` is reserved for environment deployment, infrastructure apply, rollback and recovery governed by the unchanged action enum and state machine below. Registry-only package/OCI publication is **artifact-only**, not deployment: do not create a deployment release record, add a publish action/state, require traffic/runtime-health observations, or claim deployed/healthy solely from registry success. If publication is followed by deployment, each effect has its own exact authority and receipts; the deployment additionally requires this record.

Artifact-only publication uses existing coordinator `publication_intent` / `publication_receipt` events and owned indexed immutable build/artifact dispatch reports, not a new ledger or authority. Before submission, bind the exact current candidate/policy, committed source correspondence, complete build input/output manifests, real builder/toolchain/dependency provenance, immutable artifact bytes/digest/media type, fresh accepted/observed target identity and environment snapshot digest, authenticated account and endpoint, exact registry namespace/package/repository and version/tag-to-digest mapping, verification results, and scoped publication grant. Retain retrievable indexed evidence with the existing integrity/ACL/retention rules. All configured checks, mandatory independent code/security and applicable reviews, and approval remain required for that identity. Neither `publish_pr` nor `deploy` permission authorizes registry publication; a distinct authentic grant must name this publication action and exact target/namespace/version/artifact scope.

Persist intent before the effect, verify current least-privilege provider identity and actual namespace/version controls, record operation/idempotency identifiers, exclusive ownership and real provider fencing/CAS/immutability protections where required. Query actual registry state after submission and index the authentic registry response plus retrieved digest/version/namespace verification in the dispatch report and `publication_receipt`. An exit code, local tag or upload claim alone is not a receipt. Stale identity/evidence blocks submission; ambiguous or lost results require provider-state reconciliation by the accepted intent and exact coordinates, never blind retry or overwrite. Possibly live owners must be stopped/fenced before a fresh authorized attempt. Publication success proves only the observed artifact publication; it grants no deployment, deletion, rollback or further publication authority.

## Identity and evidence acceptance

A release starts after a real build/artifact exists. Before that, record planning in spec/build evidence, not invented immutable digests. `candidate_id` and `policy_id` bind the exact accepted gate. `source.repository` names the actual execution repository and `source.commit` is the actual source commit or null for a reviewed uncommitted source; publication requires the committed-tree correspondence in [candidate-contract.md](candidate-contract.md). `build.identity` hashes the canonical indexed build manifest: complete declared input/output identities, command/host/toolchain, dependency/lockfile versions and provenance. `build.inputs`/`outputs` reference complete immutable manifests, not a partial convenient file list. `build.provenance` links authentic builder/run receipts; `toolchain` links exact observed versions/image/dependency evidence. The artifact digest hashes actual immutable artifact bytes; for an OCI image/index use the exact registry manifest/index bytes whose SHA-256 equals the immutable provider digest, never hash the digest string itself or a mutable tag. For multi-file artifacts use a complete canonical inventory/bundle and identify its actual media type. The locator is the real retrievable immutable location. Prove the artifact is an output of this build whose source input is this candidate; never rebuild/substitute after approval and retain old evidence. An infrastructure-only artifact may be the actual immutable desired-config/saved-plan bundle with genuine packaging/build provenance; never invent an application image.

For deterministic build identity, the indexed manifest contains version 1, candidate_id, complete ordered input/output manifest receipt references, exact ordered commands/cwd, actual host/toolchain/dependency provenance receipt references and artifact digest; hash its canonical JSON using candidate-contract.md's encoding (no build.identity or release snapshot digest inside that input). `config_id` uses the same encoding over a complete indexed manifest of nonsecret effective configuration document digests, exact flags and secret-reference identifiers/revisions; represent decimal-valued configuration using exact original text plus its type in the manifest, never a lossy floating-point normalization or secret-value hash. Record the complete hash input bytes/procedure separately so another authorized reader can reproduce both IDs without self-reference.

`config_id` hashes the canonical nonsecret configuration manifest (exact names/versions/secret-reference revisions and effective flags; never secret values). `target` binds accepted policy ID/provider/account/region/resource_scope and the raw frozen environment.md digest in `environment_id`; compare fresh observed identity to policy and grant at each effect. `plan` is null when no infrastructure plan applies; otherwise bind exact saved plan digest, observed state fingerprint, expiry and authentic plan/lock/provider receipts. A changed plan, state, artifact, source, toolchain/config or target invalidates affected verification/authorization. Do not apply a freshly regenerated plan under an old approval. Unknown state/lock/expiry blocks the apply.

`target.region` remains required: a nonblank string denotes the real region; null denotes proven not applicable, never unknown or unrestricted. Apply [environment-contract.md](environment-contract.md)'s authentic provider identity/documentation proof of nonregionality and exact accepted/observed/grant binding, including explicit nonregional grant scope. Missing/blank region, unknown regionality, regional-null targets, fabricated providers or invented `global`/`unknown` aliases block the action. Existing genuine nonnull regional records remain valid; nullable representation changes no resource, freshness, grant or state-machine obligation.

Every receipt uses `{locator,digest,observed_at}` and must exist, be indexed and be retrieved/ACL/retention/integrity checked under [candidate-contract.md](candidate-contract.md). Relative locators resolve from JOB_DIR; external locators require their documented resolver. Digests and command exit alone prove neither provider success nor authenticity. Query actual remote operation/resource revisions and runtime health with the authorized host/provider interfaces. Never put credentials in records. `action.grant_refs` locates authentic, current accepted authority in grants.md or immutable policy evidence; a nonempty list is not authority by itself. `action.intent_event_id` references the existing coordinator publication_intent. Recovery/deletion/rollback is a distinct scoped effect, not implicit permission conferred by an incident.

`rollout` records the accepted real observation window, measurable healthy/abort criteria and recovery procedure with owner, known-good artifact/config, data compatibility, provider prerequisites and verification. Strings must be concrete evidence-backed criteria, not “monitor health” prose. Observation windows must actually elapse with samples; a successful merge, apply/command exit, or control-plane success is not deployed/healthy. Precheck recoverability before starting, and do not automatically roll back irreversible changes.

## Mandatory state machine (schema alone is insufficient)

The immutable ordered transitions array is append-only; state equals the last transition.to. First transition is null → planned. Each subsequent from equals the prior to; at is monotonic and each event_id resolves to one actual coordinator event with indexed attachments. Preserve each prior raw release snapshot and digest before canonical atomic replacement. Event IDs keep the existing event-contract vocabulary: publication_intent before effects, publication_receipt for actual remote observations (including recovery), gate events for readiness, and existing checkpoint/block events for interruptions. No release-specific event types, second event authority or new task scheduler.

| Transition | Required observed evidence and failure handling |
| --- | --- |
| null → planned | Complete immutable source/build/artifact/config/target and rollout identities with real provenance receipts; no execution claimed. |
| planned → verified | Same-identity configured checks, independent required/applicable reviews, approval and artifact/plan-specific verification; gate passed. Any failed/missing obligation blocks this transition. |
| verified → authorized | Exact fresh target, current effective action-specific authority, accepted plan/state and real provider safeguards; persisted publication_intent. Authorization does not imply execution. |
| authorized → deploying | Immediately recheck identities/expiry/limits; record real provider submission/operation receipt tied to intent. If submission result is ambiguous, remain at the last proven state, block and query provider; never blindly resubmit. |
| deploying → observing | Provider confirms intended immutable artifact/config/plan applied to exact resources; collect runtime observations. A mere exit zero is insufficient. |
| observing → succeeded | Full declared observation window and every acceptance criterion passed; actual health/version/config receipts, no unresolved abort criterion. |
| planned/verified/authorized → aborted | Authentic cancellation or unmet precondition, with evidence no effect occurred. If effect is possible, reconcile rather than asserting aborted. |
| deploying/observing → rollback_required | Observed partial/bad rollout, abort criterion or unsafe state; contain/fence using separately authorized operations and retain exact affected-resource receipts. |
| deploying/observing → failed | Observed failed operation and proven stable remote disposition requiring no rollback, plus incident/recovery owner and evidence. Unknown remote state stays blocked, never terminal success/failure by assumption. |
| rollback_required → rolled_back | Separately scoped authentic recovery authority and intent; actual restoration and full recovery acceptance receipts for artifact/config/data/resources. Failed/partial/unknown recovery remains rollback_required with indexed observations and incident ownership, never a fabricated restored state. |
| rollback_required → failed | A separately authorized successor release/roll-forward or restore with different identity has actually achieved its full stable recovery criteria. Preserve the original failed intent/identities; link exact successor intent, immutable release/artifact/config/data/resource receipts and recovery-owner acceptance. Close only after observed stable disposition with no unresolved ownership/effects. A roll-forward is never rolled_back; unknown/partial recovery remains rollback_required. |

Succeeded/aborted/rolled_back/failed are terminal for this release identity. A later rollback or re-release uses a new indexed release record/intent referencing the prior one, never erases success history or reuses the earlier grant. For terminal failed/aborted state, receipt-backed proof of disposition is required. `transitions[].receipts` is always nonempty; observations describe actual measured facts, remaining uncertainty and criterion results. For deployment/recovery, an actual response/observation must be attached through the existing publication_receipt event. Changes to action/grants or current effective policy preserve old identity snapshots and require a new verified/authorized release identity if the binding changes.

## Precise synthetic record example

This structurally valid planned example is not live evidence, authorization or a usable artifact. Repeated zero digests and example locators intentionally denote synthetic corpus inputs only. A real job must supply retrievable real bytes/provenance for every reference and satisfy all mandatory semantics.

```yaml
version: 1
job_id: job-20261028-000000
candidate_id: sha256:0000000000000000000000000000000000000000000000000000000000000000
policy_id: sha256:0000000000000000000000000000000000000000000000000000000000000000
source:
  repository: C:/work/example
  commit: null
build:
  identity: sha256:0000000000000000000000000000000000000000000000000000000000000000
  provenance:
    - {locator: dispatches/d001/build-receipt.md, digest: 'sha256:0000000000000000000000000000000000000000000000000000000000000000', observed_at: '2026-10-28T00:00:00Z'}
  toolchain:
    - {locator: dispatches/d001/toolchain.md, digest: 'sha256:0000000000000000000000000000000000000000000000000000000000000000', observed_at: '2026-10-28T00:00:00Z'}
  inputs:
    - {locator: dispatches/d001/inputs.md, digest: 'sha256:0000000000000000000000000000000000000000000000000000000000000000', observed_at: '2026-10-28T00:00:00Z'}
  outputs:
    - {locator: dispatches/d001/outputs.md, digest: 'sha256:0000000000000000000000000000000000000000000000000000000000000000', observed_at: '2026-10-28T00:00:00Z'}
artifact:
  digest: sha256:0000000000000000000000000000000000000000000000000000000000000000
  locator: https://artifacts.example.invalid/immutable/release
  media_type: application/octet-stream
config_id: sha256:0000000000000000000000000000000000000000000000000000000000000000
target:
  id: staging-example
  provider: example-provider
  account: example-account
  region: example-region
  resource_scope: [example-resource-id]
  environment_id: sha256:0000000000000000000000000000000000000000000000000000000000000000
plan: null
action:
  kind: deploy
  effect: external-write
  grant_refs: []
  intent_event_id: null
rollout:
  observation_window_minutes: 15
  acceptance: [All accepted synthetic probe cases pass for the immutable artifact during the entire window.]
  abort: [Any accepted synthetic probe failure stops promotion.]
  recovery: [Operator must authorize recovery and verify the indexed known-good artifact and compatible data restore.]
state: planned
transitions:
  - from: null
    to: planned
    at: "2026-10-28T00:00:00Z"
    event_id: c-e001
    receipts:
      - {locator: dispatches/d001/build-receipt.md, digest: 'sha256:0000000000000000000000000000000000000000000000000000000000000000', observed_at: '2026-10-28T00:00:00Z'}
    observations: [Synthetic planning record only; no external operation occurred.]
```

```json
{
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "title": "GSF release record",
  "type": "object", "additionalProperties": false,
  "required": ["version", "job_id", "candidate_id", "policy_id", "source", "build", "artifact", "config_id", "target", "plan", "action", "rollout", "state", "transitions"],
  "properties": {
    "version": {"const": 1},
    "job_id": {"type": "string", "pattern": "^job-[0-9]{8}-[0-9]{6}(?:-[0-9]{2,})?$"},
    "candidate_id": {"$ref": "#/$defs/hash"},
    "policy_id": {"$ref": "#/$defs/hash"},
    "source": {
      "type": "object", "additionalProperties": false, "required": ["repository", "commit"],
      "properties": {"repository": {"$ref": "#/$defs/text"}, "commit": {"oneOf": [{"type": "null"}, {"type": "string", "pattern": "^[0-9a-f]{40,64}$"}]}}
    },
    "build": {
      "type": "object", "additionalProperties": false, "required": ["identity", "provenance", "toolchain", "inputs", "outputs"],
      "properties": {
        "identity": {"$ref": "#/$defs/hash"},
        "provenance": {"$ref": "#/$defs/receipts"},
        "toolchain": {"$ref": "#/$defs/receipts"},
        "inputs": {"$ref": "#/$defs/receipts"},
        "outputs": {"$ref": "#/$defs/receipts"}
      }
    },
    "artifact": {
      "type": "object", "additionalProperties": false, "required": ["digest", "locator", "media_type"],
      "properties": {"digest": {"$ref": "#/$defs/hash"}, "locator": {"$ref": "#/$defs/text"}, "media_type": {"$ref": "#/$defs/text"}}
    },
    "config_id": {"$ref": "#/$defs/hash"},
    "target": {
      "type": "object", "additionalProperties": false,
      "required": ["id", "provider", "account", "region", "resource_scope", "environment_id"],
      "properties": {
        "id": {"type": "string", "pattern": "^[a-z][a-z0-9-]*$"},
        "provider": {"$ref": "#/$defs/text"}, "account": {"$ref": "#/$defs/text"}, "region": {"oneOf": [{"$ref": "#/$defs/text"}, {"type": "null"}]},
        "resource_scope": {"type": "array", "minItems": 1, "uniqueItems": true, "items": {"$ref": "#/$defs/text"}},
        "environment_id": {"$ref": "#/$defs/hash"}
      }
    },
    "plan": {
      "oneOf": [
        {"type": "null"},
        {"type": "object", "additionalProperties": false, "required": ["digest", "state_fingerprint", "expires_at", "evidence"], "properties": {
          "digest": {"$ref": "#/$defs/hash"}, "state_fingerprint": {"$ref": "#/$defs/hash"}, "expires_at": {"$ref": "#/$defs/time"}, "evidence": {"$ref": "#/$defs/receipts"}
        }}
      ]
    },
    "action": {
      "type": "object", "additionalProperties": false, "required": ["kind", "effect", "grant_refs", "intent_event_id"],
      "properties": {
        "kind": {"enum": ["deploy", "apply", "rollback", "recover"]},
        "effect": {"enum": ["external-write", "destructive"]},
        "grant_refs": {"type": "array", "uniqueItems": true, "items": {"$ref": "#/$defs/text"}},
        "intent_event_id": {"oneOf": [{"type": "null"}, {"$ref": "#/$defs/event"}]}
      }
    },
    "rollout": {
      "type": "object", "additionalProperties": false, "required": ["observation_window_minutes", "acceptance", "abort", "recovery"],
      "properties": {
        "observation_window_minutes": {"type": "integer", "minimum": 1},
        "acceptance": {"$ref": "#/$defs/criteria"}, "abort": {"$ref": "#/$defs/criteria"}, "recovery": {"$ref": "#/$defs/criteria"}
      }
    },
    "state": {"$ref": "#/$defs/state"},
    "transitions": {
      "type": "array", "minItems": 1,
      "items": {
        "type": "object", "additionalProperties": false, "required": ["from", "to", "at", "event_id", "receipts", "observations"],
        "properties": {
          "from": {"oneOf": [{"type": "null"}, {"$ref": "#/$defs/state"}]},
          "to": {"$ref": "#/$defs/state"}, "at": {"$ref": "#/$defs/time"}, "event_id": {"$ref": "#/$defs/event"},
          "receipts": {"$ref": "#/$defs/receipts"}, "observations": {"$ref": "#/$defs/criteria"}
        }
      }
    }
  },
  "allOf": [
    {"if": {"properties": {"state": {"enum": ["authorized", "deploying", "observing", "succeeded", "rollback_required", "rolled_back"]}}}, "then": {"properties": {"action": {"properties": {"grant_refs": {"minItems": 1}, "intent_event_id": {"$ref": "#/$defs/event"}}}}}}
  ],
  "$defs": {
    "text": {"type": "string", "minLength": 1, "pattern": "\\S"},
    "hash": {"type": "string", "pattern": "^sha256:[0-9a-f]{64}$"},
    "time": {"type": "string", "format": "date-time"},
    "event": {"type": "string", "pattern": "^c-e[0-9]{3,}$"},
    "state": {"enum": ["planned", "verified", "authorized", "deploying", "observing", "succeeded", "aborted", "rollback_required", "rolled_back", "failed"]},
    "criteria": {"type": "array", "minItems": 1, "uniqueItems": true, "items": {"$ref": "#/$defs/text"}},
    "receipt": {
      "type": "object", "additionalProperties": false, "required": ["locator", "digest", "observed_at"],
      "properties": {"locator": {"$ref": "#/$defs/text"}, "digest": {"$ref": "#/$defs/hash"}, "observed_at": {"$ref": "#/$defs/time"}}
    },
    "receipts": {"type": "array", "minItems": 1, "items": {"$ref": "#/$defs/receipt"}}
  }
}
```
