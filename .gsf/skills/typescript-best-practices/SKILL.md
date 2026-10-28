---
name: typescript-best-practices
description: "Optional TypeScript-specific guidance when reading or editing a product's .ts or .tsx files. Use with the repository's existing type and runtime conventions; it adds no TypeScript runtime to GSF."
disable-model-invocation: true
---

# TypeScript best practices

Apply [type-system-discipline](../type-system-discipline/SKILL.md) and [boundary-discipline](../boundary-discipline/SKILL.md) first. This skill is optional product-code guidance, not a language requirement for the Markdown-only framework. Follow the repository's actual compiler version, schema tools, performance constraints and public compatibility contracts. Do not add dependencies, telemetry or refactor unrelated code just to apply a pattern.

## Model the domain

- Use discriminated unions for variants. A literal `kind` makes exhaustive cases possible; avoid bags of unrelated optional fields that permit impossible combinations.
- Strengthen a type only where the loose shape makes an operation partial. Use `T[]` while operations remain total; introduce a nonempty tuple where empty input would otherwise force a non-null assertion, cast or supposedly unreachable throw. Model even pairs as pairs, and valid ranges constructively where appropriate.
- Use branded primitives only when distinct domain IDs could actually be confused. Construct them at a validated boundary; never let an unchecked assertion manufacture trust.
- Reuse existing types with `Pick`, `Omit`, `Parameters`, `ReturnType`, `Awaited` or `typeof` before duplicating a declaration. Preserve meaningful domain names instead of exposing accidental implementation shape across public boundaries.

## Validate once and narrow honestly

- External data starts as `unknown`, not `any` or a trusted assertion. Parse once into a named domain type at the boundary; unstructured records stop there. Trust the validated domain inside rather than rechecking it everywhere.
- Reuse the repository's runtime schema library before writing another property-by-property guard. Derive types from the schema when supported; do not add a schema dependency solely for this skill.
- A type predicate must establish every part of its claim. `isX` or `hasX` is not safe merely because its name looks authoritative. Brand verification must check the real domain format or invariant.
- Prefer discriminant switches, then `in`, then `typeof`/`instanceof`, then a genuinely verifying predicate. Avoid `as`, double casts, `!`, and `any` to bypass a missing proof. Assertions needed for a real external API boundary must be minimal, evidenced and isolated; they do not validate runtime data.
- Use `satisfies` when checking a value's shape while preserving its inferred literal information. It is a compile-time check, not runtime validation. `as const` preserves literal/readonly information; it does not prove external data safe.
- Enforce exhaustiveness with a `never` assignment on an already narrowed union; do not silently add a default that swallows future variants. Runtime-invalid external data belongs at the parser, not the exhaustive domain switch.

## Maintain behavior and costs

Use named object arguments where they prevent positional mistakes, but do not introduce avoidable allocation/copying on tokenizers, parsers or render hot paths. Use existing structured diagnostic logging when diagnostics are in scope, without secrets; do not add logs or telemetry as a side quest. Exercise real framework behavior and public boundaries when testing is authorized. Mock only an unavailable external boundary that production already isolates, not the behavior being claimed. A typecheck alone does not prove a UI or service works.

## Illustrative language examples

These declarations illustrate types; they are not framework executables or a bundled verification helper.

```typescript
type LoadState<T> =
  | { kind: "loading" }
  | { kind: "ready"; value: T }
  | { kind: "failed"; message: string };

type NonEmpty<T> = readonly [T, ...T[]];
type Pairs<T> = readonly (readonly [T, T])[];

type AgentId = string & { readonly __brand: "AgentId" };
function isAgentId(input: unknown): input is AgentId {
  return typeof input === "string" && /^agent_[a-z0-9]{12}$/.test(input);
}
```

The brand example's format is fictional: use the actual product invariant, not this regex. Before editing, identify the relevant boundary, existing type/schema convention, expected behavior and performance budget. After authorized edits, report the narrowed scope and checks actually performed; never claim validation merely from reading this guidance.

