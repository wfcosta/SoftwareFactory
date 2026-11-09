# Herd mission and worker adapter — roadmap 020

## Role

Use **Herd, the NickGuAI/Herd meta-harness linked by herd.gehirn.ai**, as an existing native handoff surface while preserving canonical GSF authority and IDs. This is not Herdr's terminal multiplexer, Laravel Herd, Herd-OS/herd or herd-ag/herd-core. A product-name match alone is insufficient. This Markdown adapter is not a control plane, worker launcher, mission scheduler, API client or replacement factory ledger.

Follow the [common adapter contract](README.md#common-adapter-contract), [worker contract](../../agents/WORKER_CONTRACT.md) and [GSF run](../../skills/gsf-run/SKILL.md). The GSF coordinator alone owns the accepted task graph, grants, canonical lifecycle and promotion. Native commanders, missions and workers cannot grant themselves broader scope, add unapproved helpers or close GSF tasks.

## Context

Primary public sources consulted 2026-11-09:

- [Product repository and README](https://github.com/NickGuAI/Herd).
- [Workers](https://github.com/NickGuAI/Herd/blob/main/docs/concepts/workers.md), [commanders](https://github.com/NickGuAI/Herd/blob/main/docs/concepts/commanders.md) and [approvals](https://github.com/NickGuAI/Herd/blob/main/docs/concepts/approvals.md).
- [Machines and workers](https://github.com/NickGuAI/Herd/blob/main/docs/operate/machines.md), [CLI reference](https://github.com/NickGuAI/Herd/blob/main/docs/reference/cli.md) and [API reference](https://github.com/NickGuAI/Herd/blob/main/docs/reference/api.md).

The public site documentation host did not resolve during research; the linked first-party repository documents were retrieved instead. These mutable `main` sources establish documented concepts, not an immutable installed release. The README mentions a license transition beginning `v0.0.8-beta`; that is not a minimum adapter version or proof of the deployed build. Pin the actual instance's exact release/commit and governing documentation before version-dependent native action.

The sources describe a supported browser operator surface, persistent commander identity, user conversations distinct from provider sessions, quests with outcomes/criteria, delegated worker sessions and machine routing. The public API page lists families only: it does **not** establish exact worker/mission dispatch, result, resume or cancellation request schemas. The CLI page similarly names some inspection families without giving a complete universal launch syntax. Do not invent `herd mission create`, endpoint paths, payload fields or SDK methods. Complete the bounded UI handoff below when actual controls are established; programmatic execution remains BLOCKED without the exact installed native contract/client.

Required assignment:

- Exact accepted repository/worktree/base and active branch, frozen instructions/policy/candidate, absolute JOB_DIR, job/task/fresh dispatch IDs, GSF role/dependencies/exclusive ownership, five-pillar acceptance and report destination.
- Independently accepted exact Herd instance/origin and account/operator scope; actual build, selected native commander/conversation/quest/mission/worker identities where exposed, execution machine/provider/harness and native provider session. Not every version exposes every identity; missing ones remain unknown rather than guessed fields.
- Existing selected machine/runtime readiness and actual root/cwd/worktree. Distinguish control-plane host from execution host, local/SSH/daemon routing and any hosted control plane. A machine registration, SSH success, account entitlement or provider login is not proof of the worker's actual route or GSF external-target grant.
- Separate authority for read/disclosure, commander or mission changes, worker/model launch, local/external effects, approvals, capture, resume/cancellation and cleanup. Do not enroll machines, connect daemons, bootstrap hosts, change provider credentials, import bundled commander packages or start another service.
- Numeric finite mission/worker/concurrency/attempt/turn/time/output and observable usage-cost bounds, accepted native controls, evidence audience/destination/custody and accountable coordinator, native operator, worker and recovery owners.

## Task

### 1. Resolve identity and the feasible handoff

1. Compare actual instance/release/operator observations to the first-party identity above. If another product named Herd is supplied, do not borrow these commands/concepts. Return the exact product-origin/build/native-contract prerequisite, finishing any independently safe assignment review without execution.
2. Select only an already authorized browser session or existing native client with established exact semantics. No API key/hosted auth discovery, signup, paid plan or provider call is part of qualification. Do not read private Herd stores, credentials, unrelated conversations or commander memory to fill gaps.
3. Record the actual visible control for task/worker creation, approval, result retrieval, exact-session continuation and stop, with its scope and version evidence. If one is missing, block that operation specifically. A public API-family description cannot fill an absent control.
4. In hosted `daemon-only` mode, the documented machine policy differs from local/SSH launch. Multiple ready daemons require an explicit selection; do not let an omitted machine choose a convenient target. The docs name `machineId` and `executionMachineId` in their routing explanation, but those names alone are not a dispatch payload contract.
5. Produce the exact handoff decision: eligible existing-native UI, eligible already implemented version-bound client, or BLOCKED native operation with missing contract/control/owner. A completed identity and handoff decision is useful output, not a simulated execution PASS.

### 2. Preserve GSF authority while representing the mission

1. Read the complete canonical role, worker contract, selected `.gsf/skills/<name>/SKILL.md` and required references at the frozen revision through real permitted file tools. Confirm each intended execution machine can read those exact bytes or receives an authorized complete source handoff. A commander prompt, memory summary or skill listing is not a full read.
2. The GSF coordinator persists task/dispatch intent before native input. Prepare the handoff in the existing assigned response/evidence, not a new schema or authority store. Include canonical IDs unchanged; exact branch/root/worktree and instruction pins; bounded task, dependencies, exclusive ownership and effects/target; actual report/done obligations; limits, approval/stop method and recovery owner.
3. Choose an existing compatible commander/context whose effective instructions/tools/permissions have been reviewed under authority. Native commander identity and durable memory are context, not accepted factory policy. If inherited instructions conflict with GSF scope, block the affected handoff; do not silently edit commander memory or import GSF roles as native commander packages.
4. Represent only the already accepted GSF task in an existing native mission/quest/worker surface. Keep a report-local mapping of canonical job/task/dispatch to genuine native instance/commander/conversation/mission-or-quest/worker/provider-session identifiers as exposed. A title containing `t001` is not a native ID, and a native worker handle is not `dispatch_id`.
5. If the native mission would autonomously decompose, dispatch extra workers, validate, publish or retry beyond the accepted GSF graph/grant, do not admit that mode. Obtain a real native restriction or a bounded operator-controlled single-worker handoff; missing control blocks that mode, not permission to create a second coordinator.

### 3. Submit, approve and retrieve separately

| Stage | Expected predicate | Required evidence / disposition |
| --- | --- | --- |
| Preparation | Exact canonical assignment and native route chosen; no launch yet | Frozen input/full-read/identity/grant/budget mapping; absence of launch receipt stays NOT RUN |
| Submitted/accepted by Herd | Actual native control acknowledges the selected input and worker identity | Preserve real UI/client receipt and IDs. Queued/accepted is not execution start |
| Running on intended machine | Actual launch/start/trace binds provider session, execution host and worktree to that dispatch | Host label/registered readiness alone fails. Documented `host: null` is routing-loss evidence; stop and reconcile, not a successful target run |
| Approval pending | Native proposed action is visible with exact commander/session/target/effect | Match to authentic GSF grant and current provider scope before a deliberate decision; approve/deny only this bound action |
| Native terminal outcome | Complete same-worker result/error and artifact identity, with partial effects retained | A mission badge, final chat or worker progress is not full artifact/report evidence |
| GSF accepted | Actual report/done and every criterion are validated by the GSF coordinator | Only existing lifecycle acceptance/promotion; no synthetic events or automatic PASS from native status |

1. Submit exactly once through the qualified existing control after intent. Retain actual input bytes/reference, native acknowledgment and start separately. On ambiguous submission, reconcile by exact native worker/intent scope instead of creating another worker or editing a native state label.
2. The native approval flow documents a proposed action, pending item, operator approve/deny and provider continuation/abort. Inspect real pending context and verify it belongs to this worker; native auto-run/action policy does not replace the GSF grant. An approval decision is not proof the action succeeded or the provider stopped after denial.
3. Retrieve the exact produced report/artifact/trace through the existing authorized UI/client, preserving version, native worker/provider-session, actual host/worktree, timestamps, tool/results/errors and result completeness. Do not follow arbitrary report URLs or auto-publish a PR/artifact because the worker's template suggests it.
4. Keep usage separately source-bound to actual producer/account/model/session/run interval, original token/credit/currency units, cumulative/delta scope and coverage. The consulted public API family listing does not establish a complete billing meter. Missing usage is unknown, not zero or free; use [usage evidence review](../../skills/usage-evidence-review/SKILL.md) and block any required unobservable cap.
5. Recover actual assigned worker report/done and let the sole GSF coordinator validate, accept and promote. Herd's commander verification described in its worker lifecycle is native behavior; it cannot substitute for required GSF independent reviews or canonical approval.

### 4. Reconcile continuity and clean without harming user state

For interruption, retain exact mission/quest/worker, conversation and provider-session linkage, last accepted input/result, current execution host, partial writes/remote effects and consumed limits. Durable mission memory or conversation persistence does not prove a live provider session or safe replay. Resume only through the qualified exact-worker/provider-session control after current policy/instructions, remaining grant/budget and ownership reconciliation. A changed commander/conversation or newly launched worker is not the same attempt by default.

Use [liveness review](../../skills/worker-liveness-review/SKILL.md) and [cancellation confirmation](../../skills/cancellation-confirmation/SKILL.md). A stop request, disconnected daemon, deleted worker or control-plane shutdown does not prove provider/SSH/daemon descendants or remote operations stopped. If the exact stop/result interface cannot be established from installed controls, block overlapping retry/transfer and assign the native operator the precise prerequisite: same-worker current state, scoped stop/fence acknowledgment and remote-effect reconciliation. Do not fabricate an API cancellation receipt.

Preserve retrievable evidence before separately authorized cleanup of only owned disposable native resources after stopped ownership. Never uninstall the control plane, disconnect/re-pair machines, revoke shared credentials, erase commander memory/conversations/missions, delete worker worktrees with user changes or cancel unrelated workers as routine cleanup. Name retained state, live/unknown scopes and recovery/custody owners.

## Constraints

No new runtime, launcher, bridge, native API schema, mission ledger or executable program is introduced. This procedure enforces no concurrency, authorization, routing, isolation, cost or stop guarantee. Public-source concepts and exact installed UI behavior must remain separate; unsupported programmatic actions stay BLOCKED. All native operations described here are NOT RUN.

## Format

Use the [response template](../../templates/response-template.md) or no-write chat: criterion 020; exact product/instance/build and source revision/date; selected UI/client and precise unsupported API prerequisites; canonical-to-native mission/quest/commander/conversation/worker/provider-session mapping; actual machine/worktree and full-read proof; grants/limits; preparation, acceptance, start, approval, result, usage and GSF promotion independently; private-safe raw/derivative receipt locators, access/retention owner; uncertain liveness/effects, held retries, resume/cleanup and residue owner. Mark actual assigned predicates MET/NOT_MET/BLOCKED without claiming a native run.

Illustrative consumer cases, **NOT RUN**:

- Operator supplies a different Herd product or only an API-family page: resolve identity and finish the exact bounded handoff; do not invent a dispatch endpoint.
- Mission completion badge exists but actual launch reports `host: null`: reject intended-machine execution claim, preserve native result and reconcile the real execution/effects before any rerun.
- Commander proposes an extra worker or publishing beyond the accepted graph: hold that proposal for the GSF coordinator; native mission autonomy cannot amend canonical scope.
- Connection drops after worker acceptance and usage is missing: retain possible live execution/consumption; retrieve same-worker evidence and fence before retry, never assume no launch or zero cost.
