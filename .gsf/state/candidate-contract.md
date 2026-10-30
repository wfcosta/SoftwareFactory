# Candidate, policy and evidence identity

This is normative for all implementation gates. `JOB_DIR/candidate.md` contains exactly one fenced `yaml` mapping validated against the schema below after strict YAML parsing (config-contract.md). Record actual host tools, complete inputs and hash results; a guessed fingerprint or a `git diff` summary alone is not an identity. No fingerprint executable is bundled.

## Candidate manifest

Freeze writers before collecting a manifest. Record the repository root, exact active branch/worktree, anchor commit, baseline tracked-path set, and actual collection/hash procedure in the job evidence. Use a real SHA-256 implementation. Hash files as raw bytes, not decoded text or a line-ending-normalized diff. Never write secret contents into reports.

1. Enumerate the union of anchor-commit tracked paths, index paths (including staged additions and unresolved entries), and every filesystem entry under the execution repository root, including untracked, ignored, hidden and binary files. Exclude only Git administrative storage (`.git` directory or worktree administrative pointer and its resolved metadata) and the explicitly enumerated job evidence allowlist below. There is no implicit cache, build output, application-settings, or `.gsf` exclusion. If enumeration is impractical, resolve the scope before claiming a gate; do not silently omit files.
2. For each path, preserve its exact repository-relative spelling using `/`, its type (`file`, `symlink`, `directory`, `deleted`, `gitlink`), executable mode where supported, and SHA-256 of raw file bytes or UTF-8 symlink target bytes. A deleted tracked/index path is an explicit tombstone with null digest. Empty directories have null digest; directories containing Git administrative storage are not followed. Record the size of hashed bytes. Do not follow symlink/junction targets outside the repository; record target text and require explicit safe handling of inside-root directory links without duplicate traversal. Reject unsupported special files, unreadable content, case collisions, unresolved index conflicts, unstable enumeration or a changing candidate as BLOCKED, not a partial hash.
3. A submodule/gitlink entry includes its recorded object ID in target and a recursively captured manifest of its checked-out worktree under prefixed paths; missing or unavailable submodule content blocks any gate that claims to cover it. This prevents a clean parent diff hiding submodule modifications. Store real index entries/staging provenance separately in job evidence; index content that differs from the proposed worktree must be reconciled before publication. Publication must not accidentally commit staged content that was not the reviewed candidate.
4. Sort manifest entries by UTF-8 path bytes. For hashing, encode the entries array as canonical JSON: recursively sort object keys by Unicode code point, no whitespace, UTF-8 without BOM, no ASCII escaping of non-ASCII characters, integers in base ten, literal null, no floats. Each entry has every schema field, including null target/digest when inapplicable. Compute candidate_id as `sha256:` plus lowercase SHA-256 of those bytes. This is the candidate content identity; anchor/branch/commit, evidence and policy IDs are separate provenance, not circular inputs.

Each path occurs exactly once; reject duplicate/case-colliding entries and invalid Unicode before hashing. Canonical string encoding uses JSON double quotes, escapes a quote with one reverse solidus followed by a quote and a reverse solidus with two reverse solidus characters, uses the standard one-reverse-solidus b/t/n/f/r escapes for their controls and the standard one-reverse-solidus lowercase u00xx escape for other U+0000–U+001F characters, never escapes `/`, and otherwise emits literal Unicode as UTF-8. Object key order is the code-point order stated above (not a host locale sort); array order is significant. Record deterministic file modes: Git-style 100644/100755 for ordinary files, 120000 for links, 040000 for directories, 160000 for gitlinks, and the original tracked mode for tombstones. A host without executable-bit semantics uses known Git/index mode or 100644 for a new regular file and records that limitation.
5. Persist the sorted manifest and candidate_id. Independently repeat enumeration and hashing after checks/reviews and immediately before an external effect. Use the same frozen anchor and evidence allowlist throughout this gate, including after an authorized private commit; a commit with identical content can be linked as new provenance without forcing a new content identity. A different manifest invalidates checks/reviews/approval and requires a new gate. Record how the committed tree plus intended deletions/untracked additions corresponds to the reviewed manifest; never publish an old passing commit while the current candidate failed.

## Narrow evidence exclusion

Before the first snapshot, freeze exact repository-relative paths for the **active** JOB_DIR's evidence only: job.md, policy.md, grants.md, candidate.md, plan.md, decision.md, issue.md, environment.md, release.md, intake.md, spec.md, build.md, checks.md, approval.md, gaps.md, inbox.md, outbox.md, and each explicitly planned canonical specialist/review report. Enumerate exact per-dispatch task.md/report.md/events.md paths and evidence attachments in the job evidence index before excluding them. New dispatch evidence may extend this list only under coordinator authority, with recorded provenance; it may not reclassify source content as evidence. Exclude no other job, no entire jobs root, and no whole `.gsf` subtree. Jobs must live in the configured safe jobs directory, not a source/policy directory. A policy/skill/template/constraint/model-preference file, source file, test, executable or product asset can never be excluded by naming it a report or placing it among attachments. Do not move candidate content into evidence to evade review. If an evidence file becomes a product input, it enters the manifest and requires a new gate.

Also enumerate the active JOB_DIR, its dispatches directory and allocated dispatch evidence directories as exact structural evidence paths. Omit their directory entries only; still traverse them and include any non-allowlisted child in the candidate manifest. This permits lawful creation of report/receipt directories without hashing directory metadata or concealing unexpected content. Do not omit ancestor source directories or a whole subtree. Before final capture, reserve exact report/dispatch paths for checks, reviewers and approval; later evidence-only additions need an authorized allowlist extension and a recorded proof that the candidate entries array is unchanged. If the entries change, it is a new candidate and needs a new gate.

Appending genuine events, acceptance receipts, approval and PR receipts changes evidence identity but not candidate_id. Evidence reports cannot authorize policy changes. Any malicious or materially altered evidence invalidates the **gate decision** even if candidate_id is unchanged; inspect report integrity and accepted lifecycle IDs before relying on them. This separation avoids invalidating a passing candidate merely by recording its approval.

## Policy identity and baseline

Before product edits, persist immutable `policy.md`: exact parsed policy, exact applicable constraint/instruction contents or immutable content-addressed references, active branch instruction revisions, required check skill contents, effective model preferences where applicable, protected-path resolution, baseline permissions and source provenance. Never reload trunk/main instructions over the active branch. policy_id is SHA-256 of canonical JSON of this complete baseline plus ordered accepted scoped grants (the same canonical encoding as above); record its exact input and version. Preserve each baseline and old policy_id. An authorized grant creates a new effective policy version, never mutates history or retroactively excuses an earlier failure. Check/review reports identify both candidate_id and policy_id. A policy mismatch requires re-evaluating all obligations and rerunning affected evidence; an unauthorized change blocks the gate. Candidate policy-file edits remain candidate content but cannot self-amend the baseline.

Record evidence_id separately as the SHA-256 of the sorted list of exact evidence paths and raw-byte digests at a named checkpoint; it is expected to change with lawful appends. Do not put evidence_id into the candidate manifest, policy baseline, or their hashes. Each recorded evidence checkpoint lists its own excluded receipt path to avoid hashing itself. Candidate/report snapshots must not claim atomicity from Markdown alone: serialize writers, use host-supported atomic replacement when available, and reconcile interruptions under WORKER_CONTRACT.md.

## Measured collection and isolated verification

The current candidate record is version 2. Old accepted version-1 jobs retain their frozen schema/instructions; adoption requires the explicit authorized policy upgrade in [config-contract.md](config-contract.md). Candidate_id remains the canonical entries-array hash above, not the hash of this record. Operational collection/workspace evidence is separately integrity-checked and cannot authorize itself.

`collection.measured.elapsed_seconds` is actual monotonic elapsed time rounded **up** to whole seconds, stored as an integer. Collection/workspace metadata does not enter the entries-array candidate_id digest. Policy baseline/grant fingerprints use only exact integer/string/boolean/null canonical values; costs are integer currency minor units under config-contract.md. Environment IDs hash the already-frozen raw environment record, never themselves; release snapshots and raw digests are indexed externally, never hashed into their own records.

Before enumeration, accept `collection.limits` (maximum entries, raw hashed bytes and elapsed seconds) in task/policy evidence with an authentic approved resource budget and owned destination. `collection.procedure` identifies the actual host enumerator/hash/canonicalizer versions and algorithm; `collection.evidence` points to real measurement/index/stability receipts. Measure `measured.entries` as final manifest entry count, `bytes` as the sum of hashed byte sizes, and `elapsed_seconds` as actual monotonic enumeration/hash time. Require measurements within accepted limits, receipts matching entries, and stable before/after enumeration. Also measure workspace/storage/build usage against accepted execution limits. Limits are not enforcement claims: use actual host quota/cancellation controls where required. Missing measurement/capability or an exhausted cap requires stop/checkpoint/fence, a precise blocker and authentic authority for a revised scope/budget. Never truncate, sample, skip large files or introduce blanket cache/build/vendor/ignored exclusions. Git ignore controls Git status, never candidate trust.

For tests/builds that write or could affect inputs, use this complete workspace procedure:

1. Freeze/fence source writers; capture the complete source candidate, including dirty/staged/untracked/ignored/deleted inputs. Inspect hooks, generators, package scripts, links, fixtures, caches and nested tools for actual effects. A clean commit/archive alone omits dirty/untracked inputs and is insufficient. A checkout named sandbox is not isolation.
2. Allocate a separately owned verification workspace outside the source repository and policy/job roots using an actual host worktree/export/container/VM capability. Record its absolute root and receipt of exclusive ownership, effective read/write/network/credential boundaries and cancellation/fencing. Never infer sandboxing from a path, Git worktree or Markdown. Allocation grants no external credentials/resources; unavailable required isolation blocks affected verification.
3. Export exact effective candidate bytes/modes/link targets and intended tombstones, including staged/worktree reconciliation and submodules. Do not follow escaping symlinks/junctions; safely materialize or reject under explicit accepted semantics and prove equivalent input behavior. Recapture exported source before running and prove correspondence to frozen source entries; record source_candidate_id. Git metadata is provenance, not product input; builds reading it must freeze exact required values as additional build inputs and record the difference.
4. Capture a complete immutable input manifest before execution: source mapping to candidate, additional fixtures/config/lockfiles, dependency content digests, toolchain/image versions, behavior-affecting environment values and secret-reference versions (never secret values). Network dependencies require authentic locked identities/receipts; unknown mutable inputs block reproducibility claims. Enumerate every workspace entry, not only Git-tracked files. Keep manifests outside their enumerated trees to avoid self-reference.
5. Run assigned checks/builds only with actual host enforcement appropriate to declared effects and permissions. Record exact commands/cwd, timing, observed effects/status/output. Generate outputs only in the isolated owned workspace or explicitly owned external store. Capture complete post-run inputs, output manifest and artifact manifest (raw digests, modes, sizes, immutable locations and provenance); distinguish logs from distributable artifacts. Explain every input mutation as an explicitly declared generated-input/output dependency; otherwise invalidate the run. Prove the shipped artifact is exactly an output, never substitute/rebuild after approval. Bind release.build.inputs/outputs, build.identity and release.artifact to these receipts.
6. Recollect source after execution and before each effect. Source unchanged plus matched immutable inputs/outputs permits reuse. Unexpected source-root outputs remain included and change candidate_id (or block), even when Git-ignored; never reclassify them as evidence. Builds requiring in-source mutation must be safely reproduced in the export or remain blocked.
7. Retrieve/freeze required receipts and artifact bytes before teardown. Cleanup is separately authorized to exact owned paths after owners stop/fence; never blanket-remove or delete user changes. Record actual cleanup/retained evidence or explicit continuing ownership when retention is required.

`verification_workspace.mode: isolated` requires nonnull root, source_candidate_id and all three manifest receipts, with nonempty boundary/procedure evidence. Each manifest is an immutable indexed document with complete sorted path/type/mode/size/digest/target inventory, canonical content_id computed by the entries encoding above, and source/input/output relationships; its receipt hashes raw document bytes. Artifact manifests may contain zero artifacts for verification-only runs with actual outcome. For multiple runs, index immutable per-run receipts and use aggregate manifests as the three canonical references, never overwritten last-run-only evidence.

`mode: none` permits only work without assigned writing verification/build, such as genuinely observational checks; null fields never satisfy an isolated-build obligation. Record proof of actual read-only effects and limitations. Collection itself writes only owned evidence. Path isolation, completeness, accepted limits, equality, lineage and permissions are mandatory semantic acceptance checks, not schema guarantees.

## Evidence retrieval, retention and append safety

job.md indexes every immutable item/checkpoint with exact locator, raw digest, source/job/task/dispatch/event identity, capture time, classification, authorized readers/writers, observed retrieval method/time/result, retention owner/deadline/control and actual ACL/retention receipts. Use accepted policy evidence.store/location/retention_days; relative locators resolve from JOB_DIR, external/CI locators need a documented authenticated resolver and immutable object/run identity. No credential-bearing locators. Independently retrievable context is required; an inaccessible private link or expiring CI URL alone cannot support a gate.

Before accepting and immediately before relying on evidence, retrieve bytes, compare trusted frozen digests, verify authentic provenance and intended reader access, inspect writer privilege and prove retention through the declared period and required rollout/recovery window. Manual local retention needs a responsible owner, protected storage/backup and documented retrieval/deletion process; never invent TTL enforcement. Missing retrieval, revoked ACL, expired retention, mutable substitution or unverifiable source invalidates affected claims and requires recollection/reverification, not silent receipt replacement. Digests do not prove authorship or prevent replacement of both report and hash.

Single-owner serialized lifecycle appends under [WORKER_CONTRACT.md](../agents/WORKER_CONTRACT.md) remain mandatory. Before append/replacement, read last accepted event/revision and expected raw digest, preserve a trusted immutable prior snapshot, and use real host atomic replacement/conditional write or exclusive fencing where available. Read back/validate complete persisted payloads before accepting. Divergent tails/digests block reconciliation; never merge concurrent tails, overwrite accepted events, use mtime as identity or infer atomicity from Markdown. Preserve/index interrupted partial records and reconcile through existing recovery. Checkpoints are immutable indexed snapshots with exact self-excluded receipt paths; new checkpoints never rewrite old digests.

```json
{
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "title": "GSF candidate manifest",
  "type": "object",
  "additionalProperties": false,
  "required": ["version", "anchor_commit", "candidate_id", "policy_id", "entries", "evidence_paths", "collection", "verification_workspace"],
  "properties": {
    "version": {"const": 2},
    "anchor_commit": {"type": "string", "pattern": "^[0-9a-f]{40,64}$"},
    "candidate_id": {"$ref": "#/$defs/hash"},
    "policy_id": {"$ref": "#/$defs/hash"},
    "evidence_paths": {"type": "array", "uniqueItems": true, "items": {"$ref": "#/$defs/path"}},
    "collection": {
      "type": "object", "additionalProperties": false,
      "required": ["procedure", "limits", "measured", "evidence"],
      "properties": {
        "procedure": {"$ref": "#/$defs/text"},
        "limits": {
          "type": "object", "additionalProperties": false, "required": ["max_entries", "max_bytes", "max_elapsed_seconds"],
          "properties": {"max_entries": {"type": "integer", "minimum": 1}, "max_bytes": {"type": "integer", "minimum": 1}, "max_elapsed_seconds": {"type": "integer", "minimum": 1}}
        },
        "measured": {
          "type": "object", "additionalProperties": false, "required": ["entries", "bytes", "elapsed_seconds"],
          "properties": {"entries": {"type": "integer", "minimum": 0}, "bytes": {"type": "integer", "minimum": 0}, "elapsed_seconds": {"type": "integer", "minimum": 0}}
        },
        "evidence": {"type": "array", "minItems": 1, "items": {"$ref": "#/$defs/receipt"}}
      }
    },
    "verification_workspace": {
      "type": "object", "additionalProperties": false,
      "required": ["mode", "root", "source_candidate_id", "input_manifest", "output_manifest", "artifact_manifest", "evidence"],
      "properties": {
        "mode": {"enum": ["none", "isolated"]},
        "root": {"oneOf": [{"$ref": "#/$defs/text"}, {"type": "null"}]},
        "source_candidate_id": {"oneOf": [{"$ref": "#/$defs/hash"}, {"type": "null"}]},
        "input_manifest": {"oneOf": [{"$ref": "#/$defs/receipt"}, {"type": "null"}]},
        "output_manifest": {"oneOf": [{"$ref": "#/$defs/receipt"}, {"type": "null"}]},
        "artifact_manifest": {"oneOf": [{"$ref": "#/$defs/receipt"}, {"type": "null"}]},
        "evidence": {"type": "array", "minItems": 1, "items": {"$ref": "#/$defs/receipt"}}
      },
      "allOf": [
        {"if": {"properties": {"mode": {"const": "isolated"}}}, "then": {"properties": {
          "root": {"$ref": "#/$defs/text"}, "source_candidate_id": {"$ref": "#/$defs/hash"},
          "input_manifest": {"$ref": "#/$defs/receipt"}, "output_manifest": {"$ref": "#/$defs/receipt"}, "artifact_manifest": {"$ref": "#/$defs/receipt"}
        }}, "else": {"properties": {"root": {"type": "null"}, "source_candidate_id": {"type": "null"}, "input_manifest": {"type": "null"}, "output_manifest": {"type": "null"}, "artifact_manifest": {"type": "null"}}}}
      ]
    },
    "entries": {
      "type": "array",
      "items": {
        "type": "object", "additionalProperties": false,
        "required": ["path", "type", "mode", "size", "digest", "target"],
        "properties": {
          "path": {"$ref": "#/$defs/path"},
          "type": {"enum": ["file", "symlink", "directory", "deleted", "gitlink"]},
          "mode": {"type": "string", "pattern": "^[0-7]{6}$"},
          "size": {"type": "integer", "minimum": 0},
          "digest": {"oneOf": [{"$ref": "#/$defs/hash"}, {"type": "null"}]},
          "target": {"type": ["string", "null"]}
        },
        "allOf": [
          {"if": {"properties": {"type": {"enum": ["file", "symlink"]}}}, "then": {"properties": {"digest": {"$ref": "#/$defs/hash"}}}},
          {"if": {"properties": {"type": {"enum": ["directory", "deleted", "gitlink"]}}}, "then": {"properties": {"digest": {"type": "null"}, "size": {"const": 0}}}},
          {"if": {"properties": {"type": {"enum": ["symlink", "gitlink"]}}}, "then": {"properties": {"target": {"type": "string", "minLength": 1}}}, "else": {"properties": {"target": {"type": "null"}}}}
        ]
      }
    }
  },
  "$defs": {
    "text": {"type": "string", "minLength": 1, "pattern": "\\S"},
    "receipt": {
      "type": "object", "additionalProperties": false, "required": ["locator", "digest", "observed_at"],
      "properties": {"locator": {"$ref": "#/$defs/text"}, "digest": {"$ref": "#/$defs/hash"}, "observed_at": {"type": "string", "format": "date-time"}}
    },
    "hash": {"type": "string", "pattern": "^sha256:[0-9a-f]{64}$"},
    "path": {"type": "string", "minLength": 1, "pattern": "^(?![/\\\\]|[A-Za-z]:)(?!.*(?:^|/)\\.\\.(?:/|$))(?!.*\\\\).+$"}
  }
}
```
