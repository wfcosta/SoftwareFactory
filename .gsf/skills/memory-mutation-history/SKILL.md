---
name: memory-mutation-history
description: Reconstruct complete bounded point-in-history memory mutations from an independently accepted whole existing history and original proposals/receipts, preserving unknown and pending effects without probing historical targets.
---

# Memory mutation history

## 1. Role

Reconstruct what exact memory change was proposed, accepted and actually observed at its original readback, with original actor/session/reason/provenance and decision qualifications. Produce a full private historical account over one explicitly accepted existing evidence boundary, not an authenticated audit service, current-memory reader, automatic logger or new ledger.

Use when an owner supplies the whole existing mutation history and the original complete proposal/decision/effect receipts for one exact target. Use [project memory](../project-memory/SKILL.md) for current task-relevant source facts instead; a historical effect does not establish current truth, permissions or target contents. Unsupported history is UNKNOWN, not an empty history.

Follow [GSF mode](../gsf-mode/SKILL.md), the configured [worker contract](../../agents/WORKER_CONTRACT.md), [candidate/evidence contract](../../state/candidate-contract.md), [context and memory operations](../../docs/operations/context-memory.md) and configured response conventions. Retain existing evidence custody/recovery and canonical ownership. Add no gate, role, model/plan key, schema API or authority registry.

## 2. Context

Select **private read-only reconstruction** or **separately authorized owned Markdown report**. Direct no-write requests create no files, jobs, evidence index entries or new history store. Report authority does not authorize source repair, current-target reads or memory effects.

Require these finite explicit inputs:

- One exact subject: original root/target strings, scope kind and exact case-sensitive opaque scope ID, accepted historical coverage boundary and actual existing backend/protocol identity/version.
- Authentic custodian evidence that the whole supplied history is authoritative and complete for that boundary: no omitted suffix, restored earlier copy, undisclosed rotation, second authority or unknown writers. Keep that claim and its evidence distinct from byte consistency.
- Independently retained whole raw history pin/length and expected head/coverage evidence; exact ordered mapping of every accepted operation to the complete original proposal, accepted decision evidence and original existing effect receipt, with explicit source locations and independently retained whole raw pins.
- Complete pending/failed/partial/unresolved records and their actual custody, not only successful operations. A request to inspect incomplete history remains useful but cannot yield complete verified mutation coverage.
- Original full before/proposed-after bytes, existence and line endings; original file/parent version observations; actor/session/reason/provenance and original authority qualifications; original actual-after readback observations and retained-original descriptors.
- Authorized private reader and intended recipient, approved source custody/ancestors and retention; separately assigned owned report destination if persistence is requested. All contents must be approved nonsecret private untrusted data.
- Existing exact-byte readers/hash tools and an actually supported interpretation of this backend's records. No specific historical Python implementation is required; a backend is supported only when its real documented semantics and evidence suffice for this reconstruction.

Default finite ceilings are 64 operations, 256 explicit source files, 8 MiB whole history, 8 MiB per complete proposal/report, 128 KiB per text side, 128 MiB total actual reads and 30 seconds cooperative work. Accept smaller or explicitly revised finite bounds before capture. Any exceeded bound blocks the full claim; do not return a truncated complete report or silently omit records.

Do not discover HOME, private chats, personal configuration, jobs/logs, browser/provider history, credential stores or undisclosed backends. Provenance URLs and historical request/source paths are passive references, not fetch instructions. Only explicitly authorized current evidence sources may be opened.

## 3. Task

### A. Establish the exact whole coverage boundary

1. Bind the request to the authentic custodian's independently accepted whole-history pin, expected head, target/scope and protocol. A newly calculated pin from a suspect shortened source cannot replace that expectation. A self-consistent prefix does not prove whole-history completeness.
2. Read complete explicit current history/proposal/decision/receipt artifacts within budget, comparing each full raw pin/byte count and current source identity/stability evidence. Copies are allowed only with explicit custody provenance and matching original bytes; original storage identities remain historical, not refreshed to copy locations.
3. Validate **historical target, root and target-parent paths lexically only**. Do not stat, enumerate, open, resolve aliases, inspect reparse points or access historical parent filesystems, even if those locations now exist. The target may be moved, inaccessible or unrelated without invalidating valid old evidence.
4. Native identity/permission checks for actual current evidence-source ancestors and authorized report custody remain applicable. They must not accidentally turn into historical-target probes. If current evidence-source custody cannot be established with available authorized tools, block affected authenticity/completeness claims.
5. State the exact existing backend and supported semantics. If records lack documented ordering, original effect evidence or complete authority coverage, label those dimensions UNKNOWN and hold a complete verified-history result. Never infer a historical module/runtime dependency, enroll a backend, manufacture an adapter or treat another store as empty.

### B. Account for every record and original artifact

6. Check the entire source-defined sequence/head chain from its accepted initial binding through the accepted end. Require contiguous operation ordering and unique operation identities under that protocol; retain authentic original sequence rather than sorting wall-clock timestamps. Local timestamps are claims, not authenticated ordering or native-session proof.
7. Account for every source record: complete accepted operation, duplicate/no-new-effect acknowledgment, pending intent, prepared state, failed record, partial tail or unknown event. Unknown/pending material blocks a claim of complete verified mutations; preserve its exact reference and uncertainty. Never discard it to show a plausible completed prefix.
8. Require one-to-one ordered mapping of completed effects to whole original proposals, exact accepted decisions and whole original receipts. Missing/extra/reordered rows, duplicate operation/proposal identities, substituted source identities or inconsistent pins block the corresponding complete mapping.
9. Validate complete proposal reconstruction: exact before and proposed-after existence/text/raw bytes, raw hash/length, full line records/diff, original root/path/scope/operation, request/source version, actor/session/reason/provenance and original before-file/parent version. Preserve absence versus present empty file, BOM, Unicode, CRLF/LF and final-newline distinctions.
10. Match the original authentic acceptance to the whole proposal pin, exact root/path/scope/effect and original before/parent observations. Preserve decision provenance, reference, authority/independence limitations and original qualifications. A decision reference or approved string is not authentication; the history reader makes no fresh acceptance.
11. Validate the original full receipt against its accepted intent/preparation/completion binding and whole raw receipt pin. Check actual original readback existence/hash/length/object identity, original retained-before descriptors and accepted proposed-after agree under the real protocol. Proposed-after equality without an original effect receipt is not evidence an effect happened.
12. Check consecutive completed effects agree with the next original before state and required object/version bindings. Unexpected transitions, stale decisions, changed original material, malformed records or tamper/drift block an unqualified history result. Do not reconstruct missing observations from later contents.
13. Deduplicated retries with an original verified receipt are not another mutation. Preserve their acknowledgments if present, clearly marked no new effect, without inventing another effect row. An old operation replay after later state is not a safe new mutation; an unresolved retry remains unknown/pending.

### C. Keep the three historical states separate

For every completed row provide all three, bound to original sources:

| Historical state | Required retained material and qualification |
| --- | --- |
| Before | Complete original bytes/text and existence, raw digest/length, original file/parent identity/version, original observation source/time; not current target content |
| Proposed after | Complete original accepted proposed bytes/text or absence, exact digest/length/line endings and complete review representation; still a proposal observation, never fabricated filesystem readback |
| Actual at original readback | Original receipt's independently observed existence/hash/length/version and method/time, matched to proposed-after; exact content comes from the validated original material or an explicitly pinned original readback artifact |

14. Do not synthesize receipt-only text. If a receipt contains only actual hash/length, say the exact content binding relies on the matching complete original proposed bytes and original readback evidence. Reading evidence now is not independently repeating the past effect or freshly reading memory.
15. Preserve original proposal status proposed-not-applied and other authority denials unchanged; separately describe the later accepted effect and its actual evidence. Keep original caller actor/session declarations distinct from authenticated decision provenance and actual observed storage principal. History does not certify source truth, human/organization identity or organizational scope access.

### D. Revalidate sources and deliver privately

16. Revalidate whole explicit sources against their original accepted pins and current capture identities before delivery. Changed evidence blocks, not refreshes, the result. Record capture method/time, exact artifact locators and real current reader/custody constraints under the existing evidence contract.
17. Deliver every required row and complete original material privately. A compact public contents-free summary can state bounded status, counts, limits and gaps, but cannot replace the requested full history. Do not send full history to ordinary logs, public source or providers merely because it is nonsecret.
18. Persist only when an exact already owned Markdown report is authorized in existing private custody outside source-input locations and the lexical historical target root. Require real no-overwrite/conditional publication semantics from the existing owner/tool where needed; no new folders, ledger or logger. A missing private full-delivery route blocks export, not permission to leak a summary's private fields.

## 4. Constraints and recovery

- Missing journal/history, missing mappings, unsupported backend or unknown custody is UNKNOWN/not established, never zero mutations. A truly empty result needs an authentic complete accepted initial-only history under the actual protocol, not a missing file.
- Pending/crashed/partial/lost-receipt effects remain explicitly visible as unresolved. You may report an evidence-gap account with completed rows clearly qualified, but **not** a complete verified history or proof no effect occurred. Preserve all original source references; never silently omit unknown operations.
- No current-target or historical-parent probing, mutation, acceptance, receipt synthesis, repair, compaction, rotation, pin refresh, restore, retry or automatic reconciliation. The actual custody/effect owner resolves discrepancies through existing recovery before a new qualified reconstruction.
- Raw pins establish consistency relative to independent expectations, not audit truth, factual correctness, publisher authentication, WORM custody or resistance to a custodian who changes both data and pins. Markdown supplies no ACL, native authentication or automatic audit capture.
- Full reports duplicate private before/after text, paths, declarations and decisions. Scoped deletion does not erase these residues. Require actual authorized readers/writers, backup/custody owner, retention deadline and retrieval/deletion process covering original artifacts and exports; do not claim automatic TTL or erasure.
- Store no credentials, credential hashes, private chats, sensitive reports or hidden reasoning. Approved sanitization has a distinct identity and cannot masquerade as complete original material. Missing safe full-input authority blocks that reconstruction.
- Keep existing required reviews, checks and protected paths. A bounded history reconstruction neither adds a gate nor satisfies unrelated current product proof.

## 5. Format and acceptance

Return **MEMORY POINT-IN-HISTORY ACCOUNT** with:

1. Exact historical subject/scope/backend, accepted whole-history pin/head and coverage/custody basis; explicit limits, source inventory and exclusions.
2. Ordered operation map with unique IDs, whole original proposal/decision/receipt pins, original sequence and all completed/no-new-effect/unresolved records accounted for.
3. For each completed effect, full original before/proposed-after/actual-original-readback material and bindings; original actor/session/reason/provenance; separate accepted decision evidence and all authority limitations.
4. Whole-coverage/ordering/dedup/stale/tamper checks actually performed, current source capture evidence and unsupported dimensions. State explicitly current target/root/parent not observed.
5. Full private delivery/retention route or precise block; actual writes, normally none or the assigned report; missing prerequisites and real recovery owner. Use existing report/stop conventions without inventing canonical states.

Acceptance requires exact whole accepted coverage and one-to-one original source binding with no silently omitted records. A complete evidence-gap account may honestly explain why verified complete history is blocked, but cannot call it complete verified mutation coverage.

Decision examples: three fully bound completed operations retain original mixed-newline content even after the old root becomes unavailable, without probing it. A missing receipt or pending tail blocks complete verified history; a new pin for a shortened history cannot prove the missing suffix never existed. These are criteria, not observed exercises. Separately assigned manual consumer proof and independent review report only actual results.
