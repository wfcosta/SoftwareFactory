---
name: large-output-offload
description: Plan or review complete large-output retention in an existing owned approved native artifact location, with bounded capture, exact byte identity, intended-reader readback and a small recoverable locator rather than silent truncation.
---

# Large output offload

## Role

Act as an output-custody reviewer or, only under a separate explicit assignment, the bounded custodian of one native artifact. Keep large authorized output recoverable while handing the consumer a small locator and honest completeness statement. This Markdown procedure creates no storage service, capture wrapper, renderer or automatic offloader.

Follow the [worker contract](../../agents/WORKER_CONTRACT.md), [evidence custody and retention owner](../../docs/operations/README.md), [evidence boundaries](../../docs/operations/evidence-boundaries.md) and [provider-evidence-review](../provider-evidence-review/SKILL.md). [Context-packet](../context-packet/SKILL.md) owns packet inclusion; [compaction-audit](../compaction-audit/SKILL.md) owns preservation review and [cold-resume-review](../cold-resume-review/SKILL.md) owns actual continuation reconciliation.

Direct read-only requests return a decision without files/downloads/sentinels. A dispatched reviewer writes only its assigned report through the [response template](../../templates/response-template.md). Actual artifact capture/upload/copy requires distinct authority naming that exact owned destination and real native tools; reading this skill does not authorize an output-producing operation or persistence.

## Context

Before producing or retaining output, obtain:

- Exact accepted purpose/criterion, producer/tool/build, source identity/revision, operation/run/attempt and output stream/artifact identity, intended recipient and classification. Distinguish stdout/stderr or multiple members and ordering if the claim needs them; an interleaved display cannot reconstruct missing original stream boundaries.
- Authentic authority for the producer's complete nested effects, capturing this output, retaining/disclosing its bytes and the exact reader/audience. No private transcript, chat/history export, credential file, signed access URL or unrelated sensitive data is an offload input. Where diagnostics can contain secrets, require an existing approved collection/sanitization boundary before any ordinary artifact is written.
- An **existing approved owned native artifact facility** and exact destination identity under accepted job/CI/external-store custody: actual provider/tenant/repository/run/artifact or object version, or approved local parent/path and custodian. Do not always create a new store, select a global directory or assume a temporary host spill is durable.
- Native support/version and actual limits for complete producer output, capture bytes, allocation/streaming, compression/decompression if used, object/member count and size, upload/download/readback, elapsed time, context response, retention and access. Agree finite accepted tighter limits, attempts and observable cost where applicable. Missing mandatory preallocation/capture limits blocks production/capture rather than permitting a model to count bytes after an unbounded read.
- Existing real byte hashing, complete raw readback and artifact identity/ownership/no-replace or conditional-write controls where required; current ACL evidence and intended-reader retrieval authority; retention deadline, deletion/legal-hold policy, backup expectations and recovery owner. A path, returned URL or configuration declaration does not prove these controls.

Inspect only explicitly approved public/sanitized metadata and named artifacts. No HOME, private host logs/history, credential discovery or source/host execution is implied by a custody review.

## Task

### 1. Make the pre-output custody decision

1. Define the expected **whole output predicate** before capture: exact completed producer/run/attempt, all required streams/pages/members and completion markers/status under that producer's actual contract. Successful exit alone need not establish complete output; native truncation, partial pages or dropped stream data remain gaps.
2. Choose the accepted facility already owned for this work using evidence-custody rules. An existing immutable artifact may be referenced without recopying if identity, access and retention satisfy the task. A mutable approved destination needs real conditional-write/version control and exclusive ownership where required. A separately authorized new object needs a nonexisting disjoint name and native no-replace evidence; no blanket overwrite or always-new-store rule.
3. Compare accepted complete-output bounds with actual producer/capture/store/retrieval limits, including framing and compression expansion. If the output cannot be retained whole, stop the dependent production/acceptance claim and name the native capacity or authentically smaller accepted output scope needed. Do not clip output, split it without an accepted complete manifest/order and native controls, or raise limits by assertion.
4. If a host already returned a spill/artifact reference, treat it as a candidate locator only. Establish exact ownership, stability/version, completeness, access and retention before relying on it. Ephemeral tool-internal URIs may be usable for immediate authorized readback but cannot be relabeled durable evidence without actual support.

### 2. Capture or identify the complete native object

1. Only with the separate assigned authority, use the existing advertised native capture/upload facility and exact schema. No executable capture program or new wrapper is introduced. Preserve the actual producer receipt, captured stream/part inventory, completion status, native artifact/object ID/version and upload/commit response.
2. Obtain exact raw byte length and a real SHA-256 of the entire permitted retained object, plus source/raw digest only when actually measured and allowed. Hashing an excerpt, rendered preview, object description or normalized text does not identify original output. Digest agreement is consistency, not publisher authentication or completeness.
3. Preserve raw and sanitized derivatives as distinct objects when both are permitted. Record transformation/tool/version/operator, classification and each object's own digest/length. If raw retention is prohibited, do not create an ordinary raw artifact first; use approved native safe collection or stop. A sanitized artifact can be complete for its explicitly accepted derivative scope, never a byte-identical full raw proof.
4. Retain failed, partial, truncated, overflowed or ambiguous captures as such only when permitted; never mark them whole. If the producer ran but output was lost, do not regenerate it and call it the original. A rerun can cost or repeat external effects and needs its own authority and reconciliation.

### 3. Establish intended-reader recovery before handoff

1. Read back the exact committed native object/version through the actual intended authorized reader context and within the complete retrieval bounds. Compare whole bytes/digest/length to the retained pin and confirm source/run/attempt and all required streams/parts. A listing, HTTP success, first page, preview or the writer reading a local buffer is not full intended-reader recovery proof.
2. Establish actual reader/writer permissions without broadening access or public links. Only a separately authorized existing test identity can exercise a denial; absent such evidence report negative-access proof unknown, never borrow credentials. Signed retrieval URLs stay out of ordinary locators; keep a stable non-secret object reference and the approved authenticated retrieval route.
3. Confirm retention covers the accepted deadline and reader access. For an existing local artifact name the manual custodian, preservation/backup boundary and review/deletion process; label it manual, not native TTL or disaster recovery. Provider expiration shorter than required blocks reliance until the custody owner performs a separately authorized migration with source/destination readback; do not delete the sole copy.
4. Stop affected handoff on digest mismatch, expired/inaccessible object, missing completion, changed ACL/identity or unknown retention. Preserve safe actual failure receipts and name the artifact/native-store owner. If upload acceptance is ambiguous, inspect only the accepted destination/request identity through separately authorized native reads; do not blindly retry or overwrite.

### 4. Hand off a small locator, not a false whole-proof claim

Give the consumer a concise non-secret record: exact immutable artifact identity/version and source/run/attempt; complete versus partial/derivative status; measured whole digest and bytes; required section/stream/member navigation; approved retrieval method, intended reader, owner, retention deadline and evidence-index reference; actual readback receipt and invalidation. Use the existing evidence-reference shape where required, not a new canonical schema or ledger.

Keep exact acceptance, mandatory authorities, critical blocker/ownership/no-replay boundaries and the next required read explicit in the context-packet. Optional preview/summary must be labeled partial and source-bound; it cannot replace the whole artifact when the criterion requires full inspection. Consumer acceptance requires reading the exact necessary **whole** evidence within approved access before drawing a whole-output conclusion. A short locator reduces transport text only; it proves neither that the model consumed the whole output nor token savings, truth, product success or host context capacity.

## Constraints

No always-new storage, arbitrary upload, public sharing, private-transcript copying, secret hashing, native probe, model/provider call, producer rerun, custom truncation/capture code or fabricated receipt. Any native effect requires actual existing capability, separate authentic grant and source-bound receipt. Markdown enforces no byte bound, ACL, durability, atomicity or retention. Missing support is BLOCKED; observed incompleteness is NOT_MET; safe complete custody findings can be delivered without claiming capture ran.

Invalidate affected reliance on producer/run/source, object/version/digest, reader/ACL, native tool/limits, retention/expiry or packet scope changes. Preserve original immutable receipts; recovery/migration/deletion remains with the existing custody owner.

## Format

Return accepted purpose/identities, actual native facility/version/control evidence, exact authority and limits, whole-output predicate, capture/completeness and raw/derivative provenance, readback/ACL/retention findings and the small locator. In the existing assigned report include:

| Required whole-output component | Exact retained native identity/version and measured bytes/pin | Completion plus intended-reader whole readback/access/retention evidence | MET / NOT_MET / BLOCKED; owner/recovery action |
| --- | --- | --- | --- |

Separate artifact retained, complete source captured, intended reader recovered, consumer inspected and task accepted. State actual versus NOT RUN actions and exact modified files. No metadata label is a receipt for an unperformed native action.

### Manual consumer cases — illustrative, NOT RUN

- A tool displays a short preview and a spill URI. Preserve the locator as a candidate, establish approved ownership/limits and whole intended-reader readback; do not call the preview complete output or assume the spill survives the session.
- A complete approved CI artifact already exists with adequate access/retention. Reference its exact run/attempt/artifact identity and verified bytes without copying into a new store.
- A producer exceeded its capture limit. Report partial output and blocked full-output proof; do not silently trim it, hash the prefix as the whole or rerun a possibly effectful producer.
- Writer upload succeeded but the recipient receives access denied or the object expires too soon. Hold dependent acceptance for the custody owner; no public-link workaround.
- A complete bounded object is retained and recovered under the intended reader, with matching whole digest and adequate retention. Hand off a small verified locator; the consumer still reads the required whole material before its substantive verdict.
