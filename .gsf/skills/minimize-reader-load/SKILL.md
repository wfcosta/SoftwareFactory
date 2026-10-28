---
name: minimize-reader-load
description: "When reviewing or shaping code that's hard to trace, count layers and hidden state, collapse one-caller wrappers, shrink mutable scope. Make code easy to understand."
disable-model-invocation: true
---

# Minimize Reader Load

Make code easy to trace and understand. Reduce layers, hidden state, and indirection.

## When to Apply

- Code is hard to follow
- Reviewers struggle to understand changes
- Bugs are hard to locate
- Onboarding is difficult

## Process

1. **Count the layers.** How many layers of indirection does the reader traverse? Collapse them.

2. **Identify hidden state.** Where is state hidden in closures, globals, or complex objects? Make it explicit.

3. **Collapse one-caller wrappers.** Functions that are called only once are unnecessary indirection. Inline them.

4. **Shrink mutable scope.** Reduce the scope of mutable variables. Keep them as local as possible.

5. **Simplify control flow.** Reduce nesting, use early returns, avoid deep conditionals.

## Example

Instead of:
```python
def process(data):
    validated = validate(data)
    transformed = transform(validated)
    result = compute(transformed)
    return format(result)
```

Where each function is a one-liner wrapper, collapse to:
```python
def process(data):
    return format(compute(transform(validate(data))))
```

Or keep it as one function if the operations are simple.

## Output

Code with fewer layers, less hidden state, and easier-to-follow control flow.
