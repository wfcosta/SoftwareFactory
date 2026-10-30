---
name: control-ui
description: Drive and verify a browser or desktop UI on its actual surface, collecting reproducible state and visual evidence. Use for UI changes, visual parity, or UI bug reproduction.
---

# Control UI

Applicability and host-capability boundaries follow [GSF mode](../gsf-mode/SKILL.md), with shared factory policy in the configured worker contract.

1. Read the target app's launch instructions, actual URL/window, expected behavior, and authorization limits. Use the host's browser or desktop automation; enumerate supported controls before use. Do not assume an external plugin is installed.
2. Start the real app with its documented command, capture the process/service handle and ready output, and open the actual surface. Do not substitute a static mock or unit test for the running UI.
3. Record route, viewport, relevant data, feature flags, permissions, and initial state. For a bug, reproduce before editing and save the failing screenshot plus action sequence. For visual parity, collect reference and candidate at identical state and dimensions.
4. Interact through accessible controls: navigate, type, click, submit, scroll, resize, and inspect visible state. Observe console/network failures where available. Querying internal state alone is not proof of visible behavior.
5. Exercise the changed path, one relevant boundary, and the neighboring flow most likely to regress. Compare actual visible output to the requirement. Preserve screenshots and exact steps in the job's evidence directory, with sensitive data redacted.
6. Repeat the original failing sequence after a fix. Mark each predicate PASS, FAIL, or INCONCLUSIVE; a screenshot of an unrelated screen is not a pass. Report persistent console errors relevant to the path.
7. Close tabs and stop only processes you started, preserving evidence. Report route, environment, actions, expected/observed result, and artifact paths.

## Access failure

Attempt the available surface first. If credentials, a private device, unavailable desktop controls, or network access prevent verification, name the exact blocked step and observed error. Verify reachable portions and ask only for the missing access or operator action. Never simulate a screenshot, claim a click occurred without tool evidence, or mark the blocked behavior green.
