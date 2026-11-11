# Weekly Report Requirements

These requirements define what a team hands in every week: the weekly public report, the AI usage report beside it, how a deviation is declared, and the Moodle PDF that points at them.
Who may see each item is in [Visibility Requirements](visibility-requirements.md).

<h2>Table of contents</h2>

- [Weekly Public Report](#weekly-public-report)
- [AI Usage Report](#ai-usage-report)
- [Declaring Deviations](#declaring-deviations)
- [Private Submission Wrapper](#private-submission-wrapper)

## Weekly Public Report

**Since: W1**

**Required**

1. Create `reports/week-NN/README.md` for every week that has a submission.
2. Merge it, and every repository-resident artifact it links, into `main`, the [default branch](repository-requirements.md#repository-setup), before you submit.
   A report or an artifact left on an unmerged pull-request branch is not in the [submission commit](repository-requirements.md#permalinks-and-snapshots), so it has not been submitted.
3. It is the index for the week.
   It links directly to every supporting artifact, both repository files and external links.
4. It identifies the week, the project, the team, and the covered scope clearly enough that a reader knows what body of work it describes.
5. It contains a short summary of what the team found, built, or decided, and what is still open.
   A grader should be able to read only this file and understand the week, then follow links for detail.
6. It contains a coverage table mapping each required deliverable of the assignment to the artifact that satisfies it.
   The table is the index, so it is not followed by a second list of the same links.
   A deliverable this file records in its own section has no row.
   Each artifact cell links its artifact.
   An assignment's table names each repository file by path, and the report turns that path into a link whose text is the path from the repository root, with the heading anchor when the row names a section.
   Anything else, such as an external board, a filtered issue list, or a CI run, gets descriptive link text.
   A row whose artifact is not public says so instead of linking it.
7. It contains a contribution table mapping each team member's GitHub username to the work they did, using links to their commits, pull requests, or reviews where possible.
8. It links the repository evidence the assignment asks for, and justifies in prose every link the [link check](repository-requirements.md#link-checking) excludes.
9. It declares every deviation, per [Declaring Deviations](#declaring-deviations).
10. It states, in one line, that no private-only material was committed to the repository.

**Since: W2**

11. It records the minimum usable product candidate, per [Where The Candidate Lives](minimum-usable-product-requirements.md#where-the-candidate-lives).

**Since: W3**

12. It states the week's customer-meeting outcome: each story shown and whether the customer accepted or rejected it, and each candidate story that moved out, each citing the `DEC-nnn` that records it, per [Showing Working Software](customer-meetings-requirements.md#showing-working-software) and [Building, Delivering, And Releasing The Candidate](minimum-usable-product-requirements.md#building-delivering-and-releasing-the-candidate).

**Since: W4**

13. The coverage table carries a row that links `reports/week-NN/sprint-retrospective.md`, per [Retrospective](sprint-ceremonies-requirements.md#retrospective).
    The report carries no sprint planning, refinement, or retrospective section, because the plan, the issues, and the retrospective file own them.
14. The report does not assess an individual.
    The contribution table is the evidence of who did what, and no section asks the team to rate or explain a member's contribution.

**Since: W5**

15. The report's summary points at `docs/project-plan.md#quality-requirement-testing-plan` for the tests that are not `Passes`, and copies none of the rows.

**Since: W6**

16. The report's summary says whether the focus metric has a value yet and what it would need, links `docs/analytics.md` and `docs/observability.md`, and copies no chart or row from either page.
    It shows at least one analytics metric that its query computes, and it does not present test traffic as a value.
17. When a threshold review is due, a `## Threshold review` section carries it, per [The Threshold Of Success](planning-requirements.md#the-threshold-of-success): one table, with one row per goal that is `Open` when the review starts, in `TOS-nn` order, with these columns, in this order:

    | Column                   | What it holds                                                                                                                                    |
    | ------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
    | `Goal`                   | The goal, linked to its section in `docs/threshold-of-success.md`, such as `[TOS-01](../../docs/threshold-of-success.md#tos-01)`                 |
    | `Current measure`        | The goal's current `**Measure:**`, with the week it lands in                                                                                     |
    | `New data can settle it` | `Yes` and the analytics or observability data that settles it, or `No` and why the data cannot                                                   |
    | `Proposal`               | A proposed measure with its number, the week it lands in, and the metric's `###` link in `docs/analytics.md`, or `—` when the team proposes none |

    Immediately after the table, in the same section, state in one sentence per row, in `TOS-nn` order, the goal's status after the review — `Open`, `Achieved`, or `Missed` — and link the goal to its section in `docs/threshold-of-success.md`.
    The sentence gives the verdict, not why it was reached: a settled goal's `**Outcome:**` stays in `docs/threshold-of-success.md`, says what was found, and links the evidence, and the section does not restate it.
    A goal settled in an earlier week is not in the table and needs no status sentence.
    The section then says why the team proposed each measure in the table, or why it proposed none.

18. When the week has evidence screenshots, the report embeds each one as an image in the section that describes it, and the assignment sets how many.

**Since: W7**

19. In the design week the report's summary says the test is designed and scheduled and claims no result.
    It links `docs/usability-tests/ut-01/README.md`, `surveys.md`, `consent.md`, the `QR/QRT`, the private repository, and the schedule, and it names the recordings folder, whose link is in the Moodle submission.
20. In the design week a `## Usability test` section carries the design summary, the participant count and profile, the tasks, the surveys, the consent and the private repository, the recordings folder, the schedule, the `QR/QRT`, and the run week's handoff.
    The coverage table carries one row per deliverable, and a row whose evidence is that section links `#usability-test`.
    The summary follows rule 16 for the focus metric, the analytics, and the observability, and restates none of it.

**Since: W8**

21. In the run week the report's summary gives the number of counted sessions, the aggregate completion and ease, the `QR/QRT` result, the findings, and the triage.
    It links the `results.md`, the sanitized session notes, the `QR/QRT`, the findings' task issues, the private repository, the release, the retrospective, and the AI usage; it copies no raw participant data and states the `n=<count>` caveat.
    It follows rule 16 for the focus metric and the test traffic, and rules 7 and 8 for the contribution table and the repository evidence.
22. In the run week a `## Usability test` section carries the results summary, the sanitized session links, the SUS and SEQ summary, the findings, the triage, and the `QR/QRT` result.
    `results.md` is the record and the report is the summary: the reflection week's report carries no separate usability results report, and the final reflection cites the `UT-nn` results.

**Recommended**

- Use the same section order every week so readers learn it once.
- Keep it short.
  If a section is growing, the detail probably belongs in a supporting artifact that the report links.
- State what a reader should look at first.

**Example**

A Week 07 design report and a Week 08 results report, from `reports/week-07/README.md` and `reports/week-08/README.md`.

The design report says what was designed and scheduled, and claims no result:

```markdown
# Week 07 report

## Project

Meeting booking app.

Our problem-space sentence: an expert who sells sessions online needs one link where a client can book, pay, and receive the meeting link and materials, and no product carries all three in one flow.

## What we did

We designed the `UT-01` usability test and prepared every artifact the Week 8 sessions need: the test record, the surveys, the tasks and the protocol, the consent, the private usability-data repository, the recordings folder, the new `QR-05` with its manual test, and the analysis plan.
We recruited five participants and scheduled the sessions for 15 to 18 November.
We held the Sprint Review as the design review, published its transcript in the repository, and cut `REL-07` as [v0.7.0](https://github.com/<organization>/<repo>/releases/tag/v0.7.0).
No session has run and no result is claimed.

## Findings

The test is designed for at least three completed sessions, with five as the target, and five participants are confirmed.
The design is [the `UT-01` record](../../docs/usability-tests/ut-01/README.md), and its results are due with Submission 8 on 21 November.
`QR-05 QRT-01` is `Not verified` with `Planned for sprint` `SPRINT-08`, and [the testing plan](../../docs/project-plan.md#quality-requirement-testing-plan) carries the row.
The focus metric still has no value, and the test traffic will be excluded from it: the `UT-01` funnel is read with the `source = "usability-test"` filter.

## Usability test

The design is in [the `UT-01` record](../../docs/usability-tests/ut-01/README.md).
The test runs one main booking task and two secondary tasks, with the pre-test, the SEQ after each task, the SUS after all tasks, and the open-ended post-test, in [the surveys](../../docs/usability-tests/ut-01/surveys.md).

The participant profile is a person who books sessions online, has used a booking page before, and uses a phone or the team's laptop.
Five participants are confirmed, `P-01` to `P-05`, and the sessions are scheduled for 15 to 18 November.

The raw notes stay in the [private usability-data repository](https://github.com/<organization>/<repo>-usability-data), the consent records are beside them, and the recordings are in the team's cloud folder.
The private repository link is excluded from the link check because it needs authentication, and both private links are in the Moodle submission.
The public record carries the sanitized sessions and the results.

`QR-05` is the `Interaction Capability` / `Self-descriptiveness` requirement, and its manual test names `UT-01`: [QR-05](../../docs/quality-requirements/qr/QR-05.md) and [QRT-01](../../docs/quality-requirements/qr/QR-05.md#qrt-01).

The Week 8 handoff is the design, the five confirmed participants, the private repository and the recordings folder, the `QR-05 QRT-01` row in `SPRINT-08`, the `results.md` stub, and the analysis and triage plan.

## Coverage

| Deliverable                       | Artifact                                                                                                                                                                                             |
| --------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Sprint plan                       | [docs/project-plan.md](../../docs/project-plan.md#sprint-07)                                                                                                                                         |
| `UT-01` test record               | [docs/usability-tests/ut-01/README.md](../../docs/usability-tests/ut-01/README.md)                                                                                                                   |
| Surveys and post-test             | [surveys.md](../../docs/usability-tests/ut-01/surveys.md)                                                                                                                                            |
| Tasks and protocol                | [the tasks](../../docs/usability-tests/ut-01/README.md#the-tasks) and [the session template](../../docs/usability-tests/ut-01/sessions/README.md)                                                    |
| Consent template                  | [consent.md](../../docs/usability-tests/ut-01/consent.md)                                                                                                                                            |
| Private usability-data repository | the private `meeting-booking-usability-data` repository, linked from the record and excluded from the link check at [the link check configuration](../../lychee.toml), accessible to the instructors |
| Recordings folder                 | the team's cloud folder, linked in the Moodle submission                                                                                                                                             |
| `QR-05` and its test              | [QR-05](../../docs/quality-requirements/qr/QR-05.md) and [QRT-01](../../docs/quality-requirements/qr/QR-05.md#qrt-01)                                                                                |
| Recruitment and schedule          | [the participants](../../docs/usability-tests/ut-01/README.md#participant-profile) and [the schedule](../../docs/usability-tests/ut-01/README.md#schedule)                                           |
| Week 8 handoff                    | [reports/week-07/README.md#usability-test](#usability-test)                                                                                                                                          |
| Week 6 action points              | [reports/week-07/meeting-report.md](meeting-report.md#previous-action-points)                                                                                                                        |
| Sprint Review                     | [reports/week-07/meeting-report.md](meeting-report.md)                                                                                                                                               |
| Meeting script                    | [reports/week-07/meeting-script.md](meeting-script.md)                                                                                                                                               |
| Meeting transcript                | [reports/week-07/meeting-transcript.md](meeting-transcript.md)                                                                                                                                       |
| `REL-07`                          | [v0.7.0](https://github.com/<organization>/<repo>/releases/tag/v0.7.0), [the changelog](../../CHANGELOG.md), and [the plan's REL-07 block](../../docs/project-plan.md#rel-07)                        |
| Sprint retrospective              | [reports/week-07/sprint-retrospective.md](sprint-retrospective.md)                                                                                                                                   |
| AI usage                          | [reports/week-07/ai-usage.md](ai-usage.md)                                                                                                                                                           |

## Contribution

| Contributor | Contribution                                                                                                                                                                                                                                                           |
| ----------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| @ana        | [the `UT-01` record](https://github.com/<organization>/<repo>/pull/51), [the surveys](https://github.com/<organization>/<repo>/pull/52), and [the consent](https://github.com/<organization>/<repo>/pull/53), reviewed by @bo                                          |
| @bo         | [the tasks and protocol](https://github.com/<organization>/<repo>/pull/54) and [the `QR-05` test](https://github.com/<organization>/<repo>/pull/55), reviewed by @cyd                                                                                                  |
| @cyd        | [the private repository and the recordings folder](https://github.com/<organization>/<repo>/pull/56), [the analysis plan](https://github.com/<organization>/<repo>/pull/56), and [the recruitment](https://github.com/<organization>/<repo>/pull/56), reviewed by @ana |

## Repository evidence

The merged pull requests for the design and for the recruitment, with the green Markdown, link, `actionlint`, and product-code CI checks on `main`.

## Deviations

The private usability-data repository's link needs authentication, so it is excluded from the link check with its reason in [the link check configuration](../../lychee.toml), and the URL is in the Moodle submission.

No participant withdrew and none failed to consent, so the five confirmed participants are the five counted candidates.

## Privacy

No private-only material was committed to this repository.
```

The results report says what the sessions found and links the record:

```markdown
# Week 08 report

## Project

Meeting booking app.

## What we did

We ran the five `UT-01` sessions on 16 and 17 November, wrote the sanitized session notes and [the results](../../docs/usability-tests/ut-01/results.md), triaged the two findings, and recorded [`QR-05 QRT-01`](../../docs/quality-requirements/qr/QR-05.md#qrt-01) as `Passes`.
We fixed the checkout form's phone field and cut `REL-08` as [v0.8.0](https://github.com/<organization>/<repo>/releases/tag/v0.8.0).
We also wrote the configuration management evaluation, the improvement plan, and its first implementation.

## Findings

Five sessions ran, and three participants completed the main task unaided; one reached it with help, and one failed it at the checkout form.
The SUS mean is 75.0 and the median is 80.0, with `n=5`, and the median main-task SEQ is 6.
`QR-05 QRT-01` passes, and [the testing plan](../../docs/project-plan.md#quality-requirement-testing-plan) carries the row and its evidence.
The `Major` finding is the checkout form's phone field, carried by [#57](https://github.com/<organization>/<repo>/issues/57) and fixed in `REL-08`; the `Minor` finding is the confirmation page's missing meeting link, carried by [#58](https://github.com/<organization>/<repo>/issues/58) and scheduled in `SPRINT-09`.
The focus metric still has no value: a usability participant is not a paying customer, and the `UT-01` funnel is read with the `source = "usability-test"` filter.

## Usability test

The results are in [docs/usability-tests/ut-01/results.md](../../docs/usability-tests/ut-01/results.md), and the sanitized session notes are beside it: [P-01](../../docs/usability-tests/ut-01/sessions/P-01.md) to [P-05](../../docs/usability-tests/ut-01/sessions/P-05.md).
Five sessions ran, and the aggregate is three unaided completions of the main task, one assisted, and one failure.
The main-task SEQ median is 6, and the secondary tasks' SEQ medians are 5 and 6.

| Participant                                               | Main task | Main SEQ | Secondary 1 | Sec 1 SEQ | Secondary 2 | Sec 2 SEQ | SUS |
| --------------------------------------------------------- | --------- | -------- | ----------- | --------- | ----------- | --------- | --- |
| [P-01](../../docs/usability-tests/ut-01/sessions/P-01.md) | Unaided   | 7        | Assisted    | 5         | Unaided     | 7         | 85  |
| [P-02](../../docs/usability-tests/ut-01/sessions/P-02.md) | Unaided   | 6        | Unaided     | 6         | Unaided     | 6         | 80  |
| [P-03](../../docs/usability-tests/ut-01/sessions/P-03.md) | Failed    | 2        | Failed      | 3         | Assisted    | 5         | 52  |
| [P-04](../../docs/usability-tests/ut-01/sessions/P-04.md) | Unaided   | 7        | Unaided     | 5         | Unaided     | 6         | 88  |
| [P-05](../../docs/usability-tests/ut-01/sessions/P-05.md) | Assisted  | 5        | Unaided     | 4         | Unaided     | 5         | 70  |

The two findings are [Finding 1](../../docs/usability-tests/ut-01/results.md#finding-1), the checkout form's phone field, and [Finding 2](../../docs/usability-tests/ut-01/results.md#finding-2), the confirmation page's missing meeting link.
`Finding 1` is carried by [#57](https://github.com/<organization>/<repo>/issues/57) and fixed in `REL-08`; `Finding 2` is carried by [#58](https://github.com/<organization>/<repo>/issues/58) and scheduled in `SPRINT-09`.

The private repository and the recordings folder are linked in the Moodle submission, and no raw data is copied into this report.

## Threshold review

| Goal                                                | Current measure                                                                                                                                    | New data can settle it                             | Proposal |
| --------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------- | -------- |
| [TOS-03](../../docs/threshold-of-success.md#tos-03) | At least three of five participants completed the main usability test task unaided, recorded in the Week 8 usability results, by the end of Week 8 | Yes — the `UT-01` sessions recorded the completion | —        |

`[TOS-03](../../docs/threshold-of-success.md#tos-03)` is `Achieved`.
No goal is `Open` after this review, and the team proposed no measure because the threshold is met.

## Coverage

| Deliverable          | Artifact                                                                                                                                                                                       |
| -------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Usability results    | [docs/usability-tests/ut-01/results.md](../../docs/usability-tests/ut-01/results.md)                                                                                                           |
| Sanitized sessions   | [P-01](../../docs/usability-tests/ut-01/sessions/P-01.md) to [P-05](../../docs/usability-tests/ut-01/sessions/P-05.md)                                                                         |
| `QR-05` and its test | [QR-05](../../docs/quality-requirements/qr/QR-05.md) and [QRT-01](../../docs/quality-requirements/qr/QR-05.md#qrt-01)                                                                          |
| Findings and triage  | [the findings](../../docs/usability-tests/ut-01/results.md#findings), [#57](https://github.com/<organization>/<repo>/issues/57), and [#58](https://github.com/<organization>/<repo>/issues/58) |
| Threshold review     | [the threshold review](#threshold-review)                                                                                                                                                      |
| CM evaluation        | [reports/week-08/cm-evaluation.md](cm-evaluation.md)                                                                                                                                           |
| CM improvement plan  | [reports/week-08/cm-improvement-plan.md](cm-improvement-plan.md)                                                                                                                               |
| CM implementation    | [the pull requests into `main`](https://github.com/<organization>/<repo>/pulls)                                                                                                                |
| `REL-08`             | [v0.8.0](https://github.com/<organization>/<repo>/releases/tag/v0.8.0), [the changelog](../../CHANGELOG.md), and [the plan's REL-08 block](../../docs/project-plan.md#rel-08)                  |
| Sprint retrospective | [reports/week-08/sprint-retrospective.md](sprint-retrospective.md)                                                                                                                             |
| AI usage             | [reports/week-08/ai-usage.md](ai-usage.md)                                                                                                                                                     |

## Contribution

| Contributor | Contribution                                                                                                                                                                                                                                                |
| ----------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| @ana        | [the sessions and the sanitized notes](https://github.com/<organization>/<repo>/pull/61) and [the results](https://github.com/<organization>/<repo>/pull/62), reviewed by @bo                                                                               |
| @bo         | [the triage and #57](https://github.com/<organization>/<repo>/issues/57), [the checkout fix](https://github.com/<organization>/<repo>/pull/63), and [the CM evaluation](https://github.com/<organization>/<repo>/pull/64), reviewed by @cyd                 |
| @cyd        | [the private data handling](https://github.com/<organization>/<repo>/pull/61), [the CM improvement plan](https://github.com/<organization>/<repo>/pull/65), and [the CM implementation](https://github.com/<organization>/<repo>/pull/66), reviewed by @ana |

## Repository evidence

The merged pull requests for the sessions, the results, the fix, and the CM work, with the green Markdown, link, `actionlint`, and product-code CI checks on `main`.

## Deviations

None.

## Privacy

No private-only material was committed to this repository.
```

## AI Usage Report

**Since: W1**

**Required**

1. Each week, write `reports/week-NN/ai-usage.md`.
2. Name the tools you used and what you used them for: research, drafting, code, analysis, transcription, images, or anything else.
3. Say what you did with the output: what you accepted, what you changed, what you rejected and why.
4. If you used no AI tools, say so explicitly in one line.
   This is a valid answer and costs you nothing.
5. In any artifact, generated text submitted unchecked, or filler passed off as analysis, reduces the week's grade.

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

## Declaring Deviations

**Since: W1**

1. If your team uses a different tool, a different artifact form, or a different arrangement than the assignment describes, state it in the weekly public report under a deviations heading and say why.
2. Declaring a deviation does not excuse a broken requirement.
   Say what you did instead and why it satisfies the intent.
3. An undeclared deviation is treated as a missing requirement.
4. A week with no deviation says `None` under the heading.

## Private Submission Wrapper

**Since: W1**

The Moodle PDF is the canonical private artifact for a week.

**Required**

1. It identifies the project, the team, and the week clearly enough for an instructor to match it to the repository state.
2. It links the public evidence rather than copying it.
   Do not paste the weekly report into the PDF.
3. It contains the private-only items the week's assignment or report relies on, per [Sensitive Information Reference](visibility-requirements.md#sensitive-information-reference).
4. When the assignment requires a permalink, it uses a commit-hash permalink, per [Permalinks And Snapshots](repository-requirements.md#permalinks-and-snapshots), so the link keeps pointing at the exact content that was submitted.
5. It stays short.
   It is a map, not a second copy of the repository.

**Example**

See [Assignment 1](../assignments/assignment-1.md#assignment-report-on-moodle) for the week-specific contents.
