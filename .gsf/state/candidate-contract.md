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

Before the first snapshot, freeze exact repository-relative paths for the **active** JOB_DIR's evidence only: job.md, policy.md, grants.md, candidate.md, plan.md, decision.md, issue.md, environment.md, intake.md, spec.md, build.md, checks.md, approval.md, gaps.md, inbox.md, outbox.md, and each explicitly planned canonical specialist/review report. Enumerate exact per-dispatch task.md/report.md/events.md paths and evidence attachments in the job evidence index before excluding them. New dispatch evidence may extend this list only under coordinator authority, with recorded provenance; it may not reclassify source content as evidence. Exclude no other job, no entire jobs root, and no whole `.gsf` subtree. Jobs must live in the configured safe jobs directory, not a source/policy directory. A policy/skill/template/constraint/model-preference file, source file, test, executable or product asset can never be excluded by naming it a report or placing it among attachments. Do not move candidate content into evidence to evade review. If an evidence file becomes a product input, it enters the manifest and requires a new gate.

Also enumerate the active JOB_DIR, its dispatches directory and allocated dispatch evidence directories as exact structural evidence paths. Omit their directory entries only; still traverse them and include any non-allowlisted child in the candidate manifest. This permits lawful creation of report/receipt directories without hashing directory metadata or concealing unexpected content. Do not omit ancestor source directories or a whole subtree. Before final capture, reserve exact report/dispatch paths for checks, reviewers and approval; later evidence-only additions need an authorized allowlist extension and a recorded proof that the candidate entries array is unchanged. If the entries change, it is a new candidate and needs a new gate.

Appending genuine events, acceptance receipts, approval and PR receipts changes evidence identity but not candidate_id. Evidence reports cannot authorize policy changes. Any malicious or materially altered evidence invalidates the **gate decision** even if candidate_id is unchanged; inspect report integrity and accepted lifecycle IDs before relying on them. This separation avoids invalidating a passing candidate merely by recording its approval.

## Policy identity and baseline

Before product edits, persist immutable `policy.md`: exact parsed policy, exact applicable constraint/instruction contents or immutable content-addressed references, active branch instruction revisions, required check skill contents, effective model preferences where applicable, protected-path resolution, baseline permissions and source provenance. Never reload trunk/main instructions over the active branch. policy_id is SHA-256 of canonical JSON of this complete baseline plus ordered accepted scoped grants (the same canonical encoding as above); record its exact input and version. Preserve each baseline and old policy_id. An authorized grant creates a new effective policy version, never mutates history or retroactively excuses an earlier failure. Check/review reports identify both candidate_id and policy_id. A policy mismatch requires re-evaluating all obligations and rerunning affected evidence; an unauthorized change blocks the gate. Candidate policy-file edits remain candidate content but cannot self-amend the baseline.

Record evidence_id separately as the SHA-256 of the sorted list of exact evidence paths and raw-byte digests at a named checkpoint; it is expected to change with lawful appends. Do not put evidence_id into the candidate manifest, policy baseline, or their hashes. Each recorded evidence checkpoint lists its own excluded receipt path to avoid hashing itself. Candidate/report snapshots must not claim atomicity from Markdown alone: serialize writers, use host-supported atomic replacement when available, and reconcile interruptions under WORKER_CONTRACT.md.

```json
{
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "title": "GSF candidate manifest",
  "type": "object",
  "additionalProperties": false,
  "required": ["version", "anchor_commit", "candidate_id", "policy_id", "entries", "evidence_paths"],
  "properties": {
    "version": {"const": 1},
    "anchor_commit": {"type": "string", "pattern": "^[0-9a-f]{40,64}$"},
    "candidate_id": {"$ref": "#/$defs/hash"},
    "policy_id": {"$ref": "#/$defs/hash"},
    "evidence_paths": {"type": "array", "uniqueItems": true, "items": {"$ref": "#/$defs/path"}},
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
    "hash": {"type": "string", "pattern": "^sha256:[0-9a-f]{64}$"},
    "path": {"type": "string", "minLength": 1, "pattern": "^(?![/\\\\]|[A-Za-z]:)(?!.*(?:^|/)\\.\\.(?:/|$))(?!.*\\\\).+$"}
  }
}
```
