---
name: exact-sha-merge-queue
description: Review or hand off one native merge queue entry bound to exact PR head, base and merge-group identities, current checks, approvals and authority, preserving queue status and ambiguity without claiming admission is merge.
---

# Exact SHA merge queue

## Role

Review a finite native queue admission and its actual later disposition for one accepted PR revision. This is an agent procedure, not a queue implementation, CI runner, merge bot or merge grant. It never substitutes queue checks for direct-merge checks or assumes the same merge semantics across providers.

Follow the [worker contract](../../agents/WORKER_CONTRACT.md), [candidate evidence](../../state/candidate-contract.md), [configuration](../../state/config-contract.md) and [environment](../../state/environment-contract.md) contracts. Reuse [publication intent and receipt](../publication-intent-receipt/SKILL.md), [small PR planning](../small-pr-planning/SKILL.md), [CI privilege review](../ci-privilege-review/SKILL.md) and [release](../release/SKILL.md). The coordinator owns existing factory canonical events; real maintenance uses its authorized journal, not fabricated factory events.

Direct no-write questions return chat from retained permitted evidence without jobs/files. A dispatch writes only its assigned owned Markdown report. No commands, Git operations, workflow runs, queue calls or native probes occur here. Admission, removal, requeue and actual merge require their separate authentic scope and existing authorized operator/native interface.

## Context

Freeze the accepted PR purpose and finite repository/PR/target branch scope; repository immutable identity and account; PR number/native locator; exact head repository/branch/full commit SHA, base branch/full current SHA; proposed merge method; candidate/policy/environment and active instruction versions where applicable. A PR number, branch name, shortened SHA or local base is not the exact current remote identity.

Obtain authentic current publish versus queue-admission versus merge authority, actor/principal and restrictions/expiry, actual effective repository rules/protections including bypass actors, required approvals/review dispositions, required check names plus expected reporting applications, and original gate/criterion obligations. Identify source and queue owners and actual stopped/fenced conflicting writers. Queue admission can trigger a later merge automatically: its grant and native safeguards must cover that later effect and required validity conditions, not merely permit clicking an enqueue button.

Obtain the provider's exact queue/native version contract, current queue-enabled rule and settings, existing queue/operation lookup and removal capabilities, actual entry/group/check receipts, accepted cancellation/recovery owner and maintained observation route. Set finite entries/groups, check/review records/pages, requests/bytes, elapsed/observation time, entry wait/authority-validity window and retry bounds. This Markdown cannot monitor a queue after its owner stops; absent required native scope/expiry safeguards or accountable observation blocks admission.

## Task

### 1. Establish current exact-SHA readiness

1. Read authentic remote repository/PR/head/base and effective rule/settings receipts. Keep local candidate, PR head, base tip, synthetic merge-group head and eventual merge commit separate. Prove their relationships; do not equate their hashes.
2. Audit the complete current required gate and reviews for the accepted exact head/base/policy. Include approval/dismissal rules, requested changes, code-owner/independence requirements and actual authority, not an all-green badge. Native minimums cannot waive stronger accepted factory requirements.
3. Verify queue is actually supported and enabled for the exact target, with current actor access and genuine admission/merge authority. A documented feature, paid entitlement or merge button is not active queue proof. No enablement, plan change or protection modification is authorized by this assessment.
4. Identify the queue's actual merge method, grouping rules, required check contexts/reporting applications, trigger/reporting contracts and timeout/removal rules. Account for CI that does not run on synthetic queue revisions. Missing required queue checks stay BLOCKED; no empty-success check, rerun storm or direct-merge workaround is permitted.
5. Immediately before a separately authorized admission, compare exact head/base, policy/grant/approval, protections and queue settings again. Any change invalidates affected proof and requires fresh observations/acceptance for the new combination. Do not silently follow a moving branch or enqueue a changed head under old proof.

### 2. Hand off admission and record the actual entry

The existing authorized operator persists the actual canonical pre-effect intent, including exact repository/PR/head/base, native queue action, actor, current authority and recovery scope, before using the supported native admission interface. A native conditional exact-head precondition is used where supported. If the real interface cannot enforce a mandatory race/identity boundary, report the missing safeguard; a post-click comparison cannot retroactively prevent the wrong admission.

Retain the actual native admission response, real entry identifier when exposed, admitted head/base and queue status/timeline/readback. Do not manufacture an entry ID from PR number or infer admission from a local successful exit. Admission may result in waiting, rejected, removed, rebuilding or an unresolved response; none proves merge. Keep one accountable current owner for the queued effect.

### 3. Bind each synthetic merge group to its own proof

Use report-local rows:

| Repository/PR + exact head/base | Actual queue entry/group and ordered membership | Synthetic group head/base and generation | Required checks/applications and approvals/authority | Expected predicate | Actual native status/receipt/time | MET / NOT_MET / BLOCKED; owner/action |
| --- | --- | --- | --- | --- | --- | --- |

1. Obtain native entry-to-group membership and exact synthetic group head/base through existing authentic receipts, including predecessor PRs represented in that generation. A check on the PR head or another group's SHA cannot satisfy the group check obligation.
2. Inspect every required check's exact SHA, reporting application, completed status/conclusion and applicability. Missing, pending, failed, timed-out, canceled or mismatched check evidence remains explicit. Skipped/neutral conclusions count only if the authentic accepted rule permits that precise outcome; do not invent PASS.
3. Verify current approvals and merge authority independently of queue check results. Queue changes may require fresh approval or invalidate base-specific proof even when source head is unchanged. Preserve the exact normative/native rule distinction.
4. If head, base, membership/order, group generation, settings, reporting app, policy/grant or authority changes, mark affected old proof historical and obtain the new exact identities/required proof. Do not carry green results across rebuilt groups. Queue reordering is not an innocuous administrative action; it can regenerate groups and needs actual authority.
5. Do not submit direct merge using a synthetic queue result. Direct merge is a different action requiring its own accepted proof and authority; this procedure does not route around the queue.

### 4. Observe terminal disposition and reconcile ambiguity

- **Queued/checking/waiting:** report actual current state and accountable continued observer, not merged. Preserve elapsed limits and authority validity. If a required observation/authority boundary expires, the authorized owner must use supported scoped controls and verify removal or other effective fence; a report label does not stop automatic merge.
- **Rejected/removed/failed:** retain the actual native reason, exact failed generation/check and unchanged or changed remote state. No blind requeue, forced merge, skipped check, bypass or changed protection. Correction needs a bounded owned change and fresh exact-head/base/group proof plus renewed action authority.
- **Timeout/lost response:** query native queue entry, operation/PR timeline and target branch state by original identity before any replay. Admission may have merged already. Unknown outcome retains ownership and blocks overlapping enqueue/remove/merge until reconciled.
- **Merged:** require authentic native merged disposition and actual resulting target readback, eventual merge commit identity and provider-supported mapping to accepted PR head/group under the configured merge/squash/rebase method. The final commit need not equal PR head or synthetic head. Receipt must establish the real accepted change reached the exact target; a closed PR or removed queue entry alone does not.
- **Cancellation/removal:** separately authorized operator removes only the exact owned entry and reads back entry/PR/base state. A request acknowledgment is not proof merge was prevented. If the merge won the race, report actual merged state and route any revert as a separately authorized new change, never as automatic cleanup.

## Constraints

No new queue, workflow, static gate, parser, runtime, checks or protection waiver. No forced/direct merge fallback, blind requeue, bypass privileges, credentials or host enablement. Native queue policy does not replace accepted factory gate/approval or separate merge authority. Never report queued as merged, merged as deployed, or a head/base-specific result as proof for a changed combination.

Primary sources retrieved 2026-11-09: [GitHub managing a merge queue](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue) and [merge_group workflow event](https://docs.github.com/en/actions/reference/workflows-and-actions/events-that-trigger-workflows#merge_group). These are live unversioned service docs, not repository capability observations. The queue guide documents synthetic branches with SHAs different from the PR, required checks on merge groups, group rebuild/removal and settings that affect grouping. GitHub Actions queue checks require `merge_group`, distinct from `pull_request` and `push`; do not generalize those event names to another provider or create/run a workflow here.

## Format

Use the [response template](../../templates/response-template.md) or no-write chat. Return exact identities/authority/rules, pre-admission readiness, native admission versus NOT RUN, every entry/group-generation proof row, actual status/observation times, actual merge/readback or held ambiguity, current owner and precise next prerequisite. Include original criterion coverage, receipt retrieval/ACL/retention and invalidation boundaries. Preserve the executing-role verdict; a complete queue review is not evidence that admission or merge occurred.

### Parent consumer cases — illustrative, NOT RUN

- Supplied PR checks pass on head H, but no checks exist for actual queue group G. Keep the group requirement BLOCKED; admission/PR-green is not merged or group-green.
- A predecessor is removed and native receipts show rebuilt group G2/base B2. G1/B1 proof becomes historical; require G2/B2 proof and re-evaluate current authority rather than blind requeue.
- Admission times out, but authentic timeline/readback later proves the PR merged with a provider-mapped squash commit. Recover that real outcome without enqueueing again. If only queue absence is known, merged remains UNKNOWN.
