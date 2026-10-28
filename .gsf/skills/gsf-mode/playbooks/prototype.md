### Prototype

**You own the sketch.** Build a throwaway implementation to make a design or behavioral decision cheaply, or to settle an empirical fork by observing it. This is not production code. It may be discarded after the decision.

1. **Define the decision.** What question are you trying to answer? What fork are you trying to settle? What design choice are you evaluating?
2. **Scope the prototype.** The smallest implementation that answers the question. No polish, no error handling, no edge cases unless they're central to the decision.
3. **Build it fast.** Use the quickest path to a working artifact. Hardcode values, skip abstractions, cut corners that don't affect the decision.
4. **Run it.** Execute the prototype with representative data or scenarios. Observe the behavior.
5. **Answer the question.** Does the prototype answer the decision question? What did you learn?
6. **Document the result.** Write down what the prototype showed, what decision it informed, and why that decision is justified.
7. **Discard or evolve.** If the prototype served its purpose, delete it. If it's worth keeping as production code, refactor it to production standards (error handling, edge cases, tests) via the Feature or Refactoring playbook.

**Reply:** the decision question, prototype scope, what you built, what you observed, the decision reached, next steps (discard or evolve to production).
