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
.lead/references/
.lead/library/
```

2. Introduce the setup:

   "Welcome to Lead. I'll help you set up your management workspace.

   To get started, I need to capture context about:
   - **About you** — your role, career goals, strengths, growth areas
   - **Your team** — direct reports, their roles, strengths, growth areas
   - **Your rollups** — indirect reports you want to track (skip-levels, etc.)
   - **Your priorities** — current objectives, key results, biggest bets, risks
   - **Your organization** — manager, skip-level, peer managers, key stakeholders, org dynamics
   - **Your principles** — management philosophy, decision heuristics, feedback approach
   - **References** — leveling guides, design docs, policies you consult
   - **Leadership library** — favorite management books and frameworks

   This can take a while if you have many reports and stakeholders."

3. Use AskUserQuestion to offer a choice between setup approaches:

   Question: "How would you like to set up your workspace?"
   Options:
   - **Fill in a template (Recommended)** — I'll create an intake document you can fill in at your own pace, in your editor, between meetings. When done, run `/lead-init` again to process it.
   - **Conversational setup** — We walk through each section together. More guided, but takes longer in one sitting.

4. Wait for their choice and proceed to the appropriate section below.

---

## Option A: Template-Based Setup

If they choose the template approach:

1. Create `.lead/intake.md` with this content:

```markdown
# Lead Intake Template

Fill this in at your own pace. Don't worry about perfection — you can always
update these files later. When you're done, run `/lead-init` again and I'll
process this into your workspace.

Delete the instructions in {braces} as you fill things in.

---

## About Me

**My name:** {your name}
**My role:** {your title}
**My level:** {your level, if applicable}
**Started this role:** {approximate date}

### Career Goals
{Where are you headed? Next role, skills to develop, long-term aspirations.}

### Current Growth Focus
{1-2 areas you're actively working on developing}

### My Strengths
- {what you're known for}
- {what comes naturally}

### My Growth Areas
- {where you're stretching}
- {feedback you've received}

---

## My Team

**Team name:** {your team's name}

### Direct Reports

For each report, copy this block:

#### {Full Name}
- **Role:** {title}
- **Level:** {if applicable}
- **Tenure:** {how long on your team}
- **Current focus:** {what they're working on}
- **Strengths:** {what they're good at}
- **Growth areas:** {where they need development}
- **Notes:** {anything else relevant}

{Add more reports as needed}

### Rollups (Indirect Reports)
{People in your org who don't report directly to you but you want to track —
skip-levels, high-potential ICs, key contributors several layers deep, etc.}

#### {Full Name}
- **Role:** {title}
- **Level:** {if applicable}
- **Reports to:** {which of your directs they roll up through}
- **Why tracking:** {visibility, high-potential, retention risk, etc.}
- **Strengths:** {what they're good at}
- **Growth areas:** {where they need development}
- **Notes:** {anything else relevant}

{Add more rollups as needed, or skip if you don't manage managers}

### Team Dynamics
{How is the team working together? Any tensions, strengths, concerns?}

### Current Team State
{Overall health of the team right now}

---

## Priorities

### Current Objectives
{What is your team trying to achieve this quarter/half?}

### Key Results
{How will you measure success?}

### Biggest Bets
{Where are you taking risks? What are you investing in?}

### Explicitly NOT Doing
{What have you decided to deprioritize?}

### Biggest Risks
{What could derail your priorities?}

---

## Organization

### My Manager
- **Name:** {their name}
- **Role:** {their title}
- **Their priorities:** {what they care about}
- **Working style:** {how to work effectively with them}
- **Notes:** {anything relevant for managing up}

### Skip-Level
- **Name:** {their name}
- **Role:** {their title}
- **Notes:** {what you know about their priorities, style}

### Peer Managers
{Other EMs/managers you collaborate with regularly}

#### {Name}
- **Role:** {title}
- **Team:** {their team}
- **Shared dependencies:** {what you collaborate on}
- **Notes:** {relationship context}

{Add more peers as needed}

### Key Stakeholders
{PMs, design leads, other partners you work with closely}

#### {Name}
- **Role:** {title}
- **Relationship:** {how you work together}
- **Their priorities:** {what they care about}
- **Notes:** {anything relevant}

{Add more stakeholders as needed}

### Org Dynamics
{Political landscape, tensions, alliances, things to be aware of}

---

## My Principles

### Management Philosophy
{How do you think about your role? What kind of manager do you try to be?}

### Decision Heuristics
{Rules of thumb you use when making decisions. Examples:
- "Bias toward reversible decisions"
- "Always staff the critical path"
- "When in doubt, talk to the customer"}

### What I Value in Engineers
{What do you look for and reward?}

### How I Give Feedback
{Your approach to feedback — timing, style, frequency}

### Known Biases
{Biases you're aware of in yourself that you try to compensate for}

---

## References

{List any documents you want to add to .lead/references/ — leveling guides,
design docs, project plans, policies, etc. You can add file paths or just
note what you want to include and we'll sort it out.}

---

## Leadership Library

I'll create a library of frameworks to reference when giving advice. Defaults:
- High Output Management (Grove) — leverage, task-relevant maturity
- Radical Candor (Scott) — feedback, care/challenge quadrant
- Situational Leadership (Blanchard) — adapting style to development level
- COIN Feedback — structured feedback delivery
- Mythical Man-Month (Brooks) — team scaling, planning pitfalls
- Pragmatic Programmer (Hunt/Thomas) — technical craft, trade-offs

### Include default library?
{yes / no}

### Other favorite management books or frameworks?
{List any other books, frameworks, or mental models you'd like me to add.
I'll create reference files for them. Examples: "The Manager's Path",
"Turn the Ship Around", "Thinking in Systems", etc.}

---

Done? Run `/lead-init` and I'll process this into your workspace.
```

2. Tell them:
   "Created `.lead/intake.md`. Fill it in when you're ready — no rush.
   When you're done, run `/lead-init` again and I'll process it into
   your workspace files.

   Tip: You don't need to fill in everything. Start with what you know.
   These files evolve over time."

3. Stop here. They'll come back when ready.

---

## Processing the Intake Template

If `/lead-init` is run and `.lead/intake.md` exists with content:

1. Read `.lead/intake.md` and parse the content.

2. Create the context files:
   - `context/team.md` — from the "My Team" section
   - `context/priorities.md` — from the "Priorities" section
   - `context/org.md` — from the "Organization" section
   - `context/principles.md` — from the "My Principles" section
   - `context/self.md` — from the "About Me" section

3. Create person files in `.lead/people/` for:
   - Each direct report (Type: report)
   - Each rollup/indirect report (Type: rollup)
   - Manager and skip-level (Type: chain)
   - Each peer manager (Type: peer)
   - Each stakeholder (Type: stakeholder)

   Use the standard person file template, populating from intake data.

4. Handle references if any were mentioned.

5. Set up the leadership library:
   - If "Include default library?" is yes, copy library templates to `.lead/library/`
   - If other books/frameworks were listed, create additional framework files for them
   - If no to defaults and no other books, create `.lead/library/index.md` with empty list

6. Rename `intake.md` to `intake-processed-{date}.md` so it's preserved
   but won't be reprocessed.

7. Summarize what was created and suggest running `/lead-sync`.

---

## Option B: Conversational Setup

If they choose the conversational approach, proceed step by step:

1. `context/team.md` — ask about direct reports: names, roles, levels, tenure,
   current focus areas, strengths, and growth edges.

2. `context/priorities.md` — ask about current quarter/half objectives, key
   results, biggest bets, and success criteria.

3. `context/org.md` — ask about manager, peer EMs, key cross-functional partners
   (PM, design, QA, dependent teams), and any political dynamics.

4. `context/principles.md` — ask about management philosophy, decision heuristics,
   what they value in engineers, how they give feedback.

5. `context/self.md` — ask about career goals, current growth focus, strengths,
   accomplishments to capture.

6. Create person files in `.lead/people/`. For each direct report from team.md,
   create a file. Then ask: "Who else should we track? Indirect reports (rollups),
   your manager, skip-level, PM partners, peer EMs, or other key stakeholders?"

   Person file template:
   ```markdown
   # {Full Name}

   **Type:** {report | rollup | chain | peer | stakeholder}
   **Role:** {title}
   **Team:** {their team}
   **Reports to:** {for rollups — which direct they roll up through}
   **Relationship:** {e.g., "direct report", "skip-level report", "my manager", "peer EM"}
   **Started tracking:** {YYYY-MM-DD}

   ## Context
   {why this person matters, what you share, dependencies}

   ## Working Style
   {communication preferences, values, how to approach them — fill in over time}

   ## Strengths
   - {from setup context}

   ## Growth Areas
   {include only for Type: report or rollup}

   ## Current Priorities
   {what they're focused on now}

   ## 1:1 Log
   <!-- Entries added by /lead-debrief -->

   ## Notes
   <!-- Running observations, context, patterns -->
   ```

7. Ask about references: "Do you have any reference documents you'd like to add?
   These could be leveling guides, design docs, project plans, policies, or
   anything else you regularly consult. You can add files to `.lead/references/`
   now or at any time later."

8. Set up the leadership library: "I'll create a library of leadership frameworks
   that I'll reference when giving advice. The defaults include:
   - High Output Management (Grove) — leverage, delegation, task-relevant maturity
   - Radical Candor (Scott) — feedback, care/challenge quadrant
   - Situational Leadership (Blanchard) — adapting style to development level
   - COIN Feedback — structured feedback delivery
   - Mythical Man-Month (Brooks) — team scaling, planning pitfalls
   - Pragmatic Programmer (Hunt/Thomas) — technical craft, trade-offs

   Want me to set up the defaults?"

   If yes, copy the library templates to `.lead/library/`.
   If no, create just `.lead/library/index.md` with an empty frameworks list.

   Then ask: "Any other favorite management books or frameworks you'd like me
   to add? I can create reference files for them." If they list any, create
   framework files using the standard format (Key Models, Decision Heuristics,
   Anti-Patterns).

After setup, confirm what was created and suggest running `/lead-sync` to capture
current state of mind.

$ARGUMENTS
