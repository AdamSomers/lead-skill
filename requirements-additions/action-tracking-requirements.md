# Action Tracking Requirements

**Date:** 2026-02-05
**Status:** Requirements for lead-skill enhancement

## Problem

Action items are currently scattered across:
- 1:1 debrief logs (`.lead/people/*.md`)
- Journal entries (`.lead/journal/*.md`)
- Decision docs (`.lead/decisions/*.md`)

Finding "what's next" requires scanning multiple files. No single prioritized view exists.

## Requirements

### 1. Dedicated Action File

Create `.lead/actions.md` as the canonical location for active actions.

Structure:
```markdown
# Active Actions

## P1 — Do Today
- [ ] {action} — *source: {file}* — *added: {date}* — *due: {date}* (if set)

## P2 — This Week
- [ ] {action} — *source: {file}* — *added: {date}*

## P3 — When Possible
- [ ] {action} — *source: {file}* — *added: {date}*

## Completed (last 7 days)
- [x] {action} — *completed: {date}*
```

### 2. Interaction Model: Push + Pull

**Push (via `/lead-sync`):**
- Morning sync surfaces top 3-5 actions for the day
- Shows P1 items first, then oldest P2 items
- Actions with due dates surfaced more prominently than those without
- Offers review when actions seem stale (sometimes, not always)

**Push (via `/lead-reflect`):**
- Always includes action review
- Surfaces stale actions and prompts for pruning/reprioritization

**Pull (via `/lead-actions`):**
- New command to show full action list on demand
- Options: `--add`, `--complete {id}`, `--reprioritize`

### 3. Priority Model: Hybrid (Context + Manual Override)

**Default priority inference (context-based):**
- Decision follow-ups → P1
- Skip-level/chain actions → P1
- Direct report actions → P2
- Rollup/stakeholder actions → P2
- General journal actions → P3

**Manual override:**
- Any action can be explicitly tagged `P1`, `P2`, `P3`
- Manual tags take precedence over inferred priority

**Due dates:**
- Optional — most actions will not have them
- Actions with due dates are surfaced more visibly and more often
- Due date format: `due: YYYY-MM-DD`
- Overdue actions always appear at top of their priority tier

### 4. Action Lifecycle

**Creation:**
- When `/lead-debrief` or `/lead-decide` creates an action item, also append to `.lead/actions.md`
- Include source file reference for traceability

**Completion:**
- When action is marked complete in actions.md, also mark complete in source file (keep both)
- Move to "Completed" section with date
- Completed actions remain in source files with [x] — do not remove

**Staleness:**
- Actions older than 7 days without progress may be flagged in `/lead-sync` (sometimes)
- Actions are always reviewed in `/lead-reflect`
- Prompt: "This action has been open for X days. Still relevant? Reprioritize or remove?"

### 5. Commands

**`/lead-sync` (modified):**
- Add "Today's Actions" section to output
- Show P1 items + top 3 P2 items
- Actions with due dates shown more prominently
- Sometimes offer stale action review (not every sync)

**`/lead-reflect` (modified):**
- Always include full action review
- Surface all stale actions
- Prompt for pruning, reprioritization, or completion

**`/lead-actions` (new):**
- Show full prioritized action list
- Options:
  - No args: show all active actions
  - `--add "action text" --priority P1 --due 2026-02-10`: add new action
  - `--done 3`: mark action #3 complete
  - `--bump 5 P1`: change priority of action #5

### 6. Migration

On first run, scan existing files for `- [ ]` items and populate initial actions.md.

## Example Output

```
## Today's Actions (from /lead-sync)

**🗓️ Due Soon:**
1. Follow up with Marcus on Project Alpha approach — *due: 2026-02-06* — *decisions/2026-02-04*

**P1 — Do Today:**
2. Talk to Raj about Grounding Tool — *people/wei-chen.md*

**P2 — This Week:**
3. Set Project Beta direction (committed: 2 weeks) — *people/dmitri*
4. Schedule intro 1:1s with Sarah's directs — *drafts/prep-sarah-directs*
5. Draft coaching message to Dmitri — *drafts/coaching-dmitri*

3 more P2 items, 2 P3 items. Run `/lead-actions` for full list.
```

## Design Decisions

1. **Completed actions stay in source files** — preserves history and context
2. **Review offered sometimes in sync, always in reflect** — avoids nagging while ensuring periodic cleanup
3. **Due dates are optional** — most actions won't have them, but those that do get elevated visibility
