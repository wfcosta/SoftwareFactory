---
name: control-cli
description: Launch a real CLI or TUI, exercise the changed command or interaction, and inspect output, exit status, and persistent state. Use for terminal-surface verification.
disable-model-invocation: true
---

# Control CLI

Applicability and host-capability boundaries follow [GSF mode](../gsf-mode/SKILL.md), with shared factory policy in the configured worker contract.

1. Read the executable's actual entry point, launch command, required environment, and expected observable behavior. Use a disposable workspace for mutations, never a user's live data by default.
2. Run the program through the host terminal. Use a PTY for a TUI or interactive stdin and ordinary process execution for a CLI. Record working directory, command, runtime version when relevant, and process handle.
3. For a bug, save the failing command/action sequence, stdout/stderr, exit code, and resulting state before editing. Avoid logging credentials or token-bearing environment variables.
4. Exercise the exact changed path. In a TUI, drive actual keys and inspect rendered screen/state; in a CLI, inspect output and exit code plus files/network effects. A successful import or help output does not verify another command.
5. Cover the important boundary: invalid input, empty data, cancellation, retry/resume, or terminal resize as relevant. Use deterministic inputs and compare expected vs observed behavior.
6. Repeat the original sequence after the change. Record PASS/FAIL/INCONCLUSIVE for each predicate and link captured output/state in the job evidence. Run configured checks separately; they do not replace the interaction.
7. Stop only processes you started and delete only owned scratch data after evidence is saved. Report the exact invocation and result.

If the target requires an unavailable runtime, device, permission, or secret, report the attempted command and error. Do not substitute an unrelated binary or mock and call it verified. Ask only for the prerequisite that tools cannot supply.
