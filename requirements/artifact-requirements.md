# Artifact Requirements

These requirements define what an artifact is, where it lives, and who may see it.
Use [Process Requirements](process-requirements.md) for the meaning of the product work itself, and [Repository Requirements](repository-requirements.md) for GitHub, pull request, and link-checking mechanics.
Assignment files add only the paths and evidence expectations for a specific week; they must not redefine anything here.

Read [the course rules](../rules.md) first.
It is the short version of this file and states what is expected of you as a student.

<h2>Table of contents</h2>

- [How Artifacts Are Placed In The Repository](#how-artifacts-are-placed-in-the-repository)
- [Artifact Concepts And Terminology](#artifact-concepts-and-terminology)
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
- [Screenshot Evidence](#screenshot-evidence)
- [AI Usage Report](#ai-usage-report)
- [Private Submission Wrapper](#private-submission-wrapper)
- [Declaring Deviations](#declaring-deviations)
- [Later Weeks](#later-weeks)

## How Artifacts Are Placed In The Repository

**Since: W1**

1. The product repository holds two kinds of content, and every artifact goes in exactly one of them:

   - `reports/week-NN/` holds the evidence for that week.
     It is a record of what the team did during that week.
     Week numbers are zero-padded: `reports/week-01/`, `reports/week-02/`.
   - `docs/` holds maintained project documentation.
     Anything the project will still refer to in a later week goes here, in its final location, from the week it is created.

2. There is no third location and no migration step.
   When you create an artifact, put it where it will live for the rest of the course.
   Do not create a file in `reports/` and move it to `docs/` later, and do not keep the same content in both places.

3. Maintained documentation in `docs/` is expected to stay current.
   When the product, the plan, or the decisions change, update the file.
   Week reports in `reports/week-NN/` are a historical record and are not rewritten after their week.

4. The weekly public report is always `reports/week-NN/README.md`.
   Every week has one, and it is the index for that week.

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
9. A **decision** is a conclusion reached in a meeting that changes what you build.
10. An **action point** is a follow-up that came out of a meeting, with a named owner and a week it falls due in.

## Visibility Model

**Since: W1**

1. The product repository is public.
   Assume that anything you commit can and will be read by anyone, including people outside the course, for the whole time the repository exists.
2. The repository is licensed MIT.
   See [Repository Requirements](repository-requirements.md#licensing).
3. Public artifacts must be viewable by instructors and mentors but must not be publicly editable.
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

```markdown
# Week 01 report

## Project

Modular LLM Gateway, team 7.
See [the alternatives research](docs/research/alternatives.md).

## What we did

We researched four alternatives, compared them on seven properties, and identified three gaps worth building on.

## Findings

The two strongest products solve routing well and data handling badly.
Nobody lets a team define its own redaction rules, which is the gap our project targets.

## Coverage

| Deliverable         | Artifact                                                                               |
| ------------------- | -------------------------------------------------------------------------------------- |
| Alternatives search | [docs/research/alternatives.md](../docs/research/alternatives.md)                      |
| Pros and cons       | [docs/research/comparison.md](../docs/research/comparison.md)                          |
| Gap analysis        | [docs/research/gap-analysis.md](../docs/research/gap-analysis.md)                      |
| Value proposition   | [docs/research/value-proposition.md](../docs/research/value-proposition.md)            |
| Customer kickoff    | [meeting-report.md](meeting-report.md), [meeting-transcript.md](meeting-transcript.md) |
| AI usage            | [ai-usage.md](ai-usage.md)                                                             |

## Contribution

| Member | Work                    |
| ------ | ----------------------- |
| @alice | PR #4, alternatives 1–2 |
| @bob   | PR #5, comparison table |

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

| Artifact                                  | When it exists                                          | Visibility            |
| ----------------------------------------- | ------------------------------------------------------- | --------------------- |
| [Meeting Report](#meeting-report)         | Every meeting with the customer                         | Public once sanitized |
| [Meeting Transcript](#meeting-transcript) | The meeting was recorded and publishing it is permitted | Public once sanitized |
| [Meeting Notes](#meeting-notes)           | Recording or transcript sharing was refused             | Public once sanitized |

**Required**

1. The meeting report is always required.
   The transcript and the notes are the same evidence in a different form, so a meeting produces one of them, not both.
2. A meeting with no recording and no transcript still produces a meeting report.
3. The meeting report is the team's own account of the meeting.
   The transcript and the notes are the evidence it is written from, and the report links to them.
4. Later weeks cite a meeting report by path and heading anchor, for example `reports/week-01/meeting-report.md#decisions`.
   The report is the record of that meeting and is not rewritten afterwards.
   If a later meeting reverses a decision, the later report says so and links back to the report it reverses.
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

| Section             | What belongs in it                                                                                                                                                                    |
| ------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `## Metadata`       | Date, duration, who was there by GitHub username or `Instructor`, what you presented, the answer to each of the three permission questions, and a link to the transcript or the notes |
| `## Summary`        | 3 to 5 bullets on what the meeting settled or changed, not on what was on the agenda                                                                                                  |
| `## Decisions`      | A table, one row per decision                                                                                                                                                         |
| `## Action points`  | A table, one row per action                                                                                                                                                           |
| `## Open questions` | A table, one row per question the meeting did not answer                                                                                                                              |
| `## Disagreements`  | A table, one row per place the customer did not agree with you                                                                                                                        |

7. `## Decisions` has the columns `Decision`, `Made by`, and `Traces to`.
   `Traces to` names the `GAP-nn` or `VP-nn` the decision came from, or says `None` where it came from nowhere in your research.
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
**Attended:** alice, bob, carol, Instructor
**Presented:** the project choice, our reading of the problem, and the two `VP-nn` directions
**Recording:** permitted, linked from the Week 01 Moodle submission
**Transcript publication:** permitted, see [the transcript](meeting-transcript.md)
**Transcript shared privately:** not applicable

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
   [00:00:19] Instructor: What made you choose that one over the running coach?
   ```

4. Label speakers consistently.
   Use GitHub usernames for your team.
   Use `Instructor` for your instructor or mentor rather than a real name.
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
**Participants:** alice, bob, carol, Instructor

[00:00:04] alice: We picked the modular LLM gateway from the catalog.
[00:00:19] Instructor: What made you choose that one over the running coach?
[00:01:02] bob: The plugin model means we can start with a core and add pieces.
[00:01:40] Instructor: [redacted]
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
See [the course rules](../rules.md#ai-tools).
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

- Customer meeting reports, transcripts, and notes for the meetings held in Weeks 2 and 3.
  They follow the same structure as the Week 1 kickoff artifacts.
  See [Customer Meeting Artifacts](#customer-meeting-artifacts).
- Prototypes and the product vision from Week 3.
- Quality requirements, the verification plan, the threshold of success, and architecture documentation from Week 4.
- Testing and deployment documentation from Week 5.
- Usability testing protocols, participant consent evidence, and results from Weeks 7 and 9.
- Configuration management documentation from Week 8.
- The project reflection from Week 9.
