---
name: foundational-thinking
description: "Before writing logic: choose core types, data structures, and module shapes before writing implementation code. Sequence scaffold vs. feature work deliberately. Analyze concurrent actors and shared state before introducing synchronization."
---

# Foundational Thinking

Before writing implementation code, get the foundational decisions right: types, data structures, module shapes, and concurrency model.

## Before Writing Code

1. **Choose core types and data structures.** What are the entities? How do they relate? What structures represent them? Apply **model-the-domain**.

2. **Design module shapes.** How should code be organized? What are the boundaries? Who owns what?

3. **Sequence scaffold vs. feature.** Build the scaffolding first (types, interfaces, module structure), then fill in the feature logic. This makes implementation self-evident.

4. **Analyze concurrency.** What actors share state? How do they coordinate? Apply **separate-before-serializing-shared-state** before adding locks or mutexes.

## Benefits

- Implementation becomes obvious once foundations are right
- Reduces rework from wrong foundational decisions
- Makes the code self-documenting through good structure
- Prevents concurrency bugs by designing shared state properly

## Output

A type sketch, module structure, and concurrency model before any implementation code.
