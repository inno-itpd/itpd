# Customer Meeting Requirements

A meeting with the customer is where the week's work gets tested.
Bring a direction and its evidence, and find out where it is wrong.

The kickoff in Week 1 is the meeting with the most to settle, because the problem and the direction are both still open.
Its method is in [Guide: The Kickoff Meeting](../guides/customer-kickoff-meeting.md).
Every later meeting settles one thing or two; its method is in [Guide: Validating With The Customer](../guides/validating-with-the-customer.md), and the rules below are enough to prepare it.

These requirements define how a meeting is prepared and held, and the script, report, transcript, and notes it produces.

<h2>Table of contents</h2>

- [Where Meeting Artifacts Live](#where-meeting-artifacts-live)
- [Every Meeting](#every-meeting)
- [The Kickoff](#the-kickoff)
- [Showing Working Software](#showing-working-software)
- [Permission Questions](#permission-questions)
- [Meeting Script](#meeting-script)
- [Meeting Report](#meeting-report)
- [Meeting Transcript](#meeting-transcript)
- [Meeting Notes](#meeting-notes)
- [Full Examples](#full-examples)
  - [Example Meeting Script](#example-meeting-script)
  - [Example Meeting Report](#example-meeting-report)
  - [Example Meeting Transcript](#example-meeting-transcript)

## Where Meeting Artifacts Live

**Since: W1**

A meeting with the customer produces a meeting report, and either a transcript or notes.
A recording is a separate, private-only artifact.

| Artifact                                  | When it exists                                                  | Visibility            |
| ----------------------------------------- | --------------------------------------------------------------- | --------------------- |
| [Meeting Report](#meeting-report)         | Every meeting with the customer                                 | Public once sanitized |
| [Meeting Transcript](#meeting-transcript) | The meeting was recorded and publishing it is permitted         | Public once sanitized |
| [Meeting Notes](#meeting-notes)           | Recording or transcript sharing was refused                     | Public once sanitized |
| [Meeting Script](#meeting-script)         | Before any meeting with the customer, as the preparation for it | Public once sanitized |

**Required**

1. The meeting report is always required.
   The transcript and the notes are the same evidence in a different form, so a meeting produces one of them, not both.
2. A meeting with no recording and no transcript still produces a meeting report.
3. The meeting report is the team's own account of the meeting.
   The transcript and the notes are the evidence it is written from, and the report links to them.
4. Later weeks cite a meeting report by path and heading anchor, for example `reports/week-01/meeting-report.md#decisions`.
   The report is the record of that meeting and is not rewritten afterwards.
   If a later meeting reverses a decision, the later report quotes the reversed decision, says so, and links back to the report it reverses.

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
6. Write a [meeting report](#meeting-report), and either a [transcript](#meeting-transcript) or [notes](#meeting-notes), per [Where Meeting Artifacts Live](#where-meeting-artifacts-live).
7. The report is where the week's open questions and decisions live, per [Meeting Report](#meeting-report).
   A meeting is required to change something only when it showed a prototype, per [Validation](prototypes-requirements.md#validation).
8. The customer decides the scope.
   Your job in the meeting is to present a direction with its evidence and to find out where it is wrong, not to ask the customer to design the product.

**Example**

A Week 2 validation meeting.

- What it has to settle: whether the prototype, the boundary, and the minimum usable product candidate are right.
- The areas that follow from it: the prototype's question, the boundary, and the build order.
- The agenda that follows from them: show the prototype and ask about it, then the boundary, then the minimum usable product candidate.
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
4. If a live meeting is impossible, do the alignment asynchronously in writing with the customer.
   Timestamp the written exchange as the notes, record a voice or screen note if there is one, and state the substitution in the weekly public report as a deviation.
   The rules above still apply, except the role split and the length, per [Meeting Script](#meeting-script).

## Showing Working Software

**Since: W3**

<!-- TODO refine -->

**Required**

1. Show each story you present as done against its acceptance criteria, one `AC-nn` at a time, while it runs on the screen.
2. The customer accepts or rejects each story.
   Record the verdict as a row in the meeting report's `## Decisions` that names the `US-nn`: an accepted story says `None` in `Changes`, with the reason, and a rejected story names each `AC-nn` it failed.
3. Add a dated comment to the story issue with the verdict, naming any failed `AC-nn` and linking the meeting report.

**Example**

A Week 3 meeting that shows working software.

- What it has to settle: whether the stories finished this week do what the customer needs, and what comes next.
- The areas that follow from it: each finished story against its acceptance criteria, and the order of the next stories.
- The agenda that follows from them: run each finished story and ask for its verdict, then the next stories.
- The question whose answer would change the next week: "What did you expect to happen here that did not?"

## Permission Questions

**Since: W1**

**Required**

1. Ask the customer three separate permission questions, every time: may we record, may we publish a sanitized transcript in the repository, and may we share a sanitized transcript privately with instructors if publication is refused.
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
9. The script is preparation, so it is not rewritten after the meeting.
   What the meeting actually produced is the [meeting report](#meeting-report), which links to the script.
10. A meeting held asynchronously in writing instead of live still produces a script, but `## Roles` is not one of its sections.
    A written exchange has no speaking-time floor, and the moderator is whoever wrote the questions.
    Its `## Agenda` gives the order of the exchange and what you send with each part, without timeboxes.
    Record the substitution as a [deviation](weekly-report-requirements.md#declaring-deviations).

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
3. Declare any tool used to transcribe or draft the report in that week's [AI Usage Report](weekly-report-requirements.md#ai-usage-report).
4. It contains exactly the sections below, in this order, and nothing else.
5. A section with nothing in it says `None` and moves on.
   The same rule applies to [deviations](weekly-report-requirements.md#declaring-deviations).
6. The sections, and what belongs in them:

   Name people as [Sensitive Information Reference](visibility-requirements.md#sensitive-information-reference) says.

   | Section             | What belongs in it                                                                                                                                                                                                                                  |
   | ------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
   | `## Metadata`       | Date, duration, who was there by GitHub username with the customer shown as `Customer`, what you presented, the answer to each of the three permission questions, and a link to the transcript, the notes, or the [meeting script](#meeting-script) |
   | `## Summary`        | 3 to 5 bullets on what the meeting settled or changed, not on what was on the agenda                                                                                                                                                                |
   | `## Decisions`      | A table, one row per decision, each naming what it changed                                                                                                                                                                                          |
   | `## Action points`  | A table, one row per action                                                                                                                                                                                                                         |
   | `## Open questions` | A table, one row per question the meeting did not answer                                                                                                                                                                                            |
   | `## Disagreements`  | A table, one row per place the customer did not agree with you                                                                                                                                                                                      |

7. `## Decisions` has the columns `Decision`, `Made by`, and `Changes`.
   `Changes` names what the decision changed, one entry per thing, and links it when the artifact has a stable link:

   - A story change names the `US-nn`, and the `AC-nn` when a specific criterion changed.
   - A priority change names the `US-nn` and its old and new `moscow:*` labels.
   - A change to the [boundary](product-vision-requirements.md#boundary) names the item by its "will not" text.
   - The verdict on the [minimum usable product candidate](user-stories-requirements.md#minimum-usable-product-candidate) names each `US-nn` added to or removed from it, or says `None` with the reason when the customer accepted it as it is.
   - A constraint, an assumption, a maintained document, the implementation or the scaffold, and a later requirement are named the same way.

   Write `TBD` when the decision changes something whose artifact does not exist yet, and `None` with the reason when the decision confirmed the current direction and changed nothing.
   `TBD` and `None` are statuses, not identifiers.
   A `TBD` decision is finished when the artifact that carries its effect names the decision and links the report that recorded it; the report itself is not edited.

8. `## Action points` has the columns `Action`, `Owner`, and `Due`.
   The owner is a GitHub username, and the due date falls inside a named week.
9. `## Open questions` has the columns `Question`, `What it would change`, and `Follow-up`.
   A question whose answer would change nothing does not belong in the table.
10. `## Disagreements` has the columns `Your position`, `Customer's position`, and `What you changed`.
    If you did not change anything, say why you kept your position instead.

**Recommended**

- Scale the report to the meeting.
  A short check-in does not need the same volume as a two-hour review.
- Keep each cell to a sentence or two.
  A cell nobody can argue with is a cell that says nothing.

## Meeting Transcript

**Since: W1**

**Required**

1. Ask the customer for permission before recording starts.
   A refusal is not a problem: write [notes](#meeting-notes) instead and say so in the weekly public report.
2. Write the transcript in English, cleaned for readability without changing the meaning of what was said.
3. Use one sentence per line, and put a timestamp at the start of the line with a speaker label:

   ```text
   [00:00:04] alice: We settled on the meeting booking app after the research.
   [00:00:19] Customer: What made you choose it over the alternatives?
   ```

4. Label speakers consistently, as [Sensitive Information Reference](visibility-requirements.md#sensitive-information-reference) says.
5. Remove personal data and confidential information.
   Use `[inaudible]` where a word cannot be recovered and `[redacted]` where something was deliberately removed.
6. If the customer refuses to let the transcript be published, do not commit it.
   Put it in the Moodle submission instead and state that in the weekly public report.
   The [meeting report](#meeting-report) is still public.
7. Keep the recording out of the repository and share the link only through Moodle.

## Meeting Notes

**Since: W1**

**Required**

1. Write notes instead of a transcript when recording was refused, when the customer refused to let a transcript be shared at all, or when the meeting happened in writing.
2. Record the discussion chronologically, in the same order it happened, in prose rather than as a dialogue.
3. Include what was presented, what the customer said about it, what was decided, and what was left open.
4. Remove personal data and confidential information on the same terms as a [transcript](#meeting-transcript).
5. Notes are evidence, so the [meeting report](#meeting-report) is still required and still links to them.
6. Say in the weekly public report which of the three you produced, and why.

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

**Business goals**

1. _(open)_ Why sell sessions online rather than through your existing clients?
2. _(open)_ When this works, what changes in your week?

**End users**

3. _(open)_ Who books a session, and who pays?
4. _(closed)_ Are those the same person?

**Current workflow**

5. _(open)_ Walk me through the last booking and its payment, step by step.
   What happened at each step?
6. _(open)_ Where do the payment, the meeting link, and the materials live today?

**Pain points and constraints**

7. _(open)_ What was the most annoying part of the last booking that went wrong?
8. _(closed)_ Can you accept online payments today?

**Scope**

9. _(open)_ If only one of booking, payment, or materials could ship, which one survives?
10. _(closed)_ Is a Telegram bot acceptable, or does it have to be a web page?

## Roles

alice asks, bob takes notes, carol observes and records what we did not ask.

## Key improvements

**"Would you like a dashboard?" -> "What do you look at when a client has not paid yet?"**

We were offering a solution.
The rewrite asks for the past, so the answer describes a real routine instead of a preference for our idea.

**"Is latency important to you?" -> "When the last payment failed, what did you do?"**

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
- `GAP-02` survives only if experts really lose paid time to unpaid bookings, which we have not checked.
- The open payment-timing question decides whether payment happens before or after confirmation.

## Decisions

| Decision                                   | Made by             | Changes                                                                                           |
| ------------------------------------------ | ------------------- | ------------------------------------------------------------------------------------------------- |
| Build paid bookings, not the calendar view | Customer            | [`VP-01`](../../docs/research/value-proposition.md#vp-01-one-link-that-carries-the-whole-booking) |
| Drop multi-expert scheduling               | Customer            | `GAP-04`, marked dropped in the [gap analysis](../../docs/research/gap-analysis.md)               |
| Keep the web link for delivery             | Team, not contested | `None`; kept as is, so `VP-01` is unchanged                                                       |
| Deploy on a single small VPS               | Customer            | `TBD`; a customer-given constraint, recorded when the vision is written                           |

## Action points

| Action                                               | Owner | Due           |
| ---------------------------------------------------- | ----- | ------------- |
| Interview two experts who take payments in chat      | bob   | End of Week 2 |
| Re-cut the comparison without the reminders property | carol | End of Week 1 |

## Open questions

| Question                                 | What it would change                                 | Follow-up                |
| ---------------------------------------- | ---------------------------------------------------- | ------------------------ |
| Do clients pay at booking or on the day? | Whether payment happens before or after confirmation | bob, carried into Week 2 |

## Disagreements

| Your position                 | Customer's position                         | What you changed                      |
| ----------------------------- | ------------------------------------------- | ------------------------------------- |
| `GAP-04` is a differentiator  | Multi-expert scheduling is a solved problem | Dropped it from the value proposition |
| You would ship a Telegram bot | A web link is enough                        | `VP-01` is now written as a web link  |
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
