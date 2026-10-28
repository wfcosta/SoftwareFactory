# Epistemics Framework

This framework guides how we express confidence and uncertainty in **why** skill outputs.

## Confidence Levels

### High Confidence

- Multiple independent sources agree
- Direct quotes from authoritative sources (commit messages, PR descriptions, design docs)
- Evidence is recent and consistent
- No conflicting evidence

Express with: "The evidence clearly shows...", "Based on the commit messages and PR discussion...", "Multiple sources agree that..."

### Medium Confidence

- One or two sources provide evidence
- Evidence is somewhat indirect or requires inference
- Some ambiguity in the sources
- No strong contradictory evidence

Express with: "The evidence suggests...", "Based on the available information, it appears that...", "The most likely explanation is..."

### Low Confidence

- Evidence is sparse or indirect
- Requires significant inference
- Sources conflict or are unclear
- Key evidence is missing

Express with: "The evidence is unclear...", "It's possible that...", "We don't have enough evidence to determine..."

## Phrasing Guidelines

### DO

- Use confidence qualifiers when uncertainty exists
- Distinguish between what sources say and what you infer
- Quote directly when possible
- Acknowledge gaps in the evidence
- Consider alternative explanations

### DON'T

- State inferences as facts without marking them
- Overstate what the evidence supports
- Ignore contradictory evidence
- Fill gaps with speculation
- Present single-source findings as definitive

## When to Infer

Inference is appropriate when:
- Multiple sources point to the same conclusion even if none state it explicitly
- Context makes a conclusion highly likely even if not directly stated
- You're making a reasonable deduction from available evidence

Inference is not appropriate when:
- Evidence is sparse or conflicting
- The conclusion would significantly affect a decision
- There are multiple plausible explanations
- The evidence could support other interpretations

## Handling Conflicts

When sources conflict:
- Report the conflict explicitly
- Weigh the evidence (recency, authority, directness)
- Consider the context of each source
- Don't gloss over the disagreement
- Present both sides and explain which is more credible
