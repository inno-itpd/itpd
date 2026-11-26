# Plan: Assignments 9 And 10 — The Final Two Sprints, The Two Submissions, The UATs, The Handoff, And The Reflection

> [A9-DEC-019](../decisions/a9.md#a9-dec-019-private-usability-data-is-deleted-by-submission-10) supersedes this plan's private usability-data retention, deletion and final access instructions.
> [A9-DEC-020](../decisions/a9.md#a9-dec-020-the-project-reflection-captures-transferable-lessons) supersedes this plan's project reflection format, scope and deletion reporting.
> [A9-DEC-021](../decisions/a9.md#a9-dec-021-the-handoff-keeps-limitations-and-links-the-issue-tracker) supersedes this plan's instructions for listing each open issue in the handoff and renames the handoff's known-issues row to `Limitations`.
> [A9-DEC-022](../decisions/a9.md#a9-dec-022-the-team-can-demonstrate-uat-live-at-the-sprint-9-review) clarifies the Sprint 9 fallback when the customer cannot access production.
> [A9-DEC-023](../decisions/a9.md#a9-dec-023-unfinished-issues-return-to-the-backlog) supersedes this plan's Sprint 9 carryover limits and Sprint 10 scope and velocity rules.
> [A9-DEC-024](../decisions/a9.md#a9-dec-024-submission-9-uses-earlier-usability-data-access) supersedes this plan's instructions for repeating private usability-data access details in Submission 9.
> [A9-DEC-025](../decisions/a9.md#a9-dec-025-submission-10-records-the-handoff-outcome-and-verifies-the-final-commit) updates the missing-handoff procedure, university VM shutdown timing, final release sequence and CI evidence.
> [A9-DEC-026](../decisions/a9.md#a9-dec-026-rel-10-must-be-ready-for-the-handoff) defines what must be ready before the handoff and leaves the `REL-10` release order to the team.

This plan designs Assignment 9 and Assignment 10 as [`a8-plan.md`](a8-plan.md) designs Assignment 8: two sprints, `SPRINT-09` and `SPRINT-10`, two graded group submissions, two releases `REL-09` and `REL-10`, the user acceptance tests, the handoff, the final report, the project reflection, the individual reflection and peer evaluation, the final repository state, the two weekly reports, the two retrospectives, the two AI usage reports, and the two Moodle wrappers.
It states the scope and the contradictions the wider materials expose, with the resolution each takes, in [Scope And Contradictions](#scope-and-contradictions).
The final exam takes place on Friday 4 December 2026 and is listed in the syllabus's Week 11 section.
The group submissions are independent of the exam.

The Week 9 class dates stay as they are: 20–26 November.
`SPRINT-09` and Submission 9 are due **Sunday 29 November 2026 at 23:59**, and the Sprint 9 review may be held by that due date, including the days after the class week.
The Week 10 class dates stay as they are: 27 November–3 December.
`SPRINT-10` starts on **Monday 30 November** and is due **Sunday 6 December 2026 at 23:59**; Submission 10 and the Sprint 10 review and handoff are due by that date.
Submission 10 has no late submission window.
A sprint closes after its review and its release, at the latest on its due date.

`REL-09` is cut at the Sprint 9 close.
Cut `REL-10` on the final product commit before the Sprint 10 handoff and deploy that release to the university VM for the meeting.
Its tag is on the final product commit.
Product code freezes at `REL-10`.
The public repository freezes at the Submission 10 deadline.
The main repository is public during the course; after the course has been fully graded, the team may make it private only with the instructors' approval.
The private usability-data repository and the recordings folder stay private until the course has been fully graded, and the team deletes them after grading.
The instructors confirm when grading is complete.
Delete the private usability data after that confirmation.

The course has ten graded group submissions: Submission 1 to Submission 10, each worth 7 points, so 70 of the 107 points.
The other components are 10 points of class attendance, 7 points of individual reflection and peer evaluation, and 20 points of final exam, for 107 points in total.
The pass threshold is **75 points of the 107**.
The late submission policy is charged in points: 10% of the submission's points per calendar day after the hard deadline, so a 7-point submission has a maximum of 6.3 points one day late, and a submission more than 7 days late receives zero.
Assignment 10 is excluded from the late submission policy.
The individual reflection and peer evaluation is Submission 11, due `2026-12-06` 23:59, available only to a member of a group that presented at the final exam, private and Moodle-only, in the syllabus's Week 11 section.
Submission 11 is independent of Submission 10.
Repository upkeep is assessed inside the ten submissions; it is not a separate component.
Submission 9 and Submission 10 are separate.
The assignment catalog separates the ten group submissions from the final exam, Submission 11, and attendance; the final exam and attendance are not submissions, and Submission 11 is the individual reflection and peer evaluation.

The initial user acceptance tests are `UAT-01` to `UAT-03`, maintained at `docs/user-acceptance-tests.md` with the `UAT-nn` identifier family, per the new `requirements/user-acceptance-tests-requirements.md`.
Each test covers one end-to-end user journey, and its section states the journey on the first line, then `**Status:**`, then the start state, the steps, and the expected result, then a runs table.
The runs table has one row per run: the sprint, the date, the actual runner, the build, the result, the evidence, and the `DEC-nnn`.
The customer runs the three initial tests on the product deployed to the university VM at the Sprint 9 review.
Check three active UATs on the deployed `REL-10` at the handoff.
Record `Fail` and `Not run`, with the reason, in `handoff.md` and the Week 10 report's `## Deviations`.
The customer accepts the handoff with the recorded results.
If the customer cannot access the app, the team runs the tests live during the meeting for the customer to observe and judge.
Record the actual runner as `Customer` or `Team`.
The Sprint 10 meeting is the final customer UAT session.
The team shuts down the university VM after the handoff.
The Week 10 report identifies the tag and commit tested at the handoff.
The final two reviews use UATs in place of core-task verification.
The Weeks 5–8 production deploys keep the core-task rule.
The assignments for Weeks 9 and 10 do not mention the core task.
The `UT-01` results are not re-presented in the final two weeks; the reports link the Week 8 report only where the evidence needs it.

Submission 9 carries the Week 9 report, the Sprint 9 review, the UAT run and its results, the handoff preparation, `REL-09`, the Sprint 9 retrospective, and the AI usage report.
Submission 10 carries the Week 10 report and final report, the Sprint 10 review and handoff, the UAT re-run and its results, `REL-10`, the project reflection, the final repository state, the Sprint 10 retrospective, and the AI usage report.
The pitch deck is a separate Moodle submission due `2026-12-03` at 23:59.
Its instructions belong to `exam/README.md` and have no dependency on the handoff or final report.
That page is added blank by this plan and is designed later; this plan does not design the deck content or the peer review rules.
The deck is not shown at the Sprint 10 review, and neither Assignment 9 nor Assignment 10 mentions the deck or the peer review.
The deck is never committed to the repository.

The final report is `reports/week-10/README.md`: the Week 10 weekly report and the final project report.
The project reflection is `reports/week-10/reflection.md`: the lessons learned, the problems that taught them, what the team would do differently if it started the project anew, and no team dynamics section.
The individual reflection and peer evaluation is Submission 11, private and Moodle-only, submitted after the final exam; the syllabus's Week 11 section carries it.
There is no `reports/week-10/final-report.md`.
The handoff is `handoff.md`, the handoff report; the Week 10 report's `## Handoff results` section links it.
The handoff is recorded in `handoff.md` at the repository root.
The Week 10 report's `## Handoff results` section links it.
The Week 9 report carries `## Threshold review`.
The Sprint 9 review checks every open goal against its existing measure.
The Sprint 10 handoff checks only the goals still open.
Discuss recorded quality plan results at the Sprint 9 review and summarize them in the Week 9 report.
`## Quality plan results` carries one table with one row per `QR-nn QRT-nn` pair, grouped by `Passes`, `Fails`, `Not verified`, and `Dropped`, in identifier order within each group, with the result, the last check, and a link to the testing plan.
`## Threshold review` carries a table with one row per goal that was open when the Sprint 9 review began.
Each row links the goal and gives the observed result or an evidence link and the status after the review.
The Week 10 report carries `## Handoff results` and `## Threshold of success results`.
The Week 10 report carries no `## Repository evidence` section; the coverage table carries the evidence links.
It carries no rule 17 table, no proposal column, no focus metric, and no link to `docs/analytics.md` or `docs/observability.md`.
It requires no screenshots.
The `reports/week-10/meeting-report.md` is the Sprint 10 review and handoff record.
There is no `reports/week-10/meeting-report-2.md`: the review and the handoff are one meeting, with one script written before it and one report written after.
The Week 9 and Week 10 scripts are written before their meetings, and the reports after.

The **MVP** is `REL-10`, the product the team built and released.
The plan uses the MVP term for Weeks 9 and 10.
The Week 10 report and `handoff.md` name `REL-10` the MVP, and `handoff.md` maps the MVP to the release.
The root `README.md` is rewritten for users in Assignment 10: it describes the product and links the setup and deployment instructions, and it carries the course metadata in a `## Course information` section at the end.

## Goal And Success Criteria

Write the whole design of Assignments 9 and 10 and the final handoff, so Weeks 9 and 10 are handed in as two sprints and two submissions, with the handoff UAT results as the final acceptance evidence.

Done means:

- The two-sprint model is consistent: Week 9's class dates stay 20–26 November; `SPRINT-09` and Submission 9 are due `2026-11-29`; the Sprint 9 review may be held by `2026-11-29`; Week 10's class dates stay 27 November–3 December; `SPRINT-10` starts `2026-11-30` and is due `2026-12-06`; Submission 10 is due `2026-12-06`; the final exam is `2026-12-04` in the syllabus's Week 11 section.
- The assessment is consistent: ten graded group submissions at 7 points each, 10 points of attendance, 7 points of individual reflection and peer evaluation, and 20 points of final exam, for 107 points; the pass threshold is 75 points of the 107; the late penalty is 10% of the submission's points per calendar day; repository upkeep is assessed inside the ten submissions; the assignment catalog separates the ten submissions from the final exam, Submission 11, and attendance.
- The individual reflection and peer evaluation is Submission 11, due `2026-12-06` 23:59, available only to a member of a group that presented at the final exam, private and Moodle-only, and in the syllabus's Week 11 section and independent of Submission 10.
- Sprint 9 is planned and closed like any other sprint: its goal, `**Sprint Backlog:**`, `**Planned Velocity:**`, and `**Actual Velocity:**`; its review is the Week 9 customer meeting, held in person by the sprint's due date of `2026-11-29`; the customer runs the three `UAT-nn` on the product deployed to the university VM; `REL-09` is cut at its close; its retrospective and AI usage report are written; unfinished issues are triaged for Sprint 10 or returned to the unscheduled product backlog.
- Sprint 10 is created provisionally in Week 9 and planned after the Sprint 9 review.
  Sprint 10 implements no new user stories.
  Schedule tasks for UAT fixes, selected documentation work, and final sprint deliverables.
  Planned and actual velocity are `0` story points.
  Close Sprint 10 after the handoff and leave unfinished issues open outside the milestone.
- Both reviews are in person.
  The Sprint 9 review shows the increment and asks what the customer expects to receive.
  Plan 60 minutes for the combined Sprint 10 review and handoff.
  The customer attends, checks the deployed `REL-10`, and accepts the handoff in a separate `DEC-nnn`.
- The UAT record preserves the three initial tests, later replacements, and all results.
  The record identifies each run and its actual runner, outcome, evidence, and `DEC-nnn`.
  The Week 9 and Week 10 reports link to their respective results.
- The Week 9 report records the customer's expectations, what is ready, and what is missing in `## Handoff preparation`.
  The root `handoff.md` records the package and outcome.
  The Week 10 report links it from `## Handoff results`.
- The final report is `reports/week-10/README.md`.
  It carries `## Summary`, `## Handoff results`, `## Threshold of success results`, `## Coverage`, `## Contribution`, `## Deviations`, and `## Privacy`.
  The Week 9 report owns the quality plan results.
  The Week 10 threshold table links each goal and its final status.
- The project reflection is designed: `reports/week-10/reflection.md` carries `## Lessons learned`, one `## Lesson N` section per lesson with `**Problem:**` and `**Lesson:**`, and `## What would we do differently`, saying what the team would do differently if it started the project anew; it carries no team dynamics section, rates no individual, is public and sanitized, cites no focus metric, links neither analytics page, and is linked from the Week 10 report.
- The exam page is designed: `exam/README.md` is added blank; the maintainer designs its deck content and peer review rules later; the deck is a separate Moodle submission due `2026-12-03` 23:59, never committed, and not shown at the Sprint 10 review; Submission 9 and Submission 10 carry no deck and no draft; Assignments 9 and 10 do not mention the deck or the peer review.
- Cut `REL-09` at the Sprint 9 close and cut `REL-10` before the Sprint 10 handoff.
  The protected `REL-10` tag points to the final product commit.
  Both release blocks carry `**Released:**`, `**Checked QRs:**`, and `**Checked UATs:**`.
- The code freeze is designed: product code freezes at `REL-10`; docs, reports, the reflection, the changelog, and the release blocks may merge between `REL-10` and `2026-12-06` 23:59; no public change of any kind is made after `2026-12-06` 23:59; the main repository is public during the course; after the course is fully graded, the team may make it private only with the instructors' approval, and the private usability data stays private until the course is fully graded and is deleted then; the post-grading deletion and the approved privatisation are the only later changes.
- The final repository state is designed: no open pull request; the `SPRINT-09` and `SPRINT-10` milestones closed; the issues completed in `SPRINT-10` stay in its closed milestone, every open issue, including the ones scheduled in the sprint and not completed, stays open with no milestone, clears its `Responsible`, `Accountable`, and assignees, and is listed in `handoff.md`; the default branch green; the docs, setup, deployment runbook, architecture, requirements, tests, results, configuration plan, features, glossary, risks, `AGENTS.md`, `docs/user-acceptance-tests.md`, and the user-facing README current; the final tag protected; the post-grading data deletion plan and any approved privatisation recorded; the final snapshot from the final `main` commit; the Week 10 report records the `REL-10` tag and its commit.
- Sprint 9 UAT results identify the reviewed build.
  Sprint 10 UAT results identify the deployed `REL-10`.
  A failed customer UAT alone does not trigger a rollback.
  Any failure the team cannot fix is recorded as a known issue, and the release can stay live until the planned shutdown.
- The Week 9 report includes the UAT results, `## Quality plan results`, `## Threshold review`, and `## Handoff preparation`.
  The Week 10 report covers the handoff and final threshold outcomes.
  Both Moodle wrappers carry this week's private values under `## For customer`.
- The assignments are designed: `assignments/assignment-9.md` for Week 9 and `assignments/assignment-10.md` for Week 10, in `assignment-8.md`'s shape, each with its own parts, what good looks like, repository report, Moodle wrapper, submission procedure, and checklist.
- `course/syllabus.md` gives Week 9 the Sprint 9 plan, the UATs, the quality plan results, the threshold review, the handoff preparation, the Sprint 9 review by 29 November, `REL-09`, the retrospective, the AI usage report, and Submission 9; gives Week 10 the Sprint 10 plan, the handoff, the UAT re-run, the final report, the reflection, `REL-10` as the MVP, the final state, the retrospective, the AI usage report, and Submission 10; and gives the assessment catalog ten group submissions in the assignment table, a separate non-assignment section for the final exam, Submission 11, and attendance, the 107 points, the 75-point pass, and the late penalty in points.
- The routers link the final two weeks and the exam page: `README.md` gains the Assignment 9 and Assignment 10 rows, the final-sprints guide row, the new requirements row, and an exam row; `SKILL.md` routes the final report, the final state, the reflection, the handoff, the final release, the UATs, the exam page, and the final exam and Submission 11; `course/rules.md` links the syllabus for deadlines and links the handoff, the freeze, the final report, the reflection, the UATs, the exam page, and the guide, and does not restate the weights; `AGENTS.md` gains the new requirements file, the new guide, the `a9.md` decision log, the docs map row, the `reports/week-10/` convention, the root handoff exception, the exam page row, and the new terms; no `assignments/final.md` is added; `TODO.md`'s A9 items are annotated and its UAT item is closed.
- The legacy corrections are scoped: `assignments/assignment-8.md` is edited so it no longer says, and [`a8-plan.md`](a8-plan.md) carries a forward note that supersedes, that Week 9 is the final repository state, that the seven existing sprint milestones are the whole set, or that the pitch deck is submitted with Submission 9; the a9 change updates the `A7-DEC-013`, `A8-DEC-015`, `A7-DEC-021`, and `A5-DEC-017` statuses; the a9 change corrects the syllabus's Week 3 "seven `SPRINT-nn` GitHub milestones" line, `README.md`'s "One submission per team" and "grading weights", `course/rules.md`'s submission wording, the `TODO.md` items, and the two passages in `weekly-report-requirements.md` that its new rules contradict; `TASK-182` carries the rest, including `configuration-management-requirements.md`, `guides/configuration-management.md`, and `a7-plan.md`; the a9 change also corrects the Week 9 final reflection traceability row in `general-requirements.md`; `assignment-4.md` stays as written.
- `course/decisions/a9.md` records every decision as an `A9-DEC-nnn` entry, `A9-DEC-007`, `A9-DEC-015`, and `A9-DEC-018` are full reversals, `A9-DEC-017` records the UAT family and the core-task replacement, and the completed `assignment-9.md` and `assignment-10.md` are written from [The Parts Assignment 9 And Assignment 10 Carry](#the-parts-assignment-9-and-assignment-10-carry).
- The implementation is tracked as one Backlog task created from this plan, and the plan does not create it; the deferred legacy work is [TASK-182](<../../backlog/tasks/task-182 - Correct-the-legacy-Week-9-final-state-and-seven-sprint-statements.md>), which this plan creates now and the a9 implementation leaves open; the a9 task edits `TASK-182` to remove `course/syllabus.md` and AC6 and to add the deferred files and the `a7-plan.md` forward note.
- `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run check:links`, `pnpm run test:markdown-format`, and `pnpm run test:markdown-rules` pass; `pnpm run check:lectures` is green against `lecture-9` and the other decks; `pnpm run lint:actions` is unchanged because no workflow changes.

## Scope And Contradictions

Weeks 9 and 10 are two sprints, two submissions, two releases, the user acceptance tests, the handoff, the final report, the reflection, and the final state.
The wider materials expose one final sprint, one submission, one final report, one release, one report directory, a Week 10 with no submission, a Week 9 final state, a Week 9 deck, and no user acceptance tests; each row is a contradiction or scope decision the materials carry now, and the resolution the implementation applies.
The `A9-DEC` entry named in the row records it in `course/decisions/a9.md`.
"The current syllabus" in the rows means the current [`course/syllabus.md`](../syllabus.md); the other contradictions name the file they come from.

| #   | Contradiction                                                                                                                                                                                                                                                                                                                   | Resolution                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| --- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1   | The current syllabus and `planning-requirements.md` say every week from Week 3 to Week 9 is a sprint, while the course now grades Week 10.                                                                                                                                                                                      | `SPRINT-09` is Week 9 and is due `2026-11-29`; `SPRINT-10` starts `2026-11-30` and is due `2026-12-06`; `SPRINT-10`'s milestone and its `### SPRINT-10` section with a provisional goal are created in Week 9, and it is planned in Week 10; the two sprints are planned, released, reviewed, and closed separately; the course has ten group submissions and 107 points. `A9-DEC-001`, `A9-DEC-005`, `A9-DEC-010`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| 2   | The current syllabus moves Submission 9 to Thursday 3 December and leaves Week 10 without a submission.                                                                                                                                                                                                                         | Submission 9 is due Sunday 29 November and Submission 10 is due Sunday 6 December at 23:59 with no late submission window; each has its own Moodle submission and its own assignment page; the final exam is Friday 4 December in the syllabus's Week 11 section. `A9-DEC-001`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| 3   | The current syllabus makes `reports/week-09/README.md` the week's report and the final report, and gives Week 10 no report.                                                                                                                                                                                                     | The Week 9 report carries the UAT results, `## Quality plan results`, `## Threshold review`, and `## Handoff preparation`. The Week 10 report is the final report and carries the handoff and final threshold results. The handoff package is the root `handoff.md`. `A9-DEC-002`, `A9-DEC-003`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| 4   | The current syllabus has one Sprint Review and says the handoff is conducted after the review and before Submission 9.                                                                                                                                                                                                          | The Sprint 9 review captures the customer's handoff expectations. The Sprint 10 review and handoff are one in-person meeting planned for 60 minutes on the deployed `REL-10`. `A9-DEC-003`, `A9-DEC-017`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| 5   | The current syllabus cuts `REL-09` at the close after the review and freezes at the submission date, while the final handoff needs the release.                                                                                                                                                                                 | Cut `REL-09` at the Sprint 9 close. Cut and deploy `REL-10` before the handoff. Product code freezes at that tag, and the public repository freezes at the Submission 10 deadline. `A9-DEC-004`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| 6   | The current syllabus has nine group submissions at 7% for 63%, 10% attendance, 7% individual reflection, and 20% final exam for 100%, with active repository updates as a component, and a percentage late penalty.                                                                                                             | The course has ten group submissions at 7 points (70), 10 points attendance, 7 points individual reflection and peer evaluation, and 20 points final exam, for 107 points; the pass threshold is 75 points of the 107; the late penalty is 10% of the submission's points per calendar day, more than 7 days late is zero, and 7 points loses 0.7 points per day; repository upkeep is assessed inside the ten submissions; the individual reflection and peer evaluation is Submission 11; the catalog separates the submissions from the final exam, Submission 11, and attendance; Assignment 10 has a hard cutoff and is excluded from the late penalty. `A9-DEC-005`.                                                                                                                                                                                                                                                                    |
| 7   | The final sprint has no later sprint to move an open issue into, and the final retrospective has no next retrospective to carry an action into.                                                                                                                                                                                 | At the Sprint 9 close, only UAT-critical work and selected documentation issues move to `SPRINT-10`; at the Sprint 10 close, the issues completed in the sprint stay in its closed milestone, and every open issue, including the ones scheduled in the sprint and not completed, stays open with no milestone, clears its `Responsible`, `Accountable`, and assignees, and is listed in `handoff.md`; the Sprint 10 retrospective says there is no later sprint, a `Not done` action is `Outcome: Not done` in `## Carried Actions`, and the `## Actions` carry `Carried: No`; the project reflection is independent of the retrospective's actions. `A9-DEC-006`.                                                                                                                                                                                                                                                                           |
| 8   | The current syllabus requires `## Handoff preparation` and `## Handoff`, while the handoff preparation is the Sprint 9 review's outcome and the handoff is the Sprint 10 review's.                                                                                                                                              | The Week 9 report owns `## Handoff preparation`. The root `handoff.md` owns the package and acceptance. The Week 10 report links it from `## Handoff results`. The meeting report records each UAT decision and the separate acceptance decision. `A9-DEC-002`, `A9-DEC-003`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| 9   | The current syllabus leaves Week 10 outside the report map and puts the Week 9 and Week 10 work in `reports/week-09/`.                                                                                                                                                                                                          | `reports/week-09/` holds Week 9 evidence; `reports/week-10/` holds Week 10 evidence, including the final report, the reflection, the meeting report, the retrospective, and the AI usage report. The handoff package lives at the repository root. The Week 9 evidence is preserved after Submission 9. `A9-DEC-002`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| 10  | The current syllabus treats the deck as one Moodle-only artifact submitted with Submission 9, while the final deck is presented at the final exam, and the Week 10 report is the final report.                                                                                                                                  | The deck is a separate Moodle submission due `2026-12-03` 23:59, described by [`exam/README.md`](../../exam/README.md); that page is added blank and is designed later; the deck is never committed, is not shown at the Sprint 10 review, and Assignments 9 and 10 do not mention it; Submission 9 and Submission 10 carry no deck and no draft. `A9-DEC-007`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| 11  | The current syllabus leaves the final report's quality goals as "the quality goals achieved", while the threshold and the testing plan can end `Missed`, `Open`, `Fails`, `Not verified`, or `Dropped`.                                                                                                                         | Discuss and record quality plan results in Week 9. Review the open threshold goals against their stated measures in Sprint 9 and record their observed results or evidence and their statuses. The Week 10 report summarizes final threshold outcomes. `A9-DEC-008`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| 12  | `assignment-8.md`, `a8-plan.md`, `assignment-3.md`, `a3.md`, the two guides, `a7.md`, `a8.md`, `general-requirements.md`, and two passages in `weekly-report-requirements.md` still say Week 9 is the final repository state, seven sprints are the whole set, the pitch deck is Submission 9's, or the reflection is Week 9's. | The plan edits `assignment-8.md` and adds a forward note to `a8-plan.md`; the a9 change updates the `A7-DEC-013`, `A8-DEC-015`, `A7-DEC-021`, and `A5-DEC-017` statuses for the full reversals; the a9 change also corrects the syllabus's Week 3 "seven `SPRINT-nn` GitHub milestones" line, `README.md`'s "One submission per team" and "grading weights", `course/rules.md`'s submission wording, the `TODO.md` items, and `weekly-report-requirements.md`'s rule 22 and Week 8 example; the rest of the past-week statements are [TASK-182](<../../backlog/tasks/task-182 - Correct-the-legacy-Week-9-final-state-and-seven-sprint-statements.md>), including `configuration-management-requirements.md`, `guides/configuration-management.md`, and `a7-plan.md`; the a9 change also corrects the Week 9 final reflection traceability row in `general-requirements.md`; the historical `assignment-4.md` stays as written. `A9-DEC-009`. |
| 13  | The current syllabus cuts one final release and has no release between the Week 8 release and the final release, while each sprint has a release of its own.                                                                                                                                                                    | Keep `REL-09` as the Sprint 9 release and cut `REL-10` before the final handoff. `A9-DEC-004`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| 14  | The final sprint may carry user stories or only tasks, while the final plan and the final report need one sprint goal, one backlog, and one velocity.                                                                                                                                                                           | Sprint 10 implements no new user stories and keeps a sprint goal, backlog, and planned and actual velocity of zero story points. `A9-DEC-010`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| 15  | The current syllabus leaves the final report's team dynamics in the public weekly report, while the reflection needs the team's account of how it worked.                                                                                                                                                                       | The Week 10 report is public and carries no individual rating and no team dynamics section; `reflection.md` carries `## Lessons learned` with one `## Lesson N` section per lesson, and `## What would we do differently`, and it rates no individual; the weekly reports' contribution tables are the evidence of who did what. `A9-DEC-008`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| 16  | The current syllabus has one Assignment 9, while the course now has two graded submissions and two submission weeks.                                                                                                                                                                                                            | The course has `assignments/assignment-9.md` for Week 9 and `assignments/assignment-10.md` for Week 10; `course/plans/a9-plan.md` is the shared design plan for both; the README, the syllabus, the routers, and the decision log name both; the final exam and Submission 11 stay in the syllabus, and no `assignments/final.md` is added. `A9-DEC-011`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| 17  | The current syllabus keeps `MVP` only as vocabulary, after `A3-DEC-018` and `A5-DEC-017` removed the MVP stage names, while the final release is the product the team built.                                                                                                                                                    | `REL-10` is the MVP; the syllabus, the final report, and `handoff.md` name it; `A9-DEC-015` reverses `A5-DEC-017` in full and restates the surviving clauses; the four-term prototype list keeps its questions, and the final two weeks use the MVP term. `A9-DEC-015`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| 18  | Repository rule 7 requires a core-task check and rollback after a failed production verification.                                                                                                                                                                                                                               | UATs replace core-task verification at the two reviews. A failed UAT alone does not trigger rollback. The Sprint 10 handoff checks the deployed `REL-10` and shutdown follows the meeting. `A9-DEC-004`, `A9-DEC-017`, `A9-DEC-018`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| 19  | The handoff description transferred the private data access and deletion date, while the visibility rule keeps the private repository and recordings with the team until the course is graded.                                                                                                                                  | The private usability-data repository and the recordings are private; the team deletes them after the course is fully graded; the main repository is public during the course; after the course is fully graded, the team may make it private only with the instructors' approval; the handoff records the retention and the mandatory deletion rather than a transfer; the private values, including the links, access, addresses, and credentials, are in the Moodle wrapper's `## For customer`, and the public handoff rows say where they are. `A9-DEC-016`.                                                                                                                                                                                                                                                                                                                                                                             |
| 20  | The wider materials have no user acceptance test, no `UAT-nn` family, and no final acceptance evidence beyond `UT-01` and the core task.                                                                                                                                                                                        | Teams define three UATs and check three active journeys on `REL-10`. Record failures and unrun tests in `handoff.md` and deviations while recording the customer's acceptance separately. `A9-DEC-017`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |

## What Moved, And Where It Lands

[Assignment 8's plan](a8-plan.md) designs the run week and the Week 9 handoff as a week-to-week handoff; this plan writes the two sprints, the two submissions, the user acceptance tests, the final handoff, the final report, the reflection, and the final state.

| Group            | What the earlier materials said                                                                                                                             | Where it lands here                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| ---------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| The final sprint | `a8-plan.md` and `assignment-8.md` treat `SPRINT-09` as the final sprint, due `2026-11-28`, and put the final repository state and the reflection in Week 9 | `SPRINT-09` is Week 9 and is due `2026-11-29`; `SPRINT-10` starts `2026-11-30` and is due `2026-12-06`; each has a goal, a GitHub milestone, a planned and actual velocity, a release, a review, a retrospective, and an AI usage report; `SPRINT-10`'s milestone and provisional section are created in Week 9 and it is planned in Week 10; Submission 9 is due `2026-11-29`, Submission 10 is due `2026-12-06`, and the final exam is `2026-12-04` in the syllabus's Week 11 section                                                                                                                                      |
| The submissions  | One final submission, due `2026-12-03`, carrying the deck, the final report, the handoff, the final state, and the retrospective                            | Two graded group submissions: Submission 9 on `2026-11-29` and Submission 10 on `2026-12-06`; the course has ten group submissions at 7 points, plus 10 points attendance, 7 points individual reflection and peer evaluation (Submission 11), and 20 points final exam, for 107 points, with the pass at 75 points and the late penalty in points; the assignment catalog separates the submissions from the other graded components                                                                                                                                                                                        |
| The reports      | `reports/week-09/README.md` was the week's report and the final report; Week 10 had no report                                                               | `reports/week-09/README.md` is the Week 9 report; `reports/week-10/README.md` is the Week 10 report and the final report; `reports/week-10/reflection.md` is the project reflection; `handoff.md` is the handoff report; no draft exists; no file in `reports/week-09/` is rewritten after its submission                                                                                                                                                                                                                                                                                                                    |
| The handoff      | The handoff was a separate customer meeting after the sprint, with no meeting rule                                                                          | The team plans a 60-minute combined Sprint 10 review and handoff. The root `handoff.md` owns the package, and the Week 10 report links it.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| The final report | The current syllabus makes `reports/week-09/README.md` the week's report and the final report                                                               | The Week 9 report owns quality plan results and the Sprint 9 threshold review. The Week 10 report is the final report and owns the handoff summary and final threshold results.                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| The UATs         | The materials had no user acceptance test. The final evidence was `UT-01` and the core task.                                                                | Define three UATs and record three outcomes at the handoff on `REL-10`. Each run has its own `DEC-nnn`. Keep failure or unrun evidence and replace a journey only after agreeing the drop with the customer.                                                                                                                                                                                                                                                                                                                                                                                                                 |
| The deck         | One 7-minute Moodle-only deck, submitted with Submission 9, and presented at the final exam                                                                 | The deck is a separate Moodle submission due `2026-12-03` 23:59, described by `exam/README.md`; that page is added blank and designed later; the deck is not shown at the Sprint 10 review, is never committed, and neither assignment mentions it; Submission 9 and Submission 10 carry no deck and no draft                                                                                                                                                                                                                                                                                                                |
| The releases     | `REL-09` was the final release, cut at the sprint close after the review, and the freeze was on the submission date                                         | Cut `REL-09` at the Sprint 9 close and cut and deploy the final `REL-10` before the handoff. The tag identifies the product freeze.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| The final state  | The final state was Week 9's, and every open issue had no later sprint                                                                                      | The final state is Week 10's: no open pull request, the `SPRINT-09` and `SPRINT-10` milestones closed, the completed `SPRINT-10` issues in its closed milestone, every open issue outside a milestone and listed in `handoff.md`, the default branch green, the docs and deployment current, `docs/user-acceptance-tests.md` current, the user-facing README current, `REL-10` protected, the post-grading data deletion plan and any approved privatisation recorded, the Week 10 report records the `REL-10` commit, and the wrapper carries the final `main` snapshot                                                     |
| The weeks        | Week 9 prepared the deck and the repository, and Week 10 was the final review week                                                                          | Week 9 is the Sprint 9 plan, the UATs, the handoff preparation, the Sprint 9 review by `2026-11-29`, `REL-09`, the retrospective, the AI usage report, the Week 9 report, and Submission 9; Week 10 is the Sprint 10 plan, the handoff, the UAT re-run, the final report, the reflection, `REL-10` as the MVP, the final state, the retrospective, the AI usage report, the Week 10 report, and Submission 10; the deck is a separate submission due `2026-12-03`; there is no Assignment 11 and no Week 11 group submission, because Submission 11 is the individual reflection described in the syllabus's Week 11 section |
| The assessment   | Nine group submissions at 7% (63%), 10% attendance, 7% individual reflection, and 20% final exam (100%)                                                     | Ten group submissions at 7 points (70), 10 points attendance, 7 points individual reflection and peer evaluation (Submission 11), and 20 points final exam, for 107 points; the pass threshold is 75 points of the 107; the late penalty is 10% of the submission's points per calendar day; repository upkeep is inside the ten submissions; the weight shift is deliberate                                                                                                                                                                                                                                                 |
| The MVP          | `MVP` was vocabulary only, after `A3-DEC-018` and `A5-DEC-017`                                                                                              | `REL-10` is the MVP; the syllabus, the final report, and `handoff.md` name it; the final report cites the recorded UAT results and the customer's verdict as the evidence, and does not cite the focus metric; the final two weeks use the MVP term                                                                                                                                                                                                                                                                                                                                                                          |
| The routers      | The Week 8 routers linked the configuration plan and the evaluation                                                                                         | `README.md`, `SKILL.md`, `course/rules.md`, and `AGENTS.md` link Assignments 9 and 10, the final-sprints guide, the UAT requirements, the final report, the reflection, the handoff, the final state, the exam page, and the `a9.md` decision log; the final exam and Submission 11 route to the syllabus's Week 11 section; `TODO.md`'s A9 items are annotated and its UAT item is closed; the past-week statements are `TASK-182`                                                                                                                                                                                          |
| The dates        | `SPRINT-09` was due `2026-11-28`, the submission was `2026-12-03`, and the freeze was the submission date                                                   | Sprint 9 and Submission 9 are due 29 November. Sprint 10 starts 30 November and is due 6 December, the hard deadline for Submission 10. The exam is 4 December and Submission 11 is independently due 6 December at 23:59.                                                                                                                                                                                                                                                                                                                                                                                                   |

No rule is new in `quality-requirements-requirements.md`, `adr-requirements.md`, `architecture-requirements.md`, `functional-requirements-requirements.md`, `user-stories-requirements.md`, `task-issues-requirements.md`, `pull-requests-requirements.md`, `risks-requirements.md`, `glossary-requirements.md`, `features-requirements.md`, `analytics-requirements.md`, `observability-requirements.md`, `usability-testing-requirements.md`, `configuration-management-requirements.md`, `assumptions-requirements.md`, `research-requirements.md`, `product-vision-requirements.md`, `definition-of-done-requirements.md`, `agent-instructions-requirements.md`, `local-task-tracking-requirements.md`, or `decisions-requirements.md`: the final two weeks are an instance of the existing rules, and the new user acceptance test rules live in `requirements/user-acceptance-tests-requirements.md`.
The Week 9 report, the Week 10 report and final report, the reflection, the individual reflection, the handoff, the final state, the final release, the MVP, the UAT record, and the two submissions are the assignments' week-specific additions where they are not rules.

## Design Decisions

Week 9 and Week 10 are two sprints, two submissions, two reviews, two releases, one final handoff, one final report, one project reflection, one individual reflection, one final state, one `docs/user-acceptance-tests.md`, and three UAT outcomes at the handoff.

- **The two sprints and the two submissions.**
  Week 9's class dates stay 20–26 November; `SPRINT-09` and Submission 9 are due `2026-11-29`, and the Sprint 9 review may be held by that due date.
  Week 10's class dates stay 27 November–3 December; `SPRINT-10` starts `2026-11-30` and is due `2026-12-06`; Submission 10 is due `2026-12-06`; each submission has its own Moodle wrapper and assignment page.
  The Sprint 10 review and handoff are held by `2026-12-06`.
  `SPRINT-10`'s milestone and its `### SPRINT-10` section with a provisional goal are created in Week 9; it is planned in Week 10.
  The individual reflection and peer evaluation is Submission 11, due `2026-12-06` 23:59, available only to a member of a group that presented at the final exam; it stays individual, private, and Moodle-only, and the syllabus's Week 11 section carries it.
  Submission 11 is independent of the group's Submission 10.
  The course has ten group submissions at 7 points (70), 10 points attendance, 7 points individual reflection and peer evaluation, and 20 points final exam, for 107 points; the pass threshold is 75 points of the 107; the late penalty is 10% of the submission's points per calendar day.
  The assignment catalog separates the ten group submissions from the final exam, Submission 11, and attendance, so no item number competes with a submission number.
  The final exam is a separate event in the syllabus's Week 11 section.
- **Sprint 9.**
  `SPRINT-09` is planned like every other sprint: its provisional goal is replaced by a planned goal, its `**Sprint Backlog:**` links its GitHub milestone, its `**Planned Velocity:**` counts the user stories it schedules, and its `**Actual Velocity:**` is set at the close.
  The UAT tasks, the handoff preparation, the Week 9 report, the threshold review, the retrospective, and the AI usage report are tasks with no story points; no deck task is scheduled; a product story carried from `SPRINT-08` or added in Week 9 counts.
  Week 9's planning refines the `SPRINT-10` backlog only, because there is no later sprint after it.
  The sprint's review is the Week 9 weekly customer meeting, held in person by Sunday 29 November; it shows the Sprint 9 increment, the customer runs the three `UAT-nn` on the product deployed to the university VM, and its script asks what the customer expects to receive as the handoff.
  `REL-09` is cut at the close, after the review and any same-week rework; the Week 9 report, the handoff preparation, the UAT results, the threshold review, and the retrospective are submitted by `2026-11-29` 23:59.
  Limit carryover into `SPRINT-10` to work needed for the UATs to pass and selected documentation work.
  Other open issues return to or stay in the unscheduled product backlog, outside sprint and plan milestones.
- **Sprint 10.**
  `SPRINT-10` is the final sprint.
  Plan it after the Sprint 9 review using the UAT results and the customer's handoff requests.
  Sprint 10 implements no new user stories.
  Schedule tasks for UAT fixes, selected documentation work, and final sprint deliverables.
  Planned and actual velocity are `0` story points.
  Its goal states a product result.
  Its `**Sprint Backlog:**` links its GitHub milestone.
  The final sprint refines only its own backlog, because there are no next two sprints to refine for.
  It sits outside every `MLS-nn` run, which the planning rule allows.
  Its review is the Week 10 customer meeting and handoff, held by `2026-12-06` on the deployed `REL-10`.
  The sprint closes after the handoff on `REL-10`.
  At the close, keep completed issues in the closed `SPRINT-10` milestone and remove the milestone from every open issue.
  Clear `Responsible` and `Accountable`, remove assignees, and link each open issue in `handoff.md`.
- **The reviews and the handoff.**
  There are two Sprint Reviews, one per sprint: the Week 9 customer meeting reviews Sprint 9, and the Week 10 customer meeting reviews Sprint 10 and hands the product over.
  Both reviews are in person.
  The Sprint 10 handoff requires the customer to attend.
  The Week 9 review's script is written before the meeting and asks what the customer expects to receive as the handoff, alongside the questions the Sprint 9 increment needs; the review shows the increment, the customer runs the three `UAT-nn` on the VM deployment, and the review records the customer's verdict on the Sprint 9 stories as `DEC-nnn` entries and each UAT run as its own `DEC-nnn`.
  The Week 9 report's `## Handoff preparation` is written after the review: it records the customer's expectations, what is ready, and what is missing, and it reports the UAT results.
  The Week 10 review shows the deployed `REL-10` and walks through the handoff package.
  Record one `DEC-nnn` per UAT run and a separate `DEC-nnn` for the customer's handoff acceptance.
  The Week 10 review and the handoff are one meeting with one script written before it and one meeting report written after it, `reports/week-10/meeting-report.md`; there is no second meeting and no `meeting-report-2.md`.
  The root `handoff.md` gives each handoff item a row, a status, and an evidence link or location.
  Public rows link to public evidence and rows with private values point to the Week 10 Moodle wrapper's `## For customer`.
  Link the Week 9 preparation and cite the Sprint 10 meeting report for the UAT results and the customer's acceptance.
  The Week 10 report's `## Handoff results` links the handoff file and states the customer's verdict.
  The handoff rows cover the MVP and `REL-10` tag, the repository, deployment instructions, handoff UAT results, deployed-data handling, product documentation, dashboards and access, credentials, known issues, open issues, private-data retention and deletion, and access to private usability data.
  Include additional handoff items agreed with the customer during Sprint 9.
  The deployment instructions row links `docs/deployment.md`.
  The deployed-data row describes any export, retention, access, and deletion.
  A written exchange can document decisions but cannot substitute for the Sprint 10 handoff meeting.
- **The user acceptance tests.**
  The team defines `UAT-01` to `UAT-03` in `docs/user-acceptance-tests.md` before the Sprint 9 review; each covers one end-to-end user journey, and its section states the journey on the first line, then `**Status:**`, then the start state, the steps, the expected result, and a runs table.
  The runs table has one row per run: the sprint, the date, the actual runner, the build, the result, the evidence, and the `DEC-nnn`.
  The evidence is the sanitized meeting report's anchor.
  Cite a run by its `DEC-nnn`, its test's section, and its sprint.
  The team designs three initial journeys for Sprint 9.
  Replace a journey only if the customer and team agree to drop the original UAT.
  Keep its identifier, drop reason, and history, and assign the replacement the next unused `UAT-nn`.
  A replacement agreed after the Sprint 9 run has its own run history and is first checked at the handoff.
  Keep three active journeys for the handoff.
  The customer runs the three tests on the Sprint 9 build deployed to the university VM.
  Record one `DEC-nnn` for each run.
  Check three active UATs on the deployed `REL-10` at the handoff.
  If the customer cannot access the app, the team runs the tests live during the meeting for the customer to observe and judge.
  Record the actual runner as `Customer` or `Team`.
  Record `Fail` and `Not run`, with the reason, in `handoff.md` and the Week 10 report's `## Deviations`.
  The customer accepts the handoff with the recorded results.
  Correct failed Sprint 9 journeys where feasible before tagging `REL-10`.
  The two review sessions are recorded in `docs/user-acceptance-tests.md`.
  The Week 9 and Week 10 reports link their results.
  The UATs replace core-task verification at the final two reviews.
  The Weeks 5–8 production deploys keep the core-task rule.
  The `UT-01` results are not re-presented in the final two weeks; the reports link the Week 8 report only where the evidence needs it.
  The UATs are a new requirements file and a new identifier family; they are not a `QRT-nn`, and the UAT record is `docs/user-acceptance-tests.md`.
- **The releases, the MVP, and the code freeze.**
  `REL-09` is the Week 9 release, cut at the Sprint 9 close on the final Sprint 9 product commit, after the UAT run and the review's rework.
  `REL-10` is the final product release and the MVP.
  Cut it on the final product commit before the Sprint 10 handoff.
  The Week 10 report records the tag and its commit.
  The release bodies are the usual upgrade notes; the `REL-10` body names the release and says whether the upgrade needs anything beyond deploying.
  The plan's `#### REL-09` and `#### REL-10` blocks carry `**Released:**`, `**Checked QRs:**`, and `**Checked UATs:**`; those two blocks are the only ones that carry the UAT field, and a sprint with no checked QR says `None` in `**Checked QRs:**`.
  The `**Checked UATs:**` field links the tests actually checked and identifies the sprint.
  If there is no run, record `None` and link the meeting evidence that explains the shortfall.
  Product code freezes at `REL-10`; docs, the reports, the reflection, the changelog, and the release blocks may merge between `REL-10` and `2026-12-06` 23:59; no public change of any kind is made after `2026-12-06` 23:59.
  The main repository is public during the course; after the course is fully graded, the team may make it private only with the instructors' approval; the private usability-data repository and the recordings are private, and the team deletes them after the course is fully graded; that mandatory deletion and the approved privatisation are the only later changes.
  The changelog's released sections, the `REL-nn` blocks, and the reports are merged after their tags, as the release rule already orders them.
- **The verification.**
  The Sprint 9 UAT results describe the reviewed build.
  The handoff UAT results describe the deployed `REL-10`.
  Deploy the Sprint 9 build before its review and deploy `REL-10` before the handoff.
  The team records what passed and what did not.
  The Week 10 report identifies the `REL-10` tag and commit used at the handoff.
  The Week 9 report links its run; the Week 10 report links its re-run; `docs/user-acceptance-tests.md` is the record; the handoff links the deployment instructions and the UAT results.
  The Weeks 5–8 production deploys keep the core-task verification, per [Environments And Deployment](../../requirements/repository-requirements.md#environments-and-deployment).
  A failed customer UAT alone does not trigger a rollback.
  Record unresolved UAT failures as known issues.
  Keep failures in the UAT history.
  Record `Fail` and `Not run`, with the reason, in `handoff.md` and the Week 10 report's `## Deviations`.
  The customer accepts the handoff with the recorded results.
- **The reports and the final report.**
  `reports/week-09/README.md` is the Week 9 report and the index of Submission 9; it carries the summary, the UAT results, `## Quality plan results`, `## Threshold review`, and `## Handoff preparation`, the coverage table, the contribution table, the repository evidence, the deviations, and the privacy line; it links the Sprint 9 review, the UAT record, `REL-09`, the retrospective, and the AI usage report; it names no deck.
  `reports/week-10/README.md` is the Week 10 report, the final project report, and the index of Submission 10.
  It carries `## Summary`, `## Handoff results`, `## Threshold of success results`, `## Coverage`, `## Contribution`, `## Deviations`, and `## Privacy`.
  `## Handoff results` links the root `handoff.md`.
  The report links the review, UAT record, `REL-10`, retrospective, AI usage report, and reflection, and records the `REL-10` tag and commit.
  There is no index-role exception: the Week 10 report is both the index and the final report, and it still links every supporting artifact and carries the coverage table.
  `## Quality plan results` carries one table with one row per `QR-nn QRT-nn` pair, grouped by `Passes`, `Fails`, `Not verified`, and `Dropped`, in identifier order within each group, with the result, the last check, and a link to the testing plan.
  `## Threshold of success results` carries one table with one linked row per `TOS-nn`, grouped by `Achieved`, `Missed`, `Open`, and `Dropped` and ordered by identifier within each status.
  Each row gives the status and the final observed result where available.
  Give one status sentence after the table for each goal still `Open`.
  At the Sprint 9 review, discuss the quality plan results and evaluate every `Open` `TOS-nn` against its existing measure.
  `## Threshold review` carries a table with one row per goal that was open when the Sprint 9 review began.
  Each row links the goal and gives the observed result or an evidence link and the status after the review.
  Record `Achieved` when the stated measure is met and `Missed` when its stated deadline has passed without achievement.
  At the Sprint 10 handoff, review only the goals still `Open` and apply the same rule.
  A goal can stay `Open` while its stated deadline is still in the future.
  Week 9 summarizes the quality requirement test statuses from the testing plan.
  The final report cites the results for the deployed `REL-10` and the customer's acceptance as MVP evidence.
  The final report does not re-present the `UT-01` results; it links the Week 8 report only where the evidence needs it.
  The Week 9 report and the Week 10 report are separate records; no file in `reports/week-09/` is rewritten after Submission 9.
  There is no `reports/week-10/final-report.md`.
- **The project reflection and the individual reflection.**
  `reports/week-10/reflection.md` is the project reflection: `## Lessons learned`, one `## Lesson N` section per lesson with `**Problem:**` and `**Lesson:**`, and `## What would we do differently`, saying what the team would do differently if it started the project anew.
  It carries no team dynamics section, is public and sanitized, names no private address and no credential, and rates no individual; the weekly reports' contribution tables are the evidence of who did what.
  It draws on the `SPRINT-04` to `SPRINT-10` retrospectives, the risk register, the Week 8 `UT-01` report when the lesson needs it, and the configuration plan; it is not the final retrospective's carry-forward, and it does not re-list the retrospective's actions.
  It does not cite the focus metric and links neither `docs/analytics.md` nor `docs/observability.md`.
  Submission 11 is the individual reflection and peer evaluation, private and Moodle-only, due `2026-12-06` 23:59, and available only to a member of a group that presented at the final exam; it is independent of Submission 10; the Week 10 report links the project reflection and does not link Submission 11.
  Submission 11's content is in the syllabus's Week 11 section, and this plan adds no page for it.
- **The exam page and the deck.**
  `exam/README.md` is added blank by this plan; the maintainer designs its deck content and peer review rules later.
  The deck is a separate Moodle submission, due `2026-12-03` 23:59; it is never committed, is not shown at the Sprint 10 review, and neither Assignment 9 nor Assignment 10 mentions it or the peer review.
  Submission 9 and Submission 10 carry no deck and no draft.
  The final exam is a separate event in the syllabus's Week 11 section and presents the deck.
- **The final state.**
  The final state is Week 10's: no open pull request, the `SPRINT-09` and `SPRINT-10` milestones closed, the completed `SPRINT-10` issues in its closed milestone, every open issue outside a milestone and listed in `handoff.md`, the default branch green, and the docs, the setup, the deployment runbook, the architecture, the requirements, the quality requirements and their tests, the results, the configuration plan, the features, the glossary, the risks, the team's `AGENTS.md`, `docs/user-acceptance-tests.md`, and the user-facing README current.
  The UAT results at handoff identify the deployed `REL-10`.
  The private usability-data repository and the recordings folder remain private and accessible to the team and the instructors, and the team deletes them after the course is fully graded.
  The team shuts down the university VM after the handoff.
  Grading uses the submitted evidence and the repository snapshot.
  The final snapshot is taken from the final `main` commit; the Week 10 report records the `REL-10` tag and its commit, and the Moodle wrapper carries the commit-hash permalink and snapshot of the final `main` commit.
- **The assessment and the numbering.**
  The course has ten group submissions, Submission 1 to Submission 10, each worth 7 points, plus 10 points attendance, 7 points individual reflection and peer evaluation, and 20 points final exam, for 107 points.
  The pass threshold is 75 points of the 107.
  The late penalty is 10% of the submission's points per calendar day, more than 7 days late receives zero, and a 7-point submission loses 0.7 points per day.
  Submission 10 has a hard deadline of Sunday 6 December 2026 at 23:59.
  Moodle accepts no late submission for Assignment 10.
  The individual reflection and peer evaluation is Submission 11, due `2026-12-06` 23:59, available only to a member of a group that presented at the final exam, and private and Moodle-only.
  Submission 11 is independent of Submission 10.
  The syllabus's assessment catalog carries the ten group submissions in the assignment table, and the final exam, Submission 11, and attendance in a separate non-assignment section.
  The weight shift from the old percentages is deliberate: the group submissions carry 70 of the 107 points, attendance 10, the individual reflection 7, and the final exam 20.
- **The assignments and the README.**
  `assignments/assignment-9.md` is the Week 9 assignment and Submission 9; `assignments/assignment-10.md` is the Week 10 assignment and Submission 10.
  Both follow `assignment-8.md`'s shape: the header, `## Objectives`, the numbered parts, `## What Good Looks Like`, the repository report with its coverage table, the Moodle wrapper, the submission procedure, and the checklist.
  Assignment 10 owns the user-facing root `README.md` rewrite: the README describes the product and links the setup and deployment instructions, and the course metadata moves to `## Course information` at the end.
  This plan covers both; the parts are in [The Parts Assignment 9 And Assignment 10 Carry](#the-parts-assignment-9-and-assignment-10-carry).
- **The legacy corrections.**
  The plan edits the `assignment-8.md` statements and adds a forward note to `a8-plan.md` that the two-sprint model and the no-draft deck make counterfactual: that Week 9 is the final repository state, that the seven existing sprint milestones are the whole set, and that the pitch deck is submitted with Submission 9.
  The a9 change updates the `A7-DEC-013`, `A8-DEC-015`, `A7-DEC-021`, and `A5-DEC-017` statuses for the full reversals.
  The a9 change also corrects the syllabus's Week 3 "seven `SPRINT-nn` GitHub milestones" line, `README.md`'s "One submission per team" and "grading weights", `course/rules.md`'s submission wording, the `TODO.md` items, and `weekly-report-requirements.md`'s rule 22 and Week 8 example.
  It keeps `SPRINT-09` due `2026-11-29`, adds `SPRINT-10` and `REL-10` to the planning example and the UATs to their own example, and leaves the historical `assignment-4.md` as it was.
  The other past-week statements are [TASK-182](<../../backlog/tasks/task-182 - Correct-the-legacy-Week-9-final-state-and-seven-sprint-statements.md>), created with this plan and left open, including `configuration-management-requirements.md`, `guides/configuration-management.md`, and `a7-plan.md`; the a9 change corrects the Week 9 final reflection traceability row; the a9 implementation does not rewrite a past week's record beyond the reversed entries' statuses, the `assignment-8.md` correction, the `a8-plan.md` forward note, and the four files it contradicts directly.
- **The guide.**
  `guides/final-sprints.md` shows the method: plan Sprint 9 and refine the Sprint 10 backlog, create `SPRINT-10`, schedule the Sprint 9 review by 29 November, write the Sprint 9 script, deploy the candidate to the VM, hold the review and the UAT run, write the handoff preparation, quality plan results, and threshold review, cut `REL-09`, close Sprint 9, write the Week 9 report, then plan Sprint 10, write the Sprint 10 script, cut and deploy `REL-10`, conduct the handoff and UAT re-run, shut down the VM, close Sprint 10, write the Week 10 report and the reflection, rewrite the README, and submit.
  It is a guide, not a rule: the requirements say what the artifacts must contain, and the guide shows how to produce them.
  It recommends leaving time after the handoff for the final report and submission.
- **The syllabus and the routers.**
  The syllabus follows the plan: Week 9 carries the Sprint 9 plan, the UATs, the handoff preparation, the Sprint 9 review by 29 November, `REL-09`, the retrospective, the AI usage report, and Submission 9; Week 10 carries the Sprint 10 plan, the handoff, the UAT re-run, the final report, the reflection, `REL-10` as the MVP, the final state, the retrospective, the AI usage report, and Submission 10; the assessment catalog carries the ten group submissions in the assignment table and the final exam, Submission 11, and attendance in a separate non-assignment section; the 107 points, the 75-point pass, and the late penalty in points.
  `README.md` gains the Assignment 9 and Assignment 10 rows, the final-sprints guide row, the UAT requirements row, and the exam page row; `SKILL.md` routes the final report, the final state, the reflection, the handoff, the final release, the UATs, the exam page, and the final exam and Submission 11; `course/rules.md` links the syllabus for deadlines and links the handoff, the freeze, the final report, the reflection, the UATs, the exam page, and the guide, and restates no weight; `AGENTS.md` gains the new requirements file, the new guide, the `a9.md` row, the docs map W9 row, the `reports/week-10/` convention, the exam page row, and the new terms; no `assignments/final.md` is added; `TODO.md`'s A9 items are annotated and its UAT item is closed.
- **The private data and the wrapper.**
  The private usability-data repository and the recordings folder are private and accessible to the team and the instructors; the team deletes them after the course is fully graded, and the handoff and the Week 10 report record the retention and the mandatory deletion.
  The Week 9 and Week 10 Moodle wrappers carry `## For customer` with the production address, the dashboards, the backends, and the credentials; the Week 10 wrapper also carries the private handoff values: the private repository and recordings links and access, the retention and the mandatory deletion, and any private open item.
  The instructors confirm when grading is complete.
  Delete the private usability data after that confirmation.
  `## For customer` is the one home for those values, and its rule is the weekly-report wrapper rule; the customer-meetings `## The Handoff` section links it rather than owning a second copy.
  The public handoff rows say the values are in that section rather than carrying or linking them; no raw participant data, recording, identity, address, or credential appears in the public repository, the final report, or the public handoff report.
  The team shuts down the university VM after the handoff.
  Grading uses the submitted evidence and the repository snapshot.
- **The MVP.**
  `REL-10` is the MVP.
  The final report and `handoff.md` name the release and cite its recorded UAT results and the customer's acceptance.
  The final report does not cite the focus metric, and it links neither `docs/analytics.md` nor `docs/observability.md`.
  The MUP candidate and its reporting requirements apply through Week 8.
- **The `UAT-nn` family and the new requirements file.**
  The plan adds `requirements/user-acceptance-tests-requirements.md`, the `UAT-nn` family, and `docs/user-acceptance-tests.md`.
  The family is two digits, project-wide, headed `## UAT-nn`, and never renumbered; each test carries a status, a dropped form, the journey, start state, steps, expected result, runs, results, evidence, and `DEC-nnn`.
  The record has a `## The Tests` index.
  The doc is a maintained `docs/` artifact; the Week 9 and Week 10 reports link their run.
  The UAT runs replace the core-task check for the two final reviews.
  [Environments And Deployment](../../requirements/repository-requirements.md#environments-and-deployment) owns the production verification and rollback exception.
  The `UT-01` results are not re-presented; the reports link the Week 8 report only where needed.
  `A9-DEC-017` records the family, the two review sessions, the decision per run, and the replacement rule.
  `A9-DEC-018` records the `**Checked UATs:**` field and reversal of `A7-DEC-021`.

## Changes To The Requirements

These are the changes to the requirement files: the new user acceptance test requirements, the `**Since: W9**` and `**Since: W10**` blocks in the files that already own the two sprints, the meetings, the reports, the releases, the repository, the identifiers, the issues, and the visibility.
One new requirements file is added; no existing requirements file gains an MVP definition, and no existing requirements file is renamed.

### `user-acceptance-tests-requirements.md`

- A new file, `**Since: W9**`, owns the content of `docs/user-acceptance-tests.md` and links to the identifier rules for the `UAT-nn` family: where the record lives, the initial tests and their replacements, the fields, the two sessions, the status and the dropped form, the runner and handoff rules, the evidence, and the full example.
- The record is a maintained `docs/` artifact, public, with one `## UAT-nn` section per test and a `## The Tests` index.
  The index has the columns `Test`, `Journey`, `Status`, `SPRINT-09`, and `SPRINT-10`.
  An unrun cell names the reason, such as `Not yet defined` for a replacement created after Sprint 9.
  Each section opens with the journey on the first line, then `**Status:**`, then `**Start state:**`, `**Steps:**`, `**Expected result:**`, and a runs table.
  The runs table has the columns `Sprint`, `Date`, `Runner`, `Build`, `Result`, `Evidence`, and `DEC-nnn`.
  The section carries `**Status:**` `Active` or `Dropped`, and a dropped test keeps its section and adds `**Dropped:**` with the date and reason.
  Keep a dropped test, its identifier, its past runs, and the date and reason it was dropped.
  Replace a journey only if the customer and team agree to drop the original UAT.
  Keep its identifier, drop reason, and history, and assign the replacement the next unused `UAT-nn`.
- The evidence is the sanitized meeting report's anchor, and `Build` is the tag or commit presented at the review.
  Each outcome cites its own `DEC-nnn`.
  Cite a run by its `DEC-nnn` together with the test's section and sprint.
- Define `UAT-01` to `UAT-03` before the Sprint 9 review and record each customer-run result.
  Check three active UATs on the deployed `REL-10` at the handoff.
  Record `Fail` and `Not run`, with the reason, in `handoff.md` and the Week 10 report's `## Deviations`.
  The customer accepts the handoff with the recorded results.
  If the customer cannot access the app, the team runs the tests live during the meeting for the customer to observe and judge.
  Record the actual runner as `Customer` or `Team`.
  A failed run is `Fail`; a test that could not be checked is `Not run`, with the reason and no runner.
  Recommend keeping each test under ten minutes.
  Use synthetic seed data and test accounts with private access details.
- Each run carries one `DEC-nnn`.
  The handoff acceptance has its own `DEC-nnn`.
- The two reviews use UATs in place of core-task verification.
- The Week 9 report links the Sprint 9 run, the Week 10 report links the Sprint 10 re-run, and the final report cites the results; the `UT-01` results are not re-presented.
- The full example uses the meeting-booking app and shows the three initial journeys, a replacement, the two review sessions, the results, the evidence, and the `DEC` entries.
- [Identifier Rules](../../requirements/general-requirements.md#identifier-rules) gains `UAT-nn` in the family list and in the block that introduces each week's families, two digits, project-wide, the heading, the dropped form, and the never-renumber rule.
- `docs/user-acceptance-tests.md` is added to the `docs/` destination map for Week 9 in `AGENTS.md`, and the routers link the new requirements file; the record is the student artifact the requirements own.

### `planning-requirements.md`

- [Sprints](../../requirements/planning-requirements.md#sprints) gains `**Since: W9**` and `**Since: W10**` blocks.
  Week 9 keeps the seven sprints `SPRINT-03` to `SPRINT-09`; Week 10 is the eighth, `SPRINT-10`, whose GitHub milestone and `### SPRINT-10` section with a provisional goal are created in Week 9 and which is planned after the Sprint 9 review, so the plan carries eight `### SPRINT-nn` sections after Week 9.
  `SPRINT-09` is due `2026-11-29`; `SPRINT-10` starts `2026-11-30` and is due `2026-12-06`; `SPRINT-10` is the final sprint, its goal is a result, its `**Sprint Backlog:**` links its GitHub milestone, and its `**Planned Velocity:**` and `**Actual Velocity:**` are both `0` story points for the final sprint.
  The final sprint refines only its own backlog, because there are no next two sprints; Week 9's planning refines the `SPRINT-10` backlog only; the issues completed in its close stay in the closed milestone, and every open issue, including the ones scheduled and not completed, stays open with no milestone, clears its `Responsible`, `Accountable`, and assignees, and is listed in `handoff.md`.
  Limit carryover into `SPRINT-10` to work needed for the UATs to pass and selected documentation work.
  Other open issues return to or stay in the unscheduled product backlog, outside sprint and plan milestones.
  At the Sprint 10 close, there is no later sprint.
- [Sprints](../../requirements/planning-requirements.md#sprints) changes the `**Due:**` field definition from "the hard deadline of the sprint's week" to "the sprint's hard deadline", because Week 9's class dates end on 26 November while `SPRINT-09` and Submission 9 are due on 29 November.
  Each sprint's GitHub milestone uses the sprint's hard deadline as well.
  The rule that each sprint has a goal, a backlog, and a planned and actual velocity is unchanged; the final sprint's `**Actual Velocity:**` replaces the "to which sprint" sentence with the sentence that there is no later sprint and names the open items that went to the handoff.
- [Milestones](../../requirements/planning-requirements.md#milestones) gains `**Since: W9**` and `**Since: W10**` sentences: the seven milestones for Weeks 3 to 9 are created when the plan is written, and `SPRINT-10`'s GitHub milestone is created in Week 9; `SPRINT-10` sits outside every `MLS-nn` run, which the existing rule allows, so no `MLS-10` is written; the rule that a sprint belongs to at most one run is unchanged.
- [Releases](../../requirements/planning-requirements.md#releases) gains `**Since: W9**` and `**Since: W10**` blocks: every sprint from Week 3 to Week 10 ends in one release, `REL-10` is the final release and the MVP, `REL-09` is the Week 9 release, `REL-10` is a usual product release cut before the handoff, the Week 10 report records the tag and tested commit, the tag is protected, and no product code changes after `REL-10`.
  The `REL-09` and `REL-10` blocks carry `**Checked UATs:**` beside `**Checked QRs:**`, the field's scope is those two blocks only, and the UATs replace the core-task verification on those two deploys.
  The `2026-12-06` code freeze is the final public gate: docs, reports, the reflection, the changelog, and the release blocks may merge until then, but no public change of any kind is made after 23:59; the main repository is public during the course; after the course is fully graded, the team may make it private only with the instructors' approval, and the mandatory private-data deletion and the approved privatisation after the course is graded is the only later change.
- The [Full Example](../../requirements/planning-requirements.md#full-example) gains `SPRINT-09`, `SPRINT-10`, `REL-09`, and `REL-10`, and the intro says "after Week 10"; the example carries only the sprint and release fields, not the weekly reports, the meetings, the UAT record, the reflection, or the review dates.
  `SPRINT-09` is due `2026-11-29` with its goal, `**Sprint Backlog:**`, `**Planned Velocity:**`, and `**Actual Velocity:**`; `SPRINT-10` starts `2026-11-30` and is due `2026-12-06` with the same fields, the final sprint sentence, and its open items; `REL-09` and `REL-10` carry `**Released:**`, `**Checked QRs:**`, and `**Checked UATs:**`.
  The existing `SPRINT-09` in the example is revised rather than duplicated, and its goal no longer names the final repository state, the deck, or the reflection; `SPRINT-10` is added with a provisional goal.
- [The Threshold Of Success](../../requirements/planning-requirements.md#the-threshold-of-success) gains a `**Since: W9**` rule for Sprint 9 review outcomes and a `**Since: W10**` rule for the handoff.
  At the Sprint 9 review, evaluate every `Open` `TOS-nn` against its existing measure.
  Record `Achieved` when the stated measure is met and `Missed` when its stated deadline has passed without achievement.
  At the Sprint 10 handoff, review only the goals still `Open` and apply the same rule.
  A goal can stay `Open` while its stated deadline is still in the future.

### `minimum-usable-product-requirements.md`

- Limit [Where The Candidate Lives](../../requirements/minimum-usable-product-requirements.md#where-the-candidate-lives) and the ongoing MUP candidate reporting to Weeks 2–8.
  The weekly report rules name the releases used for Weeks 9 and 10.

### `sprint-ceremonies-requirements.md`

- [Sprint Review](../../requirements/sprint-ceremonies-requirements.md#sprint-review) gains `**Since: W9**` and `**Since: W10**` rules: each sprint's weekly customer meeting is its review, so Week 9 and Week 10 have one review each.
  The Sprint 9 review is held in person by the sprint's due date of `2026-11-29`, including the days after the Week 9 class week; it shows the Sprint 9 increment, the customer runs the three `UAT-nn` on the product deployed to the university VM, and its script asks what the customer expects to receive as the handoff.
  The Sprint 9 review discusses the recorded quality plan results.
  The Sprint 10 review and handoff are one in-person meeting planned for 60 minutes.
  The customer reviews the deployed `REL-10` and the handoff package.
  Check three active UATs on the deployed `REL-10` at the handoff.
  Record `Fail` and `Not run`, with the reason, in `handoff.md` and the Week 10 report's `## Deviations`.
  The customer accepts the handoff with the recorded results.
  If the customer cannot access the app, the team runs the tests live during the meeting for the customer to observe and judge.
  Record the actual runner as `Customer` or `Team`.
  The sprint closes after the release and handoff.
- [Sprint Planning](../../requirements/sprint-ceremonies-requirements.md#sprint-planning) gains a `**Since: W10**` rule for planning after the Sprint 9 review.
  Sprint 10 implements no new user stories.
  Schedule tasks for UAT fixes, selected documentation work, and final sprint deliverables.
  Planned and actual velocity are `0` story points.
- [Product Backlog Refinement](../../requirements/sprint-ceremonies-requirements.md#product-backlog-refinement) gains `**Since: W9**` and `**Since: W10**` sentences: Week 9's planning refines the `SPRINT-10` backlog only, and the final sprint refines only its own backlog, because there are no next two sprints to refine for.
- [Retrospective](../../requirements/sprint-ceremonies-requirements.md#retrospective) gains `**Since: W9**` and `**Since: W10**` sentences: the Week 9 retrospective is written at the Sprint 9 close; the Week 10 retrospective is written at the Sprint 10 close, after the handoff and `REL-10`; it carries the Sprint 9 actions, and it says there is no later sprint, so a `Not done` action stays in `## Carried Actions` with `Outcome: Not done`, and the Sprint 10 retrospective's `## Actions` all carry `Carried: No`.
  The final-sprint exception overrides retrospective rule 4: because there is no next retrospective, a `Not done` action is not re-listed in `## Actions`.
  Nothing is carried into the project reflection.

### `customer-meetings-requirements.md`

- [Every Meeting](../../requirements/customer-meetings-requirements.md#every-meeting) gains `**Since: W9**` and `**Since: W10**` rules: Week 9 holds the Sprint 9 review in person by the sprint's due date of `2026-11-29`, including the days after the Week 9 class week; Week 10 holds the Sprint 10 review and the handoff, one in-person meeting by `2026-12-06`.
  For the final two sprints, the week's customer meeting is the Sprint Review, and it may be held after the class week and by the sprint's due date; that is the `Since: W9` sentence that keeps the every-week rule satisfied.
  The two meetings have one script written before each and one report written after each; the Sprint 10 meeting's script and report are `reports/week-10/meeting-script.md` and `reports/week-10/meeting-report.md`; there is no second meeting and no `meeting-report-2.md`.
  The Sprint 10 script plans a 60-minute meeting under an exception to the general planning timebox.
  The Sprint 10 handoff requires the customer at the live meeting.
  The written fallback in rule 9 does not satisfy the Sprint 10 handoff.
- [Showing Working Software](../../requirements/customer-meetings-requirements.md#showing-working-software) gains `**Since: W9**` and `**Since: W10**` rules: the Sprint 9 review shows the Sprint 9 increment on the product deployed to the university VM, and the customer runs the three `UAT-nn`; the team records each pass or fail; each run has its own `DEC-nnn`; the review shows no deck and no deck draft, and it shows no final-report draft in Submission 9; it asks what the customer expects to receive as the handoff.
  The Sprint 10 review shows the deployed `REL-10` and the handoff package.
  The customer's acceptance is recorded as a separate `DEC-nnn`.
  Check three active UATs on the deployed `REL-10` at the handoff.
  Record `Fail` and `Not run`, with the reason, in `handoff.md` and the Week 10 report's `## Deviations`.
  The customer accepts the handoff with the recorded results.
  If the customer cannot access the app, the team runs the tests live during the meeting for the customer to observe and judge.
  Record the actual runner as `Customer` or `Team`.
- A new `## The Handoff` section, `**Since: W10**`, owns the root `handoff.md`, its rows, its links to the Week 9 preparation and the Sprint 10 meeting report, and the customer's acceptance.
  Use the handoff rows in [Design Decisions](#design-decisions) and reference the Week 10 Moodle wrapper's `## For customer` for private values.
  The deployment instructions row links `docs/deployment.md`.
  The deployed-data row describes any export, retention, access, and deletion.
- [Meeting Report](../../requirements/customer-meetings-requirements.md#meeting-report) adds `## User acceptance tests` to the ordered sections table for the W9 and W10 reviews, immediately before `## Decisions`.
  The Sprint 10 meeting report records acceptance as a separate `DEC-nnn` and identifies the deployed `REL-10`.
  Both meeting reports carry a `## User acceptance tests` section with the results and actual runners.
  The UAT record links that section.
- [Full Examples](../../requirements/customer-meetings-requirements.md#full-examples) gains the Week 9 Sprint Review script and report, with the UAT run, and the Week 10 Sprint Review and handoff script and report, with the UAT re-run; the examples do not carry the Week 10 report's `## Handoff results` or the reflection, which belong to the weekly report and the reflection file.

### `weekly-report-requirements.md`

- A `**Since: W9**` rule after rule 23: the Week 9 report is `reports/week-09/README.md`; its summary says what the Sprint 9 increment is, what the three `UAT-nn` found, what the handoff preparation found, and what remains for Sprint 10; it links the Sprint 9 review, the UAT record, `REL-09`, the retrospective, and the AI usage report; it names no deck; it carries the UAT results, `## Quality plan results`, `## Threshold review`, and `## Handoff preparation` with the customer's expectations, what is ready, and what is missing, written after the review; it carries no final-report draft in Submission 9.
- Amend rule 11 for Weeks 9 and 10 to record `REL-09` and `REL-10`, respectively.
  In Weeks 9 and 10, rule 12 is met by linking the meeting report for individual story verdicts and summarizing work that moved or remains open.
  Rule 15 is satisfied by the linked quality plan results in Week 9 and stops applying in Week 10.
  Rules 16 and 17 give way to the Week 9 and Week 10 report rules.
- A `**Since: W10**` rule makes `reports/week-10/README.md` the Week 10 report and final project report.
  It carries `## Summary`, `## Handoff results`, `## Threshold of success results`, `## Coverage`, `## Contribution`, `## Deviations`, and `## Privacy`.
  The Week 10 summary names the MVP, the accepted handoff, the three UAT outcomes, the work that remains open, and the frozen product state.
  It links `handoff.md` from `## Handoff results`, and it links the Sprint 10 review and handoff, the UAT record, `REL-10`, the retrospective, the AI usage report, and the reflection; it names no deck; it does not re-present the `UT-01` results.
  `## Handoff results` is the only index entry for `handoff.md`, per rule 6.
- A `**Since: W9**` rule defines the quality plan results table.
  `## Quality plan results` carries one table with one row per `QR-nn QRT-nn` pair, grouped by `Passes`, `Fails`, `Not verified`, and `Dropped`, in identifier order within each group, with the result, the last check, and a link to the testing plan.
- A `**Since: W9**` rule defines `## Threshold review` for Sprint 9.
  `## Threshold review` carries a table with one row per goal that was open when the Sprint 9 review began.
  Each row links the goal and gives the observed result or an evidence link and the status after the review.
  Keep the threshold proposal table for Week 6.
- A `**Since: W10**` rule defines the final threshold outcome table.
  `## Threshold of success results` carries one table with one linked row per `TOS-nn`, grouped by `Achieved`, `Missed`, `Open`, and `Dropped` and ordered by identifier within each status.
  Each row gives the status and the final observed result where available.
  Give one status sentence after the table for each goal still `Open`.
  The Week 10 outcomes reflect the final review of the remaining open goals.
  The Week 10 table links the maintained threshold record.
  It carries no `## Repository evidence` section; the coverage table carries the evidence links.
  It requires no screenshots.
- A `**Since: W10**` rule: `reports/week-10/reflection.md` carries `## Lessons learned`, one `## Lesson N` section per lesson with `**Problem:**` and `**Lesson:**`, and `## What would we do differently`, saying what the team would do differently if it started the project anew; it carries no team dynamics section, is public and sanitized, rates no individual, cites no focus metric, links neither analytics page, and the Week 10 report links it.
- A `**Since: W9**` and `**Since: W10**` wrapper rule: Submission 9 carries the wrapper PDF, the private-only items, any permitted recording or private transcript, the privacy line, and the `## For customer` credentials; Submission 10 carries the wrapper PDF, any permitted recording or private transcript, the Week 10 report and reflection links, the privacy line, and `## For customer` with the credentials and the private handoff values.
  `## For customer` is the one home for the private values, this rule owns it, the customer-meetings `## The Handoff` section links it, and both final-week wrappers restate the production address, the dashboards, the backends, and the credentials.
- The Week 09 and Week 10 full examples are added: the Week 9 report with the UAT results, `## Quality plan results`, `## Threshold review`, and `## Handoff preparation`; the Week 10 report with the handoff results, the final threshold table, the coverage, the contribution, the deviations, and the privacy; and the project reflection.
- The Week 8 example's "the week the deck is due" and "The Week 9 deck cites …" are corrected to the separate deck submission, because the new W9 and W10 rules contradict them.
- Rule 22's "the reflection week" is stated as the Week 10 report, and "the final reflection cites the `UT-nn` results" is corrected to link the Week 8 report where the lesson needs it, because the new W10 rule contradicts it.

### `releases-requirements.md`

- [Cutting A Release](../../requirements/releases-requirements.md#cutting-a-release) gains `**Since: W9**` and `**Since: W10**` rules: `REL-09` is the Week 9 release and `REL-10` is the final release and the MVP; `REL-09` is cut at the Sprint 9 close; `REL-10` is a usual product release, cut before the handoff and before `2026-12-06` 23:59.
  Deploy `REL-10` before the handoff and record the tag and tested commit in the Week 10 report.
  For `REL-10`, cut and deploy the product release while the milestone is still open, then finalize the release record with the handoff evidence.
  The tags are protected; the release bodies are the usual upgrade notes, and the `REL-10` body names the release and says whether the upgrade needs anything beyond deploying.
  The `REL-09` and `REL-10` bodies do not carry the handoff or the customer's evidence; the `REL-nn` blocks carry `**Checked UATs:**`.
- The release rule 3 gains a `**Since: W10**` exception: at the Sprint 10 close, the milestone is closed after the issues still open leave it and stay open with no milestone, per [Sprints](../../requirements/planning-requirements.md#sprints); there is no later sprint's milestone.
- The full example gains the `REL-09` and `REL-10` bodies as usual upgrade notes with the `[Full changelog]` line; the existing release body rule is the shape.

### `repository-requirements.md`

- A new `**Since: W10**` paragraph in [Permalinks And Snapshots](../../requirements/repository-requirements.md#permalinks-and-snapshots): the final submission's Week 10 report records the `REL-10` tag and its commit; the Moodle wrapper carries the commit-hash permalink and snapshot of the final `main` commit; the reflection, the Week 10 report, the changelog's released sections, and the `REL-09` and `REL-10` blocks are merged after their tags, while the tags stay on their product commits.
- [Environments And Deployment](../../requirements/repository-requirements.md#environments-and-deployment) gains `**Since: W9**` and `**Since: W10**` exceptions to rule 7 for the final two reviews.
  Deploy the Sprint 9 build for its review and deploy the final `REL-10` for the Sprint 10 handoff.
  Record each UAT against the build tested.
  A failed customer UAT alone does not trigger a rollback.
  Record unresolved UAT failures as known issues.
  The team shuts down the university VM after the handoff.
  Grading uses the submitted evidence and the repository snapshot.
  `handoff.md` links `docs/deployment.md`.
  The Weeks 5–8 verification rule still applies to those weeks.
- A new `## The Final Repository State` section, `**Since: W10**`: at the final state, every final pull request is merged, no pull request is open, the `SPRINT-09` and `SPRINT-10` milestones are closed, the issues completed in `SPRINT-10` stay in its closed milestone, and every open issue, including the ones scheduled and not completed, stays open with no milestone and is listed in `handoff.md`; the default branch is green; the docs site, the setup, the deployment runbook, the architecture, the requirements, the quality requirements and their tests, the results, the configuration plan, the features, the glossary, the risks, the team's `AGENTS.md`, `docs/user-acceptance-tests.md`, and the user-facing README describe the final state; the final tag is protected; the private usability-data repository and the recordings folder are private and accessible to the team and the instructors and are deleted after the course is fully graded; the team shuts down the university VM after the handoff; the final snapshot is from the final `main` commit.
- [Root README](../../requirements/repository-requirements.md#root-readme) gains a `**Since: W10**` rule: the root `README.md` is the product's user-facing front door; it states what the product is, links `docs/setup.md` and `docs/deployment.md`; the course metadata — the project name, the team number, a note that the product was built for ITPD, and a link to the Week 10 report — sits in a `## Course information` section at the end.
  Assignment 10 owns the rewrite.
- The [Repository Setup](../../requirements/repository-requirements.md#repository-setup) public repository rule and rule 8 gains a `**Since: W10**` exception: the repository stays public during the course; after the course is fully graded, the team may make it private only with the instructors' approval, and privatisation changes repository access, and the published licence and submitted snapshot still apply.
  This section owns the privatisation rule; the visibility section owns only the private data's retention and deletion.
- No change to branch protection, link checking, CI, or the contribution rules: the final state uses the existing rules.

### `general-requirements.md`

- [Artifact Concepts And Terminology](../../requirements/general-requirements.md#artifact-concepts-and-terminology) gains `**Since: W9**` and `**Since: W10**` paragraphs: the **final report** is `reports/week-10/README.md`, the Week 10 report and the final project's narrative, distinct from the Week 9 report; the **project reflection** is `reports/week-10/reflection.md`; the **individual reflection and peer evaluation** is Submission 11, private and Moodle-only, in the syllabus's Week 11 section; the **weekly report** is `reports/week-09/README.md` for Week 9 and `reports/week-10/README.md` for Week 10; the **handoff preparation** is the Week 9 report's `## Handoff preparation`; the **handoff** is the Sprint 10 review and `handoff.md`, which the Week 10 report's `## Handoff results` links and which points private values at the wrapper's `## For customer`; the **code freeze** is the point after which the public repository and the product do not change, the product code freezes at `REL-10`, and no public change of any kind is made after `2026-12-06` 23:59, with the post-grading deletion and the approved privatisation as the only later changes; the **final repository state** is the frozen product plus the final documentation, with no open pull request, both sprint milestones closed, the tag protected, the completed `SPRINT-10` issues in its milestone, and every open issue outside it and listed; the **final release** is `REL-10`, the MVP, and `REL-09` is the Week 9 release; the **user acceptance test** is one `UAT-nn` end-to-end journey at `docs/user-acceptance-tests.md`, run by the customer at the Sprint 9 review and re-run at the Sprint 10 handoff; the **UAT record** is `docs/user-acceptance-tests.md`.
  The root `handoff.md` is a named exception to the standard student artifact locations and is linked by the Week 10 report.
- [Identifier Rules](../../requirements/general-requirements.md#identifier-rules) gains `UAT-nn` in the family list, two digits, project-wide, with its heading `## UAT-nn`, its dropped form, its status, and the never-renumber rule; the new family is introduced in Week 9.
- [Traceability Into Later Weeks](../../requirements/general-requirements.md#traceability-into-later-weeks) gains `**Since: W9**` and `**Since: W10**` rows: the Week 9 report cites the Sprint 9 review, the UAT record and its run, the handoff preparation, the threshold review, `REL-09`, the retrospective, and the AI usage report; the Week 10 report cites the Sprint 10 review and handoff, the UAT record and its re-run, `REL-10`, the retrospective, the AI usage report, and the reflection; the final report links the Week 9 preparation, the UAT record, and the meeting report; the project reflection cites the retrospectives, the risks, the Week 8 `UT-01` report when the lesson needs it, and the configuration plan; the `UT-01` results are linked, not re-presented.
  The old "Week 9 final reflection" row is replaced by this change, not by [TASK-182](<../../backlog/tasks/task-182 - Correct-the-legacy-Week-9-final-state-and-seven-sprint-statements.md>), so the table carries no false Week 9 reflection row.
- The `docs/` destination map in `AGENTS.md` gains `docs/user-acceptance-tests.md` in Week 9, and the `README.md`, `SKILL.md`, `course/rules.md`, and `AGENTS.md` routers link the new requirements file and the blank exam page; the record is the student artifact the requirements own.
- No other identifier family is added: the final report is cited by its path, the reflection by its path, the handoff by `handoff.md` and the meeting report's path, the individual reflection by "Submission 11", the final state by the tag and the commit, and the UATs by `UAT-nn`.

### `issue-tracking-requirements.md`

- [Scheduling An Issue](../../requirements/issue-tracking-requirements.md#scheduling-an-issue) gains `**Since: W9**` and `**Since: W10**` rules for unfinished work.
  Limit carryover into `SPRINT-10` to work needed for the UATs to pass and selected documentation work.
  Other open issues return to or stay in the unscheduled product backlog, outside sprint and plan milestones.
  At the Sprint 10 close, keep completed issues in its closed milestone.
  Remove the milestone and assignees from each open issue, clear its `Responsible` and `Accountable` fields, and link it in `handoff.md`.
- The `UAT-nn` definitions and the customer runs are scheduled in `SPRINT-09` and `SPRINT-10` as task issues, and the UAT record is not an issue.
- No change to the fields, the assignees, or the GitHub project: the two sprints' issues follow the existing rules.

### `visibility-requirements.md`

- [Sensitive Information Reference](../../requirements/visibility-requirements.md#sensitive-information-reference) gains a `**Since: W9**` and `**Since: W10**` row: the pitch deck is a separate Moodle-only submission and is never committed; the Sprint 9 and Sprint 10 recordings are Moodle-only; the private usability-data repository and the recordings folder are private; the Week 9 report, the Week 10 report, the project reflection, `handoff.md`, and `docs/user-acceptance-tests.md` are public; the public handoff report and transcript are sanitized; the deployment addresses, the dashboards, and the credentials stay in both Moodle wrappers, and the Week 10 wrapper's `## For customer` owns the private handoff values.
- A `**Since: W10**` paragraph says the Week 10 report, the reflection, the handoff report, and the UAT record carry no raw participant data, no private address, no credential, and no individual rating; the private usability data stays private and accessible to the team and the instructors until the course is graded, and the team deletes it after the course is fully graded; the handoff records the retention and the mandatory deletion; the wrapper's `## For customer` carries the private values, and the public handoff rows say where they are.
- [The Usability Data Repository](../../requirements/visibility-requirements.md#the-usability-data-repository) changes its retention rule: the private repository and the recordings are private, and the team deletes them after the course is fully graded; the deletion is required.
  The instructors confirm when grading is complete.
  Delete the private usability data after that confirmation.
  The main repository's privatisation is the repository-setup rule's, not this section's, so the section carries no second copy of it.
- The UAT record is public and carries the tests, including dropped tests, the runs, the results, the evidence, and the `DEC-nnn`; it carries no raw participant data or private value.

### No Change

- `quality-requirements-requirements.md`, `adr-requirements.md`, `architecture-requirements.md`, `functional-requirements-requirements.md`, `user-stories-requirements.md`, `task-issues-requirements.md`, `pull-requests-requirements.md`, `risks-requirements.md`, `glossary-requirements.md`, `features-requirements.md`, `analytics-requirements.md`, `observability-requirements.md`, `usability-testing-requirements.md`, `configuration-management-requirements.md`, `prototypes-requirements.md`, `assumptions-requirements.md`, `research-requirements.md`, `product-vision-requirements.md`, `definition-of-done-requirements.md`, `agent-instructions-requirements.md`, `local-task-tracking-requirements.md`, and `decisions-requirements.md` change no rule: the final report cites their artifacts, the handoff is a meeting and a file, the MVP is the final release, the UATs are a separate family, and the final state applies their rules.
  The final two weeks use the MVP term.
- The `UT-01` results are unchanged; the final two weeks link the Week 8 report and do not re-present the results.

## New And Edited Guides

`guides/final-sprints.md` follows the shape of [`guides/usability-testing.md`](../../guides/usability-testing.md) and [`guides/configuration-management.md`](../../guides/configuration-management.md): a short preamble, `## What You Produce`, numbered `## Step N:` sections with their `###` sub-sections, and `## Common Mistakes`.
The steps:

1. **Plan Sprint 9, Create `SPRINT-10`, And Schedule The Review.**
   Refine the backlog, including the `SPRINT-10` items, and schedule the Sprint 9 items, the three `UAT-nn` definitions and the customer run, the handoff preparation, the threshold review, the Week 9 report, the retrospective, and the AI usage; set the goal, the `**Due:**` `2026-11-29`, the `**Sprint Backlog:**`, the `**Planned Velocity:**`, and the GitHub milestone; create the `SPRINT-10` milestone and its `### SPRINT-10` section with its `2026-12-06` due date and provisional goal; schedule the in-person review by Sunday 29 November; triage unfinished work and leave out-of-scope issues unscheduled; write each task issue with its `### Requirements`, its acceptance criteria, its `Priority`, its `Responsible` and `Accountable`, its assignees, and its milestone.
2. **Write The Sprint 9 Script.**
   Write `reports/week-09/meeting-script.md` before the review: the agenda, the questions, the UAT run, and the one that asks what the customer expects to receive as the handoff; there is no final-report draft in Submission 9 and no deck.
3. **Deploy The Candidate And Hold The Sprint 9 Review.**
   Deploy the current candidate to the production VM and show it live; the customer runs `UAT-01` to `UAT-03`; the team records each pass or fail; ask the handoff question; record the story verdicts, one `DEC-nnn` per UAT run, the decisions, the action points, and the open questions in `reports/week-09/meeting-report.md`.
4. **Write The Handoff Preparation, The Threshold Review, And The UAT Record; Cut `REL-09`; Close Sprint 9; Submit Submission 9.**
   Write `## Handoff preparation` in the Week 9 report from the customer's answer, what is ready, and what is missing; write `## Quality plan results` and `## Threshold review`; update `docs/user-acceptance-tests.md` with the Sprint 9 run, the build, evidence, and run-level decisions; merge the Sprint 9 pull requests, cut the protected `REL-09` tag, write the changelog and the release body, write `#### REL-09` with `**Released:**`, `**Checked QRs:**`, and `**Checked UATs:**`, set `**Actual Velocity:**`, write the retrospective and the AI usage report, close the milestone, write `reports/week-09/README.md`, and submit the wrapper with the credentials and the private-only items through Moodle.
5. **Plan Sprint 10, Schedule The Final Review And Handoff, And Rewrite The README.**
   After the Sprint 9 review, refine only the Sprint 10 backlog, schedule the final tasks, the UAT re-run, the handoff, the final report, the reflection, the final state, `REL-10`, the retrospective, the AI usage, and the README rewrite; set the goal, the `**Due:**` `2026-12-06`, the `**Sprint Backlog:**`, and the `**Planned Velocity:**`; arrange the in-person review and handoff by 6 December, early enough to leave the post-handoff work before the deadline; write each task issue.
   Sprint 10 implements no new user stories.
   Schedule tasks for UAT fixes, selected documentation work, and final sprint deliverables.
   Planned and actual velocity are `0` story points.
6. **Cut And Deploy `REL-10`, Write The Sprint 10 Script, And Conduct The Handoff.**
   Cut and deploy `REL-10` before the review.
   Prepare the package in the root `handoff.md` and write `reports/week-10/meeting-script.md` for a 60-minute meeting.
   Walk through the package, run the UATs, and record the customer's acceptance in the meeting report.
   Check three active UATs on the deployed `REL-10` at the handoff.
   Record `Fail` and `Not run`, with the reason, in `handoff.md` and the Week 10 report's `## Deviations`.
   The customer accepts the handoff with the recorded results.
   If the customer cannot access the app, the team runs the tests live during the meeting for the customer to observe and judge.
   Record the actual runner as `Customer` or `Team`.
   Review the goals still open against their current measures.
7. **Close Sprint 10, Record The UAT Re-run, And Write The Week 10 Report.**
   Record the changelog and release links, update the UAT record with the build and each run's evidence and decision, close the milestone, and write the retrospective and AI usage report.
   Finish `handoff.md` with the outcome and unresolved UATs.
   Write the Week 10 report with the handoff and final threshold results and finish the root README.
   The team shuts down the university VM after the handoff.
   Grading uses the submitted evidence and the repository snapshot.
8. **Write The Project Reflection.**
   Write `reports/week-10/reflection.md` with `## Lessons learned`, one `## Lesson N` section per lesson with `**Problem:**` and `**Lesson:**`, and `## What would we do differently`; no team dynamics, no focus metric, no analytics links.
9. **Submit Submission 10.**
   Record the `REL-10` tag and commit in the Week 10 report, and take the commit-hash permalink and snapshot of the final `main` commit for the wrapper; submit the wrapper with the `## For customer` credentials and private handoff values through Moodle; Submission 10 has no late submission window.

`## Common Mistakes` covers one sprint instead of two; one submission instead of two; a Week 9 report rewritten after Submission 9; a final report in a separate `final-report.md`; a handoff as a second meeting; a handoff script written after the meeting; a handoff preparation written before the customer answered; a release after the deadline; a code freeze that blocks the report; a deck draft in Submission 9; a deck committed to the repository; an open issue left in the closed milestone; an open issue that keeps its `Responsible`, `Accountable`, or assignees after it leaves the final sprint; a final retrospective that carries actions into a sprint that does not exist; a final retrospective whose actions are pushed into the project reflection; a final report that carries rule 17's proposal table instead of the final threshold table; a final report or a reflection that cites the focus metric or links the analytics and observability pages; an MVP claim without its evidence; a report that records the final `main` commit hash instead of the `REL-10` commit; a private address or credential in the public report; a handoff recording in the repository; a private-data deletion before grading; presenting a build other than the deployed `REL-10` at the handoff; a team-run UAT without the customer observing and judging it at the handoff; a UAT result that is not in `docs/user-acceptance-tests.md`; a UAT evidence cell with no meeting report behind it; a UAT run without its own `DEC-nnn`; a `UT-01` re-presentation in the final two weeks; a user README that still links the weekly report as its main purpose; a README with no `## Course information`; and an in-person review booked for the last hour of its deadline.

`guides/planning-and-tracking.md` gains a pointer in its sprint and release steps: the final two weeks are `SPRINT-09` due `2026-11-29` and `SPRINT-10` due `2026-12-06`; each has a release and a retrospective; the final handoff is the Sprint 10 review; `REL-10` is the MVP and is cut before the deadline; the `REL-09` and `REL-10` blocks carry `**Checked UATs:**`.
`guides/validating-with-the-customer.md` gains a pointer in its meeting step: the Week 9 review runs the three `UAT-nn` and records the preparation after it, and the Week 10 review and handoff are one in-person meeting with one `DEC-nnn` per UAT run and a separate handoff acceptance.
`guides/deployment-and-environments.md` gains a pointer in its release and handoff step.
Deploy the Sprint 9 build before its review and deploy `REL-10` before the handoff.
Record the tested `REL-10` tag and commit and shut down the VM after the handoff.
`guides/usability-testing.md` and `guides/configuration-management.md` gain no step from this plan; [TASK-182](<../../backlog/tasks/task-182 - Correct-the-legacy-Week-9-final-state-and-seven-sprint-statements.md>) corrects their past-week statements.
`course/tooling.md` gains no final-week section: the team chooses its deck tool, and the course already names the tools the earlier weeks use.

## The Parts Assignment 9 And Assignment 10 Carry

`assignments/assignment-9.md` and `assignments/assignment-10.md` are written as deltas against `requirements/`, in the shape `assignment-8.md` uses: the header, `## Objectives`, the numbered parts, `## What Good Looks Like`, the repository report with its coverage table, the Moodle wrapper, the submission procedure, and the checklist.
The Assignment 9 header links the syllabus for its deadline.
The Assignment 10 header links the syllabus for its hard deadline and late submission policy.
The course has no Assignment 11; the individual reflection and peer evaluation is Submission 11 and is due after the final exam, described in the syllabus's Week 11 section.
Neither assignment mentions the deck or the peer review.

The Assignment 9 parts, in the order the work succeeds in:

- **Part 1: Plan Sprint 9, Create `SPRINT-10`, And Schedule The Review.**
  Refine the remaining product backlog, including the `SPRINT-10` items, until the Sprint 9 items are ready, and schedule the Sprint 9 product stories, the three `UAT-nn`, the customer UAT run, the handoff preparation, the threshold review, the Week 9 report, the retrospective, and the AI usage; set the sprint's goal, its `**Due:**` `2026-11-29`, its `**Sprint Backlog:**` link, and its `**Planned Velocity:**` from the scheduled stories; create the `SPRINT-10` milestone and its `### SPRINT-10` section with its `2026-12-06` due date and provisional goal; schedule the in-person review by Sunday 29 November; leave issues outside the Sprint 10 scope unscheduled; write each task issue with its `### Requirements`, its acceptance criteria, its `Priority`, its `Responsible` and `Accountable`, its assignees, and its milestone.
- **Part 2: Write The Sprint 9 Script.**
  Write `reports/week-09/meeting-script.md` before the meeting: `## Context`, `## Agenda`, `## Questions` including the UAT run and what the customer expects to receive as the handoff, `## Roles`, and `## Key improvements`; there is no final-report draft in Submission 9.
- **Part 3: Deploy The Candidate And Hold The Sprint 9 Review.**
  Deploy the current candidate to the production VM and hold the Week 9 weekly customer meeting in person; show the Sprint 9 increment; the customer runs `UAT-01` to `UAT-03`; the team records each pass or fail; ask what the customer expects to receive as the handoff and discuss the increment; record the customer's verdict on each Sprint 9 story as a `DEC-nnn` and each UAT run as its own `DEC-nnn`; write `reports/week-09/meeting-report.md`, with the transcript when the customer permits it.
  Discuss the quality plan results and review all open threshold goals against their stated measures.
- **Part 4: Write The Handoff Preparation, The Threshold Review, And The UAT Record; Cut `REL-09`; Close Sprint 9; Submit Submission 9.**
  Write `## Handoff preparation` in the Week 9 report from the customer's answer: what the customer expects to receive, what is ready, and what is missing; write `## Quality plan results` and `## Threshold review`; update `docs/user-acceptance-tests.md` with the Sprint 9 run, the build, evidence, and run-level decisions; merge the Sprint 9 pull requests, cut the protected `REL-09` tag on the final Sprint 9 product commit, write the changelog and the usual release body, write `#### REL-09` with `**Released:**`, `**Checked QRs:**`, and `**Checked UATs:**`, set `**Actual Velocity:**`, write `reports/week-09/sprint-retrospective.md` and `reports/week-09/ai-usage.md`, close the `SPRINT-09` milestone, write `reports/week-09/README.md`, and submit the wrapper with the credentials and the private-only items through Moodle.

The Assignment 10 parts, in the order the work succeeds in:

- **Part 1: Plan Sprint 10, Schedule The Final Review And Handoff, And Rewrite The README.**
  After the Sprint 9 review, refine only the Sprint 10 backlog, and schedule the final tasks, the UAT re-run, the handoff, the final report, the reflection, the final state, `REL-10`, the retrospective, the AI usage, and the README rewrite; set the sprint's goal as a result, its `**Due:**` `2026-12-06`, its `**Sprint Backlog:**` link, and its `**Planned Velocity:**`; plan 60 minutes for the in-person review and handoff by 6 December, early enough to leave the post-handoff work before the deadline; every issue scheduled but not completed leaves the milestone at the close, and every open issue is listed in `handoff.md`; write each task issue.
  Sprint 10 implements no new user stories.
  Schedule tasks for UAT fixes, selected documentation work, and final sprint deliverables.
  Planned and actual velocity are `0` story points.
  Keep other open issues unscheduled.
- **Part 2: Cut And Deploy `REL-10` And Write The Sprint 10 Script.**
  Cut the protected `REL-10` tag, publish the release, and deploy it before the handoff.
  Write `reports/week-10/meeting-script.md` with the 60-minute agenda for the review, the three active UATs, and the handoff.
- **Part 3: Conduct The Handoff And The UAT Re-run.**
  Walk through the package in the root `handoff.md` and check the deployed `REL-10` at the combined review and handoff.
  After the meeting, write `reports/week-10/meeting-report.md` with each UAT run's `DEC-nnn`, the customer's acceptance as a separate `DEC-nnn`, and any open items.
  Check three active UATs on the deployed `REL-10` at the handoff.
  Record `Fail` and `Not run`, with the reason, in `handoff.md` and the Week 10 report's `## Deviations`.
  The customer accepts the handoff with the recorded results.
  If the customer cannot access the app, the team runs the tests live during the meeting for the customer to observe and judge.
  Record the actual runner as `Customer` or `Team`.
  Review only the remaining open threshold goals.
- **Part 4: Close Sprint 10 And Record The Handoff Results.**
  Write the changelog and release record, update the UAT run history, close the milestone, and write the sprint retrospective and AI usage report.
  Complete `handoff.md` with the customer's acceptance and any failed or unrun tests.
  Write the Week 10 report with the handoff and final threshold results, finish the root README, and record the `REL-10` tag and tested commit.
  The team shuts down the university VM after the handoff.
  Grading uses the submitted evidence and the repository snapshot.
- **Part 5: Write The Project Reflection.**
  `reports/week-10/reflection.md` carries `## Lessons learned`, one `## Lesson N` section per lesson with `**Problem:**` and `**Lesson:**`, and `## What would we do differently`; no team dynamics, no focus metric, no analytics links.
- **Part 6: Submit Submission 10.**
  Take the commit-hash permalink and snapshot of the final `main` commit for the wrapper; submit the wrapper with the `## For customer` credentials and private handoff values and the private-only items through Moodle; the final exam is a separate event in the syllabus's Week 11 section.

The assignments end with the repository report, the Moodle wrapper, the submission procedure, and the checklist, in `assignment-8.md`'s shape.
The Week 9 coverage table carries one row per deliverable: the sprint plan, the UAT record, the UAT run, `REL-09`, the meeting script, the meeting report, the meeting transcript or its reason, the retrospective, and the AI usage.
The Week 10 coverage table carries one row per deliverable: the sprint plan, the UAT re-run, `REL-10`, the reflection, the user-facing README, the final state, the meeting script, the meeting report, the meeting transcript or its reason, the retrospective, and the AI usage.
It also carries the repository-evidence links the assignment asks for — the merged pull requests, the release tag, and the green CI runs — because the Week 10 report has no separate `## Repository evidence` section.
Neither coverage table has a deck row, and neither assignment requires a screenshot.
The Week 9 report's summary gives the Sprint 9 increment, the UAT results, the quality plan results, the threshold review, the handoff preparation, the release, and the retrospective; it links the Sprint 9 review, the UAT record, `REL-09`, the retrospective, and the AI usage report, and it names no deck.
The Week 10 report's summary gives the final state, the MVP, the handoff, the acceptance, the UAT re-run, the open items, the release, the retrospective, and the reflection; it links the Sprint 10 review and handoff, the UAT record, `REL-10`, the retrospective, the AI usage report, and the reflection, and it names no deck.

### What Good Looks Like

Assume your two submissions are read by someone who does not know your project.
A strong pair has:

- **Two sprints with two consistent boundaries.**
  `SPRINT-09` is due `2026-11-29` and `SPRINT-10` is due `2026-12-06`; each has a goal, a backlog, a planned and actual velocity, a release, a review, a retrospective, and an AI usage report; both reviews are in person, the Sprint 9 review may be held up to 29 November, the Sprint 10 review and handoff are by 6 December, and a deadline-day meeting declares the compressed schedule.
- **Two separate submissions.**
  Submission 9 carries the Week 9 report, the Sprint 9 review, the UAT run, the quality plan results, the threshold review, the handoff preparation, `REL-09`, the Sprint 9 retrospective, and the AI usage report; Submission 10 carries the Week 10 report and final report, the Sprint 10 review and handoff, the UAT re-run, `REL-10`, the project reflection, the final state, the Sprint 10 retrospective, and the AI usage report.
- **Scripts before, reports after.**
  The Week 9 script asks what the customer expects from the handoff and schedules the UAT run, and the Week 9 report records the answer, the threshold review, and the results; the Week 10 script is written before the review and handoff, and the meeting report after it.
- **Three active tests checked during the handoff.**
  The team starts with `UAT-01` to `UAT-03` in `docs/user-acceptance-tests.md`.
  Keep three active journeys and replace an original only after agreeing its drop with the customer.
  Each review records the build, runner, result, evidence, and decision.
  Preserve the history and show what happened to each active test at the handoff, including any `Fail` or `Not run` outcomes.
- **A handoff a customer can accept.**
  The Week 9 report says what the customer expects, what is ready, and what is missing; `handoff.md` has one row per item, its status, and where it lives, cites the Sprint 10 meeting report for the customer's verdict `DEC-nnn` and the UAT re-run, says the private values are in the wrapper's `## For customer`, and links the Week 9 preparation; the Week 10 report's `## Handoff results` links it; the customer attends the live handoff.
- **A final report that tells the story once.**
  `reports/week-10/README.md` carries `## Summary`, `## Handoff results`, `## Threshold of success results`, `## Coverage`, `## Contribution`, `## Deviations`, and `## Privacy`.
  It links the handoff, the final threshold outcomes, the evidence from the review, and `REL-10`.
  The Week 9 report covers the quality plan results.
- **A reflection with the lessons.**
  `reports/week-10/reflection.md` carries `## Lessons learned`, one `## Lesson N` section per lesson with `**Problem:**` and `**Lesson:**`, and `## What would we do differently`; it has no team dynamics section, cites the retrospectives, the risks, the Week 8 `UT-01` report when the lesson needs it, and the configuration plan, and it rates no individual.
- **A separate deck and a blank exam page.**
  `exam/README.md` is added blank; the deck is a separate Moodle submission due `2026-12-03` 23:59, never committed, not shown at the Sprint 10 review, and not mentioned in either assignment.
- **A final release and a final state a customer can take over.**
  `REL-09` is the Sprint 9 release.
  The protected `REL-10` tag identifies the deployed MVP tested and handed over before the VM shuts down.
  The wrapper carries the final `main` commit snapshot.
- **An assessment a reader can follow.**
  The syllabus gives the deadlines, 107-point total, 75-point pass threshold, and late penalty in points.
  Submission 11 is individual and independent of Submission 10.
- **One path and one identifier everywhere.**
  `reports/week-09/README.md`, `reports/week-10/README.md`, `handoff.md`, `reports/week-10/reflection.md`, `docs/user-acceptance-tests.md`, `reports/week-10/meeting-report.md`, `UAT-01` to `UAT-03`, `SPRINT-09`, `SPRINT-10`, `REL-09`, `REL-10`, and Submission 11 in the assignments, the reports, the plan, the requirement files, and the routers.

## New Maintainer Decision Log `course/decisions/a9.md`

The file follows the format of [`a8.md`](../decisions/a8.md): a header paragraph, then `A9-DEC-nnn` entries with `**Status:**`, a `**Reverses:**` field where an entry reverses an earlier decision, `**Decision:**`, `**Why:**`, `**Alternatives considered:**`, and `**Where it lands:**`; the header says the log covers Assignments 9 and 10 and that an entry that reverses an earlier `An-DEC` records the whole reversal and restates the clauses that survive.
`A9-DEC-007`, `A9-DEC-015`, and `A9-DEC-018` are full reversals: `A9-DEC-007` reverses `A7-DEC-013` and `A8-DEC-015` in full, and the surviving clauses are the Week 5 and Week 6 no-deck clauses, the Week 8 class's no-deck clause, the Week 9 lecture's teaching of pitching, Week 9 finalizing the repository from its own plan, the evaluation scheduling no task issue, and the final-exam presentation; `A9-DEC-015` reverses `A5-DEC-017` in full, and the surviving clauses are the project plan's name, the "next product release" wording, the production deployment in Week 5, and the automated product checks from Week 5, while the final two weeks use the MVP term; `A9-DEC-018` reverses `A7-DEC-021` in full and retains its distinction between usability testing and user acceptance testing.
The a9 change updates the status of `A7-DEC-013`, `A8-DEC-015`, `A7-DEC-021`, and `A5-DEC-017`; `A3-DEC-018` stays `Reversed by A5-DEC-013`.

The entries:

1. `A9-DEC-001`: two sprints, two submissions, and the review schedule; `SPRINT-09` is Week 9 and Submission 9 is due `2026-11-29`; the Week 9 class dates stay 20–26 November, and the Sprint 9 review may be held by the sprint's due date of `2026-11-29`; `SPRINT-10` starts `2026-11-30` and is due `2026-12-06`; `SPRINT-10`'s milestone and provisional section are created in Week 9 and it is planned in Week 10; the final exam is `2026-12-04` in the syllabus's Week 11 section, and Submission 11 is in that section; the Sprint 10 review and handoff are one in-person meeting by `2026-12-06`; Sprint 10 closes after `REL-10`; the assignment catalog separates the ten group submissions from the final exam, Submission 11, and attendance.
2. `A9-DEC-002`: the Week 9 report owns the UAT results, `## Quality plan results`, `## Threshold review`, and `## Handoff preparation`.
   The Week 10 report is the final report and links the root `handoff.md` and the project reflection.
3. `A9-DEC-003`: the Sprint 10 review and handoff are one 60-minute meeting.
   The root `handoff.md` owns the package and acceptance.
   Private values go in the Week 10 Moodle wrapper's `## For customer`.
4. `A9-DEC-004`: cut `REL-09` at the Sprint 9 close and cut and deploy `REL-10` before the handoff.
   Product code freezes at `REL-10`, and the final report records the tag and tested commit.
5. `A9-DEC-005`: ten group submissions at 7 points (70), 10 points attendance, 7 points individual reflection and peer evaluation, and 20 points final exam, for 107 points; the pass threshold is 75 points of the 107; the late penalty is 10% of the submission's points per calendar day, more than 7 days late is zero, and a 7-point submission loses 0.7 points per day; repository upkeep is assessed inside the ten submissions; the individual reflection and peer evaluation is Submission 11, due `2026-12-06`, available only to a member of a group that presented at the final exam, and in the syllabus's Week 11 section; Submission 9 is due `2026-11-29`; the assignment catalog separates the ten group submissions from the final exam, Submission 11, and attendance; the shift from the old percentages is deliberate, with the group submissions carrying 70 of the 107 points, attendance 10, the individual reflection 7, and the final exam 20.
   Assignment 10 has a hard cutoff and is excluded from the late penalty.
6. `A9-DEC-006`: at the Sprint 9 close, only UAT-critical work and selected documentation issues move to `SPRINT-10`; at the Sprint 10 close, the completed issues stay in the closed milestone, and every open issue, including the ones scheduled and not completed, stays open with no milestone, clears its `Responsible`, `Accountable`, and assignees, and is listed in `handoff.md`; the Sprint 10 retrospective says there is no later sprint, a `Not done` action is `Outcome: Not done` in `## Carried Actions`, and the `## Actions` carry `Carried: No`; the project reflection is independent of the retrospective's actions.
7. `A9-DEC-007`: **Reverses:** `A7-DEC-013` and `A8-DEC-015` in full for the deck's week, submission, preparation, and Week 9 final-state clauses; the surviving clauses are the Week 5 and Week 6 no-deck clauses, the Week 8 class's no-deck clause, the Week 9 lecture's teaching of pitching, Week 9 finalizing the repository from its own plan, the evaluation scheduling no task issue, and the final-exam presentation; the Week 10 class rehearsal does not survive, because each team rehearses on its own.
   The deck is a separate Moodle submission due `2026-12-03` 23:59, described by `exam/README.md`; that page is added blank and designed later; the deck is never committed, is not shown at the Sprint 10 review, and neither assignment mentions it; the submitted deck is the deck, and its content is a later session.
   The statuses become `Reversed by A9-DEC-007`; `A7-DEC-013` keeps the note that its restated Week 6 event-handoff clause is reversed in part by `A7-DEC-032`, and `A8-DEC-015` is simply reversed.
8. `A9-DEC-008`: Week 9 discusses quality plan results and records the quality and threshold review tables.
   Week 10 records the handoff and final threshold outcomes.
   The reflection captures lessons and what the team would do differently.
9. `A9-DEC-009`: the plan edits the counterfactual `assignment-8.md` statements and adds a forward note to `a8-plan.md`, keeps `SPRINT-09` due `2026-11-29`, adds `SPRINT-10`, `REL-10`, and the UATs to the planning example, and leaves the historical `assignment-4.md` as it was; the a9 change updates the `A7-DEC-013`, `A8-DEC-015`, `A7-DEC-021`, and `A5-DEC-017` statuses; the a9 change also corrects the syllabus's Week 3 "seven `SPRINT-nn` GitHub milestones" line, `README.md`'s "One submission per team" and "grading weights", `course/rules.md`'s submission wording, the `TODO.md` items, and `weekly-report-requirements.md`'s rule 22 and Week 8 example; `TASK-182` carries the rest, including `configuration-management-requirements.md`, `guides/configuration-management.md`, and `a7-plan.md`; the a9 change corrects the Week 9 final reflection traceability row.
10. `A9-DEC-010`: create `SPRINT-10` provisionally in Week 9 and plan it after the Sprint 9 review.
    The final sprint implements no new user stories.
11. `A9-DEC-011`: the course has `assignments/assignment-9.md` and `assignments/assignment-10.md`; this plan is the shared design plan for both; `exam/README.md` is added blank as the exam page; the final exam and Submission 11 stay in the syllabus's Week 11 section, and no `assignments/final.md` is added; the README, the syllabus, the routers, and the decision log name both assignments, and there is no Assignment 11.
12. `A9-DEC-012`: `guides/final-sprints.md` is the final two weeks' method guide; the planning, validating, and deployment guides point at it; the course tooling page adds no required tool; the new `docs/user-acceptance-tests.md` is a `docs/` artifact for Week 9, so the docs map gains its row and the routers link the new requirements file; the record is the student artifact the requirements own; the routers route the exam page and the final exam and Submission 11.
13. `A9-DEC-013`: the syllabus follows the plan: Week 9 carries the UATs and Submission 9, Week 10 carries the UAT re-run and Submission 10; the a9 task owns every `course/syllabus.md` edit, including Week 11, and `TASK-182` has no syllabus edit; the assessment catalog carries ten group submissions in the assignment table and the final exam, Submission 11, and attendance in a separate non-assignment section; the 107 points, the 75-point pass, the late penalty in points, the two deadlines, the handoff, the product code freeze and the final repository cutoff, and the MVP are stated; the Week 3 "seven `SPRINT-nn` GitHub milestones" line and the Week 9 heading and Development Milestone are corrected; the deadline blockquote and the section 3 deadline policy name Sunday 29 November for Week 9 and Sunday 6 December for Week 10.
14. `A9-DEC-014`: the implementation is one Backlog task created from this plan; the task carries the two assignments, the new user acceptance test requirements, the UAT family and record, the requirements changes, the guide, the decision log, the routers, the docs map, the syllabus, the exam page, and the validation, and the plan does not create it; the a9 task edits `TASK-182` to remove `course/syllabus.md` and AC6 and to add the deferred files and the `a7-plan.md` forward note; `TASK-182` is the separate deferred legacy task.
15. `A9-DEC-015`: **Reverses:** `A5-DEC-017` in full for the `MVP` vocabulary clause; the surviving clauses are the project plan's name, the "next product release" wording, the production deployment in Week 5, and the automated product checks from Week 5; `A3-DEC-018` stays `Reversed by A5-DEC-013`.
    `REL-10` is the MVP; the syllabus, the final report, and `handoff.md` name it; the final two weeks use the MVP term; the final report cites the recorded UAT results and the customer's verdict as the evidence, and does not cite the focus metric or link the analytics and observability pages; it does not re-present the `UT-01` results.
    The final two weeks use the release in place of a MUP candidate.
    The status of `A5-DEC-017` becomes `Reversed by A9-DEC-015`.
16. `A9-DEC-016`: the private usability-data repository and the recordings folder are private; the team deletes them after the course is fully graded; the main repository is public during the course; after the course is fully graded, the team may make it private only with the instructors' approval; the handoff records the retention and the mandatory deletion, not a transfer and not a fixed date; the Week 9 and Week 10 wrappers' `## For customer` carry the private values, the weekly-report wrapper rule owns that section, and the public handoff rows say where the values are.
    The team shuts down the university VM after the handoff.
    Grading uses the submitted evidence and the repository snapshot.
    The instructors confirm when grading is complete.
    Delete the private usability data after that confirmation.
17. `A9-DEC-017`: define three initial UATs and retain dropped tests and past results.
    The Sprint 10 handoff checks three active tests on `REL-10`, with the live team fallback if needed.
    Each UAT run has its own `DEC-nnn`, separate from the customer's handoff acceptance.
18. `A9-DEC-018`: **Reverses:** `A7-DEC-021` in full, retaining the distinction between usability testing and user acceptance testing.
    The field links the tests and their review results.
    The UAT runs replace the core-task check for the final two reviews.
    The status of `A7-DEC-021` becomes `Reversed by A9-DEC-018`.

## Edited Files Outside `requirements/`

- **`assignments/assignment-9.md`**: the Week 9 assignment and Submission 9, in the shape and with the parts this plan lists; it carries the Sprint 9 plan, the Sprint 9 script and review, the UAT run and results, the threshold review, the handoff preparation, `REL-09`, the retrospective, the AI usage report, the Week 9 report, and no deck.
- **`assignments/assignment-10.md`**: the Week 10 assignment and Submission 10, in the shape and with the parts this plan lists; it carries the Sprint 10 plan, the Sprint 10 script, the handoff, the UAT re-run, `REL-10` as the MVP, the final report, the reflection, the final state, the retrospective, the AI usage report, the README rewrite, and the Week 10 report; it ends at Submission 10 and does not include the final exam or the deck.
- **`exam/README.md`**: added blank; the maintainer designs its deck content and peer review rules later.
- **`course/plans/a9-plan.md`**: this plan, retitled to cover Assignments 9 and 10.
- **`course/decisions/a9.md`**: the new decision log, in `a8.md`'s shape, covering both assignments, the UAT family, the `**Checked UATs:**` field, and the blank exam page.
- **`course/decisions/a7.md`**, **`course/decisions/a8.md`**, and **`course/decisions/a5.md`**: the statuses of `A7-DEC-013`, `A8-DEC-015`, `A7-DEC-021`, and `A5-DEC-017` become `Reversed by A9-DEC-007`, `Reversed by A9-DEC-007`, `Reversed by A9-DEC-018`, and `Reversed by A9-DEC-015`; the a7.md Week 9 anchor is updated; `A7-DEC-013` keeps its `A7-DEC-032` partial-reversal note; `A3-DEC-018` is unchanged.
- **`course/syllabus.md`** updates Weeks 9–11, the schedule and deadline policy, the assessment catalog, the grade table and pass criteria, and the Late Submission Policy.
  State the ten group submissions, 107 available points, the 75-point pass threshold, and the late penalty in points including the 0.7-point example and Assignment 10's hard cutoff.
  Week 9 is due on 29 November and carries the Sprint 9 quality plan results.
  Sprint 10 and Submission 10 are due on 6 December.
  The final exam is on 4 December and Submission 11 is independently due on 6 December at 23:59.
  Remove the obsolete Review Class catalog row and update the Week 3 milestone count.
  `TASK-182` has no syllabus edit.
- **`assignments/assignment-8.md`**: the counterfactual Week 9 final-repository-state, seven-sprint-milestones, and Submission-9-pitch-deck statements become the Week 8-to-Week 9 handoff and the two-sprint model; `SPRINT-09` is due `2026-11-29`; the 21 November deadline stays; `SPRINT-10` is created in Week 9.
- **`course/plans/a8-plan.md`**: a forward note that Assignments 9 and 10 are written, the `SPRINT-09` due references are the Week 9 sprint, the Week 9 handoff leads to the final two weeks, the final state and reflection are Week 10's, the deck is a separate submission, and the rest of the Week 8 design stands; the `A8-DEC` entries are unchanged.
- **`README.md`**: the Assignment 9 row and the Assignment 10 row; the final-sprints guide row; the user acceptance test requirements row; the exam page row; the assignment table's closing sentence says Assignment 10 is the last and Submission 11 is the individual reflection in the syllabus; "The Shape Of Every Submission" no longer says "One submission per team", because Submission 11 is individual; the Syllabus row's "grading weights" becomes "assessment points".
- **`SKILL.md`**: the front-matter `description` gains the two submissions, the final report, the reflection, the handoff, the code freeze, the final release, the MVP, the final repository state, the UATs, and the exam page; the routing table gains the final report, the final state, the reflection, the handoff, the final release, the UATs, the exam page, and the final exam and Submission 11 in the syllabus's Week 11 section, without a duplicate Week 9 or Week 10 report row; the privacy line names the separate Moodle-only deck and the handoff recording.
- **`course/rules.md`**: a syllabus link for deadlines and the two group submissions, the two-submission wording, and links to the handoff, the product code freeze and the final repository cutoff, the final report, the reflection, the MVP, the UATs, the exam page, the final-sprints guide, and the syllabus's final exam section; it points to Repository Setup for approved privatisation and the syllabus for the late penalty and restates no weight and no total.
- **`AGENTS.md`**: the repository map row for the new requirements file, the new guide, the `a9.md` decision log, and the blank exam page; the `course/plans/` and `assignments/` rows stay generic; the Week 9 and Week 10 report shapes and the root handoff exception under the weekly report note; the `docs/` destination map gains the Week 9 `docs/user-acceptance-tests.md` row; the `reports/week-01/` through `reports/week-10/` convention; the terminology list gains `user acceptance test`, `UAT record`, `handoff`, `handoff preparation`, `code freeze`, `final report`, `project reflection`, `individual reflection and peer evaluation`, `final repository state`, `final release`, and `pitch deck`; the syllabus owns deadlines.
- **`TODO.md`**: the A9 items are annotated with the decisions and ticked when the two assignments, the blank exam page, the new requirements file, and the UAT family land: the two sprints, the two submissions, the Week 9 UAT run and handoff preparation, the Week 10 UAT re-run and handoff, the final report, the reflection, the final state, the two releases, the two retrospectives, the two reports, the MVP, the UAT family and record, and the assessment; the A7 UAT production-verification item is closed, because the `**Checked UATs:**` field and the replacement of rule 7 land; the counterfactual deck items are annotated.
- **`guides/final-sprints.md`**: the new method guide, in the guide shape.
- **`guides/planning-and-tracking.md`**, **`guides/validating-with-the-customer.md`**, and **`guides/deployment-and-environments.md`**: the pointers to the two sprints, the UATs, the handoff, the MVP, the final release, and the `**Checked UATs:**` line.
- **`assignments/assignment-4.md`**: no change; its `SPRINT-05` to `SPRINT-09` due-date chain is the historical Week 4 record, and the plan notes the deliberate exception.
- **`lectures/lecture-9.typ`** and **`lectures/lecture-9.pdf`**: no change; the deck is the taught week, the assignments follow it, and the deck content is a later session.
- **`TASK-182`**: the created Backlog task for the deferred past-week prose, listed in `assignments/assignment-3.md`, `course/decisions/a3.md`, `guides/usability-testing.md`, `guides/configuration-management.md`, `course/plans/a7-plan.md`, `course/decisions/a7.md`, `course/decisions/a8.md`, `requirements/general-requirements.md`, `requirements/configuration-management-requirements.md`, and `requirements/weekly-report-requirements.md`; the a9 change edits it to remove `course/syllabus.md` and AC6 and to add the deferred files and the `a7-plan.md` forward note, and already updates the reversed entries' statuses.

## Work Tracking

The implementation is one Backlog task created from this plan when implementation starts.
The task carries this plan as its reference and the two assignments, the blank exam page, the new user acceptance test requirements, the UAT family and record, the requirements changes, the guide, the decision log, the routers, the docs map, the syllabus, and the validation as its scope, and it closes when the gates and the audits in [Tests And Validation](#tests-and-validation) pass.
The deferred legacy work is [TASK-182](<../../backlog/tasks/task-182 - Correct-the-legacy-Week-9-final-state-and-seven-sprint-statements.md>), created with this plan and left open; the a9 implementation does not rewrite the past-week records beyond the reversed entries' statuses, the `assignment-8.md` correction, the `a8-plan.md` forward note, and the four files it contradicts directly, and it edits `TASK-182` to remove `course/syllabus.md` and AC6 and to add the deferred files and the `a7-plan.md` forward note; the final state is fully consistent only after `TASK-182` lands.
`TASK-182` is not a dependency of the a9 implementation: the two tasks can land in either order, but the a9 task's audit records that the deferred statements are in `TASK-182` rather than silently corrected.

## Edge Cases And Failure Modes

- **The Sprint 9 review is held on Sunday 29 November.**
  The review is in person, so it is a daytime meeting; the rework, `REL-09`, the Week 9 report, and the wrapper then have to finish before 23:59.
  A submission that misses the deadline is late under the syllabus's late policy, and the Week 9 report declares the compressed schedule.
  A review after the deadline is a missing deliverable for Submission 9.
  The Week 10 report declares the slip and links the original Week 9 report.
- **The Sprint 10 handoff is held on the deadline day.**
  Cut and deploy `REL-10` before the meeting.
  Leave time after it to shut down the VM, merge the reports, take the snapshot, and submit.
  If the handoff cannot happen in time, the team submits the evidence it has by the deadline and identifies the missing handoff.
  Assignment 10 has no late submission window.
- **A UAT fails or cannot run at the Sprint 10 handoff.**
  Record `Fail` and `Not run`, with the reason, in `handoff.md` and the Week 10 report's `## Deviations`.
  The customer accepts the handoff with the recorded results.
  Keep `Fail` in the run history and record any remaining defect as a known issue.
- **`REL-10` is unavailable at the handoff.**
  Arrange the review when `REL-10` is available within the deadline.
  Record a missing handoff if the team cannot hold it on `REL-10` in time.
- **The handoff identifies more product work.**
  Record the issue in `handoff.md` and leave the deployed `REL-10` as the final product release.
- **A UAT fails during the Sprint 9 review.**
  Record `Fail` against the candidate.
  Keep the release live with the known issue if the team cannot correct it before `REL-09`.
  The Sprint 10 handoff records its own result.
  If the customer cannot run the test in the review window, record `Not run` and why.
- **The Sprint 9 review's rework changes a UAT journey.**
  The Week 9 report identifies the difference between the reviewed and released builds.
  The next customer session is the Sprint 10 handoff.
- **The customer cannot run a UAT.**
  In Sprint 9, reschedule within the review window or record the missing result and declare the deviation.
  At the Sprint 10 handoff, the team can demonstrate the test live if the customer cannot access the app.
  Keep the actual runner and verdict in the record.
- **A UAT journey changes between the two runs.**
  Replace a journey only if the customer and team agree to drop the original UAT.
  Keep its identifier, drop reason, and history, and assign the replacement the next unused `UAT-nn`.
  The replacement has its own run history and is checked on `REL-10`.
- **The final report or the project reflection is not ready for Submission 10.**
  The Week 10 report and the project reflection are required deliverables; a missing one is a missing deliverable, not a deviation; the team writes the Week 10 report from the evidence and the reflection from the project, and the deadline is not moved.
- **The deck is not ready for its separate submission.**
  The deck is a separate Moodle submission due `2026-12-03` 23:59 and is not in Submission 10; a missing deck is a missing deliverable for that submission, not for Submission 10; `exam/README.md` is blank and designed later.
- **The final exam uses a newer deck than the submitted one.**
  The final exam is a separate event in the syllabus's Week 11 section; this plan submits the deck by `2026-12-03` 23:59 and does not design it; a change to the deck for the exam is outside this plan.
- **An issue cannot close before the final state.**
  Keep completed issues in the closed `SPRINT-10` milestone.
  Leave each unfinished issue open, remove its milestone and assignees, clear `Responsible` and `Accountable`, and link the issue in `handoff.md`.
- **The final retrospective has no next retrospective.**
  It says there is no later sprint; a `Not done` action is `Outcome: Not done` in `## Carried Actions`, and the Sprint 10 retrospective's `## Actions` carry `Carried: No`, and nothing is carried into the project reflection; the reflection is the project's lessons, not the retrospective's next home.
- **The private data is deleted before grading.**
  It is not: the private repository and the recordings folder stay private and accessible to the team and the instructors until the course is fully graded; the team deletes them after grading, and the handoff and the wrappers' `## For customer` record the retention and the mandatory deletion; the Week 10 report and the reflection record the retention.
- **The final report names an address, a credential, or a person.**
  The public report is sanitized: the address and the credential stay in the wrappers' `## For customer`, the person is named by GitHub username, and the Week 10 report, the reflection, and the handoff report remove the value; a leaked credential follows the incident response.
- **The Week 9 report is rewritten after Submission 9.**
  It is not: it is the record of Sprint 9 and Submission 9; the Week 10 report and the reflection carry the later state and cite it.
- **The 107 points are read as a 100-point scale.**
  The syllabus states the points and the pass threshold: ten group submissions at 7 points (70), 10 points attendance, 7 points individual reflection and peer evaluation, and 20 points final exam, for 107 points, with the pass at 75 points and the late penalty in points.
- **The Week 10 report records its own `main` commit.**
  It cannot: the report records the `REL-10` tag and its commit, and the wrapper carries the commit-hash permalink and snapshot of the final `main` commit; a report in the final commit cannot contain that commit's own hash.
- **The handoff claims to transfer the private data.**
  It records the retention: the private repository and the recordings are private and the team deletes them after the course is fully graded; the wrappers' `## For customer` carry the access and the retention, and the public report says the private values are there.
- **The university VM is shut down after the handoff.**
  The team shuts down the university VM after the handoff.
  Grading uses the submitted evidence and the repository snapshot. `handoff.md` points the customer to `docs/deployment.md` and describes how the team will handle data collected while the product was deployed, including any export, retention, access, and deletion.
- **The MVP claim overstates what was verified.**
  The final report cites the recorded UAT outcomes for `REL-10` and the customer's acceptance.
- **The `UT-01` results are re-presented.**
  They are not: the Week 9 report, the Week 10 report, and the final report link the Week 8 report only where the evidence needs it, and the reflection uses it only as a lesson source.
- **The result table is missing a goal or a test.**
  Update the threshold statuses from the reviews.
  Use the recorded QRT statuses in Week 9.
  Include one row per `QR-nn QRT-nn` pair in the Week 9 report, and one per `TOS-nn` in the Week 10 report.
- **The final report carries rule 17's proposal table.**
  The final threshold table records outcomes.
  Keep the proposal table in Week 6.
- **The final report or the reflection links the analytics or observability page.**
  It does not: the final two weeks are not the analytics week, and the MVP evidence is the UAT results and the customer's verdict; a link is a declared deviation.
- **The exam page and Submission 11 are expected to be one page.**
  They are not: `exam/README.md` is blank and owned by the maintainer, and Submission 11 is the individual reflection and peer evaluation in the syllabus's Week 11 section; a separate assignment page would duplicate the syllabus and break the `assignment-N.md` convention.

## Tests And Validation

- A model audit: `SPRINT-09` is Week 9 and due `2026-11-29`; the Sprint 9 review may be held by `2026-11-29`; `SPRINT-10` starts `2026-11-30` and is due `2026-12-06`; Submission 9 is due `2026-11-29` and Submission 10 is due `2026-12-06`; the Sprint 10 review and handoff are held by `2026-12-06`; `REL-09` is the Week 9 release and `REL-10` is a usual product release and the MVP, cut and deployed before the handoff; product code freezes at `REL-10`, and public changes stop at `2026-12-06` 23:59; the Week 10 report records the `REL-10` commit, and the wrapper carries the final `main` commit snapshot.
- A contradiction audit: every row in [Scope And Contradictions](#scope-and-contradictions) has its resolution applied, the files named in the row carry it, and the `A9-DEC` entry the row cites contains that resolution.
- A review and handoff audit: Week 9 and Week 10 each have one in-person review; the Sprint 9 review is held by `2026-11-29`; the Sprint 10 review and handoff are held by `2026-12-06`; both scripts are written before their meetings and both reports after; the Sprint 10 review and handoff are one meeting with one script and one report; the Week 9 report owns `## Handoff preparation`, `## Threshold review`, and the UAT results; `handoff.md` owns the package; the Week 10 report's `## Handoff results` links it; one `DEC-nnn` records each run and a separate `DEC-nnn` records the acceptance; the customer attends the 60-minute handoff; the tag is in the Week 10 report; a deadline-day review declares the compressed schedule.
  Check that the handoff requires the customer to attend and that its package links deployment instructions and describes how the team will handle deployed data.
- A UAT audit checks the three initial tests, any customer-agreed replacements, the preserved run history, both review sessions, and three `REL-10` outcomes.
  The example shows how a dropped test and its replacement appear in the record.
  Check that `Fail` and `Not run` at the handoff appear in `handoff.md` and `## Deviations`.
- A report and reflection audit checks the UAT results, `## Quality plan results`, `## Threshold review`, and `## Handoff preparation` in the Week 9 report.
  The Week 10 report carries `## Summary`, `## Handoff results`, `## Threshold of success results`, `## Coverage`, `## Contribution`, `## Deviations`, and `## Privacy`.
  The report is public and sanitized and links the root `handoff.md` from `## Handoff results`.
  The separate project reflection follows the agreed lessons format.
- An exam page audit: `exam/README.md` is blank; the deck is a separate Moodle submission due `2026-12-03` 23:59, never committed, not shown at the Sprint 10 review, and not mentioned in either assignment; the final exam is in the syllabus's Week 11 section.
- An MVP and release audit: `REL-10` is the MVP in the syllabus, the final report, and `handoff.md`; the final report cites the UAT results and the customer's verdict, and does not cite the focus metric; `REL-09` is cut at the Sprint 9 close and `REL-10` is a usual product release cut and deployed before the handoff; the tags are protected; the bodies are the usual upgrade notes; the changelog's released sections and the `REL-09` and `REL-10` blocks are merged after the tags; `**Checked QRs:**` and `**Checked UATs:**` are present, and the UAT field is on `REL-09` and `REL-10` only; no product code changes after `REL-10`.
- A final state audit: no open pull request; the `SPRINT-09` and `SPRINT-10` milestones are closed; the completed `SPRINT-10` issues stay in its closed milestone; every open issue, including the ones scheduled and not completed, is open with no milestone, no `Responsible`, no `Accountable`, and no assignees, and is listed in `handoff.md`; the default branch is green; the docs, the setup, the deployment runbook, the architecture, the requirements, the results, the configuration plan, the features, the glossary, the risks, the team's `AGENTS.md`, `docs/user-acceptance-tests.md`, and the user-facing README are current; the tag is protected; the mandatory private-data deletion and the approved privatisation are recorded; the final snapshot is from the final `main` commit; the VM is shut down after the handoff.
  Grading uses the submitted evidence and snapshot.
- A report and wrapper audit: the Week 9 report's summary, the UAT results, `## Quality plan results`, `## Threshold review`, and `## Handoff preparation`, coverage table, contribution table, repository evidence, deviations, and privacy; the Week 10 report's summary, `## Handoff results`, `## Threshold of success results`, coverage table, contribution table, deviations, and privacy; the project reflection; Submission 9's wrapper with the credentials and no deck; Submission 10's wrapper with the credentials, the Week 10 report and reflection links, and the private-only items; no raw participant data and no credential in the repository.
- An assessment audit: ten group submissions at 7 points (70), 10 points attendance, 7 points individual reflection and peer evaluation (Submission 11), and 20 points final exam, for 107 points; the pass is 75 points of the 107; the late penalty is 10% of the submission's points per calendar day, with the 7-point example; Submission 9 due `2026-11-29`, Submission 10 due `2026-12-06`, Submission 11 due `2026-12-06` and available only to a member of a group that presented; repository upkeep is inside the ten submissions; the assignment catalog separates the ten group submissions from the final exam, Submission 11, and attendance; the syllabus restates no 100% total.
  Check that Submission 11 is independent of the group submission and that the syllabus owns deadlines and points.
  Check the Assignment 10 hard cutoff in the syllabus, assignment, and Moodle setup.
- A routing and legacy audit: `README.md` carries the Assignment 9 and Assignment 10 rows, the final-sprints guide row, the UAT requirements row, and the exam page row, and no longer says "One submission per team"; `SKILL.md` routes the final report, the final state, the reflection, the handoff, the final release, the UATs, the exam page, and the final exam and Submission 11; `course/rules.md` states the two deadlines and links the handoff, the freeze, the final report, the reflection, the MVP, the UATs, the exam page, the guide, and the syllabus's final exam section; it links the syllabus for the late penalty and restates no weight; `AGENTS.md` carries the new requirements row, the guide, the `a9.md` row, the docs map W9 row, the `reports/week-10/` convention, the exam page row, the two report shapes, and the new terms, with no `assignments/final.md` row; `TODO.md`'s A9 items are annotated and its UAT item is closed; `assignment-8.md` is edited and `a8-plan.md` carries a forward note that supersedes the Week 9 final-repository-state, seven-milestone, or Submission-9-pitch-deck statements; the `A7-DEC-013`, `A8-DEC-015`, `A7-DEC-021`, and `A5-DEC-017` statuses are updated; the deferred statements are in `TASK-182`; `assignment-4.md` is unchanged.
- An identifier audit: the `UAT-nn` family is added, two digits, project-wide, headed `## UAT-nn`, with its dropped form and never-renumber rule; no other identifier family is added; the final report is cited by its path, the reflection by its path, the handoff by `handoff.md` and the meeting report's path, the individual reflection by "Submission 11", the final state by the tag and the commit; `SPRINT-09`, `SPRINT-10`, `REL-09`, and `REL-10` follow their existing rules; the `DEC-nnn` entries the reviews, the UAT runs, and the handoff produce are existing decisions.
- An example audit: the planning `SPRINT-09`, `SPRINT-10`, `REL-09`, and `REL-10` example; the Week 09 and Week 10 weekly report and final report examples; the Week 10 Sprint Review and handoff example with the UAT re-run; the UAT record example with the three initial journeys, a replacement, and both review sessions; the reflection example; the release body examples; the coverage table; and the wrappers carry the two weeks' new sections and rows; the planning example carries only plan artifacts; the meeting examples carry only scripts and reports; the examples use the same paths and identifiers as the assignments.
- The gates: `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run check:links`, `pnpm run test:markdown-format`, and `pnpm run test:markdown-rules` pass; `pnpm run check:lectures` is green against the deck; `pnpm run lint:actions` is unchanged because no workflow changes.

## Assumptions

- The decisions above govern the two submissions, the final reviews, and the handoff.
  Week 10 class dates stay 27 November–3 December.
  The Sprint 10 handoff and the submission can use the extended window through 6 December.
- The Sprint 9 review is held in person by Sunday 29 November, and the Sprint 10 review and handoff are held in person by 6 December.
- The customer attends the live Sprint 10 handoff.
  If customer access fails, the team demonstrates the tests in front of the customer.
- The team can write the Week 9 report, the threshold review, and the UAT run in Week 9, and the Week 10 report, the project reflection, and the UAT re-run in Week 10; the final report is the Week 10 report, and the reflection is a separate file.
- `REL-10` is a usual product release; its body is the usual upgrade note, and `handoff.md` maps the MVP to it.
- The final exam is Friday 4 December in the syllabus's Week 11 section; the deck is a separate submission due `2026-12-03` 23:59, and this plan does not design it.
- The private usability-data repository and the recordings folder are private and accessible to the team and the instructors; the team deletes them after the course is fully graded; the main repository is public during the course; after the course is fully graded, the team may make it private only with the instructors' approval; the handoff, the Week 10 report, the wrappers' `## For customer`, and the reflection record the retention and the mandatory deletion, and the public artifacts carry no raw data.
- The current `assignment-8.md` and `a8-plan.md` counterfactual statements are corrected, the historical `assignment-4.md` is left as written, the `A7-DEC-013`, `A8-DEC-015`, `A7-DEC-021`, and `A5-DEC-017` statuses are updated in the a9 change, and the other past-week statements are `TASK-182`.
- The teams define the three UATs from their own end-to-end journeys; the example uses the meeting-booking app, but the journeys are the team's.
- The product is available during the two reviews.
  The Week 10 live demonstration covers cases where the customer cannot access the app directly.
- The examples are set where their rule belongs: the planning example for the sprints and releases, the weekly report examples for the reports, the final-outcomes tables, and the reflection, the customer meeting examples for the scripts, the UAT run, and the reports, the UAT requirements example for initial and replacement tests across both review sessions, and the release examples for `REL-09` and `REL-10`.

## Sources

- [`assignments/assignment-8.md`](../../assignments/assignment-8.md), especially the repository report, the Moodle wrapper, and the Week 9 handoff: the shape and the week-specific minima the two assignments follow.
- [`course/plans/a8-plan.md`](a8-plan.md), especially [Scope And Contradictions](a8-plan.md#scope-and-contradictions), [Changes To The Requirements](a8-plan.md#changes-to-the-requirements), and [The Parts Assignment 8 Carries](a8-plan.md#the-parts-assignment-8-carries): the Week 8 design, the `**Since: W8**` rules, and the Week 9 handoff this plan takes over.
- [`course/decisions/a8.md`](../decisions/a8.md), especially `A8-DEC-015`: the deck's assignment to Week 9 and the Week 9 plan's ownership of the deck; `A9-DEC-007` reverses it in full and moves the deck to the separate submission.
- [`course/decisions/a7.md`](../decisions/a7.md), especially `A7-DEC-013` and `A7-DEC-021`: the deck's move out of Weeks 7 and 8 and its submission with Submission 9, which `A9-DEC-007` reverses in full, and the no-`**Checked UATs:**` clause, which `A9-DEC-018` reverses.
- [`course/decisions/a3.md`](../decisions/a3.md) and [`course/decisions/a5.md`](../decisions/a5.md), especially `A3-DEC-018` and `A5-DEC-017`: the MVP vocabulary clause `A9-DEC-015` reverses in full for the final release.
- [`requirements/usability-testing-requirements.md`](../../requirements/usability-testing-requirements.md): the `UT-nn` record, its fields, and its two-week design/run rhythm, which the `UAT-nn` record and its two runs follow.
- [`guides/quality-requirement-tests.md`](../../guides/quality-requirement-tests.md): the runnable test record and its result, which the UAT record's run rows follow.
- [`requirements/customer-meetings-requirements.md#showing-working-software`](../../requirements/customer-meetings-requirements.md#showing-working-software): the review that shows the working software, which the UAT run sits in.
- `requirements/user-acceptance-tests-requirements.md`: the new file this plan designs, owning `docs/user-acceptance-tests.md`, `UAT-nn`, the fields, the two runs, and the example.
- [`lectures/lecture-9.typ`](../../lectures/lecture-9.typ) and `lecture-9.pdf`: the audience and goal, the opportunity, the story and live demo, the evidence, and the continuation the week teaches; the deck is a later session.
- [`course/syllabus.md`](../syllabus.md), especially Week 3, Week 9, Week 10, Week 11, and the assessment catalog: the classes, the objectives, the deadlines, the deliverables, the ten group submissions, the 107 points, the 75-point pass, the late penalty in points, the individual reflection, the final exam, Submission 11, and the assessment this plan changes.
- [`requirements/planning-requirements.md`](../../requirements/planning-requirements.md), especially [Sprints](../../requirements/planning-requirements.md#sprints), [Milestones](../../requirements/planning-requirements.md#milestones), [Releases](../../requirements/planning-requirements.md#releases), and [Quality Requirement Testing Plan](../../requirements/planning-requirements.md#quality-requirement-testing-plan): the two sprints, `SPRINT-10`'s provisional section, the `REL-09` and `REL-10` blocks, the `**Checked UATs:**` line, and the testing-plan rows the plan uses.
- [`requirements/sprint-ceremonies-requirements.md`](../../requirements/sprint-ceremonies-requirements.md), especially [Sprint Review](../../requirements/sprint-ceremonies-requirements.md#sprint-review), [Sprint Planning](../../requirements/sprint-ceremonies-requirements.md#sprint-planning), [Product Backlog Refinement](../../requirements/sprint-ceremonies-requirements.md#product-backlog-refinement), and [Retrospective](../../requirements/sprint-ceremonies-requirements.md#retrospective): the two reviews, the UAT run and re-run, the final planning, the final refinement, and the final retrospective.
- [`requirements/customer-meetings-requirements.md`](../../requirements/customer-meetings-requirements.md), especially [Every Meeting](../../requirements/customer-meetings-requirements.md#every-meeting), [Showing Working Software](../../requirements/customer-meetings-requirements.md#showing-working-software), and [Meeting Report](../../requirements/customer-meetings-requirements.md#meeting-report): the two meetings, the handoff, the UAT runs, and the meeting reports.
- [`requirements/weekly-report-requirements.md`](../../requirements/weekly-report-requirements.md), especially [Weekly Public Report](../../requirements/weekly-report-requirements.md#weekly-public-report) and [Private Submission Wrapper](../../requirements/weekly-report-requirements.md#private-submission-wrapper): the two reports, the final report, the reflection, and the wrappers.
- [`requirements/releases-requirements.md`](../../requirements/releases-requirements.md), especially [Cutting A Release](../../requirements/releases-requirements.md#cutting-a-release): the two releases and their bodies.
- [`requirements/repository-requirements.md`](../../requirements/repository-requirements.md), especially [Permalinks And Snapshots](../../requirements/repository-requirements.md#permalinks-and-snapshots) and [Environments And Deployment](../../requirements/repository-requirements.md#environments-and-deployment): the final snapshot, the final deployment, the UAT verification, and the final state.
- [`requirements/visibility-requirements.md`](../../requirements/visibility-requirements.md), especially [Sensitive Information Reference](../../requirements/visibility-requirements.md#sensitive-information-reference) and [The Usability Data Repository](../../requirements/visibility-requirements.md#the-usability-data-repository): the wrappers' `## For customer`, the private data retention, and the sanitized public artifacts.
- [`requirements/general-requirements.md`](../../requirements/general-requirements.md), especially [Identifier Rules](../../requirements/general-requirements.md#identifier-rules) and [Traceability Into Later Weeks](../../requirements/general-requirements.md#traceability-into-later-weeks): the `UAT-nn` family and the two weeks' traceability.
- [`requirements/issue-tracking-requirements.md`](../../requirements/issue-tracking-requirements.md), especially [Scheduling An Issue](../../requirements/issue-tracking-requirements.md#scheduling-an-issue): the open issues at the final close.
- [TASK-182](<../../backlog/tasks/task-182 - Correct-the-legacy-Week-9-final-state-and-seven-sprint-statements.md>): the deferred past-week prose this plan does not rewrite.
