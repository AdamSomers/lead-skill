Prepare for a meeting or 1:1.

Argument: person name, meeting name, or description. Example: `/lead-prep alice` or `/lead-prep quarterly planning`

## Steps

1. Determine the prep type:
   - If the argument matches a file in `.lead/people/`, read the file and check the **Type** field:
     - `report` → **Report 1:1 Prep**
     - `rollup` → **Rollup 1:1 Prep**
     - `chain` → **Upward Prep**
     - `peer` → **Peer Prep**
     - `stakeholder` → **Stakeholder Prep**
   - If no matching person file → **Meeting Prep**

2. For all person-based preps, read:
   - `.lead/people/{name}.md` (full file)
   - `.lead/context/priorities.md`
   - `.lead/context/org.md`
   - `.lead/context/principles.md` (for report preps especially)
   - Last 5 journal entries, scanning for mentions of this person
   - Scan `.lead/references/` for docs relevant to discussion topics (project plans,
     design docs, or other material that may come up in the meeting)

Save all prep docs to `.lead/drafts/prep-{name}-{YYYY-MM-DD}.md`.

---

## Report 1:1 Prep (Type: report)

```markdown
# 1:1 Prep: {Name} — {YYYY-MM-DD}

## Context Since Last 1:1
{summary of recent 1:1 log entries, journal mentions, changes in their work}

## Their Current State
- Focus area: {from person file}
- Recent wins: {if any noted}
- Potential concerns: {from patterns in notes}

## Suggested Topics
1. {topic} — {why this matters now, what to ask}
2. {topic} — {why this matters now, what to ask}
3. {topic} — {why this matters now, what to ask}

## Questions to Ask
- {open-ended question that gets at something important}
- {question about their growth area}
- {question about blockers or team dynamics}

## Feedback to Deliver
{any feedback queued in their file or surfaced from journal entries}

## Things to Share
- {relevant priority updates or org context they should know}

## Outcomes to Push For
- {what should be different after this conversation}
```

---

## Rollup 1:1 Prep (Type: rollup)

Prep for skip-level or indirect report 1:1. Focus: visibility, career development,
gathering signal, and maintaining connection across layers.

```markdown
# Skip-Level Prep: {Name} — {YYYY-MM-DD}

## Context
- **Reports to:** {their manager, your direct report}
- **Role:** {their title and level}
- **How long in role:** {tenure context}

## What I Know About Them
{summary from person file — strengths, growth areas, recent work}

## Their Manager's Perspective
{what their direct manager has shared about them, if anything in notes}

## Topics to Explore
1. {topic} — {why this matters, what signal to gather}
2. {topic} — {why this matters, what signal to gather}

## Questions to Ask
- {about their experience on the team}
- {about their growth and career aspirations}
- {about what's working / not working from their vantage point}
- {about their relationship with their manager, if appropriate}

## Signal to Gather
{what are you trying to learn? team health, manager effectiveness, retention risk, etc.}

## Things to Share
- {org context that helps them see the bigger picture}
- {recognition for work you've noticed}

## Calibration Notes
{how does this person compare to peers? promotion potential? retention risk?}
```

---

## Upward Prep (Type: chain)

Prep for meeting your manager or skip-level. Focus: what to share, what to ask for,
how to position your team's work, and what signals to read.

```markdown
# Upward Prep: {Name} — {YYYY-MM-DD}

## What They Care About Right Now
{from person file — their priorities, pressures, what they're measured on}

## What I Need to Communicate
- **Team wins to highlight:** {make your team legible}
- **Risks to flag early:** {things they should hear from you, not discover later}
- **Asks / decisions needed:** {what you need from them and why}

## How to Frame Things
{given their working style and priorities, what framing will land best?}

## Questions to Ask Them
- {about org direction, their read on things, upcoming changes}
- {about your own growth or standing, if appropriate}

## Signals to Watch For
{what to pay attention to in their responses — shifts in priority, concerns, etc.}

## Things to NOT Bring Up
{topics that are better raised differently or at another time}
```

---

## Peer Prep (Type: peer)

Prep for meeting a peer EM or manager. Focus: alignment, shared dependencies,
mutual asks, and relationship maintenance.

```markdown
# Peer Prep: {Name} — {YYYY-MM-DD}

## Shared Dependencies
{what do our teams depend on each other for? current status?}

## Their Current Priorities
{from person file — what's top of mind for them}

## My Asks
- {what I need from them or their team, with context on urgency}

## Their Likely Asks
- {what they probably need from me, based on recent context}

## Alignment Topics
- {areas where we need to get on the same page}

## Relationship Notes
{anything to maintain the relationship — acknowledge their wins, offer help, etc.}
```

---

## Stakeholder Prep (Type: stakeholder)

Prep for meeting a PM, cross-functional partner, or key IC from another team.
Focus: their perspective, what they need from you, and influence strategy.

```markdown
# Stakeholder Prep: {Name} — {YYYY-MM-DD}

## Their Priorities & Perspective
{what they care about, what pressures they face}

## Our Shared Work
{what we're collaborating on, current state}

## What They Need From Me
- {deliverables, decisions, information, support}

## What I Need From Them
- {same}

## Points to Align On
- {areas of potential misalignment and how to address them}

## Influence Strategy
{how to frame things to get the outcome I need, given their perspective and style}
```

---

## Meeting Prep (no person file match)

1. Read:
   - `.lead/context/priorities.md`
   - `.lead/context/org.md`
   - Last 3 journal entries for relevant mentions
   - Any relevant decision files in `.lead/decisions/`
   - Scan `.lead/references/` for docs relevant to the meeting topic

2. Ask me: "What's the meeting about and who's in the room?" if not clear from arguments.

3. Generate prep:

```markdown
# Meeting Prep: {topic} — {YYYY-MM-DD}

## My Goals for This Meeting
{inferred from context + priorities}

## Key Stakeholders & Their Likely Positions
{from org.md and any relevant person files}

## Points to Make
1. {point with supporting reasoning}
2. {point with supporting reasoning}

## Potential Pushback & Responses
- They might say: {X} → Respond with: {Y}

## Questions to Ask
- {strategic question}

## Decision to Drive Toward
{what decision or alignment should come out of this}
```

---

## For all prep types

If the person file is thin, flag it: "The file for {name} is sparse — {N} entries
in the log. After this meeting, run `/lead-debrief {name}` to build up context."

$ARGUMENTS
