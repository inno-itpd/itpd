# Assignment 10: The Final Release And Customer Handoff

**This week's deadline:**

- Hard deadline: Sunday 6 December 2026, 23:59.

See [Deadlines And Submission](../course/rules.md#deadlines-and-submission).

Read the [course rules](../course/rules.md) and [Closing The Final Sprints](../guides/final-sprints.md).
Complete the requirements marked `**Since: W10**` in the linked sections and continue the standing [repository](../requirements/repository-requirements.md) and [pull request](../requirements/pull-requests-requirements.md) requirements.

<h2>Table of contents</h2>

- [Objectives](#objectives)
- [Part 1: Plan Sprint 10, Schedule The Handoff, And Rewrite The README](#part-1-plan-sprint-10-schedule-the-handoff-and-rewrite-the-readme)
- [Part 2: Cut And Deploy REL-10 And Write The Sprint 10 Script](#part-2-cut-and-deploy-rel-10-and-write-the-sprint-10-script)
- [Part 3: Conduct The Handoff And Re-Run The UATs](#part-3-conduct-the-handoff-and-re-run-the-uats)
- [Part 4: Record The Handoff Results And Write The Final Report](#part-4-record-the-handoff-results-and-write-the-final-report)
- [Part 5: Write The Project Reflection](#part-5-write-the-project-reflection)
- [Part 6: Close Sprint 10 And Submit Submission 10](#part-6-close-sprint-10-and-submit-submission-10)
- [What Good Looks Like](#what-good-looks-like)
- [Assignment Report In The Repository](#assignment-report-in-the-repository)
- [Assignment Report On Moodle](#assignment-report-on-moodle)
  - [Submission Procedure](#submission-procedure)
- [Checklist](#checklist)

## Objectives

- Release the MVP and check its three active user journeys with the customer.
- Hand over the product and record what the customer accepted and what remains open.
- Deliver the final report, project reflection and repository snapshot.

## Part 1: Plan Sprint 10, Schedule The Handoff, And Rewrite The README

1. After the Sprint 9 review, plan `SPRINT-10` in `docs/project-plan.md#sprint-10` with a result-oriented goal, `**Due:**` of `2026-12-06`, `**Sprint Backlog:**` and `**Planned Velocity:**`.
   Apply the [Sprint 10 planning rules](../requirements/sprint-ceremonies-requirements.md#sprint-planning).
   Schedule [task issues](../requirements/task-issues-requirements.md#the-issue-form) for UAT fixes, selected documentation, `REL-10`, the review and handoff, the UAT re-run, the final report, the reflection, the README rewrite, the final repository state, the retrospective and AI usage.
2. Schedule the combined in-person review and handoff by 6 December, with time before the deadline for the post-meeting work.
3. Draft the root `README.md` rewrite for product users, per [Root README](../requirements/repository-requirements.md#root-readme).
   Merge it with the final report so the `## Course information` link resolves.

## Part 2: Cut And Deploy REL-10 And Write The Sprint 10 Script

1. Cut the protected `REL-10` tag on the final product commit, publish the release and deploy it on the university VM before the handoff, per [Cutting A Release](../requirements/releases-requirements.md#cutting-a-release).
   Follow the [code freeze](../requirements/repository-requirements.md#the-final-repository-state) from that tag.
2. Prepare the root `handoff.md` using `reports/week-09/README.md#handoff-preparation` and the [handoff table requirements](../requirements/customer-meetings-requirements.md#the-handoff).
3. Write `reports/week-10/meeting-script.md` per [Meeting Script](../requirements/customer-meetings-requirements.md#meeting-script), with a 60-minute agenda for the review, three active UATs and the handoff.

## Part 3: Conduct The Handoff And Re-Run The UATs

1. Follow up on the action points due and the questions still open from `reports/week-09/meeting-report.md` and any earlier customer meeting.
2. Walk through `handoff.md` with the customer and check three active UATs on the deployed `REL-10`, per [The Two Review Sessions](../requirements/user-acceptance-tests-requirements.md#the-two-review-sessions).
   If customer access fails, run the tests live for the customer to observe and judge.
3. Review only the threshold goals still open, per [The Threshold Of Success](../requirements/planning-requirements.md#the-threshold-of-success).
4. After the meeting, write `reports/week-10/meeting-report.md` per [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).
   Record what happened to the earlier action points and open questions, each UAT's runner and outcome with its own `DEC-nnn`, and a separate `DEC-nnn` for the customer's acceptance with those results.
   Publish any permitted sanitized transcript or record why there is none, per [Meeting Transcript](../requirements/customer-meetings-requirements.md#meeting-transcript).

## Part 4: Record The Handoff Results And Write The Final Report

1. Update the run history in `docs/user-acceptance-tests.md` and the outcomes in `docs/threshold-of-success.md`.
   Complete `handoff.md` with the acceptance decision, the limitations, and each `Fail` or `Not run` outcome and its reason.
2. Finalize the [`REL-10` block](../requirements/planning-requirements.md#releases) with `**Released:**`, `**Checked QRs:**` and `**Checked UATs:**`.
3. Shut down the university VM after the handoff.
   Record `**Actual Velocity:**` and write `reports/week-10/sprint-retrospective.md` per [Retrospective](../requirements/sprint-ceremonies-requirements.md#retrospective) and `reports/week-10/ai-usage.md` per [AI Usage Report](../requirements/weekly-report-requirements.md#ai-usage-report).
4. Write the [final report](#assignment-report-in-the-repository).

## Part 5: Write The Project Reflection

Write `reports/week-10/reflection.md`, per [Project Reflection](../requirements/weekly-report-requirements.md#project-reflection).

## Part 6: Close Sprint 10 And Submit Submission 10

Complete [Deleting Private Usability Data](../requirements/visibility-requirements.md#deleting-private-usability-data) before submitting.
Merge the final report, reflection and supporting artifacts and complete the [final repository state](../requirements/repository-requirements.md#the-final-repository-state).
Close both sprint milestones and apply the [final issue rules](../requirements/issue-tracking-requirements.md#scheduling-an-issue) to open issues, leaving them open and unscheduled.
Link the repository's Issues page from `handoff.md` instead of listing each issue.
Take the commit-hash permalink and snapshot from the final `main` commit and submit them with the Moodle wrapper as described below.

## What Good Looks Like

The handoff gives the customer a route from the MVP to the setup instructions, deployment guide, limitations and the repository's Issues page.
The UAT evidence identifies what ran on that tag, who ran it and what the customer accepted.
The final snapshot lets a reader inspect the reports, open issues and release evidence after the VM shuts down.

## Assignment Report In The Repository

Write the final report at `reports/week-10/README.md`, per [Weekly Public Report](../requirements/weekly-report-requirements.md#weekly-public-report).

- `## Summary` covers the MVP, handoff result, three UAT outcomes, open work and frozen product state.
- `## Handoff results` links `handoff.md` and identifies the tested `REL-10` tag and commit.
  If the handoff did not take place, identify the missing deliverable and distinguish the released build from any tested build.
- [`## Threshold of success results`](../requirements/weekly-report-requirements.md#threshold-of-success-results) links each goal in `docs/threshold-of-success.md`.
- `## Coverage` links the following evidence.

| Deliverable            | Where                                                                                         |
| ---------------------- | --------------------------------------------------------------------------------------------- |
| Sprint plan            | `docs/project-plan.md#sprint-10`                                                              |
| UAT re-run             | `docs/user-acceptance-tests.md` and `reports/week-10/meeting-report.md#user-acceptance-tests` |
| `REL-10`               | `docs/project-plan.md#rel-10`, the GitHub release, its tag and the released changelog section |
| Project reflection     | `reports/week-10/reflection.md`                                                               |
| User-facing README     | `README.md`                                                                                   |
| Final repository state | Closed sprint milestones, open issue list and pull request list                               |
| Meeting script         | `reports/week-10/meeting-script.md`                                                           |
| Meeting report         | `reports/week-10/meeting-report.md`                                                           |
| Meeting transcript     | `reports/week-10/meeting-transcript.md` or the reason there is no public transcript           |
| Sprint retrospective   | `reports/week-10/sprint-retrospective.md`                                                     |
| AI usage               | `reports/week-10/ai-usage.md`                                                                 |
| Repository evidence    | Final merged pull requests and green link, Markdown, workflow and product CI checks           |

- Use `## Contribution` for the team contribution table.
- Under [`## Deviations`](../requirements/weekly-report-requirements.md#declaring-deviations), declare a deadline-day handoff and its compressed schedule, any missing handoff, and each `Fail` or `Not run` UAT with its reason.
  If the Sprint 9 review slipped past its deadline, link the missing-review record from Submission 9.
- Include the weekly report's `## Privacy` confirmation.

## Assignment Report On Moodle

Submit one PDF per [Private Submission Wrapper](../requirements/weekly-report-requirements.md#private-submission-wrapper).
See the [Submission 10 wrapper example](../requirements/weekly-report-requirements.md#example-submission-10-wrapper).

- Project, team number and member table with GitHub usernames, real names and university emails.
- Full commit-hash permalinks to `reports/week-10/README.md` and `reports/week-10/reflection.md` on final `main`.
- Under `## For customer`, the production address used at the handoff and test access, the analytics and observability dashboard and backend addresses and credentials, observability query access, and any other private values agreed with the customer.
  Record the university VM shutdown.
- Also under `## For customer`, the dated [confirmation of the team's private usability-data deletion](../requirements/weekly-report-requirements.md#private-submission-wrapper).
- A permitted private Sprint Review recording link accessible to instructors or the reason there is none, and any permitted private meeting transcript.
- One line confirming no private-only material was committed.

### Submission Procedure

1. Check that the final evidence and documentation are merged into `main`.
2. Take the full commit-hash permalinks and ZIP snapshot from the final `main` commit, per [Permalinks And Snapshots](../requirements/repository-requirements.md#permalinks-and-snapshots).
3. Submit the PDF and snapshot through Moodle before the hard cutoff.
   If the handoff could not take place, submit the evidence available by the cutoff and identify the missing deliverable.

## Checklist

- [ ] Sprint 10 planned, user README rewritten and the in-person handoff scheduled ([Part 1](#part-1-plan-sprint-10-schedule-the-handoff-and-rewrite-the-readme)).
- [ ] Protected `REL-10` tag published and deployed before the review, with `handoff.md` and the meeting script prepared ([Part 2](#part-2-cut-and-deploy-rel-10-and-write-the-sprint-10-script)).
- [ ] Meeting report records the three UAT outcomes, the customer's acceptance and follow-up on earlier action points and questions, with a transcript or the reason there is none ([Part 3](#part-3-conduct-the-handoff-and-re-run-the-uats)).
- [ ] Handoff, UAT history, threshold goals and release block updated, including the limitations and Issues-page link, the VM shut down, and actual velocity, retrospective and AI usage recorded ([Part 4](#part-4-record-the-handoff-results-and-write-the-final-report)).
- [ ] Project reflection written and linked from the final report ([Part 5](#part-5-write-the-project-reflection)).
- [ ] Final artifacts merged, sprint milestones closed and final issue rules applied, with open issues left open and unscheduled ([Part 6](#part-6-close-sprint-10-and-submit-submission-10)).
- [ ] Team-controlled private usability data deleted, earlier links cleaned up on `main`, and sanitized results linked from the public handoff ([Part 6](#part-6-close-sprint-10-and-submit-submission-10)).
- [ ] Final report includes the summary, handoff results, threshold results and evidence links ([Assignment Report In The Repository](#assignment-report-in-the-repository)).
- [ ] Moodle PDF includes the private handoff details, dated deletion confirmation and review evidence ([Assignment Report On Moodle](#assignment-report-on-moodle)).
- [ ] PDF and ZIP snapshot submitted with permalinks to the same final `main` commit ([Submission Procedure](#submission-procedure)).
