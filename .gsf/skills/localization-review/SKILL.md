---
name: localization-review
description: Review accepted locale and fallback behavior on actual consumer surfaces, comparing message semantics, Unicode, RTL and independent formatting settings with source-bound evidence and explicit runtime or linguistic gaps.
---

# Localization review

## Scope and authority

Use for changed consumer text, localized interaction or locale-sensitive formatting. Deepen the [i18n role](../../agents/i18n.md) and [inclusive-experience reference](../domain-review/references/inclusive-experience.md), not another localization authority or mandatory gate. Follow [GSF mode](../gsf-mode/SKILL.md), the [worker contract](../../agents/WORKER_CONTRACT.md) and accepted candidate/policy. Preserve applicable independent UI/UX and code/security reviews.

A direct read-only/no-write request inspects only existing permitted sources/evidence and replies in chat: no job, files, browser launch, application run or endpoint calls. An authorized factory review writes only assigned dispatch evidence for coordinator promotion to the accepted report; never change product strings, catalogs, locale defaults or shared reports. Independent review requires a genuine nonauthor context, not self-review with a different label.

Select **existing-evidence review** or **explicitly assigned runtime review**. Neither mode authorizes translation generation, catalog regeneration, installing fonts/drivers, changing account/browser/system locale, sending messages or creating transactions. Include any necessary setup and cleanup effects in the assignment before execution. Skill metadata does not register a host command.

## Inputs and finite comparison rows

Read the accepted assignment/specification, exact affected candidate/diff, translation ownership and terminology sources, supported locale declarations, resolution configuration, catalog/library/locale-data versions, actual consumer surfaces and prior assigned findings. Use the [candidate](../../state/candidate-contract.md) and [environment](../../state/environment-contract.md) contracts for evidence identity and actual capabilities.

1. Recover the finite **accepted** locales, variants and per-surface support from exact source clauses/revisions. Separate currently shipped support, proposed support and observed implementation. Do not invent locales, default language or a universal support matrix.
2. Trace selection precedence from accepted sources: explicit user choice, account/application setting, negotiated preference and default only as actually specified. Record each locale's ordered fallback chain, termination, unsupported-locale decision and missing-message behavior. Conflicting or absent intent blocks that expectation.
3. Identify the actual target: route/control/error, accessible name/announcement, generated email, export, document or native surface; include its version, state and consumer task. A web screenshot cannot stand for an email, export, native device or assistive interface.
4. Predeclare bounded rows from affected support obligations, not an unlimited locale/device Cartesian product. Accept numeric case/attempt/time/output limits and selection rationale; omitted required combinations remain gaps. Record locale, time zone, currency and surface independently.

Use one row per concrete comparison in the existing assigned report, not a new policy registry:

| Row / accepted source | Surface and starting state | Locale / ordered fallback | Independent zone / currency | Input and expected predicate | Actual evidence / result | MET / NOT_MET / BLOCKED; next owner/action |
|---|---|---|---|---|---|---|

Populate cells from actual accepted sources and retained observations. A blank expectation is BLOCKED, not permission to copy the current output as the oracle. Distinguish static inspection, pseudolocalized rendering, actual locale runtime and qualified linguistic judgment for every row.

## Ordered review

1. **Inventory the consumer boundary.** Trace affected text from source message and resource loading through formatter/rendering to visible and assistive output. Include loading, empty, validation, denied, timeout and recovery states where affected, plus export/email formatting. Cite exact source path/lines at the candidate revision and catalog entries; key presence alone proves neither delivery nor meaning.
2. **Compare selection and fallback.** Follow each accepted chain through actual bundle availability and runtime lookup. Compare unsupported preference, missing regional bundle, missing key, empty value and unavailable resource separately according to accepted semantics. Check lazy loading/cache and locale switching only where in scope; never assume an empty translation means fallback or that process/browser locale is the chosen user locale.
3. **Check message semantics.** Trace the actual message engine/version and its plural cardinal/ordinal categories, select/gender branches and fallback branch. Choose finite quantities exercising the affected accepted categories, including zero, fractions and negative values when the product permits them. Locale-specific categories are not an English singular/plural switch; an implementation-generated expected string is not independent intent.
4. **Check interpolation and safety.** Compare parameter names/types, missing/extra parameters, reordering, escaping, literal braces/quotes and rich-text boundaries with the real formatter's documented behavior. Preserve links and accessible meaning. Use only authorized synthetic adverse text; distinguish escaping at text, markup, URL and export contexts. Do not render untrusted markup merely to inspect it.
5. **Inspect Unicode behavior.** Cover affected combining marks, grapheme clusters, non-Latin digits and mixed scripts with accepted fixtures. Examine truncation, selection, encoding, search and normalization only where the surface promises them. Byte/code-point counts do not establish user-perceived character limits; do not normalize identifiers or alter stored text without an accepted semantic rule.
6. **Inspect RTL and expansion.** On the actual assigned surface compare direction inheritance, logical alignment, mixed-direction identifiers/numbers and bidi isolation, mirrored versus meaning-preserving icons, reading/focus order and clipped controls. Inspect long localized strings and supported scaling/reflow. Pseudolocalization can expose expansion/bidi defects but proves neither real script shaping nor translation correctness.
7. **Separate formatting dimensions.** Compare the same accepted instant with explicitly selected locale and time zone; cover affected date-only semantics, DST ambiguity/gaps and day/month/year boundaries without changing storage meaning. Compare number/grouping/decimal/unit rules and monetary amount, explicit currency code and accepted precision/rounding separately. Locale never chooses a business currency or authorizes conversion; a time zone never follows implicitly from language.
8. **Assess linguistic evidence.** Where language correctness is required, obtain qualified review for the actual message/task/context against accepted terminology and tone. Capture reviewer qualification/scope and source-bound judgment without personal details. Keys, screenshots, machine translation, successful lookup and pseudolocalization cannot certify translation meaning or all language coverage.
9. **Compare recovery and prior findings.** Confirm the accepted task remains understandable and completable after affected errors/fallbacks without lost valid input or misleading values. Reconcile every assigned original finding by its report/finding identity and observable resolution condition; a catalog diff alone cannot close a runtime or linguistic defect.

## Actual-surface execution boundary

Existing-evidence mode compares already retained outputs and sources without launching a driver, producing messages or changing settings. Record unknown loaded configuration and stale evidence as limitations. Missing required actual-runtime observations remain BLOCKED even when static inspection is clean.

When runtime work is explicitly assigned:

1. Discover actual repository-supported invocation/runbooks and available browser/device/email/export/assistive drivers and versions through authorized reads. Use real documented tool actions, not invented commands, locales, fonts or emulators presented as physical devices.
2. Confirm exact artifact/configuration, real target identity, scoped read/effect authority, owned isolated fixtures and observable reset/stop boundaries. Use synthetic approved text/accounts. A locale switch can persist preferences or trigger network requests; a rendered task can send mail or commit a purchase. Do not assume observation is effect-free.
3. Execute only the accepted rows and limits. Capture actual action/input, resolved locale/fallback, formatter/data versions, zone/currency, target/runtime versions, expected/observed output and sanitized receipt. Observe accessible text/reading behavior when required, not only pixels.
4. Stop the affected path on unsafe effects, privacy exposure or unavailable prerequisites; retain the minimal sanitized evidence and continue unrelated permitted comparisons. Missing required collectors, renderers, drivers, language expertise or locale data yield BLOCKED, never a fabricated capture, simulated pass or silent substitute.

## Verdict, evidence and handoff

Use the executing role's documented verdict: `PASS` only for completed assigned scope without material defects or required-proof gaps; `CHANGES` for demonstrated material violations where the role supports it; otherwise `BLOCKED` for unmet proof. If defects and gaps coexist retain both; a demonstrated defect can justify CHANGES without concealing blocked rows. No verdict proves universal translation quality or release readiness.

Return the [assigned response format](../../templates/response-template.md), or direct no-write answer, with:

- Accepted locale/surface inventory and exact selection/fallback sources, bounded comparison rows and exclusions with their acceptance basis.
- Candidate/policy and actual artifact/configuration/library/data/runtime identities; observed versus static/pseudo/linguistic coverage, not a merged assurance label.
- Each finding's exact source/receipt, violated accepted clause or grounded invariant, reproducible input/state, consumer impact, proposed owner/action and observable resolution condition; optional improvements stay separate.
- One row per assigned acceptance criterion with actual MET/NOT_MET/BLOCKED evidence and precise next owner/action; no omitted required locale, invented N/A or unsupported PASS.
- Exact inspected source revisions/lines and retrievable sanitized attachment locators/digests/provenance, authorized readers and actual retention control or manual owner. Do not retain personal text, tokens or credential-bearing URLs.
- Executed versus unrun actions, missing prerequisites and stop class (`product`, `environment` or `factory_bug`), modified product files `[]`, residual fixtures/handles and accountable handoff.

After authorized execution stop only owned drivers and remove only assigned disposable fixtures after preserving evidence; never reset shared preferences or delete diagnostics as implicit cleanup. Candidate, catalog, locale-data/library, configuration, target or accepted-language changes invalidate affected proof. Follow existing dispatch completion rules; no shared-state edits, new events or automatic review gate.
