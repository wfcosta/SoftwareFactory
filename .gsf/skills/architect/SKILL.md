# Skill: Architect

**Trigger:** When writing code that crosses function or module boundaries.

## Operational Steps
1. **Analyze Usage & Callers:**
   - Inspect all existing call sites, type signatures, and module shapes before writing implementation.
2. **Model Domain & Types:**
   - Design robust data structures and types that make illegal states unrepresentable (*Type System Discipline*).
3. **Minimize Public Surface:**
   - Keep internal helper logic encapsulated and expose only clean, minimal public APIs.
