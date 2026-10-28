---
name: create-verification-skill
description: Generate a project-local verification skill so agents can drive the app the way a user does and prove changes work. Use when you want automated end-to-end verification of your project.
---

# Create Verification Skill

Generate a project-local verification skill that agents can invoke to drive your application end-to-end and verify that changes work as intended.

## Steps

### 1. Understand the project

Explore the project structure to understand:
- What kind of application is this? (web app, CLI, library, API, etc.)
- How do users interact with it? (UI, HTTP API, command line, function calls)
- What are the key user flows or features?
- How is it typically tested or verified?

Use the **how** skill on the main entry points and key workflows.

### 2. Identify verification methods

Based on the project type, determine appropriate verification methods:

**Web App:**
- Can be driven via browser automation (Playwright, Selenium, Cypress)?
- Are there test helpers or test utilities?
- What's the startup process?

**CLI:**
- How do you invoke it?
- What are the key commands and flags?
- How do you verify it worked? (exit code, output, side effects?)

**Library:**
- How do you test it? (unit tests, integration tests, example code)
- What are the main functions or APIs?
- How do you verify correctness?

**API:**
- How do you start it?
- What are the endpoints?
- How do you make requests and verify responses?

### 3. Design the skill

Create a skill structure with:

**Frontmatter:**
```yaml
---
name: verify
description: Drive the application end-to-end to verify changes work as intended.
---
```

**Steps:**
1. Start the application (if applicable)
2. Execute the key workflow or feature being tested
3. Verify the expected outcome
4. Clean up (stop the application, restore state)

**Specifics for the project:**
- Exact commands to start/stop
- Exact workflow steps
- How to verify success (assertions, checks, observations)
- How to handle failures

### 4. Write the skill

Create `.gsf/skills/verify/SKILL.md` with the designed structure. Make it:
- Deterministic (explicit steps)
- Actionable (clear commands)
- Robust (handles errors gracefully)
- Idempotent (safe to run multiple times)

### 5. Add example usage

Include in the skill:
- How to invoke it
- What it verifies
- Example scenarios

### 6. Document the skill

Update the project's documentation (README.md or GSF guide) to mention the verification skill and how to use it.

## Output

The verification skill file at `.gsf/skills/verify/SKILL.md`, ready for agents to invoke to drive and verify the application.
