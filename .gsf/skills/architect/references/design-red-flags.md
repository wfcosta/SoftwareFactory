# Design Red Flags

When screening design candidates, reject or heavily weight against designs that exhibit these patterns. These are signs that the design will be fragile, hard to maintain, or will accumulate technical debt.

## Copy-Paste Patterns

- Near-duplicate code across multiple files with minor variations
- The same conditional logic repeated in different places
- Helper functions that are called only once or twice

## Hidden Coupling

- Global state or singleton access from multiple modules
- Implicit dependencies through shared mutable objects
- Functions that modify their arguments in unexpected ways
- "God objects" that too many modules depend on

## Brittleness

- Tightly coupled classes that require changes in multiple places for one feature
- Deep inheritance hierarchies that are hard to reason about
- Magic numbers or strings scattered throughout the code
- Enums or constants that encode business logic in their names

## Opacity

- Functions that do too many things (more than one responsibility)
- Nested conditionals more than 3 levels deep
- Functions longer than 50 lines
- Booleans passed as flags that completely change behavior

## Future Friction

- Types that use `any` or escape hatches to make illegal states representable
- Optional fields that are always set in practice
- Assertions or runtime checks to enforce what the type system should guarantee
- Stringly-typed APIs where enums or sum types would be clearer

## Violation of Boundaries

- Business logic leaking into infrastructure or framework code
- Validation logic scattered across multiple layers
- Error handling that swallows or re-throws without context
- Database access from presentation layers

## Hard to Test

- Code that requires mocking the entire world to test
- Tight coupling to external services or databases
- Static methods that depend on global state
- Private methods that are complex but can't be tested directly

## Performance Traps

- N+1 query patterns
- Unnecessary data loading or copying
- Algorithms with hidden quadratic complexity
- Missing indexes or poor data structure choices

## Maintainability Issues

- Inconsistent naming conventions
- Comments that explain "what" instead of "why"
- Dead code or commented-out blocks left in
- TODOs or FIXMEs that never get addressed

## Unproved quality and recovery

- New services, queues, caches or extension points without evidence that the simpler current shape misses an accepted consumer scenario
- Unnamed data owners or multiple sources of truth without a conflict/reconciliation rule
- Global consistency or exactly-once claims built from local transactions, broker labels or in-memory deduplication
- Capacity promises without representative load, tenant skew, dependency quotas and resource headroom
- Retry/fallback logic without timeout budgets, ambiguous-effect reconciliation or a defined user-visible rejection/degraded state
- Trust boundaries whose tenant/resource guards exist only in callers, or whose effective privileges are inferred from role names
- A diagram or type sketch presented as actual failure, restore, accessibility or performance proof
- Quality goals such as “fast,” “scalable” or “accessible” without an accepted measurable consumer scenario and real proof prerequisites
- Rollback plans that ignore persisted data, in-flight effects, supported old versions or unavailable recovery keys

Use the [architecture quality procedure](../../domain-review/references/architecture-quality.md) to resolve these concerns; missing evidence is a stated limitation or blocker, not a reason to add speculative infrastructure.
