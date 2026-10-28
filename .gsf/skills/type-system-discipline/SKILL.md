---
name: type-system-discipline
description: "When designing types or a signature in any typed language, make illegal states unrepresentable, brand primitives, parse external data at boundaries."
disable-model-invocation: true
---

# Type System Discipline

Use the type system to make illegal states unrepresentable. Encode constraints in types, not runtime checks.

## Techniques

1. **Make illegal states unrepresentable.** Use sum types, enums, or branded types to encode what's valid.

2. **Brand primitives.** Don't use raw strings or numbers for domain concepts. Create branded types.

3. **Parse at boundaries.** Convert external data (JSON, user input) to internal types at system boundaries. Trust internal types inside.

4. **Encode invariants in types.** If an invariant must hold, encode it in the type system.

## Example

Instead of `type Status = string` (allows any string), use `type Status = 'pending' | 'approved' | 'rejected'` (only valid states).

## Output

Types that encode domain constraints, making illegal states unrepresentable.
