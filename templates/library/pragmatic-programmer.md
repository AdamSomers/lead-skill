# The Pragmatic Programmer
**Author:** Dave Thomas & Andy Hunt
**Core idea:** Programming is a craft. Good programmers continuously improve their tools, techniques, and judgment. Pragmatism beats dogma.

## Key Models

### DRY (Don't Repeat Yourself)
**What it is:** Every piece of knowledge should have a single, unambiguous, authoritative representation. Duplication leads to inconsistency and maintenance burden.
**When to apply:** Code reviews, architecture discussions, documentation decisions.
**Vocabulary:** DRY, single source of truth, duplication, abstraction

### Orthogonality
**What it is:** Components should be independent—changing one shouldn't require changing others. Orthogonal systems are easier to test, maintain, and reason about.
**When to apply:** System design, evaluating dependencies, refactoring decisions.
**Vocabulary:** orthogonal, coupling, cohesion, independence

### Tracer Bullets
**What it is:** Build a thin, end-to-end slice of functionality first to validate the architecture and get early feedback. Unlike prototypes, tracer bullets become part of the final system.
**When to apply:** Starting new projects, validating technical approaches, reducing risk.
**Vocabulary:** tracer bullets, end-to-end, spike, vertical slice

### Good-Enough Software
**What it is:** Know when to stop. Perfect is the enemy of good. Involve users in deciding quality trade-offs—they may prefer "good enough now" over "perfect later."
**When to apply:** Scope decisions, quality discussions, shipping decisions.
**Vocabulary:** good enough, trade-offs, diminishing returns

### Broken Windows
**What it is:** One broken window (bad code, poor design, technical debt) invites more. Fix broken windows immediately to maintain standards. If you can't fix it, board it up (mark it clearly as known debt).
**When to apply:** Code quality discussions, technical debt decisions, team standards.
**Vocabulary:** broken windows, technical debt, quality erosion

### Programming by Coincidence
**What it is:** Don't code by coincidence—hoping things work without understanding why. If you don't know why it works, you won't know why it fails.
**When to apply:** Code reviews, debugging sessions, onboarding discussions.
**Vocabulary:** programming by coincidence, understanding vs. guessing

### Estimating
**What it is:** Get better at estimating by tracking your estimates vs. actuals. Use ranges, not single numbers. Understand what precision your audience needs.
**When to apply:** Planning, timeline discussions, project management.
**Vocabulary:** estimation, ranges, precision, iteration

## Decision Heuristics
- If you're copying code, ask if there's an abstraction missing (DRY).
- If changing one thing breaks unrelated things, you have a coupling problem (orthogonality).
- If you're unsure an approach will work, build a tracer bullet before committing.
- If quality debates stall, ask users what trade-offs they'd accept (good enough).
- If code quality is slipping, look for broken windows and fix them visibly.
- If estimates are consistently wrong, start tracking actuals and adjusting.

## Anti-Patterns
- Premature abstraction (DRY taken too far before patterns emerge)
- Big-bang integration (no tracer bullets, hope it works at the end)
- Gold-plating (refusing to ship until perfect)
- Tolerating broken windows ("we'll fix it later" that never comes)
- Cargo-cult programming (copying patterns without understanding them)
