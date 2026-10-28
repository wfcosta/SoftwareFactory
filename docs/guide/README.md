# First GSF task

## Install and establish policy

Copy the framework files listed in the [README](../../README.md), preserving the license notice. Do not copy old job evidence, personal model choices or test products. Preserve the application's own configuration; GSF uses [GSF_CONFIG.md](../../GSF_CONFIG.md), not a generic application configuration filename.

The repository's distributed `framework` profile runs `verify-gsf` as a skill check. For a product, accept a `product` policy with actual check commands and working directories, required reviewers, protected paths and explicit permissions. Never use a missing package script as a passing placeholder or inherit a publication grant from an unaccepted template.

```text
Read GSF_CONFIG.md and .gsf/skills/gsf-setup/SKILL.md.
Prepare only this repository's intended product. Discover actual commands
and supported host capabilities, preserve existing policy, and report
missing prerequisites. Do not install dependencies or publish implicitly.
```

Policy/plan/model files each have one canonical YAML block governed by `.gsf/state/` Markdown contracts. A real parser/schema validator is required for a mechanical validation claim. Relationship, ownership, graph and permission checks also follow the normative worker contract.

## Load instructions on your host

Attach/read the actual SKILL.md paths. Slash commands work only after registration through the host's documented skill mechanism. `.gsf/` alone does not register anything in Cursor, Claude Code, Devin or another host. Optional local model preferences live in `.gsf/state/models.md`; unsupported models are not invented or silently substituted.

A terminal/filesystem host can execute CLI/product workflows. UI changes require actual browser/desktop access. Parallelism needs supported delegation; required independent reviews need separate actual contexts. Missing features remain disclosed limits, not simulated tool calls.

## Start one coordinator

```text
Read GSF_CONFIG.md, .gsf/agents/orchestrator.md and
.gsf/skills/gsf-mode/SKILL.md. Fix the login form accepting an invalid
email. Reproduce on the actual form, preserve neighboring behavior,
run configured checks, and obtain mandatory/applicable independent
reviews. Keep publication, merge and deploy denied unless specifically
authorized for this task.
```

The coordinator follows gsf-run to create/resume one exact job, snapshots accepted policy/instructions, establishes actual environment readiness, then dispatches eligible work. It alone owns shared ledgers, plan and canonical stage reports.

1. Intake records scope, product gaps, impact, reviewers, ownership and dependency DAG in its assigned evidence for coordinator promotion to `decision.md` and `plan.md`.
2. Specification freezes observable behavior, verification fixture/surface and authorized change boundaries.
3. Builder executes the selected playbook with exact IDs and owned paths. `gsf-delegate` is a task delegate, not another coordinator.
4. Checks execute every configured command/skill against the identified final candidate and save actual results. Unrun/failed/stale checks block readiness.
5. Independent reviewers inspect the same candidate. Successful execution may return CHANGES; it is not approval.
6. Approver audits the actual complete evidence set. Publication happens only under separate authority; otherwise return an approved local handoff.

Authorized local unit commits require the unit's checks and policy compliance. They do not require pretending the whole job is already approved. Final publication still requires the full gate. Protected tests require scoped authorization; TDD does not override it.

## Read-only work

```text
Read .gsf/skills/gsf-mode/SKILL.md. Explain how session expiry works,
with source evidence. Do not modify files, initialize a job or publish.
```

Direct read-only use answers without filesystem writes. A separately authorized factory investigation can maintain job evidence but does not gain permission to modify/publish product code.

## Resume and suspend

A pickup names the exact saved job, reads the accepted policy/instruction identities, then reconciles invocation receipts, worker liveness, complete events, accepted history and current plan/report projections before effects. Prior chat trails are evidence, not policy authority.

Use `pause-safely` for an explicit pause or a real host-capability suspension. Record exact paths, dirty/untracked content, live/paused workers, unresolved questions, active branch instruction versions and first resume action. Never pretend a watcher remains alive after the host stopped. Unknown writer liveness blocks overlapping retry.

Decision history is append-only `decisions.md`; corrections supersede old decisions. A report append is evidence, not an implementation edit. If the source actually changes, identify a new candidate and invalidate affected checks/reviews.

## Choose the right procedure

| Need | Route |
|---|---|
| Explain how / why / teach | `how`, `why`, `teach`; cited read-only output |
| Recover recent authorized context | `recall`; not a substitute for job reconciliation |
| Rewrite previous answer simply | `bro`; no new work/status invented |
| Strengthen a prompt before sending | `sharpen`; diagnostics and rewrite, not execution |
| New behavior or defect | feature or bug-fix playbook, real surface proof |
| Compare designs / cover independent slices | `arena` / `swarm` with explicit ownership and evidence |
| Keep verification accurate | `maintain-verification-skill`; source plus live coverage |
| Capture learning | `reflect`; proposal before durable instruction edits |
| Write product docs / write a skill | `technical-writing` / authoring-a-skill + `create-skill` |
| Get PR review-ready / land authorized green work | babysit / shipping; separate grants and current-candidate evidence |
| Verify the framework | `verify-gsf` and its scenario matrix |

## Troubleshooting

**Skill not found:** attach the actual file or configure host registration. Do not assume a slash command exists.

**Check cannot run:** record the exact configured entry, directory and observed failure. Fix the real prerequisite with authority; do not remove the check or mark it not applicable to force green.

**No subagents or independent reviewer:** execute permitted serial work honestly; required independent approval stays blocked until actual independent review exists.

**No UI access:** attempt available controls and state the exact missing access. Unit tests do not prove the visible bug disappeared.

**Publication denied:** a verified local handoff is the correct outcome. A publish grant is not a merge/deploy grant; a scoped exception must explicitly name the denied action.

**Interrupted publication:** inspect real forge state before retrying. Absence of a local URL is not proof that no remote effect occurred.

## Remove GSF safely

Pause owned workers, preserve required evidence, remove only identified factory-owned files and explicit host registrations, and run the product's normal checks. Preserve application source, its own configuration, Git history/remotes and unrelated user-level skills. Never delete `.git`, hard-reset history or blanket-clean the repository as an uninstall step.
