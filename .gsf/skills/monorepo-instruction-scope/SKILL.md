---
name: monorepo-instruction-scope
description: Review directory, subtree and native glob instruction applicability across a finite monorepo path set, export and dispatch, preserving source scope and blocking unproved host translations or loading.
---

# Monorepo instruction scope

## Role

Act as a bounded scope reviewer for one accepted monorepo task, export proposal or dispatch. Determine which whole instructions apply to each exact source path and recipient. Do not implement a matcher, rewrite rules, export files or dispatch agents. [Effective-instruction-review](../effective-instruction-review/SKILL.md) owns complete authority/precedence review; [context-packet](../context-packet/SKILL.md) owns assignments and the [worker contract](../../agents/WORKER_CONTRACT.md) owns authority and lifecycle.

Follow [native package/export guidance](../../docs/hosts/plugin-export.md) for separately authorized export and [host adapters](../../docs/hosts/README.md) for actual frontend/version support. This skill supplies a usable manual match-and-loss decision, not a universal glob dialect or portable host policy. Direct questions remain no-write; dispatch writes only its owned report using the [response template](../../templates/response-template.md).

## Context

Obtain the accepted project/repository/worktree/revision, exact source root and starting directory, finite changed/read/dependency path inventory, named instruction sources and revisions, actual source and destination host/frontend/version, destination layout proposal, intended recipient and approved public/sanitized settings or loading receipts. Include new files, deletions, rename old/new names and out-of-subtree callers explicitly; a diff-only path list may not cover a cross-component task.

Bind each rule to its authentic authority, original scope directory, raw pattern(s), exclusions, trigger, whole source and approved reader. Agree finite files/patterns/bytes/review-time limits and allowed report destination. Use only named approved public/sanitized material; never scan HOME, private host state or unrelated repositories. A directory name or current native setting proves neither policy authority nor loading.

## Task

### 1. Freeze source applicability before export

1. Separate repository-wide mandatory authorities from directory inheritance, native glob selectors, relevance/manual-only rules and ordinary referenced data. Preserve the complete worker/role/mode/policy/constraints/task obligations independently of optional path rules.
2. Resolve each supplied path against the accepted root using existing approved path-identity evidence. Keep logical source path distinct from a physical worktree/export path. Ambiguous case, separator, symlink/junction, alias, linked outside target or uncertain root is an unresolved identity boundary; do not silently normalize it into scope or follow it.
3. Establish the source host's actual documented matching base, separator/case behavior, `*` versus `**`, root anchoring, dotfiles, braces/classes/escaping, multiple patterns, exclusions/negation and malformed-pattern behavior **where used by these patterns**. Also establish directory inheritance and when selection occurs: launch cwd, file access, matching file in context, manual invocation or another documented trigger. Unsupported syntax or unknown behavior blocks the affected match; do not import Git-ignore, shell or another host's semantics.
4. Use [the dated primary-source comparison in effective-instruction-review](../effective-instruction-review/SKILL.md#2-establish-exact-host-semantics-without-guessing) and inspect the exact host version's sources. For example, the rolling [Cursor rules guide](https://cursor.com/docs/rules) describes `*.ts` as root-only, whereas the rolling [Claude rule guide](https://code.claude.com/docs/en/memory#path-specific-rules) describes `*.md` as matching anywhere under its base and `/*.md` as direct-only. These sources were read 2026-11-09, not qualification of an installed build. Similar spelling cannot justify translating one pattern into the other. [Copilot's GitHub guide](https://docs.github.com/en/copilot/how-tos/copilot-on-github/customize-copilot/add-custom-instructions/add-repository-instructions) likewise has its own `applyTo` and surface support; [Codex's guide](https://developers.openai.com/codex/guides/agents-md/) describes a starting-directory chain rather than universal file-triggered globs.
5. Build the matrix below by applying only established semantics to the finite accepted path set. For complex patterns require an already available authorized native match/explanation receipt, or report unresolved; do not write/run a custom matcher. A manual result is a reasoned scope finding, not a native loader receipt.

### 2. Review each export or relocation boundary

1. Keep original canonical project/revision/path and scope anchor attached to the complete instruction. A wrapper's location, skill frontmatter or copied parent directory does not transplant native semantics. Export approval, activation and actual effective policy remain separate.
2. Compare source and proposed destination applicability for **every** accepted path and rule, including expected nonmatches. Account for changed root, flattening, renamed directories, relative links/imports, fallback names, exclusions and scope-trigger timing. Do not automatically prepend a prefix, replace `**`, invert exclusions or convert host fields.
3. A documented native translation can be proposed only with an explicit reviewed mapping and authentic scope-owner acceptance preserving the full intended match/nonmatch set and all mandatory content. Finite examples support the finite reviewed set, not equivalence over every possible path. If future/new-path scope must be preserved but universal behavior is unproved, block that portability claim.
4. If the target lacks a scoped-rule mechanism, a bounded manual read instruction in an accepted packet may preserve the finite task obligation: name exactly which full source each recipient must read before each affected action. Label this manual packet scope, **not** equivalent native scoped activation. Do not broaden a subtree-only rule to a global always-rule to make export appear successful.
5. Record losses, unrepresentable constructs and unsupported target versions before any separate export owner acts. Retain the original proposal; no writes, installation or host setup occur here.

### 3. Preserve scope across dispatch and continuation

1. Partition the accepted finite path set by actual instruction closure, not merely team directories. For a task touching two subtrees include both complete applicable sets, common mandatory authorities and their conflicts; do not apply one team's narrower permissions to the other.
2. Give the coordinator a task-keyed path-to-authority matrix for the existing five-pillar packet. Supply original canonical references and scope anchors with exact source/version/pins and recipient retrieval requirements. Whole mandatory instructions must be loaded/read before action; scope labels or a link alone do not establish this.
3. Compare actual recipient cwd/root, host/frontend/version and loaded/read evidence against the proposal. A parent's loaded rules do not prove a worker inherited them. Native selection unknown means unknown, not assumed identical dispatch scope. Hold actions requiring missing rules and name the source/host/dispatch owner.
4. When a task expands, a file is renamed, a new caller appears or root/host/source/settings/recipient changes, recompute the affected finite rows before that action and use the existing coordinator's fresh-assignment/reconciliation process. Preserve completed frozen assignments and original findings; no live packet rewrite by a worker.

### 4. Decide the bounded result

A scope row is accepted for this review only if exact path identity, authority, documented/native-supported semantics and complete applicable content are established, and export/recipient changes preserve the accepted predicate. Observed broadened/narrowed scope or lost content is NOT_MET. Unknown dialect, loader, source, root or mapping is BLOCKED. Authentic higher-trust conflict resolution follows effective-instruction-review, not a “most specific wins” invention. This review authorizes neither export nor dispatch and proves no sandbox.

## Constraints

No new config format, canonical scope schema, code, matcher, native probe, source/host execution, private scan, automatic export or blanket glob translation. Markdown does not enforce path containment, least privilege or native loading. Sanitized settings cannot establish the complete original source. Preserve all mandatory authorities and unknown scope; never treat an uninspected subtree as exempt. Finish independent finite rows without claiming whole-repository coverage.

## Format

Return the accepted source/target/recipient identities, exact finite inventory and exclusions, source-backed semantics/version/date, original whole-source references and this report-local matrix:

| Logical source path (old/new where relevant) | Rule/source revision and original base/pattern | Expected match/nonmatch/unknown and documented reason | Export destination/recipient result and actual read/loading evidence | MET / NOT_MET / BLOCKED; owner/action |
| --- | --- | --- | --- | --- |

State scope-review completion, finite-set mapping, general portability and recipient readiness separately. Report NOT RUN effects, actual modifications (normally `[]`), retention and invalidation conditions. Route accepted findings through the existing context packet/decision owner, not a second scope registry.

### Manual consumer cases — illustrative, NOT RUN

- A change spans `services/payments/a.ts` and `services/catalog/b.ts`. Retain common full authorities plus both subtree closures; one worker's cwd in payments does not prove catalog instructions loaded.
- Copying a Cursor `*.ts` selector into a Claude path rule appears syntactically plausible but can widen matches. Mark native translation blocked until exact-version semantics and approved mapping establish the required set; no blind rewrite.
- A file moves outside a subtree while its rule stays behind. Review both old and new names, dependencies and export anchors; do not keep the old match by filename intuition.
- A recipient has a different starting directory or no loader receipt. Preserve the expected match matrix and require complete approved reads where permitted; native inheritance stays unknown and dependent automatic-loading acceptance remains blocked.
- A finite dispatch has established matches and whole-source read receipts. Accept only that bounded manual handoff; do not claim a universal monorepo matcher, exported policy activation or future-path equivalence.
