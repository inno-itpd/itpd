# Guide: Closing The Final Sprints

Sprint 9 gives you the customer's results and handoff expectations.
Sprint 10 turns that evidence into a handoff of the released product.
Use [Assignment 9](../assignments/assignment-9.md), [Assignment 10](../assignments/assignment-10.md) and the [syllabus](../course/syllabus.md#3-weekly-curriculum--milestones) for deliverables and dates.

## What You Produce

- The Sprint 9 plan and review, the first [UAT session](../requirements/user-acceptance-tests-requirements.md#the-two-review-sessions), handoff preparation, `REL-09` and the Week 9 report.
- The Sprint 10 review and [handoff](../requirements/customer-meetings-requirements.md#the-handoff), the checked MVP release, the final report and project reflection, and the final repository snapshot.

## Step 1: Plan Sprint 9 Around Three Journeys

Start with a result the customer can see.
For a booking app, that might mean an organizer can book a meeting, share the invitation and release the slot by cancelling.
Write each journey from a reproducible start state and give the customer a concrete success condition.
Use synthetic accounts and data so you can reset between tests.

Plan the work in `SPRINT-09` and give `SPRINT-10` a provisional goal using [Sprints](../requirements/planning-requirements.md#sprints).
Book the review early enough to have time for the release and report.

## Step 2: Write The Sprint 9 Script

Put the journeys in the order the customer can run them.
Give the moderator time to ask what the customer expects to receive and what access they need.
Give the note taker the list of open threshold goals, their live measures, and the recorded quality plan results.
See [Meeting Script](../requirements/customer-meetings-requirements.md#meeting-script).

## Step 3: Deploy And Hold The Sprint 9 Review

Confirm the build on the university VM and let the customer take the controls.
Capture what they observe against each test's expected result, including a failure the team can already explain.
Record its decision while the result is fresh.
Compare open goals with their existing measures and read back the handoff expectations before the meeting ends.

## Step 4: Record The Results And Close Sprint 9

Use the meeting report to fill in the UAT run history and the Week 9 handoff preparation.
Distinguish what the customer requested, what is ready and what the team still has to deliver.
Complete the [quality plan results](../requirements/weekly-report-requirements.md#quality-plan-results) and [threshold review](../requirements/weekly-report-requirements.md#threshold-review) from the recorded outcomes.

Use the [release procedure](../requirements/releases-requirements.md#cutting-a-release) for `REL-09` and capture the outcome in the sprint's actual velocity, retrospective and AI usage report.
Use the Week 9 report to index that evidence.
After merging the evidence, triage any remaining issues, close the milestone and take the Submission 9 snapshot.
If the review slips past the deadline, identify it as missing in Submission 9 and link the Week 9 report when declaring the slip in Week 10.

## Step 5: Plan Sprint 10 And Schedule The Handoff

Turn the acceptance failures, selected documentation work and final deliverables into tasks.
Use the [Sprint 10 planning rules](../requirements/sprint-ceremonies-requirements.md#sprint-planning) for the backlog and velocities.
Walk through the rewritten README as a new user would, starting at setup and following the deployment instructions.

Reserve time after the handoff for writing, reviews, CI and uploading.
A deadline-day meeting leaves all those steps in the same window.

## Step 6: Release The MVP And Conduct The Handoff

Tag and deploy `REL-10` before the meeting using [Cutting A Release](../requirements/releases-requirements.md#cutting-a-release).
Prepare the handoff package and write the script before the meeting.
Put the tag, test accounts, start states and handoff items where the meeting roles can find them.
Use the private wrapper for real access details.

At the combined review and handoff, compare what you present with the customer's Sprint 9 expectations.
Capture the deployed tag and commit while the VM is running.
Run the [handoff UAT session](../requirements/user-acceptance-tests-requirements.md#the-two-review-sessions), review the still-open threshold goals and read back the results.
If customer access fails, show the tests live and let the customer judge each result.
If the release itself is unavailable, look for another meeting time before the cutoff.
Record the actual runner, any failed or unrun test and its reason, and the separate acceptance decision.

## Step 7: Finish The Handoff Evidence

Complete the meeting report, handoff, UAT history and release record from the observed results.
Link the unresolved failures from the final report's deviations and give any workaround in the handoff.
Confirm the handoff's open-issue list during sprint closeout.
Write the retrospective and AI usage report.
Shut down the university VM after the handoff and check that the submitted evidence can be read without it.

## Step 8: Write The Project Reflection

Use a concrete problem from the project to explain each lesson.
A failed cancellation check, for example, might lead you to test both the organizer's confirmation and the next user's view of the released slot.
Use the [reflection requirements](../requirements/weekly-report-requirements.md#project-reflection) to turn the lessons into changes you would make from the start of another project.

## Step 9: Close Sprint 10 And Submit The Final Snapshot

Record the tested tag and product commit in the final report.
After the final evidence merges and the branch is green, complete the [final repository state](../requirements/repository-requirements.md#the-final-repository-state).
Use the final `main` commit for the wrapper's permalinks and snapshot.
Check the [Submission 10 cutoff](../course/syllabus.md#week-10-nov-27--dec-3-final-release-and-handoff) before uploading.

## Common Mistakes

- **Using one report for both submissions.**
  Preserve the Sprint 9 results, then record the handoff in the Week 10 report.
- **Confusing the release and submission commits.**
  The tag identifies the product the customer checked, and the snapshot includes the evidence merged afterwards.
- **Losing a dropped test's history.**
  Keep its result and give any replacement its own identifier after the customer agrees.
- **Making the handoff a separate meeting.**
  Use the Sprint 10 review to check the deployed product, walk through the package and record acceptance.
- **Leaving open items in the final milestone.**
  Clear their `Responsible` and `Accountable` fields, remove their assignees and milestone, and link the issues in the handoff.
  See [Scheduling An Issue](../requirements/issue-tracking-requirements.md#scheduling-an-issue).
- **Making the final report a second handoff package.**
  Link it from `## Handoff results` and use the final threshold table for outcomes.
- **Making private data public or deleting it early.**
  Keep the access details in Moodle and follow [the post-grading deletion rule](../requirements/visibility-requirements.md#the-usability-data-repository).
- **Committing a pitch deck or bringing a draft to the handoff.**
  Use the separate Moodle submission in [the syllabus](../course/syllabus.md#week-11-dec-4--dec-10-final-exam).
