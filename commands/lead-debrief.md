Capture outcomes from a meeting or 1:1 and update state files.

Argument: person name or meeting topic. Example: `/lead-debrief alice` or `/lead-debrief quarterly planning`

## Steps

1. Determine if this is a **person** (1:1 debrief) or **meeting** debrief.

2. Check if a prep file exists at `.lead/drafts/prep-{name or slug}-{today}.md`.
   If so, read it for context on what was planned.

3. Ask me: "How did it go? What was discussed, decided, and what are the action items?"
   Wait for my response.

4. Process my response.

## For Person Debriefs (any Type)

Read the person's **Type** field from their file. Update `.lead/people/{name}.md`:

- Under **1:1 Log**, append:
```markdown
### {YYYY-MM-DD}
**Topics:** {brief list}
**Key Takeaways:**
- {takeaway}
**Action Items:**
- [ ] {who}: {action}
<!-- Also append to .lead/actions.md with source and priority based on person Type -->
**My Observations:**
- {anything I noted about their state, engagement, dynamics}
```

- **Type-specific updates:**
  - `report`: Update **Strengths**, **Growth Areas**, or **Current Priorities** if relevant.
  - `chain`: Update **What They Care About**, **Working Style**, or **Current Priorities**.
    Note any signals about org direction or changes.
  - `peer`: Update **Shared Dependencies**, **Current Priorities**. Track alignment status.
  - `stakeholder`: Update **Current Priorities**, **Working Style**. Track commitments made.

## For Meeting Debriefs

Create `.lead/journal/{YYYY-MM-DD}-{slug}.md` or append to today's journal:

```markdown
## Meeting: {topic}
**Attendees:** {if mentioned}
**Decisions Made:**
- {decision with context}
**Action Items:**
- [ ] {owner}: {action}
<!-- Also append to .lead/actions.md with source: journal/{date}-{slug} -->
**Key Dynamics:**
- {notable interactions, alignments, tensions}
**Impact on Priorities:**
- {any changes to .lead/context/priorities.md — if significant, update that file}
```

5. **Append actions to `.lead/actions.md`:**
   - For person debriefs, infer priority from Type:
     - `chain` → P1
     - `report` → P2
     - `rollup`, `stakeholder`, `peer` → P2
   - For meeting debriefs → P2 (general)
   - Include source file reference and added date
   - If action has an explicit deadline mentioned, include `*due: {date}*`

6. If any decisions were made that warrant a permanent record, ask:
   "Should I log the decision about {X} in the decisions directory?"

7. If action items affect priorities.md, flag it and offer to update.

8. Delete the prep file if one existed (it's been consumed into the debrief).

9. Close with a brief synthesis: "Here's what changed in your state" listing
   which files were updated and any patterns worth noting.

---

## Next Commands

After debrief, suggest based on outcomes:
- `/lead-prep {name}` — if another meeting is coming up
- `/lead-decide {topic}` — if a decision emerged that needs analysis
- `/lead-draft {type}` — if a communication needs to be sent
- `/clear` — before the next command

$ARGUMENTS
