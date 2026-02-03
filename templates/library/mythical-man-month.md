# The Mythical Man-Month
**Author:** Fred Brooks
**Core idea:** Software projects have unique properties that make them resistant to naive management approaches. Adding people to a late project makes it later.

## Key Models

### Brooks's Law
**What it is:** "Adding manpower to a late software project makes it later." New people need ramp-up time AND create communication overhead that grows quadratically with team size.
**When to apply:** Staffing decisions on struggling projects, timeline negotiations, headcount requests.
**Vocabulary:** Brooks's Law, man-month, communication overhead, ramp-up time

### The Surgical Team
**What it is:** Small teams of highly skilled people outperform large teams of average people. Structure teams around one "surgeon" (chief programmer) supported by specialists, not around interchangeable resources.
**When to apply:** Team structure decisions, hiring strategy, project staffing.
**Vocabulary:** surgical team, chief programmer, specialists vs. generalists

### Conceptual Integrity
**What it is:** A system's design should reflect one coherent vision. This often means one person (or very small group) must own the architecture, even if many implement it.
**When to apply:** Architecture decisions, product design, deciding who has final say.
**Vocabulary:** conceptual integrity, architectural ownership, design authority

### The Second-System Effect
**What it is:** After a successful first system, architects tend to over-engineer the second one with all the features they couldn't include before. The second system is often bloated and late.
**When to apply:** Major rewrites, v2 planning, scope management.
**Vocabulary:** second-system effect, feature creep, over-engineering

### Plan to Throw One Away
**What it is:** The first version of a system is often exploratory. Plan for it to be replaced. If you don't plan to throw it away, you'll end up throwing it away anyway—but painfully.
**When to apply:** Project planning, setting expectations, prototyping decisions.
**Vocabulary:** throw one away, prototype, exploratory development

### No Silver Bullet
**What it is:** There is no single technique that will deliver order-of-magnitude productivity improvements. Improvements come from steady accumulation of incremental gains.
**When to apply:** Evaluating new tools/processes, managing expectations, resisting hype.
**Vocabulary:** silver bullet, essential vs. accidental complexity

## Decision Heuristics
- If a project is late, adding people will likely make it later—find other solutions first.
- If you need to scale, consider splitting into smaller independent teams rather than growing one team.
- If design decisions feel inconsistent, you may have lost conceptual integrity—clarify who owns the vision.
- If building v2 of something successful, actively resist scope creep and second-system syndrome.
- If someone promises a silver bullet, be skeptical—sustainable improvement is incremental.

## Anti-Patterns
- Treating developers as interchangeable resources
- Measuring progress in lines of code or "man-months"
- Believing a new tool/language/framework will solve fundamental problems
- Designing by committee without clear architectural authority
- Refusing to discard exploratory work when it's served its purpose
