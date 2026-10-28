### Prototype

**You own the design decision, not the code. The prototype is a throwaway instrument. The real build follows Feature.**

The one playbook where the Laziness Protocol's "smallest change" and the verification bar invert. Speed over polish, code quality does not matter, no planning. The rigor is in picking the right design cheaply. Propose variations the user didn't ask for, throw an approach away and try another.

1. Scope the decision the prototype exists to make: which layout, which interaction, which density, or for an empirical fork which behavior, timing, or approach. No decision means no prototype. Route to Feature.
2. Gather references when the design space is open. Search for prior art, summarize a moodboard of themes, palettes, and layouts, present the alternatives and choose directions within the existing grant; pause only for a genuine product/preference call outside it. Skip when the direction is set.
3. Build throwaway in an isolated scratch dir, separate from production source. For a visual decision, vanilla HTML/CSS/JS or the lightest stack that renders the idea, CDN deps, a dev server with hot reload. For a behavioral or timing decision, the smallest script that exercises the question. No production framework, no production test suite, no abstractions. Product/tool commands and a scratch experiment are allowed; no `.sh`, `.py`, `.js`, or `.ts` framework runtime is added under `.gsf/`. Record the owned scratch path and processes so user files are never treated as disposable.
4. When comparing alternatives, build them behind one switcher (buttons or a keypress), each variant labeled. This is the [exhaust-the-design-space](../../exhaust-the-design-space/SKILL.md) principle skill made cheap.
5. Verify on the matching surface. For a visual decision, screenshot each variant via the control skill and drive the interaction. For a behavioral or timing decision, observe the thing you are deciding by logging the timing, printing the output, or watching the render. The observation is the test here, not an assertion.
6. Present alternatives, tradeoffs, and a recommendation. If observations do not separate the variants, narrow the decision or improve the probe; do not fabricate a winner. Retain the scratch artifact for review or remove only the exact files you created when authorized. The output is the decision plus the throwaway artifact, not shippable code. Hand the chosen direction to [Feature](./feature.md) (or `architect` for the shape) for the real build.

**Reply:** the variants explored, the evidence (screenshots for a visual decision, the observed output or timing for a behavioral one), tradeoffs, your recommendation, and the scratch path. Say plainly that the prototype is throwaway.

## Applicability

Use [GSF mode](../SKILL.md) to select direct, read-only, or factory execution. The configured `<config.paths.agents>/WORKER_CONTRACT.md` is the normative policy, lifecycle, recovery, and candidate-evidence contract; this playbook adds only task-specific steps. Direct read-only requests create no jobs or evidence files. Factory execution uses [gsf-run](../../gsf-run/SKILL.md) only within authorized write scope; investigation evidence requires an explicit write grant.

Reference: adapted from [cursor/plugins/pstack prototype.md](https://github.com/cursor/plugins/tree/c742dd61706fbacc1b95f1a20b7b988cf096ce6c/pstack). GSF authority, evidence paths, and tool mappings override reference-specific runtime details.
