---
name: no-comments
description: "Remove code comments, relying on the code itself to be self-documenting. Use before code review or commit. Comments that explain 'what' are redundant; comments that explain 'why' should be encoded in structure or tests."
disable-model-invocation: true
---

# No Comments

Remove code comments, relying on the code itself to be self-documenting. Code should be clear enough that comments are unnecessary. Comments that explain "what" are redundant. Comments that explain "why" should be encoded in structure, tests, or commit messages.

## Principles

### Comments That Explain "What" Are Redundant

Bad:
```python
# Check if user is authenticated
if user.is_authenticated:
    # Redirect to dashboard
    return redirect('/dashboard')
```

The code already says this. The comment adds nothing.

Good:
```python
if user.is_authenticated:
    return redirect('/dashboard')
```

### Comments That Explain "Why" Are a Code Smell

If you need a comment to explain why code is a certain way, that's often a sign that:
- The code is doing something non-obvious (refactor to make it obvious)
- There's a missing test (add a test that captures the constraint)
- There's domain knowledge that should be encoded in types or structure
- There's a workaround that should be documented in a ticket or design doc

Better alternatives:
- Encode the constraint in types (make illegal states unrepresentable)
- Add a test that enforces the constraint
- Document the rationale in a design doc or commit message
- Refactor to make the code self-evident

### When Comments Are Acceptable

Very few cases:
- Public API documentation (docstrings, JSDoc, etc.)
- Complexity that truly cannot be made simpler (and this is rare)
- Legal or compliance requirements
- TODO/FIXME comments that reference a specific ticket (and these should be temporary)

## Process

1. **Scan for comments.** Find all comments in the code.

2. **Classify each comment:**
   - Explains "what"? Delete it. The code already says this.
   - Explains "why"? Can it be encoded in structure, types, or tests? If yes, do that and delete the comment. If no, is it truly necessary? Most of the time, no.
   - Is it a TODO/FIXME? Convert to a ticket if it's real work. Delete if it's speculative.
   - Is it docstring/API docs? Keep these, they're documentation, not comments.

3. **Refactor if needed.** If removing comments makes the code unclear, refactor the code to be self-evident. Better names, better structure, better types.

4. **Delete the comments.** Remove all unnecessary comments.

5. **Verify.** Does the code still make sense without comments? If not, go back to step 3.

## Output

The same code, with comments removed and refactored to be self-documenting.

## Notes

The goal is code that explains itself through:
- Clear names for functions, variables, classes
- Good structure and organization
- Types that encode constraints
- Tests that document behavior
- Small, focused functions

If you need comments to understand code, that's a refactoring signal, not a documentation signal.
