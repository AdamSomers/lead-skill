# Requirements: Leadership Library Layer

## Overview

Add a persistent library of leadership frameworks, books, and mental models to the Lead system. Any command can optionally draw on this library to ground advice in established thinking. The library is ambient context, not a separate workflow — Claude reads it and applies relevant frameworks naturally when the situation calls for it.

## File Structure

Create the following under the existing `.lead/` data directory:

```
.lead/library/
├── index.md
├── high-output-mgmt.md
├── mythical-man-month.md
├── radical-candor.md
├── situational-leadership.md
├── pragmatic-programmer.md
└── coin-feedback.md
```

## index.md — Control File

This file tells Claude what's available and how the user wants it applied. Structure:

```markdown
# Leadership Library

## Enabled Frameworks
<!-- Each entry: filename — short description of key models -->
- high-output-mgmt.md — delegation, leverage, task-relevant maturity
- radical-candor.md — feedback, care/challenge quadrant
- situational-leadership.md — directing/coaching/supporting/delegating
- coin-feedback.md — structured feedback delivery (Context, Observation, Impact, Next steps)
- mythical-man-month.md — team scaling, planning, complexity
- pragmatic-programmer.md — technical craft, trade-offs, DRY, orthogonality

## My Preferences
<!-- User edits this section to express personal weighting -->
- Default: ground advice in these frameworks when relevant, don't force it
- For feedback situations, prefer COIN structure
- For delegation/prioritization, lean on Grove's leverage and task-relevant maturity
- For scaling/staffing decisions, lean on Brooks

## Frameworks I Want to Explore
<!-- Claude can suggest additions here during /lead-reflect -->
```

## Framework Files — Format

Each `.md` file is a **decision-ready reference**, not a book summary. Claude needs to be able to quickly determine: what models does this framework offer, what vocabulary does it use, and when should each model be applied?

Use this structure for each file:

```markdown
# {Book/Framework Title}
**Author:** {name}
**Core idea:** {1-2 sentence thesis}

## Key Models

### {Model Name}
**What it is:** {brief explanation}
**When to apply:** {specific situations in a management context}
**Vocabulary:** {key terms the user may use or Claude should use}

### {Model Name}
...

## Decision Heuristics
<!-- Concrete if/then rules derived from the framework -->
- If {situation}, then {this framework suggests}...

## Anti-Patterns
<!-- What the framework warns against -->
```

## Default Framework Files to Create

Create the 6 default files using Claude's training knowledge. Prioritize accuracy of the models and applicability to senior engineering management. Each file should be 40-80 lines. Key content for each:

**high-output-mgmt.md** — Andy Grove. Cover: managerial leverage (high-leverage activities), task-relevant maturity (directive to delegative spectrum based on experience with the *specific task*), output of a manager = output of their org, 1:1s as the reports' meeting, decision-making process, indicators and paired indicators.

**mythical-man-month.md** — Fred Brooks. Cover: Brooks's Law (adding people to a late project), surgical team model, conceptual integrity, the second-system effect, plan to throw one away, no silver bullet. Especially relevant for staffing decisions and timeline estimation.

**radical-candor.md** — Kim Scott. Cover: the 2x2 (Care Personally × Challenge Directly), the four quadrants (Radical Candor, Obnoxious Aggression, Ruinous Empathy, Manipulative Insincerity), guidance on giving praise and criticism, soliciting feedback before giving it.

**situational-leadership.md** — Blanchard/Hersey. Cover: the four styles (Directing, Coaching, Supporting, Delegating) mapped to follower development level (D1-D4: enthusiastic beginner through self-reliant achiever). Key insight: leadership style should match the follower's competence AND commitment on the specific task.

**pragmatic-programmer.md** — Hunt/Thomas. Cover: DRY principle, orthogonality, tracer bullets, good-enough software, broken windows theory, programming by coincidence, the importance of estimating. Most relevant for technical review and architecture discussions.

**coin-feedback.md** — COIN feedback method. Cover: the four steps (Context, Observation, Impact, Next steps). Include examples of well-structured COIN feedback. Note when to use COIN vs. other feedback approaches (best for specific behavioral feedback, less suited for broad performance discussions).

## Integration with Existing Commands

### CLAUDE.md Update

Add a new numbered behavior guideline to `CLAUDE.md`:

```
N. **Ground advice in the leadership library.** Before giving management advice,
   coaching suggestions, or strategic recommendations in any command, check
   `.lead/library/index.md`. If relevant frameworks exist for the situation:
   - Pick the 1-2 most applicable frameworks (don't dump all of them)
   - Weave them in naturally — cite the model, use its vocabulary
   - Connect the framework to the specific situation, don't just describe it
   - Respect the user's stated preferences in index.md
   If the user says "ground this", "what would my library say", or similar,
   go deeper and synthesize across multiple frameworks.
   If no framework is relevant, don't force it — just give direct advice.
```

### Command-Specific Integration

No commands need structural changes. The library is ambient. But these commands benefit most:

- **`/lead-prep` (report type):** When suggesting feedback to deliver or growth-area questions, reference relevant frameworks (e.g., situational leadership for how directive to be, COIN for structuring feedback).
- **`/lead-decide` council:** Each council persona in `.lead/council/` should have an optional `Frameworks:` field listing which library entries that persona favors. Example: the skip-level persona might list `high-output-mgmt.md` (thinks in leverage and output). The contrarian might list `mythical-man-month.md` (reaches for Brooks's Law when headcount comes up). If council files don't exist yet, this can be added when they're created.
- **`/lead-reflect`:** During the weekly reflection, if Claude notices recurring themes in journal entries that no current library framework addresses well, it should note this under a "Library gaps" heading and suggest specific books/frameworks to explore. These suggestions get appended to the "Frameworks I Want to Explore" section of `index.md` (with user confirmation).
- **`/lead-review`:** When writing up strengths and growth areas, ground observations in framework vocabulary where it adds clarity (e.g., "Alice is operating at D3 on infrastructure tasks — high competence, variable commitment — suggesting a Supporting leadership style rather than Directing").
- **`/lead-draft` (feedback type):** When drafting feedback communications, use COIN structure by default unless the user specifies otherwise.

### Direct Usage (No Command Required)

Users can ask Claude directly in any session:
- "I'm dealing with X, what do my frameworks say?"
- "How would Grove think about this?"
- "Ground this decision in my library"

Claude reads the library and synthesizes. No special command needed.

## User Customization

- Users add frameworks by creating new `.md` files in `.lead/library/` and adding an entry to the Enabled Frameworks list in `index.md`.
- Users remove frameworks by deleting the entry from `index.md` (file can stay or be deleted).
- Users adjust weighting by editing the "My Preferences" section of `index.md`.
- The `/lead-init` command should add a step asking: "Do you have favorite leadership books or frameworks? I'll create a library with defaults (High Output Management, Radical Candor, Mythical Man Month, Situational Leadership, Pragmatic Programmer, COIN feedback). You can add, remove, or adjust these anytime."

## What NOT to Build

- No `/lead-library` command. The library is ambient context, not a workflow.
- No web search or fetching. Framework files are populated from Claude's training knowledge.
- No citation formatting or academic references. This is practical, not scholarly.
- No framework file longer than ~100 lines. If it's that long, it's a book report, not a decision reference.
