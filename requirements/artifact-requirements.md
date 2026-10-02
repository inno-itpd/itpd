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
  - [Public Artifacts](#public-artifacts)
  - [Private-Only Artifacts](#private-only-artifacts)
  - [Never Commit](#never-commit)
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
- [Later Weeks](#later-weeks)

## Artifact Concepts And Terminology

**Since: W1**

1. An **artifact** is any file, external board, link, recording, or other preserved evidence used to plan, deliver, verify, or submit course work.
2. The **weekly public report** is `reports/week-NN/README.md`.
   It is the canonical public entry point for that week's submission.
3. A **supporting artifact** is a file, link, or board referenced from the weekly public report that holds the detailed content.
4. A **repository-resident artifact** is committed to the product repository.
5. An **external-but-indexed artifact** is hosted outside the repository, for example a Figma or Miro board, and must be linked from the weekly public report.
6. A **private-only artifact** must never be committed to the public repository.
   It is shared only through the Moodle submission.
7. A **deviation** is a place where your team did something materially different from what an assignment or these requirements describe.
   Deviations are allowed.
   Undeclared deviations are not.
8. A **meeting report** is your team's own account of a meeting with the customer, written in your own words, at `reports/week-NN/meeting-report.md`.
9. A **decision** is a conclusion that changes what you build.
   In a [meeting report](#meeting-report), it is a conclusion the meeting reached.
   A decision the team takes outside a meeting is recorded in the weekly public report of the week it was made.
10. An **action point** is a follow-up that came out of a meeting, with a named owner, which is a GitHub username, and a week it falls due in.

## Where Artifacts Live In The Repository

**Since: W1**

1. The product repository holds two kinds of recorded work, and every artifact that records course work goes in exactly one of them:

   - `reports/week-NN/` holds the evidence for that week.
     It is a record of what the team did during that week.
     Week numbers are zero-padded: `reports/week-01/`, `reports/week-02/`.
   - `docs/` holds maintained project documentation.
     Anything the project will still refer to in a later week goes here, in its final location, from the week it is created.

2. This rule covers artifacts, not repository mechanics.
   Code, workflows, issue and pull request templates, `LICENSE`, the files in `.github/`, and the files a planning or issue-tracking tool writes into the repository are repository content, not artifacts, and are covered in [Repository Requirements](repository-requirements.md).
   A tool that keeps its state in the repository adds a directory of repository content, not a third location for course work.
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

### Public Artifacts

**Since: W1**

- The root `README.md`, `LICENSE`, and the maintained documentation in `docs/`.
- The weekly public report and every supporting artifact it links.
- Meeting reports, transcripts, and notes, after sanitization.
- The AI usage report.
- External boards, shared view-only.

### Private-Only Artifacts

**Since: W1**

- Recordings of meetings with the customer, and links to them.
- A meeting transcript the customer refused to let you publish.
- University email addresses of team members.
- Usability test participant data, recordings, and consent evidence.
- Credentials, tokens, and any other authentication material.
- Exact timecodes into private recordings.
- Anything the customer asks you to keep private.

Never commit any of these, not even "temporarily" and not even in a file you later delete.
Once it is in the git history it is public, and deleting the file does not remove it.

### Never Commit

**Since: W1**

- Passwords, API keys, tokens, private keys, `.env` files, and any other authentication material.
  Use a sanitized `.env.example` instead.
- Large files: recordings, video, datasets, model weights, archives.
  Screenshots and diagrams are fine if they are reasonably sized.
- Real personal data of other people.
  Use GitHub usernames, roles, or pseudonyms such as `customer`.
- Customer-owned or third-party code, data, or media that you are not allowed to redistribute.
  See [Repository Requirements](repository-requirements.md#licensing).
- Your own local tooling folders, editor state, and build caches.
- Files copied wholesale from another repository.

### Sensitive Information Reference

**Since: W1**

Treat the following as sensitive and keep it out of public artifacts unless it is genuinely required:

- Real names, email addresses, and phone numbers.
- University email addresses.
- Customer-identifying and instructor-identifying details that are not needed for grading.
- Confidential business or research information.
- Recording links and exact timecodes into private recordings.
- Usability test participant identity, consent, and results.

The team member identity mapping is the deliberate exception.
Your public repository identifies people by GitHub username.
The mapping from username to real name and university email goes in the Moodle PDF, not in the repository.

## Weekly Public Report

**Since: W1**

**Required**

1. Create `reports/week-NN/README.md` for every week that has a submission.
2. It is the index for the week.
   It links directly to every supporting artifact, both repository files and external links.
3. It identifies the week, the project, the team, and the covered scope clearly enough that a reader knows what body of work it describes.
4. It contains a short summary of what the team found, built, or decided, and what is still open.
   A grader should be able to read only this file and understand the week, then follow links for detail.
5. It contains a coverage table mapping each required deliverable of the assignment to the artifact that satisfies it.
   The table is the index, so it is not followed by a second list of the same links.
6. It links the root `LICENSE`.
7. It contains a contribution table mapping each team member's GitHub username to the work they did, using links to their commits, pull requests, or reviews where possible.
8. It states any deviation from the assignment or from the shared requirements, and justifies it.
   This includes cases where you used a different tool, a different artifact form, or an alternative arrangement.
9. It states, in one line, that no private-only material was committed to the repository.
10. It stays accurate and reachable until the course has been graded.

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

Modular LLM Gateway, team 7.

Our problem-space sentence: a platform engineer whose company sends marked source code to external model providers needs the code's own classification to follow the request, and no product lets them set that.

## What we did

We researched four alternatives, compared them on seven properties, and identified three gaps worth building on.

## Findings

The two strongest products solve routing well and data handling badly.
Nobody lets a team define its own redaction rules, which is the gap our project targets.

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
4. Every meeting with the customer also produces a [meeting script](#meeting-script), which the meeting report links to.
5. Later weeks cite a meeting report by path and heading anchor, for example `reports/week-01/meeting-report.md#decisions`.
   The report is the record of that meeting and is not rewritten afterwards.
   If a later meeting reverses a decision, the later report says so and links back to the report it reverses.
6. Ask the customer three separate permission questions, every time: may we record, may we publish a sanitized transcript in the repository, and may we share a sanitized transcript privately with instructors if publication is refused.
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

   Use `Customer` for your instructor rather than a real name.
   If the customer has a GitHub username and agrees to it being public, use the username instead.

   | Section             | What belongs in it                                                                                                                                                                                                                                  |
   | ------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
   | `## Metadata`       | Date, duration, who was there by GitHub username with the customer shown as `Customer`, what you presented, the answer to each of the three permission questions, and a link to the transcript, the notes, or the [meeting script](#meeting-script) |
   | `## Summary`        | 3 to 5 bullets on what the meeting settled or changed, not on what was on the agenda                                                                                                                                                                |
   | `## Decisions`      | A table, one row per decision                                                                                                                                                                                                                       |
   | `## Action points`  | A table, one row per action                                                                                                                                                                                                                         |
   | `## Open questions` | A table, one row per question the meeting did not answer                                                                                                                                                                                            |
   | `## Disagreements`  | A table, one row per place the customer did not agree with you                                                                                                                                                                                      |

7. `## Decisions` has the columns `Decision`, `Made by`, and `Traces to`.
   `Traces to` names the identifier the week owns, per [Traceability Into Later Weeks](process-requirements.md#traceability-into-later-weeks), and says `None` where the decision came from nowhere in your research.
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

- The customer accepted `VP-01` and told us to stop treating `GAP-04` as a differentiator.
- `GAP-02` survives only if the team-size constraint is real, which we have not checked.
- Two weeks of work are now contingent on one check we have not done.

## Decisions

| Decision                             | Made by             | Traces to |
| ------------------------------------ | ------------------- | --------- |
| Build the gateway core, not the host | Customer            | `VP-01`   |
| Drop multi-tenant isolation from W3  | Customer            | `GAP-04`  |
| Keep the plugin model for delivery   | Team, not contested | `VP-01`   |

## Action points

| Action                                           | Owner | Due           |
| ------------------------------------------------ | ----- | ------------- |
| Verify the team-size constraint with two sources | bob   | End of Week 2 |
| Re-cut the comparison without the host property  | carol | End of Week 1 |

## Open questions

| Question                                          | What it would change                                  | Follow-up                |
| ------------------------------------------------- | ----------------------------------------------------- | ------------------------ |
| Is shared rules across tenants a real constraint? | Whether `VP-01` is a feature or a deployment decision | bob, carried into Week 2 |

## Disagreements

| Your position                   | Customer's position                  | What you changed                        |
| ------------------------------- | ------------------------------------ | --------------------------------------- |
| `GAP-04` is a differentiator    | Isolation is a solved market problem | Dropped it from the value proposition   |
| You would ship a hosted service | A plugin host is enough              | `VP-01` is now written as a plugin host |
```

### Meeting Transcript

**Required**

1. Ask the customer for permission before recording starts.
   A refusal is not a problem: write [notes](#meeting-notes) instead and say so in the weekly public report.
2. Write the transcript in English, cleaned for readability without changing the meaning of what was said.
3. Use one sentence per line, and put a timestamp at the start of the line with a speaker label:

   ```text
   [00:00:04] alice: We picked the modular LLM gateway from the catalog.
   [00:00:19] Customer: What made you choose that one over the running coach?
   ```

4. Label speakers consistently.
   Use GitHub usernames for your team.
   Use `Customer` for your instructor rather than a real name.
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

[00:00:04] alice: We picked the modular LLM gateway from the catalog.
[00:00:19] Customer: What made you choose that one over the running coach?
[00:01:02] bob: The plugin model means we can start with a core and add pieces.
[00:01:40] Customer: [redacted]
[00:02:11] carol: We still need to check whether the team size constraint is real.
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
   What the meeting has to settle is in [Meeting With The Customer](process-requirements.md#meeting-with-the-customer), and the method behind the kickoff is in [Guide: preparing the customer interview](../guides/customer-interview.md).
2. It contains exactly the sections below that apply to that kind of meeting, in this order, and nothing else.
3. A section with nothing in it says `None` and moves on.
4. The sections, and what belongs in them:

   | Section               | Which meetings | What belongs in it                                                                                                                 |
   | --------------------- | -------------- | ---------------------------------------------------------------------------------------------------------------------------------- |
   | `## Context`          | Every meeting  | The problem-space sentence you are working from, what you already believe, and what this meeting has to settle                     |
   | `## Questions`        | Every meeting  | A numbered list, each question tagged open or closed, covering the areas this meeting has to settle                                |
   | `## Roles`            | Every meeting  | Who moderates, who takes notes, and who observes                                                                                   |
   | `## Key improvements` | Every meeting  | At least two questions you rewrote at the kickoff, and at least one at a later meeting, each with the principle behind the rewrite |

5. `## Key improvements` is required for every meeting.
   The kickoff requires at least two rewrites, and every later meeting requires at least one.
6. The `## Questions` minimum depends on the meeting.
   At the kickoff, each of the five areas in [Meeting With The Customer](process-requirements.md#meeting-with-the-customer) has at least two questions.
   A later meeting derives its own areas from its target rather than from the five, so it carries as many questions as its target has to settle, and no per-area floor.
7. `## Key improvements` shows a before and an after for each question, and names the principle that changed it.
   A section that claims improvement without showing the rewrite is not a section.
8. The script is preparation, so it is not rewritten after the meeting.
   What the meeting actually produced is the [meeting report](#meeting-report), which links to the script.
9. A meeting held asynchronously in writing instead of live still produces a script, but `## Roles` is not one of its sections.
   A written exchange has no speaking-time floor, and the moderator is whoever wrote the questions.
   Record the substitution as a [deviation](#declaring-deviations).

**Recommended**

- Keep it to a page.
  A script nobody can follow at speaking pace is a document, not a script.
- Mark the two or three questions that would change the project most if the answer went the other way, so the team asks them even when time runs short.

**Example**

```markdown
# Kickoff meeting script

## Context

Our problem-space sentence: a platform engineer whose company sends marked source code to external model providers needs the code's own classification to follow the request, and no product lets them set that.

We believe this is the gap our product targets, and that it is worth two months of work.
We have not checked whether teams this size hit it, and we do not know whether the customer will accept a plugin-first product rather than a hosted one.
This meeting tests both.

## Questions

**Business goals**

1. _(open)_ What made you decide to build something rather than buy something?
2. _(open)_ When this works, what is different about your work?

**End users**

3. _(open)_ Who writes the code that gets sent, and who reviews what comes back?
4. _(closed)_ Is the reviewer the same person as the author?

**Current workflow**

5. _(open)_ Walk me through the last time a marked file went to an external model.
   What happened at each step?
6. _(open)_ Where does the classification of "marked" actually live in your setup today?

**Pain points and constraints**

7. _(open)_ What is the most annoying part of the last time you did this?
8. _(closed)_ Can anything be sent without a human reading it first?

**Scope**

9. _(open)_ If we could only ship one of these, which one would you keep?
10. _(closed)_ Is a hosted deployment acceptable to you, or does it have to run inside your network?

## Roles

alice asks, bob takes notes, carol observes and records what we did not ask.

## Key improvements

**"Would you like a dashboard?" -> "What do you look at when you want to know what an external model did with our code?"**

We were offering a solution.
The rewrite asks for the past, so the answer describes a real routine instead of a preference for our idea.

**"Is latency important to you?" -> "When the round trip got slow last month, what did you do?"**

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

Drafted the property list for the comparison table and summarised the LiteLLM docs.

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
2. It carries:

   - The **goal**, what the product must achieve, traced to the `VP-nn` it supports.
     The `VP-nn` sections live in `docs/research/value-proposition.md`.
   - The **stakeholders**
   - The **constraints**, each marked as customer-given, team-given, or derived, with what it costs.
   - The **boundary**, the list of what the product will not do.
   - A **system context diagram**, committed here or linked view-only from here, with the external actors described in prose beside it.
   - Links to the [user stories](#user-stories) and to the current week's report.

3. When the product or the decisions change, update this file.
   It is maintained documentation, not a Week 2 submission, so a contradiction with the stories is a bug rather than a historical record.

**Recommended**

- Keep the goal to a short paragraph.
  The stories carry the detail, and a vision that has grown into a specification will drift away from them.
- Link to each `VP-nn` section rather than restating it.

**Example**

```markdown
# Product vision

Modular LLM gateway

## Goal

A platform engineer at a company that sends marked source code to external models can have the code's own classification of what is marked decide the redaction rules, without those rules leaving the company.

**Supports:** [VP-01](research/value-proposition.md#vp-01-redaction-rules-that-belong-to-the-team).

## Stakeholders

- **Platform engineer** at the customer company: the primary user.
- **Security lead**: approves the rule format, does not use the product daily.
- **The customer**: decides the scope, and is the course instructor.

## Constraints

| Constraint                                   | Source         | What it costs                         |
| -------------------------------------------- | -------------- | ------------------------------------- |
| Deployed on a single VPS                     | Customer-given | No multi-node failover                |
| Built and maintained by 3 people for 9 weeks | Team-given     | No component may need a second expert |
| Runs plugins written by coding agents        | Derived        | The plugin contract must be explicit  |

<!-- TODO should each constraint have an identifier? -->

## Boundary

The product will not:

- Store request content.
- Decide what is sensitive for the customer.
- Run outside a single VPS.

## Context

![System context diagram](architecture/context.svg)

The platform engineers and the security lead are the actors.
The external systems are the external model
providers, the company's source control, and the audit log sink.
No actor appears that the boundary excludes.

## Where The Detail Lives

- [User stories](user-stories/README.md)
- [Week 2 report](../reports/week-02/README.md)
```

## User Stories

**Since: W2**

User stories are created in Week 2 and stay current for the rest of the course.
The directory is the registry; the individual files are what the requirements are held in.

**Required**

1. The story files live in `docs/user-stories/us/`, one file per story, named after its identifier: `US-01.md`, `US-02.md`.
2. `docs/user-stories/README.md` is the **index and the registry of identifiers**.
   It is the only place the full list appears, and it carries three sections in this order:

   - `## Active stories`: a row per active story, with its `US-nn`, title, MoSCoW priority, the `GAP-nn` it closes, the `VP-nn` it supports, and a link to its issue.
   - `## Minimum usable product candidate`: the `US-nn` the team would build first, and which one it would drop first if it ran out of time.
     The candidate is a strict, non-empty subset of the `Must Have` stories, and it is a proposal that Week 3 schedules.
   - `## Inactive stories`: a row per inactive story, with its `US-nn` and title, the reason it is inactive, and the date it became inactive.
     The identifier is kept, and the reason is free text beginning with `removed`, `superseded`, or `won't-have`.

3. Each `us/US-nn.md` carries YAML frontmatter and a body.

   The frontmatter carries:

   - `id`, the `US-nn`.
   - `title`.
   - `priority`: `must`, `should`, `could`, or `won't`.
   - `status`: `active` or `inactive`.
   - `gap`, the `GAP-nn` it closes.
   - `vp`, the `VP-nn` it supports.
   - `sources`, optional, a list of links or anchors where the need also came from.
   - `issue`, the full URL of its issue (active story only).
   - `reason`, free text beginning with `removed`, `superseded`, or `won't-have`, and `date` (inactive story only).

   The body carries:

   - The identifier as its own heading, so the story can be found with a search and linked to permanently.
   - The story statement itself.
   - A `## Acceptance criteria` section on an active story, with at least two criteria, each observable and pass/fail.
   - `## Notes` for constraints, assumptions, open questions, and why a `Won't Have` story is excluded.
   - A `## Changes` section only when the team changed the story after writing it, with a dated note for every change, so a reader can see what the validation meeting settled.

   An inactive story keeps its identifier, its file, and its original statement, and carries no issue and no acceptance criteria.

4. Do not copy the story text into the index.
   The index links to the files; the files hold the content.
5. The issue tracker is where execution state lives.
   The index carries a link to each issue rather than a second copy of its status.
   The issue does not copy the acceptance criteria; it links to the story file, which is the source of truth.

**Recommended**

- Use `Given`/`When`/`Then` (Gherkin) for the criteria if it fits the product, and any other notation if it does not.
  The rules are that somebody else can run the check and get the same answer.
- Keep the story files short enough to read in one sitting.

**Example**

`docs/user-stories/README.md`:

```markdown
# User stories

The product goal is in [the vision](../product-vision.md).

## Active stories

| Story                                                    | Priority | Closes | Supports | Issue                                        |
| -------------------------------------------------------- | -------- | ------ | -------- | -------------------------------------------- |
| [US-01](us/US-01.md) Rules that follow the marked region | must     | GAP-01 | VP-01    | [#42](https://github.com/org/repo/issues/42) |
| [US-02](us/US-02.md) An audit trail a user can read      | must     | GAP-02 | VP-01    | [#43](https://github.com/org/repo/issues/43) |

## Minimum usable product candidate

US-01 and US-02.
US-02 is the one we drop first, because an unreadable audit trail is a bad product while a missing one is an incomplete product.

## Inactive stories

| Story                                             | Reason                                                                               | Date       |
| ------------------------------------------------- | ------------------------------------------------------------------------------------ | ---------- |
| [US-09](us/US-09.md) Share a board by public link | won't-have: no evidence that a user needs it | 2026-10-07 |
```

`docs/user-stories/us/US-01.md`:

```markdown
---
id: US-01
title: Rules that follow the marked region
priority: must
status: active
gap: GAP-01
vp: VP-01
issue: https://github.com/org/repo/issues/42
sources:
  - ../../../reports/week-01/meeting-report.md#decisions
---

# US-01: Rules that follow the marked region

As a platform engineer, I want to attach redaction rules to a marked region of our own code,
so that our classification of what is marked decides what leaves the network.

## Acceptance criteria

1. Given a repository with one marked region, when I attach a rule to that region, then the rule applies to
   every request that includes that region, and the log records which rule fired.
2. Given a marked region with no rule attached, when a request includes it, then the request is blocked and
   the reason names the region, and no request content is logged.

## Notes

The customer confirmed on 2026-10-06 that the company's own marking is authoritative and that we may not
infer it from file paths, which killed an earlier assumption in [the assumptions table](../../research/value-proposition.md).

## Changes

- 2026-10-06: criterion 2 added after the validation meeting.
  The customer will not accept a blocked request with no reason, and the first version of the criterion only said the request is blocked.
```

`docs/user-stories/us/US-09.md`, an inactive story:

```markdown
---
id: US-09
title: Share a board by public link
priority: won't
status: inactive
gap: GAP-04
vp: VP-02
reason: won't-have: no evidence that a user needs it
date: 2026-10-07
---

# US-09: Share a board by public link

As a platform engineer, I want to share a board by public link, so that a colleague can see it without an account.
```

## Prototypes

**Since: W2**

A prototype is disposable.
It exists to find out whether something is wrong, and it is not the product.

**Required**

1. A week that tests an idea records it at `reports/week-NN/prototypes.md`.
   It is week evidence, not maintained documentation, so it is not in `docs/`.
2. The file carries, for each prototype:

   - What it is and how to view it: a screenshot in `reports/week-NN/images/`, a view-only external link, or a branch name.
   - Which `US-nn` or `GAP-nn` it tested, and the question it was built to answer.
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

- Prototype the riskiest assumption, and stop as soon as you have a reaction.
- Say which question the prototype answers, in one line, before you show it.

## Private Submission Wrapper

**Since: W1**

The Moodle PDF is the canonical private artifact for a week.

**Required**

1. It identifies the project, the team, and the week clearly enough for an instructor to match it to the repository state.
2. It links the public evidence rather than copying it.
   Do not paste the weekly report into the PDF.
3. It contains the private-only material for that week: private links, university emails, credentials if the week needs them, and any artifact the customer refused to let you publish.
4. When the assignment requires a permalink, it uses a commit-hash permalink, not a branch name, so the link keeps pointing at the exact content that was submitted.
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

## Later Weeks

**Since: W2**

The following artifacts are introduced in later weeks.
Their shared structure belongs here, not in the assignment that first requires them.
Each assignment states the path and the week-specific evidence.

- Customer meeting reports, transcripts, notes, and meeting scripts for the meetings you hold after the kickoff.
  They follow the same structure as the Week 1 kickoff artifacts, and the same rules for every meeting in [Meeting With The Customer](process-requirements.md#meeting-with-the-customer).
  See [Customer Meeting Artifacts](#customer-meeting-artifacts).
- The work plan and the threshold of success from Week 3.
  Their structures are not written yet and belong here before the Week 3 assignment is.
- The sprint retrospective from Week 3, at `reports/week-NN/sprint-retrospective.md`.
  Its structure is not written yet and belongs here before the Week 3 assignment is.
- Quality requirements, the verification plan, and architecture documentation from Week 4.
- Testing and deployment documentation from Week 5.
- Usability testing protocols, participant consent evidence, and results from Weeks 7 and 9.
- Configuration management documentation from Week 8.
- The project reflection from Week 9.
