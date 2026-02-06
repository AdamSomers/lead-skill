# Lead: An AI-Augmented Management Skill

A Claude Code skill for managers and leaders. Persistent, file-backed context
that evolves across sessions — not a chatbot, but a living management operating system.

## Philosophy

Lead stores all context in files. Each command reads what it
needs, does its work, and writes back. Between `/clear` calls, your management state
persists and compounds. The more you use it, the more useful it becomes.

## Installation

### Quick Install

```bash
git clone git@github.com:AdamSomers/lead-skill.git
cd lead-skill
./install.sh
```

This creates a `~/management` workspace with everything set up. Then:

```bash
cd ~/management
claude
/lead-init
```

To install to a different location, pass the path as an argument:

```bash
./install.sh ~/my-workspace
```

### Manual Installation

If you prefer to set things up yourself:

1. **Copy commands** to your Claude Code commands directory:

   ```bash
   # For user-level commands (available in all projects):
   cp commands/*.md ~/.claude/commands/

   # Or for project-level (create a dedicated management workspace):
   mkdir -p ~/management/.claude/commands
   cp commands/*.md ~/management/.claude/commands/
   ```

2. **Copy CLAUDE.md** to your workspace root:

   ```bash
   cp CLAUDE.md ~/management/CLAUDE.md
   ```

3. **Copy templates** for reference:

   ```bash
   mkdir -p ~/management/.lead-templates/library
   cp templates/*.md ~/management/.lead-templates/
   cp templates/library/*.md ~/management/.lead-templates/library/
   ```

4. **Initialize**:

   ```bash
   cd ~/management
   claude
   /lead-init
   ```

This creates the `.lead/` directory and walks you through initial context setup.

## Commands

| Command | Purpose | When to use |
|---------|---------|-------------|
| `/lead-init` | Create workspace, capture foundational context | Once at setup |
| `/lead-sync` | Daily brain dump → processed into state files | Start of day or when overwhelmed |
| `/lead-actions` | View, add, complete, or reprioritize actions | Check what's next or manage action list |
| `/lead-prep` | Prepare for a 1:1 or meeting | Before any important meeting |
| `/lead-debrief` | Capture outcomes, update state | After meetings |
| `/lead-decide` | Structured decision analysis with multi-perspective council | Facing a non-trivial decision |
| `/lead-draft` | Draft communications pulling from context | Writing updates, proposals, feedback |
| `/lead-reflect` | Synthesize patterns, adjust priorities | Weekly or when recalibrating |
| `/lead-review` | Draft performance feedback for a person | Review cycles or growth conversations |
| `/lead-self-review` | Draft your own self-review | Your own review cycles or promotion packets |
| `/lead-research` | Web research on management topics | When you need external insights or frameworks |

## Typical Workflows

**Daily loop:** `/lead-sync` → `/lead-prep` → [meeting] → `/lead-debrief` → `/clear` → repeat

**Decision loop:** `/lead-decide` → `/lead-draft` → `/clear`

**Weekly loop:** `/lead-reflect` → `/lead-sync` (to set next week's focus) → `/clear`

**Review cycle:** `/lead-review` → `/lead-draft feedback` → `/clear`

**Self-review:** `/lead-self-review` → refine → `/clear`

## File Structure

After `/lead-init`, your workspace contains:

```
.lead/
├── actions.md            # Prioritized action list (P1/P2/P3)
├── context/
│   ├── team.md           # Roster, roles, strengths, current assignments
│   ├── priorities.md     # Quarter OKRs, key bets, success criteria
│   ├── org.md            # Org chart, stakeholders, cross-team dependencies
│   ├── principles.md     # Your management values and decision heuristics
│   └── self.md           # Your career goals, accomplishments, growth areas
├── people/
│   └── {name}.md         # Running file per report: 1:1 notes, growth, feedback
├── decisions/
│   └── {YYYY-MM-DD}-{slug}.md  # Decision logs with rationale
├── journal/
│   └── {YYYY-MM-DD}.md  # Daily sync entries
├── drafts/
│   └── {slug}.md         # Communications in progress
├── reviews/
│   └── {name}-{cycle}.md # Performance review drafts
├── references/           # Reference docs you consult (leveling guides, etc.)
└── library/              # Leadership frameworks (Grove, Scott, Brooks, etc.)
```

Every command reads from and writes to these files. Context accumulates over time.

## Tips

- **Use `/clear` between commands.** Each command pulls in only what it needs from files.
- **Edit files directly when needed.** They're just markdown. Fix, append, reorganize.
- **The journal is your memory.** `/lead-sync` daily, even if brief. Patterns emerge.
- **Person files are gold.** After a few weeks of `/lead-prep` + `/lead-debrief`, your
  1:1 prep becomes deeply informed and your reviews write themselves.
- **Decisions compound.** When you `/lead-decide`, the log helps you and Claude
  reference past reasoning in future decisions.
- **Actions stay visible.** Every debrief, decision, and sync feeds `actions.md`.
  Run `/lead-actions` to see what's next, or let `/lead-sync` surface today's priorities.
- **Track your own wins.** `/lead-sync` captures your accomplishments to `self.md`.
  When review time comes, `/lead-self-review` writes itself.
