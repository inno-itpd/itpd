# Assignment 9: Sprint 9 Acceptance Tests And Handoff Preparation

**Submission 9.** See [Week 9 in the syllabus](../course/syllabus.md#week-9-nov-20--nov-26-project-pitching-and-sprint-9) for the deadline.

Read the [course rules](../course/rules.md) and [Closing The Final Sprints](../guides/final-sprints.md).
Complete the requirements marked `**Since: W9**` in the linked sections and continue the standing [repository](../requirements/repository-requirements.md) and [pull request](../requirements/pull-requests-requirements.md) requirements.

## Objectives

- Show the Sprint 9 increment and check the customer's main journeys on the university VM.
- Report the quality plan results and settle the threshold goals the evidence supports.
- Learn what the customer needs at the handoff, then close and release Sprint 9.

## Part 1: Plan Sprint 9, Create Sprint 10, And Schedule The Review

1. Plan `SPRINT-09` in `docs/project-plan.md#sprint-09` with its goal, `**Due:**` of `2026-11-29`, `**Sprint Backlog:**` and `**Planned Velocity:**`, per [Sprints](../requirements/planning-requirements.md#sprints).
   Refine the Sprint 9 work and the potential Sprint 10 backlog, per [Product Backlog Refinement](../requirements/sprint-ceremonies-requirements.md#product-backlog-refinement).
2. Schedule the product stories, the three UATs and their live run, handoff preparation, quality plan results, threshold review, release, Week 9 report, retrospective and AI usage.
   Write the [task issues](../requirements/task-issues-requirements.md#the-issue-form) and schedule them per [Scheduling An Issue](../requirements/issue-tracking-requirements.md#scheduling-an-issue).
3. Create the `SPRINT-10` milestone and `docs/project-plan.md#sprint-10` with a provisional goal and `**Due:**` of `2026-12-06`.
   Leave work outside the final sprint's scope in the unscheduled product backlog.
4. Schedule the in-person Sprint 9 review by 29 November and leave time afterwards for the release and report.

## Part 2: Define The UATs And Write The Sprint 9 Script

1. Define `UAT-01` through `UAT-03` in `docs/user-acceptance-tests.md`, per [The Test Record](../requirements/user-acceptance-tests-requirements.md#the-test-record).
2. Write `reports/week-09/meeting-script.md` before the review, per [Meeting Script](../requirements/customer-meetings-requirements.md#meeting-script).
   Put the UATs and the handoff expectations question on the agenda.

## Part 3: Deploy The Candidate And Hold The Sprint 9 Review

1. Deploy the Sprint 9 build to the university VM and hold the in-person review, per [Showing Working Software](../requirements/customer-meetings-requirements.md#showing-working-software).
   Have the customer run the three UATs per [The Two Review Sessions](../requirements/user-acceptance-tests-requirements.md#the-two-review-sessions).
2. Discuss the recorded quality plan results, check every open threshold goal against its current measure, and ask what the customer expects at the handoff.
3. Write `reports/week-09/meeting-report.md` after the review, with each story verdict and each UAT outcome linked to its own decision.
   Publish the permitted sanitized transcript or record its absence, per [Meeting Transcript](../requirements/customer-meetings-requirements.md#meeting-transcript).

## Part 4: Record The Results, Cut REL-09, And Close Sprint 9

1. Record the Sprint 9 runs in `docs/user-acceptance-tests.md` and update `docs/threshold-of-success.md` with the review outcomes.
2. Merge the Sprint 9 product work and cut the protected `REL-09` tag at the close.
   Publish the [release body and changelog](../requirements/releases-requirements.md#cutting-a-release), then add the [release block](../requirements/planning-requirements.md#releases) with `**Released:**`, `**Checked QRs:**` and `**Checked UATs:**`.
3. Record `**Actual Velocity:**` and note where unfinished work will go per [Scheduling An Issue](../requirements/issue-tracking-requirements.md#scheduling-an-issue).
   Write `reports/week-09/sprint-retrospective.md` and `reports/week-09/ai-usage.md`.
4. Merge the Week 9 report and its evidence, triage the remaining issues, close the milestone and submit Submission 9.

## What Good Looks Like

The customer can complete each journey from its documented start state, and a reader can trace each result to the build, meeting evidence and decision.
The handoff preparation records what the customer asked for, what is ready and what Sprint 10 still needs.
The quality plan table distinguishes failed checks from checks with no result.

## Assignment Report In The Repository

Write `reports/week-09/README.md`, per [Weekly Public Report](../requirements/weekly-report-requirements.md#weekly-public-report).
Include `## Quality plan results`, `## Threshold review` and `## Handoff preparation`.
Link the threshold record from the review and include the following coverage rows.

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

Under `## Repository evidence`, link the merged pull requests and the latest green link, Markdown, workflow and product CI checks on `main`.
Include `## Contribution`, `## Deviations` and `## Privacy` under the weekly report rules.
Declare a deadline-day review and its compressed schedule in `## Deviations`.

## Assignment Report On Moodle

Submit one PDF per [Private Submission Wrapper](../requirements/weekly-report-requirements.md#private-submission-wrapper).

- Project, team number and member table with GitHub usernames, real names and university emails.
- Full commit-hash permalink to `reports/week-09/README.md`.
- Under `## For customer`, the production address, dashboard and backend addresses and credentials, test access, and private usability-data access and retention details.
- Permitted private recording link or the reason there is none, and any private transcript.
- One line confirming no private-only material was committed.

### Submission Procedure

1. Merge the report and its repository artifacts into `main`.
2. Take the permalink and ZIP snapshot from that commit, per [Permalinks And Snapshots](../requirements/repository-requirements.md#permalinks-and-snapshots).
3. Submit the PDF and snapshot through Moodle.
   If the review missed the deadline, identify the missing review in Submission 9 and link that record when declaring the slip in Week 10.

## Checklist

- [ ] Sprint 9 planned, Sprint 10 created provisionally and the review scheduled.
- [ ] Three UATs defined and the meeting script written before the review.
- [ ] Review, UAT runs, decisions and threshold outcomes recorded.
- [ ] Handoff preparation and quality plan results written.
- [ ] `REL-09` published and recorded, Sprint 9 closed, retrospective and AI usage recorded.
- [ ] Week 9 report merged and Submission 9 submitted.
