---
name: verify-gsf
description: Verify the Markdown-only GSF distribution, policy and lifecycle contracts, and actual coordinator/worker behavior with isolated positive and negative scenarios before publication.
disable-model-invocation: true
---

# Verify GSF

## Inputs and authority

Read the requested scope, repository-root-relative `.gsf/GSF_CONFIG.md`, the configured constraints/worker contract, and the [scenario matrix](references/scenarios.md). Read the canonical state contracts in repository-root `.gsf/state/`. Missing/invalid canonical policy grants no authority; never fall back to an old root-level policy. Use real host filesystem, shell, delegation and forge capabilities; no GSF executable or scheduled service exists. This skill is an assignable `kind: skill` check, not permission to edit policy or publish.

A structural check alone is not complete behavioral verification. Report each requested scenario PASS, FAIL or BLOCKED with actual receipts; never turn an unexercised case into PASS. Run checks only after writers finish. Keep all scratch products outside the source repository; no products or executable validation scripts are installed into GSF.

## Structural pass

1. Inventory delivered source files, excluding Git internals and narrowly ignored runtime evidence. In the distributed GSF repository, require `README.md` as the only root project file and `.gsf/` as the only project directory; `.git` administration stays intact. All other delivered project files, including policy, guides and docs, belong under `.gsf/`. Every operational framework file must end in `.md`; `.gsf/.gitignore` is the explicit Git exception, with ignore patterns scoped relative to `.gsf/` and narrowly excluding local runtime evidence without hiding policy/source. Reject a root `.gitignore`, bundled executables, generated test products, duplicate legacy formats, and operational names inherited from another product. Preserve truthful source provenance and license text. This distribution layout requirement does not require moving a host product's unrelated files when GSF is embedded.
2. Parse every skill's YAML frontmatter with an available parser. Require matching directory/name, nonempty trigger description, and boolean `disable-model-invocation`. Check that all skill-relative Markdown references resolve. Inspect semantic references and role names too, not just hyperlink syntax.
3. Read the single canonical YAML policy block. Read the single canonical JSON Schema block in each state format contract. Use a real available YAML parser and Draft 2020-12 validator to check parsed data; if these tools are absent, record that validation is blocked rather than replacing it with a visual claim. Reject duplicate YAML keys, multiple canonical blocks, non-finite/unsupported scalar types, malformed booleans, unknown fields, repository-escaping paths, and missing mandatory checks/reviewers. Version/schema correspondence must match.
4. Exercise boundary payloads: unsafe paths, a string instead of a permission boolean, empty checks, missing mandatory reviewer, invalid task status, missing dispatch on lifecycle event, wrong report origin, and invalid model panel/pool. Schema validity does not prove graph semantics, path containment through junctions, event sender authority, or model entitlement; inspect those separately under their contracts.
5. Verify all five role pillars and all 23 playbook categories. Walk actual routes for new behavior, read-only investigation, unavailable delegation, pause, resume and publication denial. One normative worker/policy contract governs them; copied or conflicting rules fail this check.

## Launch / doctor / drive

1. Allocate an owned scratch repository with a real small CLI or other available surface and documented runtime. Copy the actual GSF instructions and create an accepted product policy there; no copying local jobs or private model preferences. Record the fixture root and exact source/candidate identity.
2. Establish readiness with the actual runtime and meaningful product checks. Distinguish application readiness from a process merely existing. Initialize a concrete job, then cold-resume it without overwriting evidence. Also exercise customized policy/agent/skill/template/job paths with default copies absent.
3. Follow the real coordinator → intake → specification → builder → checks → independent code/security review → approver sequence. Use separate actual worker contexts for implementation and independent review, record host handles plus GSF IDs, inspect their artifacts, and do not substitute a throwaway simulated dispatcher for real dispatch. Coordinator-permitted serial roles must be labeled honestly; required independence still needs an independent context.
4. Drive the changed CLI/API/UI path yourself and execute every configured check with its exact working directory. Capture actual output/exit status and source snapshot before and after. Require reviewer PASS and approver APPROVE for the same candidate. With publication disabled, the correct positive result is an approved local handoff and no external action.
5. Exercise the matrix's negative and interrupted-state cases against actual on-disk artifacts. Preserve baseline evidence, perturb only owned scratch copies, follow reconciliation, and record dispositions. An executable scratch probe may assist observation but does not establish an installed enforcement runtime.
6. Exercise support-skill semantics from the matrix on concrete inputs: previous-answer rewrite, prompt sharpening without execution, verify-map maintenance, recall privacy, reflection proposal-only behavior and truthful source-comment review. Record the actual result, not source-text keyword matches. Exercise optional platform/media/formal-check capabilities only with a real available tool; otherwise list them as not exercised rather than covered by the CLI.

## Evidence and cleanup

Record host/runtime versions, scenario, concrete input, candidate/policy identity, actual command or task receipt, expected/observed behavior, outcome, and limitations in a Markdown report. Evidence-only appends must not alter candidate identity; source additions/edits/deletions must. An updated instruction is part of the candidate and invalidates its previous check.

Use job-local Markdown evidence, ignored by default. A requested committed verification report contains sanitized durable results and sufficient fixture/task instructions to reproduce them; do not publish absolute private paths, secrets, or invented retained artifact links. Destroy only the scratch directories/processes you created after preserving the necessary receipts. Git metadata, user worktrees, and unrelated processes are never cleanup targets.

## Gate and output

Return the scenario table, actual evidence, gaps and final PASS/FAIL/BLOCKED. Framework check PASS requires structural/boundary checks and the required core lifecycle scenarios; unavailable core delegation/review is BLOCKED. Media/formal/OS-specific scenarios remain explicit capability limits unless required by the task. A future reference revision or changed candidate needs a new check; no universal or permanent reliability guarantee is implied.
