Structured decision analysis with optional multi-perspective council.

Argument: decision topic. Example: `/lead-decide reorg team structure` or `/lead-decide adopt new testing framework`

## Steps

1. Read:
   - `.lead/context/team.md`
   - `.lead/context/priorities.md`
   - `.lead/context/org.md`
   - `.lead/context/principles.md`
   - Any related decision files in `.lead/decisions/` (scan filenames for related topics)
   - Last 5 journal entries for relevant context
   - Scan `.lead/references/` for docs relevant to the decision topic (policies,
     design docs, project plans, or other material that could inform the decision)

2. Ask me to describe the decision: "Tell me about this decision. What's the context,
   what are you considering, and what's making it hard?" Wait for my response.

3. Create a decision document at `.lead/decisions/{YYYY-MM-DD}-{slug}.md`.
   Work through it section by section, pausing after each to let me react:

```markdown
# Decision: {title}
**Date:** {YYYY-MM-DD}
**Status:** In Progress | Decided | Revisit by {date}
**Owner:** {me}

## Context
{why this decision is on the table now, what triggered it}

## Stakes
- **If we get this right:** {upside}
- **If we get this wrong:** {downside}
- **If we do nothing:** {what happens by default}
- **Reversibility:** Easy / Moderate / Hard to reverse

## Options
### Option A: {name}
- **Description:** {what this looks like}
- **Pros:** {list}
- **Cons:** {list}
- **Requires:** {resources, buy-in, dependencies}

### Option B: {name}
{same structure}

### Option C: {name or "Do Nothing"}
{same structure}

## Council Perspectives
{see below}

## Recommendation
{synthesized recommendation with reasoning}

## Decision
{filled in after I decide — what we chose and why}

## Follow-up
- [ ] {actions to implement the decision}
- Revisit by: {date if applicable}
```

4. **Council Perspectives.** For the Council section, analyze the decision from
   these five perspectives. Tailor the specific roles to match the stakeholders
   from `.lead/context/org.md` when relevant:

   - **Your skip-level / senior leadership:** How does this look from one level up?
     Does it align with org strategy? What would they push back on?
   - **Your most senior IC:** What's the technical reality? What are they going to
     flag that leadership won't see?
   - **Your PM/cross-functional partner:** How does this affect timelines, dependencies,
     and commitments to other teams?
   - **The contrarian:** What's the strongest case against the emerging consensus?
     What are you not seeing because of your position?
   - **A new hire on your team 6 months from now:** How will this decision feel to
     someone who wasn't here for the context? Is it legible? Is it fair?

   Write each perspective as 2-4 sentences, not a generic platitude — ground them
   in the specific context of this decision and this team.

5. Synthesize a recommendation. Be opinionated. Reference my principles from
   `principles.md` where relevant. Explicitly flag which option my principles
   point toward and whether that aligns with the other evidence.

6. Ask me: "What's your call?" Record my decision in the Decision section.
   Update any other files affected (priorities.md, people files, journal).

7. **Append follow-up actions to `.lead/actions.md`:**
   - All decision follow-ups default to **P1** (decisions need timely execution)
   - Include source: `*source: decisions/{date}-{slug}*`
   - Include added date and any mentioned deadlines

$ARGUMENTS
