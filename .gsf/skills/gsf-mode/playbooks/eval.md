### Eval

**You own the blinded comparison.** Test how a skill or prompt change affects agent behavior, blinded to avoid bias.

1. **Define the hypothesis.** What change are you testing? What effect do you expect? (e.g., "this new prompt will reduce hallucinations", "this skill will improve code quality")
2. **Select test cases.** Choose a representative set of tasks that exercise the skill or prompt. Aim for variety in difficulty, domain, and edge cases.
3. **Prepare the versions.** Create two versions:
   - Control: Current skill or prompt
   - Treatment: New skill or prompt
4. **Blind the evaluation.** If possible, have the evaluator not know which output came from which version. Shuffle the outputs.
5. **Run the test cases** on both versions. Capture the outputs.
6. **Evaluate against criteria.** Define objective criteria (e.g., "passes tests", "has no security issues", "follows project conventions") and subjective criteria (e.g., "clarity", "maintainability"). Score each output on each criterion.
7. **Analyze the results.** Does the treatment outperform the control? By how much? On which criteria? Are there tradeoffs?
8. **Document the findings.** Write up the hypothesis, test cases, methodology, results, and conclusion.
9. **Decide based on evidence.** If the treatment is better, ship it. If not, iterate or revert.

**Reply:** hypothesis, test cases, methodology, results (with scores if applicable), conclusion, recommendation.
