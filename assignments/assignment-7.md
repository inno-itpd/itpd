# Assignment 7: Usability Test Design And The Week 7 Release

**This week's deadline:**

- Hard deadline: Sunday 15 November 2026, 23:59.

There is no soft deadline.
See [Deadlines And Submission](../course/rules.md#deadlines-and-submission).

One submission per team.

Week 6 ended with the analytics and the observability running, four dashboards on the university network, and `REL-06`.
This week the product's evidence becomes human: you design the usability test a stranger can run, write its record, its surveys, its tasks, its consent, and its analysis plan, create the private home for the raw data, and add the quality requirement the sessions check.
You set the recruitment target and write the session plan; the team arranges the sessions when it decides.
They may run as soon as the design is written, including in Week 7, and the results, the findings, and the triage are due with Submission 8.
Week 7 claims no usability result: it designs the test and prepares every artifact the results submission needs.
The week also keeps the full sprint around the design.

What you hand in is a test design another person could run without asking you a question, the private repository and recordings folder that make its evidence keepable, and `REL-07`.

The tools the course suggests, from meeting transcripts to a coding agent, are in [Course Tooling](../course/tooling.md).

<h2>Table of contents</h2>

- [Objectives](#objectives)
- [Part 1: Refine The Product Backlog And Plan The Sprint](#part-1-refine-the-product-backlog-and-plan-the-sprint)
- [Part 2: Write The `UT-01` Test Record](#part-2-write-the-ut-01-test-record)
- [Part 3: Write The Surveys And The Task Protocol](#part-3-write-the-surveys-and-the-task-protocol)
- [Part 4: Write The Consent And Create The Private Repository](#part-4-write-the-consent-and-create-the-private-repository)
- [Part 5: Write The Quality Requirement And Its Manual Test](#part-5-write-the-quality-requirement-and-its-manual-test)
- [Part 6: Plan The Recruitment And The Sessions](#part-6-plan-the-recruitment-and-the-sessions)
- [Part 7: Write The Analysis Plan And The Evidence Map](#part-7-write-the-analysis-plan-and-the-evidence-map)
- [Part 8: Update The Glossary And The Risk Register](#part-8-update-the-glossary-and-the-risk-register)
- [Part 9: Carry Out The Week 6 Action Points And Open Questions](#part-9-carry-out-the-week-6-action-points-and-open-questions)
- [Part 10: Validate The Test Design With The Customer](#part-10-validate-the-test-design-with-the-customer)
- [Part 11: Apply The Design Review, Run The Sprint's Testing-Plan Rows, And Cut `REL-07`](#part-11-apply-the-design-review-run-the-sprints-testing-plan-rows-and-cut-rel-07)
- [Part 12: Close The Sprint And Hold The Retrospective](#part-12-close-the-sprint-and-hold-the-retrospective)
- [Part 13: Report On Your AI Usage](#part-13-report-on-your-ai-usage)
- [Part 14: Hand Off The Week 8 Execution](#part-14-hand-off-the-week-8-execution)
- [What Good Looks Like](#what-good-looks-like)
- [Assignment Report In The Repository](#assignment-report-in-the-repository)
- [Assignment Report On Moodle](#assignment-report-on-moodle)
  - [Submission Procedure](#submission-procedure)
- [Checklist](#checklist)

## Objectives

By the end of this week you should be able to show a reader:

- A `UT-01` test record a stranger can run: the goal, the research questions, the quality requirement it serves, the participant profile, the tasks, the protocol, the measures, the analysis plan, the schedule, the roles, the environment, and the evidence map.
- The group's index at `docs/usability-tests/README.md`, and the test's other files: `surveys.md`, `consent.md`, `sessions/README.md`, the `results.md` stub, and `images/`.
- The pre-test, the SEQ after each task, the full ten SUS items with the correct formula, and the open-ended post-test, with the qualitative and the quantitative measures.
- One main usability test task and two secondary tasks, each a scenario with a start point, an end state, a success criterion written before the first session, a time limit, and a help rule.
- The durable consent, the private `<organization>/<repo>-usability-data` repository with the text data, and the team-owned cloud folder for the recordings, with the instructors' access to both.
- A recruitment target of at least three representative participants aged 18 or older, with five as the design target, and the team's plan for arranging the sessions.
- An `Interaction Capability` quality requirement with a team-chosen sub-characteristic, a team-chosen measure from the recorded measures and a team-set bar, and a `manual` test that names `UT-01`, with its `**Why Manual:**`, its procedure, and its testing-plan row.
- The `UT-01` design shown at the Sprint Review, and the Week 8 execution plan agreed with the customer.
- `REL-07`: the tag on the release commit, protected from being moved or deleted, the release body for whoever deploys it, the changelog's released section, and the plan's `REL-07` block with its `Released` and `Checked QRs` fields.
- The sprint closed with its actual velocity, a retrospective that carries the Week 6 actions, and the AI usage report.
- The Week 8 handoff: the design, the recruitment target, the private repository, the recordings folder, the `QR/QRT`, the `results.md` stub, and the triage plan, with no result claimed.

## Part 1: Refine The Product Backlog And Plan The Sprint

The rules:

- The sprint opens with planning, and the next two sprints' worth of the product backlog is refined before it: [Sprint Planning](../requirements/sprint-ceremonies-requirements.md#sprint-planning) and [Product Backlog Refinement](../requirements/sprint-ceremonies-requirements.md#product-backlog-refinement).
- The plan's `### SPRINT-nn` section carries the sprint's goal, its `**Due:**` field, its `**Sprint Backlog:**` link, `**Planned Velocity:**`, and later `**Actual Velocity:**`: [Sprints](../requirements/planning-requirements.md#sprints).
- A task issue carries its `### Requirements` section, and a pull request closes one: [The Issue Form](../requirements/task-issues-requirements.md#the-issue-form).
- Scheduling is assigning an issue to its sprint's GitHub milestone, and refinement leaves an item unscheduled: [Scheduling An Issue](../requirements/issue-tracking-requirements.md#scheduling-an-issue).

This week:

1. Refine the next two sprints' worth of the product backlog, `SPRINT-08` and `SPRINT-09`, until each item is ready to schedule, and leave those items unscheduled.
2. Plan `SPRINT-07`: replace its provisional goal with the sprint's goal, set `**Due:**` to `2026-11-15`, link `**Sprint Backlog:**` to its GitHub milestone, and set `**Planned Velocity:**` to the story points of the stories you scheduled, computed by hand from their `Story Points`.
   A sprint that carries only tasks has a planned velocity of `0`.
3. Set `SPRINT-08`'s provisional goal, its `**Due:**` of `2026-11-21`, and its backlog link, so the results sprint has its target already.
4. Schedule the test design tasks in `SPRINT-07`: the record, the surveys, the tasks and protocol, the consent and the private repository, the recordings folder, the quality requirement and its test, the recruitment, the dry run, and the analysis plan.
5. Schedule the session tasks in the sprint of the last counted session, `SPRINT-08` by default and `SPRINT-07` when every counted session runs before the design week's deadline, and schedule the sanitized notes, the results, the findings, and the triage in `SPRINT-08`.
   Plan `REL-08` and the `QR/QRT` verdict into `SPRINT-08`.
6. Write each task issue with its `### Requirements` section, its acceptance criteria, and its `Priority`, and schedule it with its GitHub milestone, its `Responsible` and `Accountable` values, and the matching assignees.
   A task that is not product work says `None: repository upkeep`.

The method is in [Step 4: Write The Sprints And Their Releases](../guides/planning-and-tracking.md#step-4-write-the-sprints-and-their-releases).

## Part 2: Write The `UT-01` Test Record

The rules:

- The group lives at `docs/usability-tests/`, with an index and one directory per test: [Where The Usability Tests Live](../requirements/usability-testing-requirements.md#where-the-usability-tests-live).
- The record is `docs/usability-tests/ut-01/README.md`, headed `# UT-01: <title>`, with its status, its design and run sprints, and its parts: [The Test Record](../requirements/usability-testing-requirements.md#the-test-record).
- `UT-nn` is the Week 7 family, its record's heading carries the title, and its path is the link target: [Identifier Rules](../requirements/general-requirements.md#identifier-rules).

This week:

1. Write `docs/usability-tests/README.md` with its table and one row for `UT-01`: `UT`, `Goal`, `Status`, `Results`, and `Sprints`.
   The `Results` cell is `Pending` until the results exist.
   The `Sprints` cell links the design sprint and the run sprint, and both run sprints when the sessions straddle `SPRINT-07` and `SPRINT-08`.
2. Write `docs/usability-tests/ut-01/README.md` with its heading and these fields: `**Status:** Planned`, `**Design sprint:** SPRINT-07`, and `**Run sprint:**` the sprint of the last counted session, `SPRINT-08` in the default plan and `SPRINT-07` when every counted session runs before the design week's deadline, updated to `SPRINT-09` when the plan moves, each sprint linked to its plan section, with `**Dropped:**` and its date and reason when the test is dropped.
3. State the goal in one sentence, and write two or three research questions that the sessions can answer.
4. Link the `QR-nn` the test serves, which Part 5 writes, using the next free identifier in the family.
5. Open the record's sections in the order [The Test Record](../requirements/usability-testing-requirements.md#the-test-record) gives and leave a stub in each: `## Participant Profile`, `## The Tasks`, `## Protocol`, `## Measures`, `## Analysis Plan`, `## Schedule`, `## Roles`, `## Environment`, `## Consent And Data`, and `## Evidence Map`.
6. Write the consent and data map, and the public and private evidence map.
7. Create `results.md` beside the record as the stub Part 7 gives, and link it from the record so the link resolves.
8. Create `sessions/`, `images/` with a `.gitkeep` so the directory is tracked, `surveys.md`, and `consent.md` as the parts below fill them.

The method is in [Step 1: Write The Test Record And The Goal](../guides/usability-testing.md#step-1-write-the-test-record-and-the-goal).

## Part 3: Write The Surveys And The Task Protocol

The rules:

- Every session records the pre-test, the think-aloud observation, the completion and assistance, the time, the SEQ after each task, the SUS after all tasks, and the open-ended post-test: [The Instruments](../requirements/usability-testing-requirements.md#the-instruments).
- One main usability test task and two secondary tasks, each a scenario with no button, label, screen, step, or step count: [The Tasks](../requirements/usability-testing-requirements.md#the-tasks).
- The session order, the facilitator's rule, and the roles: [The Protocol](../requirements/usability-testing-requirements.md#the-protocol).
- The main task is the product's main flow the Week 6 event table covers: [The Events](../requirements/analytics-requirements.md#the-events).

This week:

1. Write `surveys.md` with the pre-test, the SEQ after each task, the full ten SUS items below, the formula, and the open-ended post-test.
   The SEQ is the standard question after each task, `Overall, how difficult or easy was the task to complete?`, on a seven-point scale where 1 is very difficult and 7 is very easy.
   The SUS is the standard ten items in their standard order and wording, with no change:

   1. I think that I would like to use this system frequently.
   2. I found the system unnecessarily complex.
   3. I thought the system was easy to use.
   4. I think that I would need the support of a technical person to be able to use this system.
   5. I found the various functions in this system were well integrated.
   6. I thought there was too much inconsistency in this system.
   7. I would imagine that most people would learn to use this system very quickly.
   8. I found the system very cumbersome to use.
   9. I felt very confident using the system.
   10. I needed to learn a lot of things before I could get going with this system.

   Each item is answered from strongly disagree (1) to strongly agree (5), and the score is `SUS = 2.5 × (20 + sum(odd) - sum(even))`, computed from the responses as recorded; the even items are not reverse-coded before the formula.

2. Write the record's `## The Tasks` section with the main usability test task and the two secondary usability test tasks, the same three for every participant, with their scenarios, start points, end states, success criteria, time limits, and fixed order.
3. Give every task an `Unaided`, `Assisted`, or `Failed` criterion, written before the first session, and a help rule that names what counts as help.
4. Write the record's `## Measures` section: the completion and the assistance, the time on task, the SEQ after each task, the SUS and its score, and the Week 6 events where they cover the task.
5. Write the record's `## Protocol` section and `sessions/README.md` with the session template and the instructions: the welcome, the consent and recording check, the pre-test, the think-aloud instruction, the scenario reading, the no-help rule, the observation sheet, the SEQ after each task, the SUS and the open-ended post-test after all the tasks, the debrief, and the stop rule.
6. Name the roles by GitHub username in the record's `## Roles` section: the facilitator who runs every counted session, the observer who records the help and the friction, and the member who keeps the recordings and the raw notes.
7. Run the dry run with a teammate, check the wording and the time limit, and record that it is not evidence and is not counted.
8. Do not write the results: the results are due with Submission 8, and the Week 7 report claims no result even when the sessions have already run.

The method is in [Step 3: Write The Tasks And The Success Criteria](../guides/usability-testing.md#step-3-write-the-tasks-and-the-success-criteria) and [Step 4: Write The Instruments](../guides/usability-testing.md#step-4-write-the-instruments).

## Part 4: Write The Consent And Create The Private Repository

The rules:

- A durable consent before every counted session, covering the 18-or-older declaration, the recording, the sanitized public results, the optional quotes, the private access, the tools used, the withdrawal, and the deletion after grading: [Consent And Recording](../requirements/usability-testing-requirements.md#consent-and-recording).
- One private `<organization>/<repo>-usability-data` repository, text only, with the team and the instructors as readers, and the recordings in a team-owned cloud folder: [The Private Data Repository](../requirements/usability-testing-requirements.md#the-private-data-repository) and [The Usability Data Repository](../requirements/repository-requirements.md#the-usability-data-repository).
- The public record links the private repository, and the link is excluded from the link check because it needs authentication: [Link Checking](../requirements/repository-requirements.md#link-checking).
- The private links and the participant identity are private-only: [Sensitive Information Reference](../requirements/visibility-requirements.md#sensitive-information-reference).

This week:

1. Write `consent.md` as the public template with the full set of clauses and the unfilled signature line.
2. Create the private `<organization>/<repo>-usability-data` repository, private, with the team and the instructors as readers.
3. Put the text data's home in place: the consent records, the identity mapping, the working analysis, and the recordings folder link and access, in the layout the team chooses; the raw notes and the filtered telemetry export are added when the sessions run.
   When an instructor cannot access GitHub, the same text goes through a Moodle-only archive, and the deviation is declared.
4. Create the team-owned cloud folder for the recordings, share it with the instructors, and record its link and the access instructions in the private repository.
5. Link the private repository from the test record and the Week 7 report, and write the link-check exclusion with its reason beside it in the link check's configuration.
6. Write the retention rule in the record: the private repository, its history, and the recordings are deleted after the course is graded, and the sanitized public record stays.
7. Keep the private repository's access instructions and the recordings folder link and access out of the product repository, for the Moodle wrapper, per [Assignment Report On Moodle](#assignment-report-on-moodle).

The method is in [Step 5: Write The Consent And Create The Private Repository](../guides/usability-testing.md#step-5-write-the-consent-and-create-the-private-repository).

## Part 5: Write The Quality Requirement And Its Manual Test

The rules:

- A quality requirement is a file under `docs/quality-requirements/qr/`, with its outcome, its pair, its two priorities, and its six-part scenario: [The Quality Requirement](../requirements/quality-requirements-requirements.md#the-quality-requirement).
- The usability requirement uses `Interaction Capability` and one sub-characteristic chosen from `Learnability`, `Self-descriptiveness`, and `Operability`, and the team chooses the [measure](../requirements/general-requirements.md#measurement-terminology) the test reads from the recorded measures: [Quality Requirement Tests](../requirements/quality-requirements-requirements.md#quality-requirement-tests).
- A test is a `## QRT-nn` section inside its requirement's file, with its fields, its procedure, and one `**Pass when:**` criterion, and a `manual` one carries `**Why Manual:**`: [Quality Requirement Tests](../requirements/quality-requirements-requirements.md#quality-requirement-tests).
- The testing plan carries each test's result, its last check, its planned sprint, and its evidence: [Quality Requirement Testing Plan](../requirements/planning-requirements.md#quality-requirement-testing-plan).

This week:

1. Write the new `QR-nn`, using the next free identifier, with the `Interaction Capability` characteristic and one sub-characteristic the team chooses, and one sentence saying why that sub-characteristic is what the test measures and why the measure the team chooses reads it.
2. Carry `**Business importance:** High`, which requires its test, and the team's `**Technical risk:**`.
3. Write the scenario: a representative participant completing the main usability test task, in the staging deployment on the university network with seeded data, with its `Response` the behaviour the team's chosen measure reads.
   The team chooses the measure from the four the session records: the main task's completion and assistance, the time on task, the main task's SEQ, or the SUS.
   The criterion uses a statistic of that measure, and one the analysis plan reports: the main-task completion or assistance count or proportion, the main-task median time, the main-task median SEQ, or the SUS mean or median.
4. Make the `Response Measure` a real, countable criterion the team writes before the first session, and the test settles it.
   The example is the median main-task SEQ against a bar; the example bar is at least five of seven.
   A team that chooses the main task's completion and assistance, its time on task, or the SUS sets the criterion that tells it whether the product is usable, and says why the chosen measure reads the chosen sub-characteristic.
   The measures the requirement does not read stay analysis results and are reported; the requirement reads one.
   The measure is not a target: set it at the value that tells you whether the product is usable, do not coach participants toward it, and do not change it after the data.
5. Write the `QRT-01` at `manual`, with `**Runs at:**` naming `UT-01` and the record, and `**Why Manual:**` saying why no command can judge the measure the team chose — the participant's completion and assistance, the main task's time on task, the SEQ rating on the main task, or the SUS responses — and that it reads no `SLI`.
   It needs no deviation.
6. Write the procedure that runs the main task with at least three participants per the record and reads `results.md`, and the `**Pass when:**` that restates the team's `Response Measure` and settles it.
7. Add the testing-plan row: `Not verified`, `Checked: None`, `Planned for sprint:` `SPRINT-08` linked to its plan section, and `Evidence: None`.
   The verdict is recorded with the results in `SPRINT-08`, even when the sessions have already run.
8. Add the requirement's row to the quality requirements index (the matrix), and link the testing plan from the index once.

The method is in [Step 8: Write The Quality Requirement And Its Test](../guides/usability-testing.md#step-8-write-the-quality-requirement-and-its-test).

## Part 6: Plan The Recruitment And The Sessions

The rules:

- The test is designed for at least three completed sessions of adults 18 or older, five as the design target, and not a teammate, the customer, the instructor, or the course staff: [The Participants](../requirements/usability-testing-requirements.md#the-participants).
- Every counted session matches the participant profile, and a pilot or a broken session is not counted: [The Participant Profile](../requirements/usability-testing-requirements.md#the-participant-profile).
- The recordings and the sanitized public results are required, and a replacement is recruited under the next code: [Consent And Recording](../requirements/usability-testing-requirements.md#consent-and-recording).
- The test runs against the staging deployment, with the seed reset and no real payment, and its events carry `source=usability-test`: [Telemetry And Personal Data](../requirements/visibility-requirements.md#telemetry-and-personal-data).

This week:

1. Write the participant profile under `## Participant Profile`: the role and the task the target user does, the familiarity with similar products, the device, and the relation to the target user.
2. Set the recruitment target against the profile: at least three representative people outside the team, 18 or older, and five as the design target; record it beside the profile, and plan how the team will find the participants.
   A classmate who is not on the team may be recruited when they match the profile; a teammate, the customer, the instructor, and the course staff are not.
   Exact participants and session dates are not due this week.
3. Check that the durable consent is ready to collect before each counted session, and that it carries the recording and the sanitized-public-results clauses.
4. Plan the codes, `P-01`, `P-02`, and so on, to be assigned in the order the sessions are arranged, and plan a replacement under the next free code.
5. Write the session plan under `## Schedule`: the dates the team has arranged, or how and when it will arrange them, in person, on the university network, and which session is planned for which sprint when they straddle `SPRINT-07` and `SPRINT-08`.
   The team decides the dates, and a session may run as soon as the design is written, including before the Week 7 deadline.
6. Write the environment under `## Environment`: the staging deployment on the university network, the seed the session starts from, and that no real payment is made.
   Check the staging deployment for the sessions: the seed reset to synthetic data before each session, no real payment, and every test event tagged `source=usability-test`.
7. Record the recruitment target in the Week 7 report, and claim no result.

The method is in [Step 2: Choose And Recruit The Participants](../guides/usability-testing.md#step-2-choose-and-recruit-the-participants).

## Part 7: Write The Analysis Plan And The Evidence Map

The rules:

- The analysis plan is written before the first session, and it covers at least the per-participant table, the main task's aggregate completion, the main task's median time, the median SEQ for each task, the SUS mean and median, the thematic analysis, the severity, the telemetry comparison, and the limitations; a measure the product needs may be added before the first session: [The Analysis](../requirements/usability-testing-requirements.md#the-analysis).
- `results.md` is the record of what was found, and each finding is a `### Finding 1` section cited by its anchor: [The Results And Findings](../requirements/usability-testing-requirements.md#the-results-and-findings).
- The public evidence and its sanitization: [The Public Evidence](../requirements/usability-testing-requirements.md#the-public-evidence).
- A screenshot that is published is sanitized: [Screenshot Evidence](../requirements/visibility-requirements.md#screenshot-evidence).

This week:

1. Write the analysis plan in the record: the per-participant table's columns, including each task's outcome and the assistance, the main task's aggregate completion rate, the main task's median time on task, the median SEQ for each task, the measure and the bar the team sets in the quality requirement, the SUS mean and median, the thematic analysis, the severity rating, the telemetry comparison, and the limitations.
   Add any measure the product needs, with its statistic and scope, before the first session.
2. Supply `results.md`'s headings: the results table, the findings, the limitations, and the conclusion.
   It carries no finding until the results are written.
3. Write the findings template: `### Finding 1` with its `**Severity:**`, `**Tasks:**`, `**Evidence:**`, `**Recommendation:**`, and `**Task issue:**` fields.
4. Write the triage plan: every finding is triaged; when a significant finding exists, at least one becomes a task issue in `SPRINT-08`; a behaviour change or defect links the story and the `AC-nn` it serves and names the `FR-nnn` or `ADR-nnn`; the task issue cites the finding by `docs/usability-tests/ut-01/results.md#finding-1`.
5. Finish the evidence map: the public record, the private text repository, the cloud recordings folder, the Moodle wrapper, and the Week 8 report, with no item in two places and no raw participant data in the product repository.

The method is in [Step 7: Write The Analysis Plan And The Evidence Map](../guides/usability-testing.md#step-7-write-the-analysis-plan-and-the-evidence-map).

## Part 8: Update The Glossary And The Risk Register

The rules:

- `docs/glossary.md` is maintained documentation, and each term carries its meaning: [Where The Glossary Lives](../requirements/glossary-requirements.md#where-the-glossary-lives).
- `docs/risks.md` carries each risk's statement, its rating, its response, and its fallback: [Where The Risks Live](../requirements/risks-requirements.md#where-the-risks-live) and [Response](../requirements/risks-requirements.md#response).

This week:

1. Add `usability test`, `participant`, `usability session`, `consent`, `recording`, `measure`, `metric`, `statistic`, `SUS`, and `SEQ` to `docs/glossary.md`.
   Keep the measure, the metric, and the statistic apart in their entries.
2. Add the recruitment risk, the consent risk, the data-access risk, and the schedule risk to `docs/risks.md`, each with its `**Status:** Open`, `**Impact:**`, `**Likelihood:**`, `**Trigger:**`, `**Window:**`, `**Mitigation:**`, and `**Contingency:**`.
3. Write the fallback for each failure mode as the matching risk's `**Contingency:**`:
   - The recruitment risk, a shortfall of participants: recruit replacements; when three still cannot be recruited, keep the `QR/QRT` row `Not verified` in `SPRINT-08` or move it to `SPRINT-09`, declare the shortfall, and claim no result;
   - The consent risk, a participant who withdraws or refuses the recording: do not count the session, remove the raw text and the recording, retire the code, and recruit a replacement under the next code;
   - The data-access risk, a private repository or folder the instructors cannot access: create it with the team and the instructors, and when an instructor cannot use GitHub, give the private text through a Moodle-only archive and declare the deviation;
   - The schedule risk, a test that cannot finish: move the `QR/QRT` row to `SPRINT-09` with a reason, declare it in the report, and claim no result.

The method is in [Step 5: Name The Risks And Their Fallbacks](../guides/planning-and-tracking.md#step-5-name-the-risks-and-their-fallbacks).

## Part 9: Carry Out The Week 6 Action Points And Open Questions

The rules:

- Read the action points the Week 6 report recorded, with their owners and due weeks: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).
- Record each outcome in the Week 7 meeting report, since the Week 6 report is not edited: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).
- Put each open question to the customer at the design review, or close it: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).

This week:

1. Read `## Action points` in `reports/week-06/meeting-report.md`, and carry out every action due by Week 7 and any action carried from an earlier report.
2. Carry each outcome into the artifact it changed.
3. Put each row of `## Open questions` in `reports/week-06/meeting-report.md` to the customer in [Part 10](#part-10-validate-the-test-design-with-the-customer), unless the work since has answered it.
4. Record each outcome in `## Previous action points` and `## Previous open questions` in `reports/week-07/meeting-report.md`.

## Part 10: Validate The Test Design With The Customer

The rules:

- The weekly meeting is the sprint's Sprint Review, so the meeting and the ceremony are one event: [Sprint Review](../requirements/sprint-ceremonies-requirements.md#sprint-review) and [Every Meeting](../requirements/customer-meetings-requirements.md#every-meeting).
- The design review shows the deployed production instance and the `UT-01` design on staging, and agrees the Week 8 plan: [Showing Working Software](../requirements/customer-meetings-requirements.md#showing-working-software).
- The team schedules the meeting, prepares in writing, assigns the roles, and asks the permission questions before recording: [Every Meeting](../requirements/customer-meetings-requirements.md#every-meeting) and [Permission Questions](../requirements/customer-meetings-requirements.md#permission-questions).
- Give each decision a `DEC-nnn` entry, list it in the report, and cite it from what it changed: [Decision Requirements](../requirements/decisions-requirements.md).
- Produce the report, and a transcript when the meeting was recorded or held in writing: [Where Meeting Artifacts Live](../requirements/customer-meetings-requirements.md#where-meeting-artifacts-live).

This week:

1. The meeting has to settle whether the test design will answer the customer's questions, whether the participant profile, the recruitment target, and the session plan are right, and what the results must show.
2. In `reports/week-07/meeting-script.md`, `## Agenda` starts with the three permission questions, shows the deployed production instance, the `UT-01` record and the staging deployment, the surveys, the tasks, the consent and the private repository, the recordings folder, the session plan, the `QR/QRT`, and the Week 8 plan, puts the open questions before the last part, and ends with the read-back of the decisions and action points.
3. Show the deployed production instance, and show the `UT-01` record and the staging deployment: the record's research questions, participant profile and recruitment target, tasks, surveys, consent, private repository, recordings folder, session plan, and `QR/QRT`, and the staging deployment's reset seed and test events.
4. Agree the Week 8 execution plan with the customer, including how the team will arrange the sessions and the results date.
5. Record the customer's feedback and any decision as a `DEC-nnn`, and list it in `## Decisions`.
6. `reports/week-07/meeting-report.md` closes the Week 6 action points and open questions, and carries at least two rows in `## Action points`, each due after Week 7, and at least one due in Week 8.

The method is in [Guide: Validating With The Customer](../guides/validating-with-the-customer.md).

## Part 11: Apply The Design Review, Run The Sprint's Testing-Plan Rows, And Cut `REL-07`

The rules:

- The release is cut at the sprint's end, on the state after the meeting and any same-week rework: [Releases](../requirements/planning-requirements.md#releases).
- `REL-07` carries `**Released:**` and `**Checked QRs:**`, and a sprint with no checked requirement says `None`: [Releases](../requirements/planning-requirements.md#releases).
- A testing-plan row the team's plan scheduled for `SPRINT-07` is run, or moved with a reason and declared: [Quality Requirement Testing Plan](../requirements/planning-requirements.md#quality-requirement-testing-plan).
- The release body is the upgrade note for whoever deploys it, and the changelog follows Keep a Changelog: [Cutting A Release](../requirements/releases-requirements.md#cutting-a-release).
- Close the sprint's GitHub milestone once the release is cut, after rescheduling each issue still open: [Sprints](../requirements/planning-requirements.md#sprints).

This week:

1. After the design review, apply its decisions to the record, the surveys, the consent, the task issues, the testing plan, and the `QR-nn` and its `QRT-nn` when the review changes the sub-characteristic, the measure, or the bar.
   A same-week rework is not an action point: apply it now.
2. Run each testing-plan row the team's own plan scheduled for `SPRINT-07`, or move it to `SPRINT-08` with a reason, and declare both in the report.
3. Update the testing plan with each row's result, its `Checked` sprint, and its evidence.
4. Keep `CHANGELOG.md` current, with an `[Unreleased]` entry for each notable change.
5. Merge the sprint's pull requests, then push the tag on that release commit, before the changelog, the `REL-07` block, and the report are merged.
   The release may be docs-only: its body says no product change and no upgrade is required, and it is tagged the team's next version, `v0.7.0` in this week's example.
   Protect the tag from being moved or deleted.
6. Move the released entries into the dated section, link it to the release, and open a new empty `[Unreleased]`.
7. Write `REL-07`'s block with `**Released:**` and `**Checked QRs:**`, listing each `QR-nn` the sprint checked or saying `None` when none was checked, and after the list write one sentence linking the plan's `## Quality Requirement Testing Plan` once.
8. Close `SPRINT-07`'s GitHub milestone after moving each issue still open into a later sprint's milestone.

The method is in [Releases](../guides/planning-and-tracking.md#releases) and [Step 4: Record The Progress](../guides/quality-requirement-tests.md#step-4-record-the-progress).

## Part 12: Close The Sprint And Hold The Retrospective

The rules:

- At the close, the sprint section gains `**Actual Velocity:**`, the points of the completed stories and one sentence on what moved out and to which sprint: [Sprints](../requirements/planning-requirements.md#sprints).
- Every sprint from `SPRINT-04` on ends with `reports/week-NN/sprint-retrospective.md`, carrying `## What Went Well`, `## What Did Not`, `## Actions`, and `## Carried Actions`: [Retrospective](../requirements/sprint-ceremonies-requirements.md#retrospective).

This week:

1. Set `**Actual Velocity:**` in `### SPRINT-07` from the completed stories, computed by hand from their `Story Points`, with one sentence on what moved out and to which sprint.
   A sprint that carried only tasks has `0`, and the sentence says the sprint was a task sprint.
2. Write `reports/week-07/sprint-retrospective.md` with its four sections, 3 or more things that went well, 2 or 3 that did not with their root causes, and 3 or 4 actions with their `Owner`, `Impact`, `Reason`, and `Carried` flag.
3. `## Carried Actions` carries the `SPRINT-06` actions marked `Carried: Yes`, each citing that file's `#actions` anchor with the action quoted and an `Outcome` of `Done`, `Not done`, or `Dropped`; an action whose `Outcome` is `Not done` is re-listed in `## Actions` with `Carried: Yes`.

The method is in [Close With The Retrospective](../guides/planning-and-tracking.md#close-with-the-retrospective).

## Part 13: Report On Your AI Usage

The rules:

- Name the tools you used, what for, and what you did with their output: [AI Usage Report](../requirements/weekly-report-requirements.md#ai-usage-report).

This week:

1. Write `reports/week-07/ai-usage.md`, naming each tool, what you used it for, and what you accepted, changed, or rejected, with the reason for each rejection.
2. If you used no AI tools, say so in one line.
3. Say whether an agent was given any usability material; if one was, confirm it was given the sanitized note rather than the raw recording or the private notes, and if none was, say so.

## Part 14: Hand Off The Week 8 Execution

The rules:

- The run week carries the results, and the results and findings rules begin when the sessions run or have run: [The Week 8 Execution](../requirements/usability-testing-requirements.md#the-week-8-execution).
- The results report carries the summary, and the record carries the detail: [Weekly Public Report](../requirements/weekly-report-requirements.md#weekly-public-report).
- A test that cannot finish moves its testing-plan row to `SPRINT-09` with a reason, and the report declares it: [Quality Requirement Testing Plan](../requirements/planning-requirements.md#quality-requirement-testing-plan).
- The results submission completes the rules in [The Results And Findings](../requirements/usability-testing-requirements.md#the-results-and-findings), [The Triage](../requirements/usability-testing-requirements.md#the-triage), and [The Week 8 Execution](../requirements/usability-testing-requirements.md#the-week-8-execution).

This week:

1. Confirm the recruitment target, the participant profile, and the team's plan for arranging the sessions; the exact participants and the dates are not due in Week 7.
2. Confirm the private repository and the recordings folder are ready, and that the instructors can open both.
3. Confirm the `QR/QRT` row is `Not verified` with `Planned for sprint: SPRINT-08`.
4. Confirm the `results.md` stub, the findings template, and the triage plan are in place.
5. Claim no result in Week 7: the results, the findings, the verdict, and the triage are due with Submission 8, even when the sessions have already run.

## What Good Looks Like

Assume your weekly public report is read by someone who does not know your project.
A strong submission has:

- **A `UT-01` record a stranger can run.**
  The goal and the research questions, the participant profile, a recruitment target of at least three representative participants aged 18 or older with five as the design target, the one main and two secondary usability test tasks, the same for every participant, the success criteria, the time limit, the fixed order, the no-label wording, the help rule, the facilitator and observer roles by GitHub username, the staging environment with seeded data, in person on the university network, and the team's plan for arranging the sessions.
- **A consent and a data split a reviewer can check.**
  The durable consent and the required recording plus the sanitized public results for every counted session, the private text repository with the consent records, the identity mapping, the working analysis, and the recordings folder link and access, the cloud recordings folder, the public sanitized record, the public link and the link-check exclusion, and the Moodle links, with no raw participant data and no private link without an exclusion in the product repository.
- **Instruments a reader can answer.**
  The pre-test, the SEQ after each task, the full ten SUS items, the correct formula, the open-ended post-test, the qualitative observation, the quantitative completion, the assistance, the time, the SEQ, and the analysis plan that will report the minimum measures, including the SUS mean and median with the `n=<count>` caveat, and any additional measure named before the first session, in Week 8, and the plan to read the Week 6 telemetry with `source=usability-test` in the results week.
- **A quality requirement a manual test settles.**
  An `Interaction Capability` `QR-nn` with a team-chosen sub-characteristic, a team-chosen measure from the recorded measures, read with a statistic the analysis plan reports, against a bar the team sets before the sessions, and a `manual` `QRT-nn` that names `UT-01`, carries `**Why Manual:**` for that measure, has a testing-plan row that is `Not verified` with `Planned for sprint: SPRINT-08`, needs no deviation, and is ready to record `Passes` or `Fails` in Week 8 with the sanitized results and the private raw data.
- **A usability goal in the threshold is optional.**
  `TOS-03` in [the planning full example](../requirements/planning-requirements.md#full-example) is only an example: a team without a usability goal is not penalised, and a team whose threshold has one cites `UT-01` in its `**Outcome:**`; the required check is the `QR/QRT`.
- **A Week 7 report that claims no result.**
  The report links the design, the surveys, the consent, the `QR/QRT`, the private repository, and the session plan, names the recordings folder, and links the Sprint Review, `REL-07`, the retrospective, and the AI usage; it says the team arranges the sessions and the results are due with Submission 8.
- **A release whose record says what was checked.**
  `REL-07` is cut on the release commit, its tag is protected from being moved or deleted, its `**Checked QRs:**` lists each checked `QR-nn` or says `None` and closes with the one sentence linking the testing plan, it is tagged the team's next version, and when the release is docs-only its upgrade note says no product change and no upgrade is required; the `SPRINT-07` milestone is closed after any open issue is rescheduled.
- **A Week 8 handoff another week can start from.**
  A recruitment target of at least three participants with five as the design target, the participant profile, the team's plan for arranging the sessions, the private repository and the recordings folder ready, the `results.md` stub and the findings and triage templates ready, and the `QR/QRT` row in `SPRINT-08`.
- **A test design that uses the Week 6 events rather than a new schema.**
  The main task is the flow the event table covers, no per-participant field is added, every metric excludes `smoke` and `source=usability-test`, and the test traffic is not presented as a value.
- **One path and one identifier, everywhere.**
  A `UT-01` record a reader can find from `docs/usability-tests/README.md`, the weekly report, the testing plan, the quality requirements index, and the guide, with the same path and the same identifier in each.

## Assignment Report In The Repository

Write `reports/week-07/README.md`, per [Weekly Public Report](../requirements/weekly-report-requirements.md#weekly-public-report).
This week it also carries:

1. In the summary, say that the test is designed and the recruitment is planned, and give the recruitment target and the participant profile, the `QR/QRT`, the private repository, the recordings folder, the team's session plan, and the fact that no usability result is claimed.
   Say whether the design review's transcript was published, shared privately, or not made, and why.
   Point at `docs/project-plan.md#quality-requirement-testing-plan` for the rows that are not `Passes`, and copy none of them.
2. The `## Usability test` section, per [Weekly Public Report](../requirements/weekly-report-requirements.md#weekly-public-report): the design summary, the recruitment target and the participant profile, the tasks, the surveys, the consent and the private repository, the link-check exclusion and its reason, the recordings folder, the session plan, the `QR/QRT`, and the Week 8 handoff.
3. The coverage table, with these rows:

| Deliverable                         | Artifact                                                                                                                              |
| ----------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- |
| Sprint plan                         | `docs/project-plan.md#sprint-07`                                                                                                      |
| `UT-01` test record                 | `docs/usability-tests/ut-01/README.md`                                                                                                |
| Surveys and post-test               | `docs/usability-tests/ut-01/surveys.md`                                                                                               |
| Tasks and protocol                  | `docs/usability-tests/ut-01/README.md#the-tasks` and `docs/usability-tests/ut-01/sessions/README.md`                                  |
| Consent template                    | `docs/usability-tests/ut-01/consent.md`                                                                                               |
| Private usability-data repository   | the private `<organization>/<repo>-usability-data` repository, linked from the record and the report and excluded from the link check |
| Recordings folder                   | the team's cloud folder, linked in the Moodle submission                                                                              |
| `QR-nn` and its test                | the new `QR-nn` file under `docs/quality-requirements/qr/` and its `QRT-01`                                                           |
| Recruitment target and session plan | `docs/usability-tests/ut-01/README.md#participant-profile` and `docs/usability-tests/ut-01/README.md#schedule`                        |
| Week 8 handoff                      | `reports/week-07/README.md#usability-test`                                                                                            |
| Glossary                            | `docs/glossary.md`                                                                                                                    |
| Risk register                       | `docs/risks.md`                                                                                                                       |
| Week 6 action points                | `## Previous action points` in `reports/week-07/meeting-report.md`                                                                    |
| Week 6 open questions               | `## Previous open questions` in the same report                                                                                       |
| Sprint Review                       | `reports/week-07/meeting-report.md`                                                                                                   |
| Meeting script                      | `reports/week-07/meeting-script.md`                                                                                                   |
| Meeting transcript                  | `reports/week-07/meeting-transcript.md`, or one line saying why there is none                                                         |
| `REL-07`                            | the tag and its release body, `CHANGELOG.md`, and `docs/project-plan.md#rel-07` with `Released` and `Checked QRs`                     |
| Sprint retrospective                | `reports/week-07/sprint-retrospective.md`                                                                                             |
| AI usage                            | `reports/week-07/ai-usage.md`                                                                                                         |

4. Repository evidence: one merged pull request that closed its task issue, and the latest green link-check, Markdown-check, `actionlint`, and product-code CI runs on `main`.
5. `## Deviations`: anything you did differently from this assignment, per [Declaring Deviations](../requirements/weekly-report-requirements.md#declaring-deviations), including a participant who could not be recruited or recorded, a private repository or recordings folder the instructors could not access, and a `SPRINT-07` testing-plan row that moved to `SPRINT-08` with its reason.
6. `## Privacy`: one line that no private-only material was committed to the product repository, and no participant identity was committed to it.

## Assignment Report On Moodle

Create one PDF, per [Private Submission Wrapper](../requirements/weekly-report-requirements.md#private-submission-wrapper).
Keep it to two pages, and put nothing in it except the following.
A transcript under item 8 goes in an appendix, which the two pages do not count.

1. Project name and the team number.
2. A table of team members: GitHub username, real name, and university email.
3. A permalink to `reports/week-07/README.md` at the full commit hash.
4. The private usability-data repository URL and the access instructions, and the recordings folder URL and the access instructions.
5. The product's staging and production addresses on the university VM, private-only, with the note that the customer reaches them from the university network.
6. The staging analytics dashboard and backend addresses and credentials, and the staging observability dashboard, backend, and query addresses and credentials, private-only.
7. A link to the design review's recording, accessible to instructors, or one line saying why there is none: the customer refused recording, or the meeting was held in writing.
8. The meeting transcript, if the customer refused to let you publish it.
9. One line confirming that no private-only material was committed to the repository, and no participant identity was committed to it.

The PDF carries no participant identity.
The production analytics and observability dashboards are the Week 6 wrapper's; this week's wrapper does not repeat them.

### Submission Procedure

- Merge `reports/week-07/README.md` and every file it links into `main`.
- Take the permalink and the snapshot from that `main` commit, per [Permalinks And Snapshots](../requirements/repository-requirements.md#permalinks-and-snapshots).
- Submit the PDF and the snapshot through Moodle.

## Checklist

- [ ] `SPRINT-07` planned with its goal, its `**Due:**` field, its `**Sprint Backlog:**` link, and its `**Planned Velocity:**`, and `SPRINT-08` given its provisional goal, its `**Due:**` of `2026-11-21`, and its backlog link ([Part 1](#part-1-refine-the-product-backlog-and-plan-the-sprint)).
- [ ] The design tasks scheduled in `SPRINT-07`, the sessions in the sprint of the last counted session, the results tasks in `SPRINT-08`, and each task issue carrying its `### Requirements`, its criteria, its `Responsible`, its `Accountable`, and its assignees ([Part 1](#part-1-refine-the-product-backlog-and-plan-the-sprint)).
- [ ] `docs/usability-tests/README.md` with the `UT-01` row, and `docs/usability-tests/ut-01/README.md` with its heading, its status, its design and run sprints, its `**Dropped:**` field when dropped, and its parts ([Part 2](#part-2-write-the-ut-01-test-record)).
- [ ] `surveys.md` with the pre-test, the SEQ after each task, the full ten SUS items and the formula, and the open-ended post-test ([Part 3](#part-3-write-the-surveys-and-the-task-protocol)).
- [ ] The main task and the two secondary tasks, the same for every participant, with their scenarios, start points, end states, success criteria, time limits, fixed order, and no UI labels or steps ([Part 3](#part-3-write-the-surveys-and-the-task-protocol)).
- [ ] `sessions/README.md` with the facilitation script, the pre-test, the open-ended post-test, the no-help rule, the observation sheet, the roles by GitHub username, and the stop rule, and the dry run recorded as not counted ([Part 3](#part-3-write-the-surveys-and-the-task-protocol)).
- [ ] `consent.md` as the public template, the private `<organization>/<repo>-usability-data` repository private and shared with the instructors, and the recordings folder created and shared ([Part 4](#part-4-write-the-consent-and-create-the-private-repository)).
- [ ] The public link to the private repository and its link-check exclusion, the retention and deletion rule, and the private links in the Moodle wrapper ([Part 4](#part-4-write-the-consent-and-create-the-private-repository)).
- [ ] The new `Interaction Capability` `QR-nn` with `High` business importance, the team's technical risk, one chosen sub-characteristic and its reason, a team-chosen measure from the recorded measures, read with a statistic the analysis plan reports, against a bar set before the sessions, and its scenario ([Part 5](#part-5-write-the-quality-requirement-and-its-manual-test)).
- [ ] The `manual` `QRT-01` naming `UT-01` in `**Runs at:**`, with its `**Why Manual:**`, its procedure, its `**Pass when:**`, and its `Not verified` testing-plan row planned for `SPRINT-08` ([Part 5](#part-5-write-the-quality-requirement-and-its-manual-test)).
- [ ] The requirement's row in the quality requirements index (the matrix) ([Part 5](#part-5-write-the-quality-requirement-and-its-manual-test)).
- [ ] A recruitment target of at least three representative participants, 18 or older, matching the profile, five as the design target, and the consent template ready to collect, covering the recording and the sanitized public results ([Part 6](#part-6-plan-the-recruitment-and-the-sessions)).
- [ ] The session plan in `## Schedule` with the team's dates or how it will arrange them, the results-due date, in person, on the university network, against staging, with the seed reset and the `source=usability-test` check ([Part 6](#part-6-plan-the-recruitment-and-the-sessions)).
- [ ] The analysis plan written before the first session, with the minimum measures and any additional measure named before the first session, each task's outcome and the assistance, the `results.md` stub with its headings, the findings template, the triage plan, and the evidence map ([Part 7](#part-7-write-the-analysis-plan-and-the-evidence-map)).
- [ ] The Week 7 usability terms in `docs/glossary.md` and the recruitment, consent, data-access, and schedule risks in `docs/risks.md`, each starting `**Status:** Open` ([Part 8](#part-8-update-the-glossary-and-the-risk-register)).
- [ ] Each Week 6 action point's outcome in `## Previous action points`, and each Week 6 open question put to the customer or carried forward ([Part 9](#part-9-carry-out-the-week-6-action-points-and-open-questions)).
- [ ] `reports/week-07/meeting-script.md` with the permission questions first, the design on staging, the Week 8 plan, and the read-back last ([Part 10](#part-10-validate-the-test-design-with-the-customer)).
- [ ] `reports/week-07/meeting-report.md`, with the design review's feedback, a `DEC-nnn` for any decision, and 2 or more action points due after Week 7, at least one in Week 8 ([Part 10](#part-10-validate-the-test-design-with-the-customer)).
- [ ] The design review's decisions applied, including the `QR/QRT` when the review changes it, each `SPRINT-07` testing-plan row run or moved with a reason, and the testing plan updated ([Part 11](#part-11-apply-the-design-review-run-the-sprints-testing-plan-rows-and-cut-rel-07)).
- [ ] `REL-07` tagged on the release commit, its tag protected, with the changelog's released section, the upgrade note ending with the `Full changelog` line, the plan's `REL-07` block with `Released` and `Checked QRs` and the one sentence linking the testing plan, and the sprint milestone closed ([Part 11](#part-11-apply-the-design-review-run-the-sprints-testing-plan-rows-and-cut-rel-07)).
- [ ] `**Actual Velocity:**` set in `### SPRINT-07`, and `reports/week-07/sprint-retrospective.md` with its four sections, its carried actions, and any `Not done` action re-listed with `Carried: Yes` ([Part 12](#part-12-close-the-sprint-and-hold-the-retrospective)).
- [ ] `reports/week-07/ai-usage.md`, including whether an agent was given usability material, and if so, that it was the sanitized note ([Part 13](#part-13-report-on-your-ai-usage)).
- [ ] The Week 8 handoff ready: the recruitment target and the participant profile, the plan for arranging the sessions, the private repository and the recordings folder ready, the `QR/QRT` row in `SPRINT-08`, and the `results.md` stub and triage plan ready, with no result claimed and the results due with Submission 8 ([Part 14](#part-14-hand-off-the-week-8-execution)).
- [ ] `reports/week-07/README.md` with the summary, the `## Usability test` section, the coverage rows, and the `## Privacy` line ([Assignment Report In The Repository](#assignment-report-in-the-repository)).
- [ ] Everything merged into `main`, with the permalink and the snapshot taken from that commit ([Submission Procedure](#submission-procedure)).
- [ ] PDF ready with the permalink, the private repository and recordings folder links and access, the staging and production addresses, the staging analytics and observability credentials, and no participant identity ([Assignment Report On Moodle](#assignment-report-on-moodle)).
- [ ] The design review's recording and transcript in the PDF, or one line for each saying why ([Assignment Report On Moodle](#assignment-report-on-moodle)).
