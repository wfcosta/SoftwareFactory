# GSF Getting Started Guide

Welcome to the Generic Software Factory (GSF). This guide walks you through your first real task, from setup and prompting through verification.

## Prerequisites

Before you begin, ensure you have:
- A target repository where you want to use GSF
- Access to an AI coding agent (Cursor, Claude Code, or similar)
- Git installed and configured
- GitHub CLI (`gh`) installed if you want automatic PR creation

## Step 1: Install GSF in Your Repository

Copy the GSF framework into your target repository:

```bash
# Navigate to your target repository
cd /path/to/your/repo

# Copy GSF files
cp -r /path/to/SoftwareFactory/.gsf .
cp /path/to/SoftwareFactory/config.json .
cp /path/to/SoftwareFactory/GSF_*.md .
```

Verify the installation:
```bash
ls .gsf/  # Should show agents/, skills/, jobs/, etc.
ls .gsf/skills/  # Should show gsf-mode, gsf-run, architect, etc.
```

## Step 2: Configure Your Project

Edit `config.json` to define your project's build, test, and lint commands:

```json
{
  "base_branch": "main",
  "checks": [
    "npm test",
    "npm run lint"
  ],
  "protected_paths": [
    "tests/**",
    "**/*.test.*"
  ],
  "autonomy": {
    "publish_pr": true,
    "merge_pr": false
  }
}
```

Adjust the `checks` array to match your project's actual commands.

## Step 3: Configure GSF Models (Optional but Recommended)

Invoke the **gsf-setup** skill to configure which models GSF uses per role:

```
/gsf-setup
```

This will:
- Detect available models in your environment
- Ask for a reasoning budget (unlimited, large, medium, small)
- Configure models for different roles (feature, bug-fix, performance, etc.)
- Write the configuration to `~/.cursor/rules/gsf-models.mdc`

If you skip this, GSF uses sensible defaults (Grok for code work, Claude for judgment and prose).

## Step 4: Your First Task

Let's walk through a real task. Suppose you need to fix a bug in your application.

### 4.1 Invoke gsf-mode

Attach the **gsf-mode** skill to your request:

```
/gsf-mode There's a bug where the login form doesn't validate email format, allowing invalid emails to be submitted. Fix this.
```

The gsf-mode skill will:
1. Match your task to the appropriate playbook (in this case, bug-fix)
2. Open a todo list with the playbook's steps
3. Route to other skills as needed (how, why, architect, tdd, etc.)

### 4.2 Follow the Bug Fix Playbook

The bug-fix playbook will guide you through:

1. **Reproduce the bug**: Create a failing test or reproduction script
2. **Root cause analysis**: Trace the symptom back to the first wrong turn
3. **Plan the fix**: Use architect if the fix crosses function boundaries
4. **Implement**: Write the minimal fix
5. **Verify**: Run tests and confirm the bug is fixed
6. **Stage commits**: Failing test first, then fix (TDD style)
7. **Open PR**: Create a pull request with proper formatting

### 4.3 Skills Used During Execution

As you follow the playbook, gsf-mode will invoke other skills:

- **how**: To understand how the login form currently works
- **why**: To investigate why validation wasn't added originally
- **tdd**: To write a failing test first
- **blast-radius**: To assess what the validation change might affect
- **no-comments**: To ensure the code is self-documenting
- **prove-it-works**: To verify the fix actually works

## Step 5: Navigation Help

If you're unsure which skill or playbook to use, invoke **gsf-help**:

```
/gsf-help
```

It will:
- Ask what you're trying to accomplish
- Recommend the appropriate skill or playbook
- Provide the exact prompt to execute

## Step 6: Investigation

If you have a question like "how does the auth system work?", use gsf-mode with the investigation playbook:

```
/gsf-mode How does the authentication system work?
```

This will:
- Use the **how** skill to explain the architecture
- If needed, use the **why** skill to explain design decisions
- Provide a clear, cited answer

## Step 7: Parallel Work

For tasks that can be parallelized, gsf-mode will use:

- **arena**: For design bakeoffs (multiple candidates, pick the best)
- **swarm**: For coverage matrices (multiple slices, aggregate results)

Example:
```
/gsf-mode Design a new caching strategy. I want to see 3 competing approaches and pick the best.
```

This will spawn 3 arena runners in parallel, evaluate them, and graft the best parts together.

## Step 8: Overnight Runs

For long tasks where you step away, use the autonomous-run playbook:

```
/gsf-mode I'm going to bed. Fix all the issues in the backlog and create PRs for each.
```

The autonomous-run playbook will:
- Work through each issue systematically
- Not stop at blockers (unless you configured Always-pause)
- Make reversible decisions autonomously
- Create a decision trail via show-me-your-work
- Report when complete

## Step 9: Babysitting a PR

If a PR needs review attention:

```
/gsf-mode Babysit PR #123. Get it green and mergeable.
```

The babysit playbook will:
- Check CI status
- Address review comments
- Resolve conflicts
- Keep going until merge-ready

## Step 10: Verification

Before declaring a task done, gsf-mode always applies **prove-it-works**:
- Verify against the real artifact (not "it compiles")
- Run the actual application
- Test on the real surface

## Common Patterns

### Adding a Feature

```
/gsf-mode Add a user dashboard that shows recent activity, settings, and profile info.
```

- Uses: feature playbook
- Skills: how, architect, tdd, blast-radius, prove-it-works

### Refactoring

```
/gsf-mode Refactor the user service to use a repository pattern instead of direct database access.
```

- Uses: refactoring playbook
- Skills: how, blast-radius, migrate-callers-then-delete, prove-it-works

### Performance Issue

```
/gsf-mode The search page takes 5 seconds to load. Investigate and fix it.
```

- Uses: perf-issue playbook
- Skills: benchmark-checklist, explain-the-number, how, prove-it-works

### Writing Documentation

```
/gsf-mode Write docs for the new API endpoints.
```

- Uses: authoring-a-skill playbook
- Skills: technical-writing

## Tips for Success

1. **Always use gsf-mode**: Attach it to your requests for rigorous execution
2. **Trust the playbooks**: They're battle-tested procedures
3. **Let skills do their job**: Don't manually do what a skill can do
4. **Provide context**: The more context you give, the better the results
5. **Be specific**: Clear, well-scoped tasks work better than vague ones
6. **Use help when stuck**: gsf-help is there for a reason

## Next Steps

- Explore the 23 playbooks in `.gsf/skills/gsf-mode/playbooks/`
- Read the 24 principles in `.gsf/skills/` (they're skills themselves)
- Try a small task to get comfortable with the workflow
- Configure gsf-setup to customize model choices for your needs

## Troubleshooting

**Q: I get an error "skill not found"**
A: Ensure `.gsf/skills/` is in your repository root and has the skill you're trying to invoke.

**Q: The agent is not following the playbook**
A: Make sure you attached the gsf-mode skill. Some agents need the skill attached explicitly.

**Q: I want to customize the workflow**
A: You can edit the playbooks in `.gsf/skills/gsf-mode/playbooks/` or create your own skills in `.gsf/skills/`.

**Q: How do I undo a change?**
A: Use git as normal. GSF works with your existing git workflow.

Happy building! 🚀
