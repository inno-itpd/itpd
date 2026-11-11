# Guide: Usability Testing

How to design a usability test a stranger can run, recruit the people it needs, record what they do, and turn what they found into work the product backlog carries.

The rules are in [Usability Testing Requirements](../requirements/usability-testing-requirements.md): the record, the participants, the tasks, the protocol, the instruments, the analysis, the consent, the private repository, the public evidence, the results, and the triage.
The quality requirement the test serves is in [Quality Requirements](../requirements/quality-requirements-requirements.md), what a manual test must carry is in [Quality Requirement Tests](../requirements/quality-requirements-requirements.md#quality-requirement-tests), and the testing plan that records the verdict is in [Planning Requirements](../requirements/planning-requirements.md#quality-requirement-testing-plan).
Who may see each artifact is in [Visibility Requirements](../requirements/visibility-requirements.md), the events the test reads are in [Product Analytics Requirements](../requirements/analytics-requirements.md#the-events), and the staging deployment it runs against is in [Environments And Deployment](../requirements/repository-requirements.md#environments-and-deployment).
This guide is the method: designing the test, preparing the data, running the sessions, analyzing the results, and learning from them.

**Timebox:** about a day and a half for the design, most of it on the tasks and the consent, and about a day for the sessions and the analysis once the sessions are arranged.
Recruiting is the long pole and starts first, because three people outside the team cannot be found on the deadline's evening.

<h2>Table of contents</h2>

- [What You Produce](#what-you-produce)
- [Step 1: Write The Test Record And The Goal](#step-1-write-the-test-record-and-the-goal)
  - [Open The Group With Its Index Row](#open-the-group-with-its-index-row)
  - [State The Goal And The Questions](#state-the-goal-and-the-questions)
  - [Name The Requirement The Test Serves](#name-the-requirement-the-test-serves)
- [Step 2: Choose And Recruit The Participants](#step-2-choose-and-recruit-the-participants)
  - [Write The Profile Before You Recruit](#write-the-profile-before-you-recruit)
  - [Recruit Three, Aim For Five](#recruit-three-aim-for-five)
  - [Set The Recruitment Target And The Dates](#set-the-recruitment-target-and-the-dates)
  - [Replace Without Reusing A Code](#replace-without-reusing-a-code)
- [Step 3: Write The Tasks And The Success Criteria](#step-3-write-the-tasks-and-the-success-criteria)
  - [Start The Main Task From The Event Table](#start-the-main-task-from-the-event-table)
  - [Write The Scenario, Not The Steps](#write-the-scenario-not-the-steps)
  - [Write The Success Criterion Before The First Session](#write-the-success-criterion-before-the-first-session)
  - [Dry Run With A Teammate](#dry-run-with-a-teammate)
- [Step 4: Write The Instruments](#step-4-write-the-instruments)
  - [Ask Only What The Session Can Record](#ask-only-what-the-session-can-record)
  - [Use The Standard SUS](#use-the-standard-sus)
  - [Read The Main Task's SEQ](#read-the-main-tasks-seq)
  - [Keep The Sample Caveat With The Number](#keep-the-sample-caveat-with-the-number)
- [Step 5: Write The Consent And Create The Private Repository](#step-5-write-the-consent-and-create-the-private-repository)
  - [Make The Consent Durable And Complete](#make-the-consent-durable-and-complete)
  - [Separate The Text Data From The Recordings](#separate-the-text-data-from-the-recordings)
  - [Link The Private Repository Without Breaking The Check](#link-the-private-repository-without-breaking-the-check)
- [Step 6: Set The Protocol, The Roles, And The Schedule](#step-6-set-the-protocol-the-roles-and-the-schedule)
  - [Run Every Session The Same Way](#run-every-session-the-same-way)
  - [Facilitate Without Leading](#facilitate-without-leading)
  - [Arrange The Sessions And Write The Report](#arrange-the-sessions-and-write-the-report)
- [Step 7: Write The Analysis Plan And The Evidence Map](#step-7-write-the-analysis-plan-and-the-evidence-map)
  - [Fix The Measures Before The Data](#fix-the-measures-before-the-data)
  - [Draw The Evidence Map](#draw-the-evidence-map)
  - [Leave The Results A Stub](#leave-the-results-a-stub)
- [Step 8: Write The Quality Requirement And Its Test](#step-8-write-the-quality-requirement-and-its-test)
  - [Choose One Interaction Capability Sub-Characteristic](#choose-one-interaction-capability-sub-characteristic)
  - [Write The Manual Test Around The Record](#write-the-manual-test-around-the-record)
- [Step 9: Run The Sessions And Analyze The Results](#step-9-run-the-sessions-and-analyze-the-results)
  - [Run At Least Three Counted Sessions](#run-at-least-three-counted-sessions)
  - [Write The Sanitized Note After Every Session](#write-the-sanitized-note-after-every-session)
  - [Write The Results And The Findings](#write-the-results-and-the-findings)
- [Step 10: Triage The Findings And Learn](#step-10-triage-the-findings-and-learn)
  - [Rate, Recommend, And Route](#rate-recommend-and-route)
  - [Record The Verdict And The Learning](#record-the-verdict-and-the-learning)
- [Step 11: Keep The Data Private And Delete It](#step-11-keep-the-data-private-and-delete-it)
  - [Publish Only The Sanitized Record](#publish-only-the-sanitized-record)
  - [Keep The Links In The Moodle Wrapper](#keep-the-links-in-the-moodle-wrapper)
  - [Delete After Grading](#delete-after-grading)
- [Common Mistakes](#common-mistakes)

## What You Produce

```text
docs/usability-tests/README.md             the index: one row per UT-nn with its goal, status, results, and sprints
docs/usability-tests/ut-01/README.md       the test record: goal, questions, profile, tasks, protocol, measures, analysis, schedule, roles, environment, evidence map
docs/usability-tests/ut-01/surveys.md      the pre-test, the SEQ, the ten SUS items, and the open-ended post-test
docs/usability-tests/ut-01/consent.md      the public consent template
docs/usability-tests/ut-01/sessions/       the session template in README.md, and one sanitized P-nn.md per counted session
docs/usability-tests/ut-01/results.md      the aggregate results, the SUS and SEQ summary, the findings, the limitations, and the conclusion
docs/usability-tests/ut-01/images/         the sanitized screenshots
docs/quality-requirements/qr/QR-nn.md      the Interaction Capability requirement and its manual test, whose Runs at names the UT-nn
docs/project-plan.md                       the testing-plan row, and the sprint that schedules the design and the run
reports/week-NN/README.md                  the design report in Week 7 and the results summary in Week 8
```

The record is the design, the results are what the sessions found, and the private repository is the raw evidence: three places, one fact each, and no fact in two of them.
The record and the results are public and sanitized; the consent records, the identity mapping, the raw notes, and the filtered telemetry export are private.

## Step 1: Write The Test Record And The Goal

The record is the file a stranger runs the test from, so it is written before anything else the test needs.
[The Test Record](../requirements/usability-testing-requirements.md#the-test-record) owns its fields and [Where The Usability Tests Live](../requirements/usability-testing-requirements.md#where-the-usability-tests-live) owns the group and its index.

### Open The Group With Its Index Row

Create `docs/usability-tests/README.md` with its one table, and add the test's row when the record exists.
The columns are `UT`, `Goal`, `Status`, `Results`, and `Sprints`, and the `Results` cell is `Pending` in the design week and a link to `results.md` after the sessions run.
Create `docs/usability-tests/ut-01/` with the record in `README.md`, and let the other files arrive in the steps that need them.

The identifier is `UT-01`, the directory is `ut-01`, and the record's heading is `# UT-01: <title>`.
The path is lowercase because a directory is kebab-case, and the identifier stays uppercase: they are different strings, and the record's heading carries the identifier.

### State The Goal And The Questions

Write the goal as one sentence a reader outside the course can follow: whether a representative participant can book and pay for a session without help.
Then write two or three research questions, each answerable with what the session records.
A question about the participant's feelings that no measure reaches is cut now, not asked and then left unanswered.

The questions decide the tasks and the measures: a question about finding a free slot is answered by the main task's completion, and a question about where the participant hesitates is answered by the observation and the SEQ.

### Name The Requirement The Test Serves

Link the `QR-nn` the test serves, and write its `QRT-nn` with this test in `**Runs at:**`.
The record and the test point at each other, and the requirement is what makes the test graded rather than optional.
[Step 8](#step-8-write-the-quality-requirement-and-its-test) writes them, and the record's field is written first because the test cites the record.

Keep the record's `**Design sprint:**` and `**Run sprint:**` set to the two sprints the plan schedules: `SPRINT-07` for the design and `SPRINT-08` for the run, `SPRINT-07` for the run when every counted session runs before the design week's deadline, and `SPRINT-09` only when the plan moves.
When the sessions straddle `SPRINT-07` and `SPRINT-08`, the field names the sprint of the last counted session, the record says which sessions ran early, and the index lists both.
The `**Status:**` is `Planned` from the first day and becomes `Completed` when the counted sessions and the results are recorded.

## Step 2: Choose And Recruit The Participants

The participants are the test: a test run on the team is a rehearsal, not evidence.
[The Participants](../requirements/usability-testing-requirements.md#the-participants) owns the count, the exclusions, and the codes, and [The Participant Profile](../requirements/usability-testing-requirements.md#the-participant-profile) owns the profile.

### Write The Profile Before You Recruit

Write the profile in observable terms: the role and the task the target user does, the familiarity with similar products, the device, and the relation to the target user.
"Someone who books sessions online and has used a booking page before" is a criterion a reviewer can apply; "a potential user" is not.
The product vision's stakeholders are background, not the profile: they name who the product is for, not how a session is judged to match.

Every counted session matches the profile, and a session with someone outside it is exploratory and is not counted.
Say which sessions were exploratory, in the report, rather than quietly counting them.

### Recruit Three, Aim For Five

At least three completed sessions are the minimum, and five is the design target.
Recruit from outside the team: a classmate who is not on the team is allowed, a teammate, the customer, the instructor, and the course staff are not.
Ask people who match the profile, and ask early: a session scheduled the day before the results are due has no replacement when the person cancels.

Every participant is 18 or older, and the pre-test records the declaration.
For a participant who may not be, do not count the session.

### Set The Recruitment Target And The Dates

Decide in the design week how many participants to recruit, at least three and five as the design target, and start asking people who match the profile.
The dates are the team's to arrange: a session may run as soon as the design is written, including before the design week's deadline, so the results submission has room for a replacement.

Each session has a code assigned in the order it is arranged, `P-01`, `P-02`, and so on, and the code is local to the test.
The code is how the public notes and the results refer to a participant, and the identity mapping is the only place the code and the person are joined.

### Replace Without Reusing A Code

A pilot or a dry run with a teammate does not count, and it is not evidence.
A session that is withdrawn, not recorded, not consented to the recording and the sanitized public results, or technically broken does not count either.
A participant who does not complete the task does count, because the failure is a result.

When a session does not count, recruit a replacement and assign the next free code: a retired code is never reused, because the results and the notes keep their history by code.

## Step 3: Write The Tasks And The Success Criteria

The tasks are what makes one participant's run comparable with another's.
[The Tasks](../requirements/usability-testing-requirements.md#the-tasks) owns the count, the wording rule, and the success criteria.

### Start The Main Task From The Event Table

The main usability test task is the product's main flow that the Week 6 event table covers, and it is the subject of the quality requirement.
Read [The Events](../requirements/analytics-requirements.md#the-events) and name the task from the flow the events record end to end, so the observation and the telemetry describe the same path.

Add two secondary tasks that cover adjacent flows the team wants to learn about, such as a reschedule and finding the meeting link.
The secondary tasks are identical for every participant, in the same order, and the main task comes first.

The materials call it a usability test task and never `core task`: the core task is the product's own term, and the test's task is this week's instrument.

### Write The Scenario, Not The Steps

A task is a scenario: what the participant wants to achieve, and where the session starts.
"You want a session with this coach next week, and you want it confirmed.
Start at the coach's booking link." is a scenario.
"Click Book, choose a slot, then Pay." is a script, and it tests the script rather than the product.

The wording names no button, label, screen, step, or step count.
When the participant cannot find the control, the friction is the finding; when the wording named the control, the friction is the wording's fault.
Write the end state as what the participant can see, and keep the time limit out of the scenario's first sentence.

### Write The Success Criterion Before The First Session

The criterion is one of `Unaided`, `Assisted`, or `Failed`, and it is written before the first session so the team cannot grade the participant after seeing what they did.
`Unaided` means the end state is reached without help, `Assisted` means a hint or help was needed and is recorded, and `Failed` means the end state is not reached within the time limit.

Write the time limit and the help rule with the task.
The help rule says what counts as help: a hint, a pointer, or solving the step, each recorded in the note beside the task.
The facilitator reads the scenario verbatim, answers only questions about the scenario, and does not answer questions about the interface.

### Dry Run With A Teammate

Run the scenario once with a teammate before the first counted session, and use the dry run to check the wording and the time limit.
The dry run is not evidence, its participant is not a counted participant, and its data is not in the results.

The dry run also checks the recording and whether the SUS is readable: a participant who cannot follow the ten items on a screen will not follow them in a session either.

## Step 4: Write The Instruments

The instruments are the questions every session records, and `surveys.md` holds them.
[The Instruments](../requirements/usability-testing-requirements.md#the-instruments) owns what each session records and the SUS' scoring.

### Ask Only What The Session Can Record

The pre-test records the role and background, the familiarity, the device, and the expectations, and it carries no name, email address, phone number, or free-text identification.
A pre-test that asks for a name turns the public record into a place personal data can leak into, and the codes already do the work a name would do.

The pre-test also carries the 18-or-older declaration, and the participant's answers stay with the session's note rather than in the public repository.

The quantitative measures are the completion, the assistance, the time on task, the SEQ, the SUS, and the events where they cover the task; the qualitative ones are the observation, the quotes, the friction points, and the think-aloud.
Write both, because a completion rate with no observation says what happened and not why.

### Use The Standard SUS

The SUS is the standard ten items in their standard order and wording, and the items are not reworded: a changed item is not comparable with another team's SUS or with the lecture's benchmark.
`The system` is kept in every item, and the product's name never replaces it.
The full ten items are in [the full example](../requirements/usability-testing-requirements.md#full-example), and the assignment prints them beside `surveys.md`.

Each item is answered from strongly disagree (1) to strongly agree (5), and the score is `SUS = 2.5 × (20 + sum(odd) - sum(even))`, computed from the responses as recorded.
The odd items' answers are added and the even items' answers are subtracted, because the even items are negatively worded; the even items are not reverse-coded before the formula.
A raw sum of the ten answers is not a SUS score, and it moves the number by tens of points.

A worked score: five odd answers of 5, 4, 4, 5, and 5 and five even answers of 2, 1, 2, 2, and 1 give `2.5 × (20 + 23 - 8) = 87.5`.
The lecture reads 68 as the average and 80 as excellent; with three to five participants, report the mean and median with `n` and read the number as a description of those people.

The ASQ is optional: the SEQ and the SUS are enough for comparability and for the lecture's frameworks.

### Read The Main Task's SEQ

The SEQ is the standard question after each task, `Overall, how difficult or easy was the task to complete?`, on a seven-point scale where 1 is very difficult and 7 is very easy, and the quality requirement reads the main task's median SEQ.
Record the SEQ after every task, including a task the participant failed, because a failed task's ease rating is part of what the failure felt like.

The results report the per-task SEQ for the main task and for the two secondary tasks, so a reader can see which flow is the problem rather than one number over all three.

### Keep The Sample Caveat With The Number

Five participants support no claim about a population, so the results state the SUS mean and median with `n=<count>`, and the guide's reading is read as a description of five people.
A team that writes "85% of users would" from five sessions has claimed a study it did not run.

## Step 5: Write The Consent And Create The Private Repository

The consent is what makes a session evidence, and the private repository is where the evidence that identifies a person lives.
[Consent And Recording](../requirements/usability-testing-requirements.md#consent-and-recording) and [The Private Data Repository](../requirements/usability-testing-requirements.md#the-private-data-repository) own both.

### Make The Consent Durable And Complete

Write `consent.md` as the public template, and have every counted participant agree to it in a durable form before the session: a signed form, an email, a Telegram message, or another record the team can show the instructors.
The consent covers the 18-or-older declaration, the participation, the recording, the sanitized public results, the anonymized quotes, the private repository, the recordings folder, the instructors' access, the tools used, the right to withdraw, and the deletion after grading.

The recording and the sanitized public results are required for a session to count, and the anonymized quote is optional and separate.
A participant who consents to the recording and the public results but not to a quote still counts, and the team publishes no quote from that session.
Check the public-results clause before the session, because a participant who refuses it cannot take part and the team needs the replacement's time.

### Separate The Text Data From The Recordings

Create one private `<organization>/<repo>-usability-data` repository, add the team and the instructors as readers, and keep text in it only: the consent records, the identity mapping, the raw notes, the filtered telemetry export, the working analysis, and the recordings folder link and access.
The layout is the team's choice; the contents are not.

Create the team-owned cloud folder for the recordings, share it with the instructors, and record its link and the access instructions in the private repository.
A recording is never in the product repository and never in the private repository, because a file that large and that private does not belong in either git history.

The private repository and the recordings stay until the course is graded, and then the repository, its history, and the recordings are deleted.
The consent says so, and the report repeats it once.

### Link The Private Repository Without Breaking The Check

The product repository links the private repository in the record and the weekly report, and the link is excluded from the link check because it needs authentication, with the reason beside the exclusion in the link check's configuration.
[Link Checking](../requirements/repository-requirements.md#link-checking) owns the exclusion rule, and the Moodle PDF carries the link and its access instructions.

When an instructor cannot access GitHub, give the private text data through a Moodle-only archive and declare the deviation, per [Declaring Deviations](../requirements/weekly-report-requirements.md#declaring-deviations).
The sanitized public record still stands, because it carries none of the private text.

## Step 6: Set The Protocol, The Roles, And The Schedule

The protocol is the order every session follows, so the sessions produce comparable data.
[The Protocol](../requirements/usability-testing-requirements.md#the-protocol) owns the order and the rules.

### Run Every Session The Same Way

The order is the welcome, the consent and recording check, the pre-test, the think-aloud instruction, the scenario reading, the observation, the SEQ after each task, the SUS and the open-ended post-test after all the tasks, and the debrief.
Write the session template in `sessions/README.md`, and have the facilitator follow it in every counted session.

The session is in person, on the university network, against the staging deployment, with the seed reset before it and no real payment.
The staging address and credentials are shared for the session and are never committed, per [Sensitive Information Reference](../requirements/visibility-requirements.md#sensitive-information-reference).
Check that every test event carries `source=usability-test` before the first counted session, so the funnel is readable afterwards.

The stop rule: stop the session when the participant asks to stop, or when a critical or security-sensitive problem appears, record the stop and its reason, and do not count a session whose data is incomplete.

### Facilitate Without Leading

The facilitator reads the scenario verbatim, answers only questions about the scenario, and never about the interface.
"I can't find it" is a result; "it's under the date picker" is a spoiled session.

The observer records the help, the time, the friction, and the quotes, and does not prompt.
At least two team members run each session, and the same facilitator runs all the counted sessions, so the sessions are comparable.

Record the assistant's help in the note beside the task, and rate the task `Assisted` rather than `Unaided` when it was given.

### Arrange The Sessions And Write The Report

Arrange the at least three sessions at the dates the team sets; they may run as soon as the design is written, and the results, the analysis, and the triage are due with Submission 8 on 21 November.
The Week 8 review is at the time arranged with the customer, and the report records when it was and what was shown.

When the sessions cannot finish, move the quality requirement's testing-plan row to `SPRINT-09` with a reason, and declare the open window in the results report.
No result is claimed for a session that did not run.

## Step 7: Write The Analysis Plan And The Evidence Map

The analysis plan is written before the first session, so the team cannot choose its measures after seeing the data.
[The Analysis](../requirements/usability-testing-requirements.md#the-analysis) owns what it covers.

### Fix The Measures Before The Data

Write the per-participant table's columns, the aggregate completion rate, the median time, the median SEQ, the SUS mean and median, the thematic analysis, the severity rating, the telemetry comparison, and the limitations, before the first session.
The columns are what the team commits to reading, and a measure added after the data is a measure chosen to flatter the result.

The thematic analysis groups the observations into a small set of themes, each with the sessions it came from.
One participant's remark is a quote, not a theme.

### Draw The Evidence Map

Map each item to its place before the first session: the record, the surveys, the consent template, the session template, the sanitized notes, the results, and the images to the public repository; the consent records, the identity mapping, the raw notes, the filtered telemetry export, and the working analysis to the private repository; the recordings to the cloud folder.
Put the same map in the record, so a reader sees where each piece of evidence lives without leaving the test.

Mark which links are private-only and which are public, and put the private ones in the Moodle wrapper rather than in a public file.

### Leave The Results A Stub

Create `results.md` in the design week with its headings and no findings, and link it from the record and the index.
A stub says the results exist and are not written yet; a record that claims a result before the sessions run is a claim the test cannot support.

The stub's headings are the results table, the findings, the limitations, and the conclusion, so the run week fills a shape rather than inventing one under the deadline.

## Step 8: Write The Quality Requirement And Its Test

The test's result is graded through a quality requirement, and the record is the test's procedure.
[Quality Requirement Tests](../requirements/quality-requirements-requirements.md#quality-requirement-tests) owns the fields, the manual test, and the no-deviation rule.

### Choose One Interaction Capability Sub-Characteristic

The requirement uses `Interaction Capability` and one sub-characteristic the team chooses from `Learnability`, `Self-descriptiveness`, and `Operability`.
Choose the one the test actually measures, and write one sentence saying why: `Self-descriptiveness` fits a participant who must recognise what to do without a label, `Learnability` fits a first-time task, and `Operability` fits the effort of the interaction.

The scenario reads a representative participant completing the main usability test task, in the staging deployment on the university network with seeded data, and the response is the participant's SEQ rating on the main task, recorded after the attempt.
The `Response Measure` is the median main-task SEQ against a bar the team sets before the first session.
The example bar is at least five of seven; a team may set another bar, and the test settles it.
The completion, the assistance, the time, and the SUS stay analysis results and are not the requirement's measure.
The bar is not a target: set it at the median SEQ that tells you whether the product is usable, do not coach participants toward it, and do not change it after the data.

Carry `**Business importance:** High`, so the requirement needs its test, and the team's own `**Technical risk:**`.

### Write The Manual Test Around The Record

Write the `QRT-nn` at `manual`, name the `UT-nn` in `**Runs at:**`, and write `**Why Manual:**`: no command can judge whether a representative participant completes the task unaided, or how that participant rates it on the SEQ, and the test reads no `SLI`.
The procedure runs the main task with at least three participants per the record and reads `results.md`, so the record is the procedure's source.

A manual test whose requirement is `Interaction Capability` and whose `**Runs at:**` names a `UT-nn` is the expected manual test for usability, and it needs no deviation; every other manual test keeps the deviation rule.

In the design week the testing-plan row is `Not verified`, `None`, `Planned for sprint: SPRINT-08`, and `None`.
In the run week it is `Passes` or `Fails` with `Checked: SPRINT-08` and the `results.md` evidence, and the index and matrix carry the requirement's row.

## Step 9: Run The Sessions And Analyze The Results

The run week executes the design.
[The Week 8 Execution](../requirements/usability-testing-requirements.md#the-week-8-execution) owns the sequencing, and [The Results And Findings](../requirements/usability-testing-requirements.md#the-results-and-findings) owns the results.

### Run At Least Three Counted Sessions

Run the sessions in person, on the university network, against the staging deployment, with the seed reset before each one.
They may run before the design week's deadline, once the design is written, and the results are still written for Submission 8.
Start the recording before the pre-test, check the consent first, and run the tasks in the fixed order.

Count a session only when its consent and its recording are in place and its data is complete.
A session with a missing SEQ or SUS is not a completed session: run a replacement rather than inventing the missing number.

### Write The Sanitized Note After Every Session

Write `sessions/P-nn.md` from the raw notes on the day of the session, while the observation is fresh, and keep it sanitized: the relation to the target user, the familiarity, the device, the task outcomes, the assistance, the times, the SEQ, the SUS, the themes, and the quotes only when the consent covers them.
The raw note stays in the private repository, and the public note is written from it.

A participant's name, email address, phone number, or a free-text identification never reaches the public note.
An anonymized quote names no person and no organization, and it appears only when the consent covers it.

### Write The Results And The Findings

Write `results.md` with the aggregate completion, the median time, the median SEQ, the SUS mean and median with `n=<count>`, the per-task SEQ, the thematic analysis, the telemetry comparison, the limitations, and the conclusion.
Link the sanitized notes it summarizes, and copy none of the raw data.

Each finding is a `### Finding 1` section with its stability anchored on the heading, its severity, the tasks and participant codes it came from, the evidence, the recommendation, and the task issue when one is opened.
Cite it as `docs/usability-tests/ut-01/results.md#finding-1`, and cite the test as `UT-01`.

Set the record's `**Status:**` to `Completed`, and update the index's `Results` cell to link `results.md`.

## Step 10: Triage The Findings And Learn

Triage is how a finding becomes work rather than a paragraph.
[The Triage](../requirements/usability-testing-requirements.md#the-triage) owns the route into the product backlog.

### Rate, Recommend, And Route

Every finding is triaged: its severity, whether it opens a task issue, and when the work is scheduled.
When a significant finding exists, at least one becomes a task issue scheduled in the run week's sprint; no finding is forced when the test finds nothing significant.

A finding that changes behaviour and a defect link the story and the `AC-nn` it serves, and name the `FR-nnn` or `ADR-nnn` in `### Requirements`.
A defect never says `None` in that field; a task that is not product work says `None: repository upkeep`.

The task issue cites the finding by its path and anchor, and the finding's `**Task issue:**` links the issue.
`REL-08` includes any fix the sprint lands, and a fix that cannot finish moves to `SPRINT-09` and the report says so.

### Record The Verdict And The Learning

Record the quality requirement's verdict in the testing plan: `Passes` or `Fails` with `Checked: SPRINT-08` and the `results.md` evidence.
A failed test does not drop the requirement: the findings and the triage carry the fix, and the release claims no quality through it.

Settle the team's threshold-of-success usability goal when it has one, with its `**Outcome:**` citing `UT-01`.
A team without a usability goal is not penalised, because the required check is the quality requirement and its test.

Show the results at the run week's Sprint Review, at the time arranged with the customer, and write the results summary in the run week's report.
The Week 9 reflection cites the results; it carries no separate usability results report.

## Step 11: Keep The Data Private And Delete It

The public record is what a reader follows, and the private data is what the instructors can open.
[The Private Data Repository](../requirements/usability-testing-requirements.md#the-private-data-repository) and [The Public Evidence](../requirements/usability-testing-requirements.md#the-public-evidence) own both.

### Publish Only The Sanitized Record

Publish the record, the surveys, the consent template, the sanitized session notes, the results, and the sanitized images.
A screenshot is sanitized: it carries no participant identity, no raw recording, and no real address.

A quote appears only with the consent that covers it, and the aggregate data is published without the quote when the consent does not cover it.

### Keep The Links In The Moodle Wrapper

The public record links the private repository, and the link is excluded from the link check because it needs authentication.
The Moodle wrapper carries the private repository link and access and the recordings folder link and access, and it carries the member table and the privacy line.

No raw participant data is in the product repository, and no private link is in a public file without its exclusion and its reason.

### Delete After Grading

After the course is graded, delete the private repository, its history, and the recordings, and keep the sanitized public record.
The consent states the deletion, and the record's retention rule is what makes the consent truthful.

A private repository that outlives the course is participant data kept without a reason, and the retention rule is the one promise the team can always keep.

## Common Mistakes

- **A participant who is a teammate or the customer.**
  The session proves the product works for the people who built it or for the person who asked for it; recruit outside the team, and check the profile before the session.
- **Fewer than three completed sessions.**
  Two sessions support no completion rate and no median worth reading; the design targets five so the minimum survives one cancellation.
- **Five treated as a hard rule.**
  Five is the design target; three completed sessions meet the requirement, and a team that runs five says so rather than treating the target as a bar.
- **A pilot counted as a participant.**
  The dry run with a teammate checks the wording and the time limit; it is not evidence, and it does not join the results.
- **No durable consent or recording.**
  A verbal "sure" and no recording is a session the team cannot show, so it does not count; record the consent before the session and start the recording at the beginning.
- **Consent to the public results missing.**
  A participant who agrees to the session but not to the sanitized public results cannot be counted; check the clause before the session, not after the analysis.
- **A raw recording or raw notes in the public repository.**
  The product repository is public and permanent; the raw text goes to the private repository and the recording to the cloud folder.
- **A seed with real customer data.**
  Reset the seed to synthetic data before each session, and never let a participant see the customer's real data, name, or address.
- **A seed that is not reset between sessions.**
  A participant who finds the previous session's state has tested something else; reset before every session and record the seed.
- **Notifications that reach a real inbox.**
  Turn off the real email and SMS integrations in staging, so a test booking does not reach a real person's inbox and the product's own message is not read as a result.
- **A participant under 18.**
  The 18-or-older declaration is in the consent and the pre-test; a participant who cannot give it is not counted.
- **A public link to the private repository without the link-check exclusion.**
  A link that needs authentication fails the check on the next run; exclude it with its reason, and keep the URL in the Moodle wrapper.
- **A SUS scored from the raw sum.**
  The score is `2.5 × (20 + sum(odd) - sum(even))`; a raw sum moves the number by tens of points and is not comparable with anything.
- **The SEQ or SUS left out.**
  A session missing a measure is not a completed session; run the survey in every session, including a failed task's.
- **A task that names a button or a step.**
  The wording becomes the instruction, and the session tests the wording; name the goal and the start point only.
- **A task that is a feature tour.**
  A tour shows what exists; a task shows whether a participant can do what they came for, so write the goal the target user has.
- **A leading facilitator.**
  "Just click the date picker" is help the observation then misses; answer only the scenario's questions and record every hint.
- **A guide who solves the task.**
  A solved task is an `Assisted` result, not an `Unaided` one; record the help beside the task and rate it honestly.
- **No success criterion before the session.**
  A criterion written after the session grades the participant, not the product; write `Unaided`, `Assisted`, and `Failed`, and the time limit, first.
- **No dry run.**
  A scenario with a broken time limit or an unreadable SUS is found in the dry run, not in the third counted session.
- **No main task.**
  The secondary tasks can be interesting, but the quality requirement and the funnel read the product's main flow; the test without it answers no graded question.
- **A test that runs on production.**
  Production is the state the team promised; run against staging, with the seed reset, and keep the customer's data out of the session.
- **A metric that includes the test traffic.**
  A participant is not a paying customer; every metric excludes `smoke` and `source=usability-test`, and the funnel is read with the filter and shown separately.
- **A Week 7 result claimed.**
  The design week sets the recruitment target and the session plan; a result belongs to the run week's report and the results record.
- **A Week 7 or Week 8 deck PDF.**
  The deck is Week 9's, submitted with Submission 9, rehearsed in the Week 10 class, and presented at the Week 11 final exam.
- **A `TOS-03` treated as required.**
  `TOS-03` is a full-example goal; a team without a usability goal is not penalised, and the required check is the quality requirement and its test.
- **A `UT-01` without a `QR/QRT`.**
  A test that serves no requirement is evidence nothing grades; the record links the requirement and the test names the record.
- **A `manual` test without `**Why Manual:**`.**
  The manual exception is declared, not assumed; write the sentence that names why no command can check the requirement.
- **A finding with no severity.**
  A severity is what orders the triage; `Critical`, `Major`, or `Minor`, with the reason, and no finding without one.
- **A finding that changes behaviour with no story or `FR`/`ADR` route.**
  The work is then unowned; link the story and the `AC-nn`, and name the `FR-nnn` or `ADR-nnn` in `### Requirements`.
- **An overclaim from a small sample.**
  Five participants describe five people; state `n=<count>` and read the number as a description, not a population claim.
- **A private repository with no deletion.**
  The consent promises the deletion and the retention rule keeps it; a repository that outlives the course keeps participant data without a reason.
- **An agent given the raw private data.**
  The public note is written from the sanitized note, and the agent is given that, not the recording or the raw private notes; the team reviews what it writes before committing.
