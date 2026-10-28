### Worktree and simulator cleanup

**You own safe reclamation. This workflow deletes state without a code-review safety net, so the evidence and deletion gates are the review.** A cleanup request does not authorize loss of uncommitted, untracked, ignored, pinned, active, or unrelated user work.

1. **Snapshot disk and enumerate real paths.** Record free/used space with the host filesystem tool (`df -h /` on Unix or `Get-PSDrive -PSProvider FileSystem` on PowerShell). From the target repo run `git worktree list --porcelain`; every candidate path comes from that output, never an invented sibling directory. Resolve the actual configured base and each PR's target rather than assuming `origin/HEAD`. Record path, branch/SHA, size, latest commit/activity, lock/prunable markers, and branch/PR state in an audit table in the job. Use host file-size tools and Git/forge commands directly; no `worktree-audit.sh` dependency.
2. **Classify evidence, not age alone.** Per worktree collect `git -C <path> status --short --untracked-files=all`, tracked diff summary,
   and `git -C <path> ls-files --others --ignored --exclude-standard`. Inspect ignored directories before calling them caches: an ignored
   upload, database, secret file, or scratch experiment is still user state. Check merge ancestry against the correct base using `git
   merge-base --is-ancestor <branch-tip> <base-ref>`, and read the associated PR's actual merged/open/closed state. Squash merging may not
   make branch ancestry true; require PR/patch evidence before classifying it merged. No open PR and old mtime alone prove neither
   abandonment nor safety. Keep branch refs unless separately authorized; deleting refs is not needed to reclaim a worktree.
3. **Establish the in-use set.** Check the coordinator/worker ledger, active processes, host-provided current-workspace agent/session metadata, and pinned chats available through the real host. Include scratch, arena, repro, and child worktrees belonging to active agents even when no sidebar item names them. Read only the current workspace's explicitly exposed transcripts; delegate bulky transcript analysis only for independent candidate groups. If pin/activity information is unavailable, ask the operator for that specific set and hold uncertain candidates; never infer “not in use” from missing metadata. A pinned/active owner outranks any automatic safe bucket.
4. **Apply the deletion gate per row.** Record KEEP for the primary checkout, current/pinned/active worktree, locked worktree, open/unmerged or ambiguous branch, unknown ignored content, and any tracked/untracked user edits. Show the relevant diff and file inventory and use the worker contract’s `gate_blocked` disposition for an explicit scoped decision before irreversible loss. Even an apparently throwaway untracked file is not automatically disposable. A clean merged worktree with preserved branch/commit refs, no retained/ignored user state, no active owner, and cleanup authority may proceed. Name the exact confirmed paths and reasons; a bucket is advice, never permission.
5. **Remove only the confirmed clean set.** Re-read each candidate's status and ownership immediately before action to catch concurrent writes, then use `git worktree remove <exact-enumerated-path>` without `--force`. If removal refuses or a directory survives, stop that row and inspect it; do not `rm -rf`, force-remove, unlock someone else's worktree, or erase ignored contents to make cleanup succeed. Use `git worktree prune --dry-run` to inspect stale metadata, and prune only confirmed dead references when authorized. Never hard reset/clean a worktree to make it deletable. Record each actual removal and retained branch/SHA.
6. **Other reclaimers are separately scoped.** On macOS, inspect `xcrun simctl list devices`, `xcrun simctl runtime list`, and testing
   clones where applicable. Booted/current simulators, test workers' devices, app data, old runtimes, and snapshots are user state: require
   confirmed inactivity and explicit deletion scope before `xcrun simctl delete <device-id>` or supported runtime deletion. Do not run
   blanket `delete all` or delete-unavailable by default. DerivedData, iOS DeviceSupport, editor database/snapshot stores, package caches
   (pnpm/uv/brew/yarn), and build caches each need their own exact inventory, ownership, retention check, and authorized tool-native
   cleanup. Do not remove editor databases or private session history as a cache. If the platform lacks these tools, mark not applicable
   rather than inventing a result.
7. **Report observed reclamation.** Re-read disk usage and `git worktree list --porcelain`, confirm retained refs and active paths remain, and record actual before/after space. Failure to reclaim the expected bytes is a finding, not grounds to expand deletion scope. Leave unconfirmed candidates intact with precise hold reasons.

**Reply:** before/after disk usage and observed bytes reclaimed, exact removed worktrees/devices/cache scopes, retained branches, and one-line hold reasons naming active ownership or uncommitted/unknown state. Never claim user state was preserved without the recorded inventories.

## Applicability

Use [GSF mode](../SKILL.md) to select direct, read-only, or factory execution. The configured `<config.paths.agents>/WORKER_CONTRACT.md` is the normative policy, lifecycle, recovery, and candidate-evidence contract; this playbook adds only task-specific steps. Direct read-only requests create no jobs or evidence files. Factory execution uses [gsf-run](../../gsf-run/SKILL.md) only within authorized write scope; investigation evidence requires an explicit write grant.

