# Artifact Requirements

These requirements define what an artifact is, where it lives, and who may see it.
Use [Process Requirements](process-requirements.md) for the meaning of the product work itself, and [Repository Requirements](repository-requirements.md) for GitHub, pull request, and link-checking mechanics.
Assignment files add only the paths and evidence expectations for a specific week; they must not redefine anything here.

Read [the course rules](../course/rules.md) first.
It is the short version of this file and states what is expected of you as a student.

<h2>Table of contents</h2>

- [Artifact Concepts And Terminology](#artifact-concepts-and-terminology)
- [Where Artifacts Live In The Repository](#where-artifacts-live-in-the-repository)
- [Visibility Model](#visibility-model)
  - [Sensitive Information Reference](#sensitive-information-reference)
- [Weekly Public Report](#weekly-public-report)
- [Customer Meeting Artifacts](#customer-meeting-artifacts)
  - [Meeting Report](#meeting-report)
  - [Meeting Transcript](#meeting-transcript)
  - [Meeting Notes](#meeting-notes)
  - [Meeting Script](#meeting-script)
- [Screenshot Evidence](#screenshot-evidence)
- [AI Usage Report](#ai-usage-report)
- [Product Vision](#product-vision)
- [User Stories](#user-stories)
- [Prototypes](#prototypes)
- [Private Submission Wrapper](#private-submission-wrapper)
- [Declaring Deviations](#declaring-deviations)

## Artifact Concepts And Terminology

**Since: W1**

1. An **artifact** is any file, external board, link, recording, or other preserved evidence used to plan, deliver, verify, or submit course work.
2. The **weekly public report** is `reports/week-NN/README.md`.
   It is the canonical public entry point for that week's submission.
3. A **supporting artifact** is a file, link, or board referenced from the weekly public report that holds the detailed content.
4. A **repository-resident artifact** is committed to the product repository.
5. An **external-but-indexed artifact** is hosted outside the repository, for example a GitHub issue, a Figma or Miro board, and must be linked from the weekly public report.
6. A **private-only artifact** must never be committed to the public repository.
   It is shared only through the Moodle submission.
7. A **deviation** is a place where your team did something materially different from what an assignment or these requirements describe.
   Deviations are allowed.
   Undeclared deviations are not.
8. A **meeting report** is your team's own account of a meeting with the customer, written in your own words, at `reports/week-NN/meeting-report.md`.
9. A **decision** is a conclusion that changes or explicitly settles what you build.
   The change is open-ended: a story or acceptance criterion, a constraint, an assumption, a maintained document, the implementation or the scaffold, or a later requirement.
   In a [meeting report](#meeting-report), it is a conclusion the meeting reached.
   A decision the team takes outside a meeting is recorded in the [weekly public report](#weekly-public-report) of the week it was made.
   How a decision is cited is in [Identifier Rules](process-requirements.md#identifier-rules).
10. An **action point** is a follow-up that came out of a meeting, with a named owner, which is a GitHub username, and a week it falls due in.

## Where Artifacts Live In The Repository

**Since: W1**

1. The product repository holds two kinds of recorded work, and every artifact that records course work goes in exactly one of them:

   - `reports/week-NN/` holds the evidence for that week.
     It is a record of what the team did during that week.
     Week numbers are zero-padded: `reports/week-01/`, `reports/week-02/`.
   - `docs/` holds maintained project documentation.
     Anything the project will still refer to later goes here, in its final location, from the week it is created.

2. This rule covers artifacts, not repository mechanics.
   Code, workflows, issue and pull request templates, `LICENSE`, the files in `.github/`, and the files a planning or issue-tracking tool writes into the repository are repository content, not artifacts, and are covered in [Repository Requirements](repository-requirements.md).
   A tool that keeps its state in the repository adds a directory of repository content, not a third location for course work.
   GitHub issues themselves are not repository files: they are external-but-indexed artifacts, and the weekly public report indexes them.
3. There is no third location and no migration step.
   When you create an artifact, put it where it will live for the rest of the course.
   Do not create a file in `reports/` and move it to `docs/` later, and do not keep the same content in both places.
4. Maintained documentation in `docs/` is expected to stay current.
   When the product, the plan, or the decisions change, update the file.
   Week reports in `reports/week-NN/` are a historical record and are not rewritten after their week.
5. The weekly public report is always `reports/week-NN/README.md`.
   Every week has one, and it is the index for that week.

## Visibility Model

**Since: W1**

1. The product repository is public.
   Assume that anything you commit can and will be read by anyone, including people outside the course, for the whole time the repository exists.
2. The repository is licensed MIT.
   See [Repository Requirements](repository-requirements.md#licensing).
3. Public artifacts must be viewable by instructors and your customer but must not be publicly editable.
4. Private artifacts are shared only through the Moodle submission, with the people who need them.
   Every private link must be reachable by your instructors.
5. Everything you submit stays openable by your instructors until the course has been graded.
6. Open every link you submit before you submit it.
   If a link needs a login you do not control, say so next to the link.

### Sensitive Information Reference

**Since: W1**

Every item below goes in exactly one place.

| Item                                                                                                                                        | Where it goes                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- |
| The root `README.md`, `LICENSE`, and the maintained documentation in `docs/`                                                                | Public repository                                                                                                                  |
| The weekly public report and every supporting artifact it links                                                                             | Public repository                                                                                                                  |
| Meeting reports, scripts, transcripts, and notes                                                                                            | Public repository, after sanitization                                                                                              |
| The AI usage report                                                                                                                         | Public repository                                                                                                                  |
| External boards, prototypes, and diagram tools                                                                                              | Public, shared view-only, linked from the report                                                                                   |
| Screenshots and diagrams of reasonable size                                                                                                 | Public, per [Screenshot Evidence](#screenshot-evidence)                                                                            |
| Recordings of meetings with the customer, their links, and exact timecodes into them                                                        | Moodle only                                                                                                                        |
| A meeting transcript the customer refused to let you publish                                                                                | Moodle only                                                                                                                        |
| Real names, email addresses including university ones, phone numbers, and other personal data of team members, the customer, or anyone else | Moodle only                                                                                                                        |
| Usability test participant identity, data, recordings, consent, and results                                                                 | Moodle only                                                                                                                        |
| Confidential business or research information, and anything the customer asks you to keep private                                           | Moodle only                                                                                                                        |
| Credentials, tokens, API keys, private keys, and `.env` files                                                                               | Never committed; Moodle only when the week needs them. Use a sanitized `.env.example` in the repository                            |
| Large files: recordings, video, datasets, model weights, archives                                                                           | Never committed; see [Configuration And Sensitive Information](repository-requirements.md#configuration-and-sensitive-information) |
| Customer-owned or third-party material you may not redistribute                                                                             | Never committed; see [Licensing](repository-requirements.md#licensing)                                                             |
| Files copied wholesale from another repository                                                                                              | Never committed                                                                                                                    |
| Local tooling folders, editor state, and build caches                                                                                       | Never committed                                                                                                                    |

Never commit a Moodle-only item, not even "temporarily" and not even in a file you later delete.
Once it is in the git history it is public, and deleting the file does not remove it.

The repository identifies people by GitHub username, and the customer as `Customer`.
If the customer has a GitHub username and agrees to it being public, use the username instead.
The mapping from username to real name and university email goes in the Moodle PDF, not in the repository.

## Weekly Public Report

**Since: W1**

**Required**

1. Create `reports/week-NN/README.md` for every week that has a submission.
2. Merge it, and every repository-resident artifact it links, into `main`, the [default branch](repository-requirements.md#repository-setup), before you submit.
   The [submission commit](repository-requirements.md#permalinks-and-snapshots) is a `main` commit that contains them.
   A report or an artifact left on an unmerged pull-request branch has not been submitted.
3. It is the index for the week.
   It links directly to every supporting artifact, both repository files and external links.
4. It identifies the week, the project, the team, and the covered scope clearly enough that a reader knows what body of work it describes.
5. It contains a short summary of what the team found, built, or decided, and what is still open.
   A grader should be able to read only this file and understand the week, then follow links for detail.
6. `## Decisions` is the week's decision index.
   When the week held a meeting with the customer, the section links the `## Decisions` table of each meeting report.
   A decision the team took outside a meeting goes in the section's own table, with the same columns and cell rules as the [meeting report](#meeting-report).
   The section links a meeting's decisions; it never copies their rows.
   A week with no decision at all does not carry the section.
7. It contains a coverage table mapping each required deliverable of the assignment to the artifact that satisfies it.
   The table is the index, so it is not followed by a second list of the same links.
8. It links the root `LICENSE`.
9. It contains a contribution table mapping each team member's GitHub username to the work they did, using links to their commits, pull requests, or reviews where possible.
10. It states any deviation from the assignment or from the shared requirements, and justifies it.
    This includes cases where you used a different tool, a different artifact form, or an alternative arrangement.
11. It states, in one line, that no private-only material was committed to the repository.
12. It stays accurate and reachable until the course has been graded.

**Since: W2**

13. It records the [minimum usable product candidate](process-requirements.md#minimum-usable-product-candidate) under the heading the assignment names: the core task, then the `US-nn` of each story with its issue linked, then the story to drop first.

**Recommended**

- Use the same section order every week so readers learn it once.
- Keep it short.
  If a section is growing, the detail probably belongs in a supporting artifact that the report links.
- State what a reader should look at first.

**Example**

A Week 01 report, from `reports/week-01/README.md`:

```markdown
# Week 01 report

## Project

Meeting booking app.

Our problem-space sentence: an expert who sells sessions online needs one link where a client can book, pay, and receive the meeting link and materials, and no product carries all three in one flow.

## What we did

We researched four alternatives, compared them on six properties, and identified three gaps worth building on.

## Findings

The strongest products schedule time well and leave payment and materials to integrations or paid tiers.
Nobody gives an expert one flow from booking to a paid, prepared session, which is the gap our project targets.

## Decisions

The kickoff decisions are in the [meeting report](meeting-report.md#decisions).

## Coverage

| Deliverable              | Artifact                                                                               |
| ------------------------ | -------------------------------------------------------------------------------------- |
| Alternatives search      | [docs/research/alternatives.md](../../docs/research/alternatives.md)                   |
| Candidate list           | [candidate-list.md](candidate-list.md)                                                 |
| Compare the alternatives | [docs/research/comparison.md](../../docs/research/comparison.md)                       |
| Gap analysis             | [docs/research/gap-analysis.md](../../docs/research/gap-analysis.md)                   |
| Value proposition        | [docs/research/value-proposition.md](../../docs/research/value-proposition.md)         |
| Research board           | [Figma board](https://www.figma.com/design/PUc4NFVcLureKzxE3RAGB0/Market-Research)     |
| Meeting script           | [meeting-script.md](meeting-script.md)                                                 |
| Customer kickoff         | [meeting-report.md](meeting-report.md), [meeting-transcript.md](meeting-transcript.md) |
| AI usage                 | [ai-usage.md](ai-usage.md)                                                             |

## Contribution

| Member | Work                                                   |
| ------ | ------------------------------------------------------ |
| @alice | [PR #4](...), alternatives 1–2, [approved](...) @bob   |
| @bob   | [PR #5](...), comparison table, [approved](...) @carol |

## Repository evidence

[Reviewed pull request](...), [link check run](...).

## Deviations

None.

## Privacy

No private-only material was committed to this repository.
```

## Customer Meeting Artifacts

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
5. Ask the customer three separate permission questions, every time: may we record, may we publish a sanitized transcript in the repository, and may we share a sanitized transcript privately with instructors if publication is refused.
   Permission is per meeting and is never carried over from an earlier meeting.

### Meeting Report

**Required**

1. Write the report at `reports/week-NN/meeting-report.md`, one per meeting with the customer.
   If a week holds more than one, number them in chronological order: `meeting-report-2.md`, `meeting-report-3.md`.
2. Write it in English, in the team's own words, in the past or present tense as suits the entry.
   A report that restates the transcript line by line, or that a tool generated and the team pasted in unchecked, does not satisfy this.
3. Declare any tool used to transcribe or draft the report in that week's [AI Usage Report](#ai-usage-report).
4. It contains exactly the sections below, in this order, and nothing else.
5. A section with nothing in it says `None` and moves on.
   The same rule applies to [deviations](#declaring-deviations).
6. The sections, and what belongs in them:

   Name people as [Sensitive Information Reference](#sensitive-information-reference) says.

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
   - A change to the [boundary](process-requirements.md#boundary) names the item by its "will not" text.
   - The verdict on the [minimum usable product candidate](process-requirements.md#minimum-usable-product-candidate) names each `US-nn` added to or removed from it, or says `None` with the reason when the customer accepted it as it is.
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

**Example**

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

### Meeting Transcript

**Required**

1. Ask the customer for permission before recording starts.
   A refusal is not a problem: write [notes](#meeting-notes) instead and say so in the weekly public report.
2. Write the transcript in English, cleaned for readability without changing the meaning of what was said.
3. Use one sentence per line, and put a timestamp at the start of the line with a speaker label:

   ```text
   [00:00:04] alice: We settled on the meeting booking app after the research.
   [00:00:19] Customer: What made you choose it over the alternatives?
   ```

4. Label speakers consistently, as [Sensitive Information Reference](#sensitive-information-reference) says.
5. Remove personal data and confidential information.
   Use `[inaudible]` where a word cannot be recovered and `[redacted]` where something was deliberately removed.
6. If the customer refuses to let the transcript be published, do not commit it.
   Put it in the Moodle submission instead and state that in the weekly public report.
   The [meeting report](#meeting-report) is still public.
7. Keep the recording out of the repository and share the link only through Moodle.

**Example**

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

### Meeting Notes

**Required**

1. Write notes instead of a transcript when recording was refused, when the customer refused to let a transcript be shared at all, or when the meeting happened in writing.
2. Record the discussion chronologically, in the same order it happened, in prose rather than as a dialogue.
3. Include what was presented, what the customer said about it, what was decided, and what was left open.
4. Remove personal data and confidential information on the same terms as a [transcript](#meeting-transcript).
5. Notes are evidence, so the [meeting report](#meeting-report) is still required and still links to them.
6. Say in the weekly public report which of the three you produced, and why.

### Meeting Script

**Required**

1. Write the script before the meeting, at `reports/week-NN/meeting-script.md`, for every meeting with the customer.
   What the meeting has to settle is in [Meeting With The Customer](process-requirements.md#meeting-with-the-customer), and the method behind the kickoff is in [Guide: The Kickoff Meeting](../guides/customer-kickoff-meeting.md).
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
   At the kickoff, it is the per-area minimum in [Meeting With The Customer](process-requirements.md#meeting-with-the-customer).
   A later meeting derives its own areas from its target rather than from the five kickoff areas, so it carries as many questions as its target has to settle, and no per-area floor.
6. Every question serves the target in `## Context`: an answer to it could change something the team will build, write, or ask next.
   A question no answer could change is cut, and at the kickoff it is replaced rather than kept to reach the per-area minimum.
7. `## Agenda` covers the whole meeting.
   The first part asks the [three permission questions](#customer-meeting-artifacts), the last part reads back the decisions and action points, and the timeboxes add up to the length you planned.
   Every question appears in exactly one part.
8. Each part names what you show in it: a link to the artifact, prototype, or screen you put in front of the customer, or says that nothing is shown.
9. The script is preparation, so it is not rewritten after the meeting.
   What the meeting actually produced is the [meeting report](#meeting-report), which links to the script.
10. A meeting held asynchronously in writing instead of live still produces a script, but `## Roles` is not one of its sections.
    A written exchange has no speaking-time floor, and the moderator is whoever wrote the questions.
    Its `## Agenda` gives the order of the exchange and what you send with each part, without timeboxes.
    Record the substitution as a [deviation](#declaring-deviations).

**Recommended**

- Keep it to a page.
  A script nobody can follow at speaking pace is a document, not a script.
- Mark the two or three questions that would change the project most if the answer went the other way, so the team asks them even when time runs short.
- Show your direction early and ask the questions that could overturn it next, so they get the most time.
  Leave the part you are most sure of for last; it is the one to cut when the meeting runs over.

**Example**

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

## Screenshot Evidence

**Since: W1**

**Required**

1. Use a screenshot when visual evidence is the point, or when a public link may not be reliably inspectable by a grader.
   Settings screens, dashboards, and comparisons are the usual cases.
2. Sanitize every screenshot before it is published.
   Crop out anything that is not needed to make the point.
3. Keep file sizes reasonable.
   A screenshot is not a video frame archive.
4. Keep screenshots reachable until the course has been graded.

Screenshots may live in the repository or on an external board.
Both are allowed:

- **External board.**
  The recommended default.
  Figma, Miro, Excalidraw, or anything else that makes pasting screenshots painless.
  Share it view-only, link it from the artifact that uses it, and describe in the text what each screenshot shows.
- **Repository.**
  Use a week-local `reports/week-NN/images/` directory when a screenshot is part of the week's evidence.
  Name files so a reader can tell them apart, for example `branch-protection.png`.

Wherever a screenshot lives, the text that refers to it must carry the meaning.
A screenshot with no explanation is not evidence.

## AI Usage Report

**Since: W1**

**Required**

1. Each week, write `reports/week-NN/ai-usage.md`.
2. Name the tools you used and what you used them for: research, drafting, code, analysis, transcription, images, or anything else.
3. Say what you did with the output: what you accepted, what you changed, what you rejected and why.
4. If you used no AI tools, say so explicitly in one line.
   This is a valid answer and costs you nothing.

The course allows AI tools.
See [the course rules](../course/rules.md#ai-tools).
The report exists so a reader can tell your own work from generated text, not to catch you using tools.

**Example**

```markdown
# AI usage — Week 01

## Tools

ChatGPT and Claude, both through the web UI.

## What we used them for

Drafted the property list for the comparison table and summarised the Calendly and Cal.com docs.

## What we did with the output

Kept two properties from the draft.
Rejected the rest: they described UI polish rather than the properties our users care about.
Every claim in the comparison table was checked against the product's own documentation by hand.

## What was not used

No AI output was used as a finding.
No generated text was submitted unchecked.
```

## Product Vision

**Since: W2**

The product vision is the maintained document that says what the team decided to build, what it will not do, and what limits it.
It is created once, in its final place, and then stays current.

**Required**

1. `docs/product-vision.md` is the only file that carries the product vision.
2. It carries these parts, and the linked rule says what each one must say:

   - The **goal**, per [Product Vision And Goals](process-requirements.md#product-vision-and-goals), linking each `VP-nn` section in `docs/research/value-proposition.md` rather than restating it.
   - The **stakeholders**, per [Stakeholders](process-requirements.md#stakeholders).
   - The **constraints**, per [Constraints](process-requirements.md#constraints).
   - The **boundary**, per [Boundary](process-requirements.md#boundary).
   - The **system context diagram**, per [System Context](process-requirements.md#system-context), committed here or linked view-only from here.
   - Links to the [user stories](#user-stories) and to the current week's report.

3. When the product or the decisions change, update this file.
   It is maintained documentation, not a Week 2 submission, so a contradiction with the stories is a bug rather than a historical record.

**Example**

```markdown
# Product vision

Meeting booking app

## Goal

An independent expert can send one link where a client books a time, pays, and receives the meeting link and materials, without assembling the same session from three tools.

**Supports:** [VP-01](research/value-proposition.md#vp-01-one-link-that-carries-the-whole-booking).

## Stakeholders

- **Independent expert** (tutor, coach, or consultant) who sells sessions: the primary user.
- **Client**: books and pays, and uses the product once.
- **The customer**: decides the scope, and is the course instructor.

## Constraints

| Constraint                       | Source         | What it costs                             |
| -------------------------------- | -------------- | ----------------------------------------- |
| Deployed on a single small VPS   | Customer-given | No failover during a demo                 |
| Built and maintained by 3 people | Team-given     | No component may need a second expert     |
| Single-term course               | Environmental  | Payment and video stay integrations       |
| Payment provider sandbox only    | Derived        | No live charges, so real fees go untested |

## Boundary

| The product will not                    | Handled by    | Why                                                           |
| --------------------------------------- | ------------- | ------------------------------------------------------------- |
| Host the video call                     | Video service | The single-term course constraint: video stays an integration |
| Schedule more than one expert at a time | Nobody        | Customer decision at the kickoff: the experts work alone      |
| Sell recurring subscriptions or bundles | Nobody        | Team reasoning: no user we met pays for sessions in advance   |

## Context

![System context diagram](architecture/context.svg)

The independent experts and their clients are the actors.
The external systems are the calendar, the payment provider, and the video service.
The video service is on the diagram because the boundary hands it the call, and nothing on the diagram does a job the boundary leaves to nobody.

## Where The Detail Lives

- [User stories](https://github.com/<organization>/<repo>/issues?q=label%3Auser-story)
- [Week 2 report](../reports/week-02/README.md)
```

## User Stories

**Since: W2**

User stories are created in Week 2 and stay current for the rest of the course.
Each story is a GitHub issue, and the `user-story` label identifies story issues.

**Required**

1. Every story is one GitHub issue, opened from the [issue form](repository-requirements.md#issue-tracking).
   It carries:

   - The title `US-nn: <story title>`.
   - The story statement and its `Traces to` list, per [User Stories](process-requirements.md#user-stories).
   - The acceptance criteria, each starting with its `AC-nn`, per [Acceptance Criteria](process-requirements.md#acceptance-criteria).
   - The priority reason, in the form's `Priority reason` field, and one `moscow:*` label, per [MoSCoW Prioritization](process-requirements.md#moscow-prioritization).
   - The `user-story` label, applied by the form.
      <!-- Alternatively, allow issue type -->
   - Optionally, notes and a checklist of the remaining work, so a contributor can work without leaving the issue.

2. A story you intend to build stays open until it is delivered, then closes as completed.
   A `Won't Have` story, including one dropped after it was written, carries the `moscow:won't` label and is closed as not planned, with a comment naming the reason.
   A closed story stays in the list; the closing comment and the close date are its record.
3. The issue is the record of change.
   A change that follows a customer meeting adds a dated comment saying what changed, naming any `AC-nn` that changed, and linking the meeting report.
   Do not delete an issue or rewrite its body to hide a change; the edit history and the comment are the record.
4. The **registry of identifiers** is the issue list filtered by the `user-story` label.
   It shows open and closed issues, so a `Won't Have` story keeps its `US-nn` and stays findable after it closes.
5. Do not keep a second list of stories in the repository.
   The issue is the source of truth for the requirement and its criteria, and the issue tracker is where execution state lives, per [Issue Tracking](repository-requirements.md#issue-tracking).

**Recommended**

- Keep each story short enough to read in one sitting.

**Example**

Issue #42, a `Must Have` story:

```markdown
Title: US-01: Pay at booking
Labels: moscow:must, user-story

As a coach who sells sessions online, I want a client to pay when they book,
so that an unpaid slot does not block a paying one for the rest of the week.

## Traces to

- `VP-01`
- `GAP-01`

## Priority reason

Must Have: without it, an unpaid booking still holds a slot, which is the GAP-01 problem itself; the reminder email can wait, because a client who paid already has the link.

## Acceptance criteria

1. `AC-01`: Given a paid meeting type with one free slot, when a client books that slot, then the slot is held
   while the client pays and is released back to the calendar when the hold expires.
2. `AC-02`: Given a client who does not finish payment, when the hold expires, then the booking is not confirmed
   and no meeting link is created.

## Notes

The customer confirmed on 2026-10-06 that payment happens before confirmation, which retired the pay-later
assumption in [the assumptions table](https://github.com/<organization>/<repo>/blob/main/docs/research/value-proposition.md#assumptions).

Comment, 2026-10-06: `AC-02` added after the validation meeting.
The customer will not accept a hold that confirms without payment, and the first version of the story only had `AC-01`, which said the slot is held.
```

<!-- TODO in comments, link to meeting reports -->

Issue #50, a `Won't Have` story, closed as not planned:

```markdown
Title: US-09: Sell session bundles
Labels: moscow:won't, user-story

As a coach, I want to sell a bundle of ten sessions, so that a returning client pays once.

## Traces to

- `VP-01`
- `GAP-01`

## Priority reason

Won't Have: the boundary item "Sell recurring subscriptions or bundles" excludes it, and no user we met has asked to pay for sessions in advance.

Closing comment: Not planned, for the priority reason above.
```

## Prototypes

**Since: W2**

This section says where a prototype is recorded and in what form.
What a prototype is for, and what it must change, is in [Validation](process-requirements.md#validation).

**Required**

1. A week that tests an idea records it at `reports/week-NN/prototypes.md`.
   It is week evidence, not maintained documentation, so it is not in `docs/`.
2. The file carries, for each prototype:

   - What it is and how to view it: a screenshot in `reports/week-NN/images/`, a view-only external link, or a branch name.
   - Which `US-nn` or `GAP-nn` it tested, any `AC-nn` it exercised, and the question it was built to answer.
   - What the customer said about it.
   - What changed as a result, and where that change is recorded.

3. A prototype may be a paper sketch, a static image, a clickable design, or a code spike.
   Any format is allowed, as long as somebody else can look at it.
4. **Disposable prototype code does not go on `main`.**
   If you vibecode a prototype, do it on a branch, show it from there, and then either delete the branch or merge it only when it has become product code.
   The evidence is the screenshot and `prototypes.md`, not the branch, so the branch is genuinely disposable.
   The one exception is a branch you use as assignment evidence: that branch may not be deleted, per [Branch Protection And Pull Requests](repository-requirements.md#branch-protection-and-pull-requests).
5. Do not commit a prototype to `docs/`.
   It will never be the product, and a directory of discarded prototypes in the maintained documentation is a lie about what the team is building.

**Recommended**

- Say which question the prototype answers, in one line, before you show it.

## Private Submission Wrapper

**Since: W1**

The Moodle PDF is the canonical private artifact for a week.

**Required**

1. It identifies the project, the team, and the week clearly enough for an instructor to match it to the repository state.
2. It links the public evidence rather than copying it.
   Do not paste the weekly report into the PDF.
3. It contains the private-only material for that week: private links, university emails, credentials if the week needs them, and any artifact the customer refused to let you publish.
4. When the assignment requires a permalink, it uses a commit-hash permalink, per [Permalinks And Snapshots](repository-requirements.md#permalinks-and-snapshots), so the link keeps pointing at the exact content that was submitted.
5. It stays short.
   It is a map, not a second copy of the repository.

**Example**

See [Assignment 1](../assignments/assignment-1.md#assignment-report-on-moodle) for the week-specific contents.

## Declaring Deviations

**Since: W1**

1. If your team uses a different tool, a different artifact form, or a different arrangement than the assignment describes, state it in the weekly public report under a deviations heading and say why.
2. Declaring a deviation does not excuse a broken requirement.
   Say what you did instead and why it satisfies the intent.
3. An undeclared deviation is treated as a missing requirement.
