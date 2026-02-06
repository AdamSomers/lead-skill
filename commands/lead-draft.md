Draft a communication, pulling from accumulated context.

Argument: type and topic. Examples:
- `/lead-draft update weekly status`
- `/lead-draft proposal new oncall rotation`
- `/lead-draft feedback alice promotion case`
- `/lead-draft announcement team reorg`
- `/lead-draft escalation blocked on infra dependency`
- `/lead-draft email skip-level re: headcount`

## Steps

1. Parse the argument to determine **type** and **topic**.
   Types: update, proposal, feedback, announcement, escalation, email, other

2. Read context based on type:
   - **All types:** `.lead/context/priorities.md`, `.lead/context/org.md`
   - **update:** Recent journal entries, relevant decision logs
   - **proposal:** Related decision files, team.md for staffing context
   - **feedback:** The relevant person file from `.lead/people/`
   - **announcement:** Relevant decision file that triggered this
   - **escalation:** Related journal entries, decision files
   - **email:** org.md for audience context

3. Ask me for any additional context needed: "Who's the audience, what's the key
   message, and what tone — direct, diplomatic, urgent?" Wait for my response.

4. Draft the communication. Follow these principles:
   - **Lead with the ask or the news.** Don't bury it.
   - **Match the audience.** Execs want crisp summaries. Peers want details. Reports
     want context and rationale.
   - **Be concrete.** Numbers, dates, names, specific examples.
   - **One clear call to action.** What should the reader do after reading this?

5. Save to `.lead/drafts/{type}-{slug}-{YYYY-MM-DD}.md` with metadata:

```markdown
# {Type}: {Title}
**Date:** {YYYY-MM-DD}
**Audience:** {who this is for}
**Channel:** {Slack / email / doc / meeting / other}
**Status:** Draft

---

{the draft}

---

## Notes
{any caveats, things to watch for in delivery, timing considerations}
```

6. Present the draft and ask: "Want me to adjust the tone, shorten it, or
   change the framing? Or is this ready to send?"

7. If I ask for revisions, update the file. When I'm satisfied, update status to Ready.

---

## Next Commands

After drafting, suggest:
- [Send the communication]
- `/clear` — before the next command

$ARGUMENTS
