Manage the prioritized action list.

Shows all active actions, allows adding new ones, marking complete, or reprioritizing.

## Usage

- `/lead-actions` — show full action list
- `/lead-actions --add "action text"` — add a new action
- `/lead-actions --done 3` — mark action #3 complete
- `/lead-actions --bump 5 P1` — change priority of action #5

## Steps

1. Read `.lead/actions.md`. If it doesn't exist, run the migration step (see below).

2. Based on arguments:

### No Arguments: Show Actions

Display the full prioritized action list:

```
## Active Actions

**Due Soon:**
1. {action} — *due: {date}* — *source: {file}*
   {overdue items flagged}

**P1 — Do Today:**
2. {action} — *source: {file}* — *added: {date}*

**P2 — This Week:**
3. {action} — *source: {file}* — *added: {date}*

**P3 — When Possible:**
4. {action} — *source: {file}* — *added: {date}*

---
{count} active actions. {count} completed in last 7 days.
```

Number each action sequentially for easy reference with `--done` and `--bump`.

### --add "action text"

Add a new action. Parse optional flags:
- `--priority P1|P2|P3` — set priority (default: P3)
- `--due YYYY-MM-DD` — set due date
- `--source {file}` — link to source file

Append to the appropriate section in `.lead/actions.md`:
```markdown
- [ ] {action} — *added: {today}* — *due: {date}* (if set)
```

Confirm: "Added to P{n}: {action}"

### --done {number}

Mark action #{number} as complete:
1. Find the action by its display number
2. Mark it `[x]` and move to "Completed (last 7 days)" section with completion date
3. If it has a source file, also mark it complete there (keep both copies)

Confirm: "Completed: {action}"

### --bump {number} P{n}

Change priority of action #{number}:
1. Find the action by its display number
2. Move it to the P{n} section
3. Preserve all metadata (source, added date, due date)

Confirm: "Moved to P{n}: {action}"

## Migration (First Run)

If `.lead/actions.md` doesn't exist:

1. Scan these files for `- [ ]` items:
   - `.lead/people/*.md`
   - `.lead/journal/*.md`
   - `.lead/decisions/*.md`

2. Create `.lead/actions.md` with discovered actions:
   - Infer priority based on source:
     - Decision follow-ups → P1
     - Chain person files → P1
     - Report person files → P2
     - Rollup/stakeholder files → P2
     - Journal entries → P3
   - Include source file reference for each

3. Report: "Migrated {n} actions from existing files."

## Priority Inference

When adding actions from other commands, use these defaults:
- Decision follow-ups → P1
- Skip-level/chain actions → P1
- Direct report actions → P2
- Rollup/stakeholder actions → P2
- General journal actions → P3

Manual priority tags always take precedence.

## Housekeeping

- Remove completed actions older than 7 days from the Completed section
- When showing actions, flag any that are overdue or stale (>7 days without progress)

$ARGUMENTS
