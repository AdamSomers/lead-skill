Initialize the Lead management workspace. This is a one-time setup.

## Steps

1. Create the directory structure:
```
.lead/context/
.lead/people/
.lead/decisions/
.lead/journal/
.lead/drafts/
.lead/reviews/
```

2. Create starter context files from the templates below. For each file, ask me
   to provide the information, then write it. Go one file at a time.

3. Start with `context/team.md` — ask me about my direct reports: names, roles,
   levels, tenure, current focus areas, strengths, and growth edges. This file is
   the **org roll-up** — it represents my team as a unit (roster, dynamics, health).

4. Then `context/priorities.md` — ask me about current quarter/half objectives,
   key results, biggest bets, and success criteria.

5. Then `context/org.md` — ask me about my manager, peer EMs, key cross-functional
   partners (PM, design, QA, dependent teams), and any political dynamics I want
   to track.

6. Finally `context/principles.md` — ask me about my management philosophy, how I
   make decisions, what I value in engineers, and any recurring decision heuristics
   I use (e.g., "bias toward reversible decisions" or "always staff the critical path").

7. Create person files in `.lead/people/`. Every person I interact with regularly
   gets a file — not just reports. There are four types:

   - **report** — my direct reports
   - **chain** — my management chain (manager, skip-level)
   - **peer** — peer managers/EMs I collaborate with
   - **stakeholder** — PMs, cross-functional partners, key ICs on other teams

   For each direct report mentioned in team.md, create a file. Then ask:
   "Who else should we track? Your manager, skip-level, PM partners, peer EMs,
   or other key stakeholders you regularly interact with?"

   Use this template for all person files:

```markdown
# {Full Name}

**Type:** {report | chain | peer | stakeholder}
**Role:** {title}
**Team:** {their team}
**Relationship:** {e.g., "direct report", "my manager", "PM partner", "peer EM"}
**Started tracking:** {YYYY-MM-DD}

## Context
{why this person matters, what you share, dependencies}

## Working Style
{communication preferences, values, how to approach them — fill in over time}

## Strengths
- {from setup context}

## Growth Areas
{include only for Type: report}

## Current Priorities
{what they're focused on now}

## 1:1 Log
<!-- Entries added by /lead-debrief -->

## Notes
<!-- Running observations, context, patterns -->
```

   Note: `team.md` remains the **org roll-up** for the team as a unit.
   Person files are for individual relationship tracking regardless of type.
   Both exist and serve different purposes.

After setup, confirm what was created and suggest running `/lead-sync` to capture
current state of mind.
