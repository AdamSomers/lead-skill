Daily sync: process my brain dump into structured management state.

## Steps

1. Read these context files for background:
   - `.lead/context/team.md`
   - `.lead/context/priorities.md`
   - `.lead/context/self.md`
   - The most recent 3 entries in `.lead/journal/` (if they exist)

2. Ask me: "What's on your mind? Dump everything — what happened, what's coming up,
   what's worrying you, what went well, anything." Wait for my response.

3. Process my dump. Create or append to today's journal file at
   `.lead/journal/{YYYY-MM-DD}.md` with this structure:

```markdown
# {YYYY-MM-DD} — {day of week}

## Raw Input
{my dump, lightly cleaned up for readability}

## Extracted Items

### People Updates
{anything mentioning a direct report — also append a note to their .lead/people/ file}

### Decisions Needed
{anything that sounds like a pending decision, with context}

### Action Items
- [ ] {concrete next actions extracted from the dump}

### Risks / Concerns
{anything that sounds like a risk or worry worth tracking}

### Wins
{anything positive worth remembering}

### My Accomplishments
{things I personally did well, impact I had, visibility moments — for self-review}
```

4. If I mentioned any direct reports by name, append a timestamped note to their
   `.lead/people/{name}.md` file under the Notes section:
   ```
   **{YYYY-MM-DD}:** {relevant observation or context}
   ```

5. If I mentioned personal accomplishments, wins I drove, or impact I had, append
   a timestamped entry to `.lead/context/self.md` under the Accomplishments section:
   ```
   **{YYYY-MM-DD}:** {accomplishment with context on impact}
   ```
   These accumulate over time and feed into `/lead-self-review`.

6. After writing, give me a brief synthesis:
   - Top 3 priorities for today based on what I said + existing priorities
   - Any patterns you notice compared to recent journal entries
   - One thing I might be underweighting or overlooking
   - Any meetings I should prep for (if I mentioned upcoming ones)

Keep the synthesis sharp and opinionated. Don't just parrot back what I said.

---

## Next Commands

After sync, suggest based on context:
- `/lead-prep {name}` — if meetings were mentioned
- `/lead-decide {topic}` — if a decision was surfaced
- `/clear` — before the next command

$ARGUMENTS
