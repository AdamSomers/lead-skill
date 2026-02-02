Draft performance feedback or a review for a direct report.

Argument: person name and optionally the review cycle.
Examples: `/lead-review alice` or `/lead-review bob h1-2026`

## Steps

1. Read:
   - `.lead/people/{name}.md` (full file — this is the primary source)
   - `.lead/context/team.md` (for role and level context)
   - `.lead/context/principles.md` (for calibration against your values)
   - All journal entries, scanning for mentions of this person
   - Any previous review drafts in `.lead/reviews/`

2. If the person file has fewer than 3 entries in the 1:1 Log, warn me:
   "The record for {name} is thin. Consider what evidence you have beyond
   what's captured here. I'll work with what we have, but the review will
   be stronger with more documented observations."

3. Ask me: "What's the context for this review? Is this a formal cycle,
   a promotion case, a growth conversation, or something else?
   What's your overall read on their performance?" Wait for my response.

4. Generate a review draft. Save to `.lead/reviews/{name}-{cycle or date}.md`:

```markdown
# Performance Review: {Full Name}
**Period:** {cycle or date range}
**Role:** {from team.md}
**Level:** {from team.md}
**Date drafted:** {YYYY-MM-DD}
**Status:** Draft

## Summary Assessment
{2-3 sentence overall assessment. Be direct. Where do they stand
relative to expectations for their level?}

## Key Strengths (with evidence)
### {Strength 1}
{specific examples from person file, journal, and my input}

### {Strength 2}
{specific examples}

## Growth Areas (with evidence)
### {Area 1}
{specific examples — observed behavior, not personality}
**Development suggestion:** {concrete, actionable recommendation}

### {Area 2}
{specific examples}
**Development suggestion:** {concrete, actionable recommendation}

## Impact Highlights
{2-3 most significant contributions this period, with context on
why they mattered to the team/org}

## Trajectory
{where is this person headed? what's the next step in their career,
and what needs to happen to get there?}

## Calibration Notes (private — do not share)
{how does this person compare to peers at the same level?
any biases I should check in my assessment?
things the skip-level might ask about?}
```

5. After generating, do a critical review of the draft:
   - **Evidence check:** Is every claim backed by a specific example? Flag any
     that are vague ("they're a great communicator" without evidence).
   - **Bias check:** Am I overweighting recent events (recency bias)?
     Underweighting quiet contributions? Comparing to myself instead of level expectations?
   - **Tone check:** Would I be comfortable reading this aloud to the person?
     Is it fair, specific, and growth-oriented?
   - **Level check:** Am I evaluating against the right bar for their level,
     not the level above or below?

6. Present the draft with the bias/evidence checks and ask:
   "What would you adjust? Any examples I should add or reframe?"

$ARGUMENTS
