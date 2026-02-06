Research a management topic using web sources.

Argument: question or topic. Examples:
- `/lead-research how to give feedback to a defensive engineer`
- `/lead-research engineering manager levels at tech companies`
- `/lead-research managing through a reorg`

## Steps

1. Read `.lead/context/principles.md` to understand the user's management philosophy
   and tailor research to their context.

2. Search the web for relevant, high-quality sources on the topic. Prioritize:
   - Respected management/leadership publications (HBR, First Round Review, Lara Hogan, etc.)
   - Engineering leadership blogs and practitioner perspectives
   - Research-backed insights over opinion pieces
   - Recent content when timeliness matters (e.g., industry trends)

3. Synthesize findings into a concise brief:

```markdown
# Research: {topic}
**Date:** {YYYY-MM-DD}

## Key Insights
{3-5 bullet points summarizing the most actionable findings}

## Perspectives

### {Source/Author 1}
{2-3 sentence summary of their perspective or framework}

### {Source/Author 2}
{2-3 sentence summary}

### {Source/Author 3}
{2-3 sentence summary}

## Applying This to Your Context
{Based on principles.md and any relevant context from the workspace,
how might these insights apply to the user's specific situation?}

## Sources
- [{title}]({url})
- [{title}]({url})
- [{title}]({url})
```

4. Ask: "Would you like me to save this to `.lead/references/` for future use?"
   If yes, save to `.lead/references/{slug}.md`.

5. If the research relates to a specific person, decision, or priority, offer to
   note the connection: "This seems relevant to {X}. Want me to add a reference
   in that file?"

---

## Next Commands

After research, suggest returning to the triggering task:
- `/lead-prep {name}` — if researching for a meeting
- `/lead-decide {topic}` — if researching for a decision
- `/lead-review {name}` — if researching for a review
- `/clear` — before the next command

$ARGUMENTS
