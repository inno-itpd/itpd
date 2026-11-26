# Assignment 9: Sprint 9 Acceptance Tests And Handoff Preparation

**This week's deadline:**

- Hard deadline: Sunday 29 November 2026, 23:59.

See [Deadlines And Submission](../course/rules.md#deadlines-and-submission).

Read the [course rules](../course/rules.md) and [Closing The Final Sprints](../guides/final-sprints.md).
Complete the requirements marked `**Since: W9**` in the linked sections and continue the standing [repository](../requirements/repository-requirements.md) and [pull request](../requirements/pull-requests-requirements.md) requirements.

<h2>Table of contents</h2>

- [Objectives](#objectives)
- [Part 1: Plan Sprint 9, Create Sprint 10, And Schedule The Review](#part-1-plan-sprint-9-create-sprint-10-and-schedule-the-review)
- [Part 2: Define The UATs And Write The Sprint 9 Script](#part-2-define-the-uats-and-write-the-sprint-9-script)
- [Part 3: Deploy The Candidate And Hold The Sprint 9 Review](#part-3-deploy-the-candidate-and-hold-the-sprint-9-review)
- [Part 4: Record The Results, Cut REL-09, And Close Sprint 9](#part-4-record-the-results-cut-rel-09-and-close-sprint-9)
- [What Good Looks Like](#what-good-looks-like)
- [Assignment Report In The Repository](#assignment-report-in-the-repository)
- [Assignment Report On Moodle](#assignment-report-on-moodle)
  - [Submission Procedure](#submission-procedure)
- [Checklist](#checklist)

## Objectives

- Show the Sprint 9 increment and check the customer's main journeys on the university VM.
- Report the quality plan results and settle the threshold goals the evidence supports.
- Learn what the customer needs at the handoff, then close and release Sprint 9.

## Part 1: Plan Sprint 9, Create Sprint 10, And Schedule The Review

1. Plan `SPRINT-09` in `docs/project-plan.md#sprint-09` with its goal, `**Due:**` of `2026-11-29`, `**Sprint Backlog:**` and `**Planned Velocity:**`, per [Sprints](../requirements/planning-requirements.md#sprints).
   Refine the Sprint 9 work and the potential Sprint 10 backlog, per [Product Backlog Refinement](../requirements/sprint-ceremonies-requirements.md#product-backlog-refinement).
2. Schedule the product stories, the three UATs and their live run, handoff preparation, quality plan results, threshold review, release, Week 9 report, retrospective and AI usage.
   Write the [task issues](../requirements/task-issues-requirements.md#the-issue-form) and schedule them per [Scheduling An Issue](../requirements/issue-tracking-requirements.md#scheduling-an-issue).
3. Create the `SPRINT-10` milestone and `docs/project-plan.md#sprint-10` with a provisional goal, `**Due:**` of `2026-12-06`, and the empty `#### REL-10` section.
   Leave work outside the final sprint's scope in the unscheduled product backlog.
4. Schedule the in-person Sprint 9 review to take place by 29 November, and leave time afterwards for the release and report.

## Part 2: Define The UATs And Write The Sprint 9 Script

1. Define exactly three initial tests, `UAT-01` through `UAT-03`, and index them in `docs/user-acceptance-tests.md` per [Where The Tests Live](../requirements/user-acceptance-tests-requirements.md#where-the-tests-live) and [The Test Record](../requirements/user-acceptance-tests-requirements.md#the-test-record).
2. Write `reports/week-09/meeting-script.md` before the review, per [Meeting Script](../requirements/customer-meetings-requirements.md#meeting-script).
   Put the UATs and the handoff expectations question on the agenda.

## Part 3: Deploy The Candidate And Hold The Sprint 9 Review

1. Follow up on the action points due and the questions still open from `reports/week-08/meeting-report.md` and any earlier customer meeting.
2. Deploy the Sprint 9 build to the university VM and hold the in-person review by 29 November, per [Showing Working Software](../requirements/customer-meetings-requirements.md#showing-working-software).
   Have the customer run the three UATs.
   If the customer cannot run them, the Week 9 fallback in [The Two Review Sessions](../requirements/user-acceptance-tests-requirements.md#the-two-review-sessions) is to reschedule within the review window or record the missing results and declare the deviation.
3. Discuss the recorded quality plan results, check every open threshold goal against its current measure, and ask what the customer expects at the handoff.
4. Write `reports/week-09/meeting-report.md` per [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).
   Record what happened to the earlier action points and open questions, and record each UAT run as its own `DEC-nnn` in `docs/decisions.md`.
   Link the story verdicts and each UAT outcome, with its actual runner, to their `DEC-nnn` entries, and record the customer's handoff expectations.
   Publish the permitted sanitized transcript or record its absence, per [Meeting Transcript](../requirements/customer-meetings-requirements.md#meeting-transcript).

## Part 4: Record The Results, Cut REL-09, And Close Sprint 9

1. Record the Sprint 9 runs in `docs/user-acceptance-tests.md`.
   Give each test its `SPRINT-09` result in `## The Tests`, and add a run row with the date, actual runner (`Customer`, `Team`, or `—` for `Not run`), reviewed build, result, meeting evidence and `DEC-nnn`.
   Update `docs/threshold-of-success.md` with the review outcomes per [The Threshold Of Success](../requirements/planning-requirements.md#the-threshold-of-success).
2. Merge the Sprint 9 product work and cut the protected `REL-09` tag at the close.
   Follow [Cutting A Release](../requirements/releases-requirements.md#cutting-a-release): merge the changelog's released section before publishing the release body, so the body's `[Full changelog]` link resolves.
   Then add the [release block](../requirements/planning-requirements.md#releases) with `**Released:**`, `**Checked QRs:**` and `**Checked UATs:**`, including the sentence after the checked QRs that links `## Quality Requirement Testing Plan`.
3. Record `**Actual Velocity:**` and note where unfinished work will go per [Scheduling An Issue](../requirements/issue-tracking-requirements.md#scheduling-an-issue).
   Write `reports/week-09/sprint-retrospective.md` per [Retrospective](../requirements/sprint-ceremonies-requirements.md#retrospective) and `reports/week-09/ai-usage.md` per [AI Usage Report](../requirements/weekly-report-requirements.md#ai-usage-report).
4. Merge the Week 9 report and its evidence, triage the remaining issues, close the milestone and submit Submission 9.

## What Good Looks Like

Each journey has a recorded outcome from its documented start state — `Pass`, `Fail`, or `Not run` with its reason — and a reader can trace each result to the build, meeting evidence and decision.
The handoff preparation records what the customer asked for, what is ready and what Sprint 10 still needs.
The quality plan table distinguishes failed checks from checks with no result.

## Assignment Report In The Repository

Write `reports/week-09/README.md`, per [Weekly Public Report](../requirements/weekly-report-requirements.md#weekly-public-report).

- `## Summary` covers the increment, the three UAT outcomes, the quality and threshold findings, the handoff preparation, and what Sprint 10 still needs.
  If same-sprint rework changed the build, name the reviewed build and the released tag.
- [`## Quality plan results`](../requirements/weekly-report-requirements.md#quality-plan-results) links the testing plan at `docs/project-plan.md#quality-requirement-testing-plan`.
- [`## Threshold review`](../requirements/weekly-report-requirements.md#threshold-review) links each goal reviewed in `docs/threshold-of-success.md`.
- `## Handoff preparation` links the Sprint 9 meeting report for what the customer expects, then records what is ready and what is missing.
- `## Coverage` links the following evidence.

| Deliverable          | Where                                                                                |
| -------------------- | ------------------------------------------------------------------------------------ |
| Sprint plan          | `docs/project-plan.md#sprint-09` and `docs/project-plan.md#sprint-10`                |
| UAT record           | `docs/user-acceptance-tests.md`                                                      |
| Sprint 9 UAT run     | `reports/week-09/meeting-report.md#user-acceptance-tests`                            |
| `REL-09`             | `docs/project-plan.md#rel-09`, the GitHub release and the released changelog section |
| Meeting script       | `reports/week-09/meeting-script.md`                                                  |
| Meeting report       | `reports/week-09/meeting-report.md`                                                  |
| Meeting transcript   | `reports/week-09/meeting-transcript.md` or the reason there is no public transcript  |
| Sprint retrospective | `reports/week-09/sprint-retrospective.md`                                            |
| AI usage             | `reports/week-09/ai-usage.md`                                                        |

- Use `## Contribution` for the team contribution table.
- Under `## Repository evidence`, link the merged pull requests and the latest green link, Markdown, workflow and product CI checks on `main`.
- Under [`## Deviations`](../requirements/weekly-report-requirements.md#declaring-deviations), declare any missing UAT results or missing review, and the compressed schedule if the review falls on the deadline day.
- Include the weekly report's `## Privacy` confirmation.

## Assignment Report On Moodle

Submit one PDF per [Private Submission Wrapper](../requirements/weekly-report-requirements.md#private-submission-wrapper).
See the [Submission 9 wrapper example](../requirements/weekly-report-requirements.md#example-submission-9-wrapper).

- Project, team number and member table with GitHub usernames, real names and university emails.
- Full commit-hash permalink to `reports/week-09/README.md`.
- Under `## For customer`, the production address and test access, the analytics and observability dashboard and backend addresses and credentials, and observability query access.
- Also under `## For customer`, the private usability-data repository and recordings folder links and access instructions, and the [plan for deleting private usability data](../requirements/visibility-requirements.md#deleting-private-usability-data).
- A permitted private Sprint Review recording link accessible to instructors or the reason there is none, and any permitted private meeting transcript.
- One line confirming no private-only material was committed.

### Submission Procedure

1. Merge the report and its repository artifacts into `main`.
2. Take the permalink and ZIP snapshot from that commit, per [Permalinks And Snapshots](../requirements/repository-requirements.md#permalinks-and-snapshots).
3. Submit the PDF and snapshot through Moodle.
   If the review missed the deadline, identify the missing review in Submission 9 and link that record when declaring the slip in Week 10.

## Checklist

- [ ] Sprint 9 planned, Sprint 10 created provisionally and the in-person review held by 29 November ([Part 1](#part-1-plan-sprint-9-create-sprint-10-and-schedule-the-review), [Part 3](#part-3-deploy-the-candidate-and-hold-the-sprint-9-review)).
- [ ] `UAT-01` through `UAT-03` defined and the meeting script written before the review ([Part 2](#part-2-define-the-uats-and-write-the-sprint-9-script)).
- [ ] Meeting report records the reviewed build, UAT outcomes with their runners, decisions, and follow-up on earlier action points and questions, with a transcript or the reason there is none ([Part 3](#part-3-deploy-the-candidate-and-hold-the-sprint-9-review)).
- [ ] UAT index, run history and threshold goals updated, `REL-09` published and recorded, and Sprint 9 closed with actual velocity, retrospective and AI usage ([Part 4](#part-4-record-the-results-cut-rel-09-and-close-sprint-9)).
- [ ] Week 9 report includes the summary, quality plan results, threshold review, handoff preparation and evidence links ([Assignment Report In The Repository](#assignment-report-in-the-repository)).
- [ ] Moodle PDF includes the private access details, deletion plan and review evidence ([Assignment Report On Moodle](#assignment-report-on-moodle)).
- [ ] PDF and ZIP snapshot submitted with a permalink to the same `main` commit ([Submission Procedure](#submission-procedure)).
