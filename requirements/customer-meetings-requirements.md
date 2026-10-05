# Customer Meeting Requirements

A meeting with the customer is where the week's work gets tested.
Bring a direction and its evidence, and find out where it is wrong.

The kickoff in Week 1 is the meeting with the most to settle, because the problem and the direction are both still open.
Its method is in [Guide: The Kickoff Meeting](../guides/customer-kickoff-meeting.md).
Every later meeting settles one thing or two; its method is in [Guide: Validating With The Customer](../guides/validating-with-the-customer.md), and the rules below are enough to prepare it.

These requirements define how a meeting is prepared and held, and the script, report, and transcript it produces.

<h2>Table of contents</h2>

- [Where Meeting Artifacts Live](#where-meeting-artifacts-live)
- [Every Meeting](#every-meeting)
- [The Kickoff](#the-kickoff)
- [Showing Working Software](#showing-working-software)
- [Permission Questions](#permission-questions)
- [Meeting Script](#meeting-script)
- [Meeting Report](#meeting-report)
- [Meeting Transcript](#meeting-transcript)
- [Full Examples](#full-examples)
  - [Example Meeting Script](#example-meeting-script)
  - [Example Meeting Report](#example-meeting-report)
  - [Example Meeting Transcript](#example-meeting-transcript)

## Where Meeting Artifacts Live

**Since: W1**

A meeting with the customer produces a meeting report, and a transcript when there is one.
Who may see each of them, and the recording, is in [Sensitive Information Reference](visibility-requirements.md#sensitive-information-reference).

| Artifact                                  | When it exists                                                  |
| ----------------------------------------- | --------------------------------------------------------------- |
| [Meeting Report](#meeting-report)         | Every meeting with the customer                                 |
| [Meeting Transcript](#meeting-transcript) | The meeting was recorded, or held in writing                    |
| [Meeting Script](#meeting-script)         | Before any meeting with the customer, as the preparation for it |

**Required**

1. The meeting report is always required.
2. A meeting with no recording and no transcript still produces a meeting report, and the report is then the only record of the meeting.
3. The meeting report is the team's own account of the meeting.
   When there is a transcript, it is the evidence the report is written from, and the report links to it.
4. The report is the record of that meeting and is not rewritten afterwards, apart from a [formatting-only change](general-requirements.md#where-artifacts-live-in-the-repository).
   Later weeks cite it as [Identifier Rules](general-requirements.md#identifier-rules) says.
   If a later meeting reverses a decision, the reversal is a new decision, per [Reversing A Decision](decisions-requirements.md#reversing-a-decision).
5. Say in the weekly public report whether the meeting's transcript was published, shared privately, or not made, and why.

## Every Meeting

**Since: W1**

**Required every week**

Hold at least one meeting with the customer every week.
The Week 1 meeting is the kickoff.

**Required for every meeting**

1. Prepare the meeting in writing first, in a [meeting script](#meeting-script).
2. The script covers whatever this meeting has to settle.
   Derive those areas from the target rather than from a template.
   The script's sections, its questions, and its agenda are in [Meeting Script](#meeting-script).
3. Plan for 30 minutes and ask for 60 if the customer can give it.
4. Assign roles before the meeting: a moderator who asks the questions and controls the time, a note taker who records what was said, and an observer who records what was not asked and what was not said.
   The whole team attends.
5. Ask the [three permission questions](#permission-questions) every time.
6. Write a [meeting report](#meeting-report), and a [transcript](#meeting-transcript) when the meeting was recorded or held in writing, per [Where Meeting Artifacts Live](#where-meeting-artifacts-live).
7. The report is where the week's open questions live, and it lists the decisions the meeting made, per [Meeting Report](#meeting-report).
   The meeting settles its target: it makes at least one decision.
   A decision may confirm the current direction, such as a story the customer accepted, per [The Decision](decisions-requirements.md#the-decision).
   A meeting that showed a prototype must also change something, per [Validation](prototypes-requirements.md#validation).
8. The customer decides the scope.
   Your job in the meeting is to present a direction with its evidence and to find out where it is wrong, not to ask the customer to design the product.
9. If a live meeting is impossible, hold it asynchronously in writing with the customer.
   The written exchange, timestamped, is the [transcript](#meeting-transcript); record a voice or screen note if there is one, and declare the substitution as a [deviation](weekly-report-requirements.md#declaring-deviations).
   The rules above still apply, except the role split and the length; the script's shape for it is in [Meeting Script](#meeting-script).

**Example**

A Week 2 validation meeting.

- What it has to settle: whether the prototype, the boundary, and the minimum usable product candidate are right.
- The areas that follow from it: the prototype's question, the boundary, and the build order.
- The agenda that follows from them: show the prototype, the boundary, and the minimum usable product candidate each in its own part, the one we are least sure of first, and ask about each while it is shown.
- The question whose answer would change the week: "Which of these stories would you miss first if it were not built?"

## The Kickoff

**Since: W1**

**Required in Week 1**

1. Hold one kickoff meeting with the customer, which is your instructor, during Week 1.
   Present the project, your reading of the problem, and your proposed direction, and hear where they disagree.
   The script's agenda says where in the meeting you present each of them.
2. The script covers five areas: business goals, end users, the current workflow, pain points and constraints, and scope, with at least two questions in each.
3. Check the open questions against [The Mom Test](https://www.koji.so/docs/mom-test-methodology).
   A question about what the customer did last time is worth more than a question about what they would like.

## Showing Working Software

**Since: W3**

**Required**

1. Show each story you present as done against its acceptance criteria, one `AC-nn` at a time, while it runs on the screen.
2. The customer accepts or rejects each story, and each verdict is a [decision](decisions-requirements.md#the-decision) that names the `US-nn`.
   Stories accepted together may share one decision.
   Each rejected story gets a decision of its own, naming each `AC-nn` it failed.
3. Add a comment to the story issue with the verdict, naming any failed `AC-nn` and citing the decision's `DEC-nn`.

**Example**

A Week 3 meeting that shows working software.

- What it has to settle: whether the stories finished this week do what the customer needs, and what comes next.
- The areas that follow from it: each finished story against its acceptance criteria, and the order of the next stories.
- The agenda that follows from them: run each finished story and ask for its verdict, then the next stories.
- The question whose answer would change the next week: "What did you expect to happen here that did not?"

## Permission Questions

**Since: W1**

**Required**

1. Ask the customer three separate permission questions, every time: may we record, may we publish a sanitized transcript in the repository, and may we share it privately with instructors if publication is refused.
   Permission is per meeting and is never carried over from an earlier meeting.

## Meeting Script

**Since: W1**

**Required**

1. Write the script before the meeting, at `reports/week-NN/meeting-script.md`, for every meeting with the customer.
   What the meeting has to settle is in [Every Meeting](#every-meeting), and the method behind the kickoff is in [Guide: The Kickoff Meeting](../guides/customer-kickoff-meeting.md).
2. It contains exactly the sections below that apply to that kind of meeting, in this order, and nothing else.
3. A section with nothing in it says `None` and moves on.
4. The sections, and what belongs in them:

   | Section               | Which meetings | What belongs in it                                                                                                                                            |
   | --------------------- | -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------- |
   | `## Context`          | Every meeting  | The problem-space sentence you are working from, what you already believe, and the target: what this meeting has to settle, in one sentence                   |
   | `## Agenda`           | Every meeting  | A numbered list of the parts of the meeting, in the order you will run them, each with a timebox, what you show, and the numbers of the questions asked there |
   | `## Questions`        | Every meeting  | A numbered list, each question tagged open or closed, covering the areas this meeting has to settle                                                           |
   | `## Roles`            | Every meeting  | Who moderates, who takes notes, and who observes                                                                                                              |
   | `## Key improvements` | Every meeting  | For each question you rewrote, the before, the after, and the principle behind the rewrite: at least two rewrites at the kickoff, one at every later meeting  |

5. The `## Questions` minimum depends on the meeting.
   At the kickoff, it is the per-area minimum in [The Kickoff](#the-kickoff).
   A later meeting derives its own areas from its target rather than from the five kickoff areas, so it carries as many questions as its target has to settle, and no per-area floor.
6. Every question serves the target in `## Context`: an answer to it could change something the team will build, write, or ask next.
   A question no answer could change is cut, and at the kickoff it is replaced rather than kept to reach the per-area minimum.
7. `## Agenda` covers the whole meeting.
   The first part asks the [three permission questions](#permission-questions), the last part reads back the decisions and action points, and the timeboxes add up to the length you planned.
   Every question appears in exactly one part.
8. Each part names what you show in it: a link to the artifact, prototype, or screen you put in front of the customer, or says that nothing is shown.
9. The script is preparation, so it is not rewritten after the meeting, apart from a [formatting-only change](general-requirements.md#where-artifacts-live-in-the-repository).
   What the meeting actually produced is the [meeting report](#meeting-report), which links to the script.
10. A meeting held asynchronously in writing instead of live still produces a script, but `## Roles` is not one of its sections.
    A written exchange has no speaking-time floor, and the moderator is whoever wrote the questions.
    Its `## Agenda` gives the order of the exchange and what you send with each part, without timeboxes.

**Recommended**

- Keep it to a page.
  A script nobody can follow at speaking pace is a document, not a script.
- Mark the two or three questions that would change the project most if the answer went the other way, so the team asks them even when time runs short.
- Show your direction early and ask the questions that could overturn it next, so they get the most time.
  Leave the part you are most sure of for last; it is the one to cut when the meeting runs over.

## Meeting Report

**Since: W1**

**Required**

1. Write the report at `reports/week-NN/meeting-report.md`, one per meeting with the customer.
   If a week holds more than one, number them in chronological order: `meeting-report-2.md`, `meeting-report-3.md`.
2. Write it in English, in the team's own words, in the past or present tense as suits the entry.
   A report that restates the transcript line by line, or that a tool generated and the team pasted in unchecked, does not satisfy this.
3. It contains exactly the sections below that apply to that kind of meeting, in this order, and nothing else.
4. A section with nothing in it says `None` and moves on.
5. The sections, and what belongs in them:

   Name people as [Sensitive Information Reference](visibility-requirements.md#sensitive-information-reference) says.

   | Section                     | Which meetings                  | What belongs in it                                                                                                                                                                                                                                                        |
   | --------------------------- | ------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
   | `## Metadata`               | Every meeting                   | Date, duration, who was there by GitHub username with the customer shown as `Customer`, what you presented, the answer to each of the three permission questions, a link to the transcript or `None` with the reason, and a link to the [meeting script](#meeting-script) |
   | `## Previous action points` | Every meeting after the kickoff | A table, one row per action point the previous meeting reports set for this week                                                                                                                                                                                          |
   | `## Summary`                | Every meeting                   | 3 to 5 bullets on what the meeting settled or changed, not on what was on the agenda                                                                                                                                                                                      |
   | `## Decisions`              | Every meeting                   | A list of the decisions the meeting made                                                                                                                                                                                                                                  |
   | `## Action points`          | Every meeting                   | A table, one row per action                                                                                                                                                                                                                                               |
   | `## Open questions`         | Every meeting                   | A table, one row per question the meeting did not answer                                                                                                                                                                                                                  |
   | `## Disagreements`          | Every meeting                   | A table, one row per place the customer did not agree with you                                                                                                                                                                                                            |

6. Each decision the meeting made has an entry in `docs/decisions.md`, per [Decision Requirements](decisions-requirements.md).
   `## Decisions` lists them, one bullet each, linking the entry with `DEC-nn: <the decision>` as the link text, quoting the first line of the entry.
   An entry's decision is never reworded, per [Where Decisions Live](decisions-requirements.md#where-decisions-live), so the link text stays true.

7. `## Action points` has the columns `Action`, `Owner`, and `Due`.
   The owner is a GitHub username, and the due date falls inside a named week.
8. `## Open questions` has the columns `Question`, `What it would change`, and `Follow-up`.
   A question whose answer would change nothing does not belong in the table.
9. `## Disagreements` has the columns `Your position`, `Customer's position`, and `What you changed`.
   If you did not change anything, say why you kept your position instead.

**Since: W2**

10. `## Previous action points` has the columns `Action`, `Outcome`, and `Decision`.
    `Action` cites the action point by its report's path and `#action-points` anchor with the action quoted, per [Identifier Rules](general-requirements.md#identifier-rules).
    `Outcome` says whether it was carried out, and what was found, or why it was not, and links each artifact the outcome changed.
    `Decision` links each `DEC-nn` the outcome produced, or says `None` when the outcome needed no decision.
    The earlier report is not edited; this row is the action point's closing record.
    An outcome that changes an artifact is carried into that artifact, and an outcome recorded only in this table has not been carried out.

**Recommended**

- Scale the report to the meeting.
  A short check-in does not need the same volume as a two-hour review.
- Keep each cell to a sentence or two.
  A cell nobody can argue with is a cell that says nothing.

## Meeting Transcript

**Since: W1**

**Required**

1. A transcript needs the customer's permission to record, asked per [Permission Questions](#permission-questions).
   A refusal is not a problem: the [meeting report](#meeting-report) is then the record of the meeting.
   A meeting held in writing needs no recording, because the written exchange is its transcript.
2. Write the transcript in English, cleaned for readability without changing the meaning of what was said.
3. Use one sentence per line, and put a timestamp at the start of the line with a speaker label:

   ```text
   [00:00:04] alice: We settled on the meeting booking app after the research.
   [00:00:19] Customer: What made you choose it over the alternatives?
   ```

4. Label speakers consistently, as [Sensitive Information Reference](visibility-requirements.md#sensitive-information-reference) says.
5. Remove everything [Sensitive Information Reference](visibility-requirements.md#sensitive-information-reference) keeps out of the repository.
   Use `[inaudible]` where a word cannot be recovered and `[redacted]` where something was deliberately removed.
6. If the customer refuses to let the transcript be published, do not commit it.
   The [meeting report](#meeting-report) is still public.

## Full Examples

The script, the report, and the transcript of one kickoff meeting.

### Example Meeting Script

```markdown
# Kickoff meeting script

## Context

Our problem-space sentence: an expert who sells sessions online needs one link where a client can book, pay, and receive the meeting link and materials, and no product carries all three in one flow.

We believe this is the gap our product targets, and that it is worth two months of work.
We have not checked whether clients will pay at booking, and we do not know whether the customer will accept a web page rather than a Telegram bot.

Target: find out whether one booking link that carries payment and materials is the problem the customer wants solved, and in which form.

## Agenda

1. Permission questions (2 min).
   Show: nothing.
2. Our reading of the problem and our direction (5 min).
   Show: [value-proposition.md](../../docs/research/value-proposition.md).
   Questions 1–2.
3. Who books and pays, and how it works today (10 min).
   Show: nothing, so the answers describe their routine rather than our idea.
   Questions 3–6.
4. What went wrong and what cannot change (6 min).
   Show: nothing.
   Questions 7–8.
5. Scope (5 min).
   Show: [gap-analysis.md](../../docs/research/gap-analysis.md).
   Questions 9–10.
6. Read back the decisions and action points (2 min).
   Show: the note taker's list.

## Questions

### Business goals

1. _(open)_ Why sell sessions online rather than through your existing clients?
2. _(open)_ When this works, what changes in your week?

### End users

3. _(open)_ Who books a session, and who pays?
4. _(closed)_ Are those the same person?

### Current workflow

5. _(open)_ Walk me through the last booking and its payment, step by step.
   What happened at each step?
6. _(open)_ Where do the payment, the meeting link, and the materials live today?

### Pain points and constraints

7. _(open)_ What was the most annoying part of the last booking that went wrong?
8. _(closed)_ Can you accept online payments today?

### Scope

9. _(open)_ If only one of booking, payment, or materials could ship, which one survives?
10. _(closed)_ Is a Telegram bot acceptable, or does it have to be a web page?

## Roles

alice asks, bob takes notes, carol observes and records what we did not ask.

## Key improvements

### "Would you like a dashboard?" -> "What do you look at when a client has not paid yet?"

We were offering a solution.
The rewrite asks for the past, so the answer describes a real routine instead of a preference for our idea.

### "Is latency important to you?" -> "When the last payment failed, what did you do?"

The original asks about an abstract property.
The rewrite anchors it to an event the customer will remember, so the answer is a measurement rather than a preference.
```

### Example Meeting Report

```markdown
# Kickoff meeting report

## Metadata

**Date:** 2026-09-29
**Duration:** 50 minutes
**Attended:** alice, bob, carol, Customer
**Presented:** the project choice, our reading of the problem, and the two `VP-nn` directions
**Recording:** permitted, linked from the Week 01 Moodle submission
**Transcript publication:** permitted, see [the transcript](meeting-transcript.md)
**Transcript shared privately:** not applicable
**Script:** [meeting-script.md](meeting-script.md)

## Summary

- The customer accepted `VP-01` and told us to stop treating reminders as a differentiator.
- `GAP-01` survives only if experts really lose paid time to unpaid bookings, which we have not checked.
- The open payment-timing question decides whether payment happens before or after confirmation.

## Decisions

- [DEC-01: Build paid bookings, not the calendar view](../../docs/decisions.md#dec-01)
- [DEC-02: Drop multi-expert scheduling](../../docs/decisions.md#dec-02)
- [DEC-03: Keep the web link for delivery](../../docs/decisions.md#dec-03)
- [DEC-04: Deploy on a single small VPS](../../docs/decisions.md#dec-04)

## Action points

| Action                                               | Owner | Due           |
| ---------------------------------------------------- | ----- | ------------- |
| Interview two experts who take payments in chat      | bob   | End of Week 2 |
| Re-cut the comparison without the reminders property | carol | End of Week 2 |

## Open questions

| Question                                 | What it would change                                 | Follow-up                |
| ---------------------------------------- | ---------------------------------------------------- | ------------------------ |
| Do clients pay at booking or on the day? | Whether payment happens before or after confirmation | bob, carried into Week 2 |

## Disagreements

| Your position                  | Customer's position                                             | What you changed                                                         |
| ------------------------------ | --------------------------------------------------------------- | ------------------------------------------------------------------------ |
| `GAP-04` is a differentiator   | Our experts work alone, so nobody needs multi-expert scheduling | Dropped `GAP-04` from the gap analysis                                   |
| Reminders are a differentiator | Reminders are table stakes                                      | Re-cut the comparison without the reminders property, as an action point |
```

### Example Meeting Transcript

```markdown
# Kickoff meeting transcript

**Date:** 2026-09-29
**Participants:** alice, bob, carol, Customer

[00:00:04] alice: We settled on the meeting booking app after the research.
[00:00:19] Customer: What made you choose it over the alternatives?
[00:01:02] bob: The paid booking flow is the part the alternatives leave half-done.
[00:01:40] Customer: [redacted]
[00:02:11] carol: We still need to check whether clients will pay before the session.
```
