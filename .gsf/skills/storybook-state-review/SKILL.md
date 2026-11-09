---
name: storybook-state-review
description: Review a finite accepted component, story and product-route state matrix against real existing Storybook UI evidence, pinning args, globals, versions and interactions without mistaking source catalogs for exercised coverage or adding story/test code.
---

# Storybook state review

## Role

Deepen existing [UI](../../agents/reviewer-ui.md) and [UX](../../agents/reviewer-ux.md) review of an accepted design-system/component change. Use the existing [interface composition](../../packs/interface.md), [verification strategy](../verification-strategy/SKILL.md), [control-ui](../control-ui/SKILL.md) and [localization review](../localization-review/SKILL.md); retain product-journey and independent code/security obligations. This is an agent review procedure, not a Storybook addon, renderer, generator, new reviewer or extra gate.

Follow the [worker](../../agents/WORKER_CONTRACT.md), [configuration](../../state/config-contract.md), [candidate](../../state/candidate-contract.md) and [environment](../../state/environment-contract.md) contracts. Direct no-write questions inspect already permitted sources/receipts and return chat without jobs, files, app launches or interaction. Dispatch writes only owned Markdown evidence; sources, permanent stories/tests/snapshots, dependencies and shared reports stay read-only. Any actual UI handoff requires separate explicit action/capture authority and an existing available tool; missing capability is BLOCKED, not a generated substitute app.

## Context

Freeze from actual accepted requirements and existing repository documentation:

- Consumer task, requirement revision/predicates, exact component path/export and version, accepted design reference and prior finding identities. Story titles are labels, not accepted requirements or stable proof of product mapping.
- Exact candidate/policy, existing Storybook artifact/build/source revision, framework/renderer, installed Storybook/addon versions, preview/decorator/loader/mock configuration and relevant feature flags. Static output and running development output are different artifacts; a branch name alone identifies neither.
- Real catalog/story ID and source export, story route and rendered canvas versus documentation page, starting state, component properties and effective args after inherited defaults/overrides. Record accepted values actually supported, not guessed controls or arbitrary query parameters.
- Effective globals/theme, viewport dimensions/device scale, browser/OS, fonts/asset readiness, animation/clock/async-data conditions, locale and independently applicable time zone/currency, actor/permissions and fixture. Record application route counterpart or explicit lack of one.
- Finite accepted component × story × state × args × theme × viewport × locale × version × route rows, selection rationale and required omissions/gaps. Cover affected loading, empty, validation, disabled, focus/hover, expanded/modal, error/recovery and success only where accepted; do not invent an exhaustive Cartesian product.
- Existing supported launch/access instructions, actual available UI controls and versions, ready artifact, approved account/isolated fixture, permissible network actions, reset/stop ownership and capture rights. Obtain accepted positive integer caps for rows, UI actions, attempts, elapsed time and capture bytes; setup/reset/retries count, with actual cost limits if applicable.

### Public native reference boundary

Official Storybook pages retrieved 2026-11-09 through their Markdown alternates identify **Version 10.6, React/TypeScript**; these are reference behavior, not the repository's installed version:

- [Args](https://storybook.js.org/docs/writing-stories/args): stories use args for rendering, can inherit component/global args, and changes can re-render a component. Actual renderer/configuration and runtime values must be established for this artifact; theme may be a global rather than an arg.
- [Interaction tests](https://storybook.js.org/docs/writing-tests/interaction-testing): a story's initial render is distinct from executing interactions and assertions; existing play functions can be inspected in the Interactions UI. A source play function is not evidence that it ran, and a spy callback is not a real service effect.

Consult the approved actual-version documentation where behavior differs. These references do not authorize suite execution, addon installation, story/play-function authoring or importing their example APIs. No browser capability, hosted Storybook entitlement or private access is implied.

## Task

1. **Select honest evidence mode.** Inventory existing sources, accepted catalog and retained runtime receipts. Label catalog inspection, rendered observation, actual interaction and product-route journey separately. If actual UI/version/build/access or bounded isolated effects are unavailable, finish safe source review and leave required runtime rows BLOCKED; never start a server, run suites or search credentials just to fill a gap.
2. **Bind catalog to artifact.** Match component path/export, story ID and source revision to the actual built Storybook. Identify excluded/missing stories, stale static builds, failed loaders and inaccessible routes. Inspect existing decorators/loaders/play callbacks for storage/network/mutation and implicit effects before an authorized executor navigates; opening a story can execute code, not merely show pixels.
3. **Freeze each row's effective state.** Record actual inherited args, overrides and globals, fixture and initial UI. Distinguish control-panel settings from values the component truly receives. Record theme, locale, viewport/scale and asset readiness from genuine observations. Do not silently alter component source or accepted defaults to reach a desired state. Unsupported state injection is a gap; a named story does not prove that state is achievable.
4. **Observe bounded real interactions when assigned.** Through the already available documented UI tool, open the exact accepted story/canvas and use its controls: navigate, focus/type, activate, expand, submit, dismiss or resize only as scoped. Capture action order/input, expected predicate and actual visible/accessible result with authentic receipts. Existing play output is supplemental evidence tied to this run and its scope, not an invented click, independent human review or permission to launch a test suite.
5. **Review visual and recovery behavior.** Compare accepted states at matched conditions; record focus entry/containment/exit/restoration, disabled behavior, retained input and actionable error recovery where required. For true pixel parity reuse the [visual-parity owner](../gsf-mode/playbooks/visual-parity.md) and its actual matched-capture/diff prerequisites; eye inspection alone is not pixel equivalence. Route automated accessibility to existing actual-engine evidence and manual keyboard/AT to UI/UX; source attributes or screenshots cannot close those obligations.
6. **Trace the application boundary.** Map each story to its real component consumer/route. Record mock data, stubbed services, missing navigation/providers/authorization and different CSS/configuration. A Storybook callback/log or successful isolated component interaction proves only that isolated result. Required actual product end-to-end task/persistence remains BLOCKED without its separately authorized matching product evidence; do not represent the source catalog as all runtime states.
7. **Reconcile findings and finish.** For every assigned prior finding retain original report/dispatch/ID and observable closure condition; compare current exact-state evidence, marking resolved/open/unverified according to the existing template. Stop only owned UI sessions, preserve receipts and verify assigned reset/cleanup with real readback. Different candidate, story/preview/mock version, args/globals, runtime, fixture, locale/theme or route invalidates dependent observations; preserve previous failed receipts rather than replacing them.

## Constraints

No new permanent tests, stories, generated app, screenshots-as-baselines, runtime/parser/wrapper/server or canonical state registry. This document does not install or enforce UI isolation. A review assignment, accessible localhost or existing login grants no submission/purchase/email or external-write authority; match actual effect/target, authentic scoped grants and existing native safeguards before any separately assigned interaction. Do not change feature flags or shared profiles to force coverage.

Ambiguous submit/loader/play effects require existing app-owner readback by exact fixture/operation identity before retry. A timeout is neither a committed result nor proof of no effect. Unknown driver/session liveness blocks overlapping work/reset; cancellation labels do not prove stop. Never delete shared browser state, reset another user's data or stop an unowned server. Preserve nonowned state on success, failure and blocked setup; list residual effects and recovery owner.

Index artifacts under the existing candidate evidence contract: immutable artifact/source/receipt locators and raw retained-byte digests, producer and job/task/dispatch, timestamps, authorized readers, genuine retrieval/ACL/retention evidence or accountable manual retention owner. Redacted derivatives have their own digests and lineage. Do not retain cookies, tokens, private URLs or sensitive canvas data. An inaccessible hosted link or image alone cannot support accepted evidence. No canonical report or gate is written by this skill.

## Format

Use the [response template](../../templates/response-template.md) or no-write chat. Include scope/mode, identities and runtime prerequisites, bounded matrix/counters, source-catalog versus actual rendered/interaction/product coverage, findings and prior reconciliation, artifact custody, executed versus NOT RUN actions, effect/readback/reset/cleanup and exact existing next owner. Product-source modifications are none. Use the executing role's verdict; missing required runtime evidence is BLOCKED, observed material violations use that role's failure/CHANGES vocabulary, and a passing isolated row does not pass release or unexercised routes.

| Accepted row/criterion | Component/story ID, artifact/version and product route | State/effective args/globals, theme/viewport/locale and actor/fixture | Expected predicate and accepted source | Actual actions/observations and immutable evidence level | MET / NOT_MET / BLOCKED; gap and owner/action |
|---|---|---|---|---|---|

For blockers state `environment`, `product` or `factory_bug`, precise unavailable capability/identity/intent and safe next action. Account for each assigned criterion, every required state and every earlier assigned finding without invented N/A.

Illustrative parent manual cases, **NOT RUN**:

- Accepted dialog story actually opens, contains focus, cancels and restores focus at the pinned dark-theme narrow viewport/locale; authentic matching captures/interaction receipts support only those rows.
- Source lists loading/error stories and play functions but no current runtime receipts exist: catalog analysis is reportable; actual state/interaction criteria remain BLOCKED, never “all states passed.”
- Story submit calls a spy while the real route persists an order: story callback evidence cannot close order persistence or authorization; preserve the required application-journey gap.
- A loader may have posted a fixture before timeout: stop replay/reset, reconcile with existing app owner, preserve other users' data and retain unknown effect until real readback establishes it.
