# Assignment 10: The Final Release And Customer Handoff

**Submission 10.** See [Week 10 in the syllabus](../course/syllabus.md#week-10-nov-27--dec-3-final-release-and-handoff) for the hard deadline.
Submission 10 has no late submission window.

Read the [course rules](../course/rules.md) and [Closing The Final Sprints](../guides/final-sprints.md).
Complete the requirements marked `**Since: W10**` in the linked sections and continue the standing [repository](../requirements/repository-requirements.md) and [pull request](../requirements/pull-requests-requirements.md) requirements.

## Objectives

- Release the MVP and check its three active user journeys with the customer.
- Hand over the product and record what the customer accepted and what remains open.
- Deliver the final report, project reflection and repository snapshot.

## Part 1: Plan Sprint 10, Schedule The Handoff, And Rewrite The README

1. After the Sprint 9 review, plan `SPRINT-10` in `docs/project-plan.md#sprint-10` with a result-oriented goal, `**Due:**` of `2026-12-06`, `**Sprint Backlog:**` and `**Planned Velocity:**`.
   Apply the [Sprint 10 planning rules](../requirements/sprint-ceremonies-requirements.md#sprint-planning).
   Schedule the task issues for UAT fixes, selected documentation, `REL-10`, the review and handoff, the UAT re-run, the final report, the reflection, the README rewrite, the final repository state, the retrospective and AI usage.
2. Schedule the combined in-person review and handoff by 6 December, with time before the deadline for the post-meeting work.
3. Draft the root `README.md` rewrite for product users, per [Root README](../requirements/repository-requirements.md#root-readme).
   Merge it with the final report so the `## Course information` link resolves.

## Part 2: Cut And Deploy REL-10 And Write The Sprint 10 Script

1. Cut the protected `REL-10` tag on the final product commit, publish the release and deploy it on the university VM before the handoff, per [Cutting A Release](../requirements/releases-requirements.md#cutting-a-release).
   Follow the [code freeze](../requirements/repository-requirements.md#the-final-repository-state) from that tag.
2. Prepare the root `handoff.md` from the Week 9 preparation, per [The Handoff](../requirements/customer-meetings-requirements.md#the-handoff).
3. Write `reports/week-10/meeting-script.md` with a 60-minute agenda for the review, three active UATs and the handoff.

## Part 3: Conduct The Handoff And Re-Run The UATs

1. Walk through `handoff.md` with the customer and check three active UATs on the deployed `REL-10`, per [The Two Review Sessions](../requirements/user-acceptance-tests-requirements.md#the-two-review-sessions).
   If customer access fails, run the tests live for the customer to observe and judge.
2. Review only the threshold goals still open, per [The Threshold Of Success](../requirements/planning-requirements.md#the-threshold-of-success).
3. After the meeting write `reports/week-10/meeting-report.md` with each UAT's runner and outcome, its own decision, and a separate decision recording the customer's acceptance with those results.
   Publish any permitted sanitized transcript or record why there is none.

## Part 4: Record The Handoff Results And Write The Final Report

1. Update the UAT record and `docs/threshold-of-success.md`, finish the handoff, and record each `Fail` or `Not run` and its reason in the handoff and the final report's `## Deviations`.
2. Finalize the `REL-10` block with `**Released:**`, `**Checked QRs:**` and `**Checked UATs:**`.
3. Shut down the university VM after the handoff.
   Record `**Actual Velocity:**` and write `reports/week-10/sprint-retrospective.md` and `reports/week-10/ai-usage.md`.
4. Write the final report, including the tested `REL-10` tag and commit.

## Part 5: Write The Project Reflection

Write `reports/week-10/reflection.md`, per [Project Reflection](../requirements/weekly-report-requirements.md#project-reflection).
Use `## Lessons learned`, one `## Lesson N` with `**Problem:**` and `**Lesson:**` per lesson, and `## What would we do differently`.

## Part 6: Close Sprint 10 And Submit Submission 10

Merge the final report, reflection and supporting artifacts and complete the [final repository state](../requirements/repository-requirements.md#the-final-repository-state).
Take the commit-hash permalink and snapshot from the final `main` commit and submit them with the Moodle wrapper as described below.

## What Good Looks Like

The handoff gives the customer a route from the MVP to the setup, deployment and known issues.
The UAT evidence identifies what ran on that tag, who ran it and what the customer accepted.
The final snapshot lets a reader inspect the reports, open issues and release evidence after the VM shuts down.

## Assignment Report In The Repository

Write the final report at `reports/week-10/README.md`, per [Weekly Public Report](../requirements/weekly-report-requirements.md#weekly-public-report).
Link `handoff.md` from `## Handoff results` and link the maintained goals from [`## Threshold of success results`](../requirements/weekly-report-requirements.md#threshold-of-success-results).
Include these coverage rows.

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

Include `## Contribution`, `## Deviations` and `## Privacy`.
Declare a deadline-day handoff and its compressed schedule in `## Deviations`.

## Assignment Report On Moodle

Submit one PDF per [Private Submission Wrapper](../requirements/weekly-report-requirements.md#private-submission-wrapper).

- Project, team number and member table with GitHub usernames, real names and university emails.
- Full commit-hash permalinks to `reports/week-10/README.md` and `reports/week-10/reflection.md` on final `main`.
- Under `## For customer`, the production address, dashboard and backend addresses and credentials, test access, private usability-data access and retention, and any other private handoff values.
- Permitted private recording link or the reason there is none, and any private transcript.
- One line confirming no private-only material was committed.

### Submission Procedure

1. Check that the final evidence and documentation are merged into `main`.
2. Take the full commit-hash permalinks and ZIP snapshot from the final `main` commit, per [Permalinks And Snapshots](../requirements/repository-requirements.md#permalinks-and-snapshots).
3. Submit the PDF and snapshot through Moodle before the hard cutoff.
   If the handoff could not take place, submit the evidence available by the cutoff and identify the missing deliverable.

## Checklist

- [ ] Sprint 10 planned, user README rewritten and handoff scheduled.
- [ ] Protected `REL-10` tag published and deployed before the review.
- [ ] Handoff conducted with the customer, three UAT outcomes and acceptance recorded, remaining open goals checked.
- [ ] Handoff report completed, known issues recorded, VM shut down and Sprint 10 closed.
- [ ] Final report, reflection, retrospective and AI usage report merged.
- [ ] Final repository state checked and Submission 10 submitted from final `main`.
