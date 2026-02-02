Draft a self-review for your own performance evaluation.

Argument: optional review cycle. Examples: `/lead-self-review` or `/lead-self-review h1-2026`

## Steps

1. Read:
   - `.lead/context/self.md` (primary source — accomplishments, goals, feedback)
   - `.lead/context/priorities.md` (what the team was trying to achieve)
   - `.lead/context/team.md` (team context and your role in it)
   - All journal entries for the review period, scanning for:
     - Wins and accomplishments
     - Challenges you navigated
     - Patterns in your work
   - All decision files in `.lead/decisions/` (decisions you drove)
   - `.lead/references/` for leveling guides or review criteria

2. Ask: "What review period should I cover? And what's the context — is this a
   formal performance review, a promotion packet, or something else?
   Any specific accomplishments or themes you want to make sure I capture?"

3. Generate a self-review draft. Save to `.lead/reviews/self-{cycle or date}.md`:

```markdown
# Self-Review: {cycle or date range}
**Role:** {from self.md}
**Level:** {from self.md}
**Date drafted:** {YYYY-MM-DD}
**Status:** Draft

## Summary
{2-3 sentence overview of your performance this period. Be direct about
where you exceeded, met, or fell short of expectations for your level.}

## Key Accomplishments

### {Accomplishment 1}
**Impact:** {what changed because of this — quantify if possible}
**My role:** {what specifically you did, not just what the team did}
**Visibility:** {who saw this, why it mattered to the org}

### {Accomplishment 2}
{same structure}

### {Accomplishment 3}
{same structure}

## How I Drove Results
{narrative connecting your accomplishments to team/org priorities.
Show the thread between what you did and what the team achieved.}

## Challenges Navigated
{1-2 significant challenges you faced and how you handled them.
Shows resilience and judgment, not just wins.}

## Growth This Period
{skills developed, feedback incorporated, how you stretched.
Reference growth areas from self.md and show progress.}

## Areas for Development
{honest assessment of where you fell short or want to improve.
Shows self-awareness. Be specific, not vague.}

## Goals for Next Period
{what you're aiming for next — connects to career goals in self.md}

## Supporting Evidence
{list of artifacts: PRDs shipped, docs written, decisions made, feedback received.
Makes the review defensible.}
```

4. After generating, do a critical review:
   - **Impact check:** Is each accomplishment framed in terms of impact, not just activity?
   - **Evidence check:** Can each claim be backed up if questioned?
   - **Level check:** Does this read as appropriate for your level, or are you
     underselling senior work or overselling routine work?
   - **Balance check:** Is there an honest growth area, or does it read as all wins?
   - **Narrative check:** Does the overall story hang together?

5. Present the draft with these checks and ask:
   "What would you adjust? Any accomplishments I missed or underweighted?"

6. Offer to update `.lead/context/self.md` with any new accomplishments or
   feedback that came up during this process.

$ARGUMENTS
