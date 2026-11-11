# Usability Testing Requirements

These requirements define the usability test: where it lives, the test record and its index, the participants and the profile they match, the tasks, the protocol, the instruments, the analysis, the consent, the private data repository, the public evidence, the results and findings, and the triage that turns a finding into work.
A usability test checks whether a representative participant can reach a goal in the product without help, which is the evidence the product's own telemetry cannot supply.
Where the test lives in the repository is in [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository), how a test and a participant are cited is in [Identifier Rules](general-requirements.md#identifier-rules), and who may see each artifact is in [Visibility Requirements](visibility-requirements.md).
The quality requirement a test serves is in [Quality Requirements](quality-requirements-requirements.md), the environment it runs in is in [Environments And Deployment](repository-requirements.md#environments-and-deployment), and the events it reads are in [Product Analytics Requirements](analytics-requirements.md#the-events).
[Guide: Usability Testing](../guides/usability-testing.md) is the method.

<h2>Table of contents</h2>

- [Where The Usability Tests Live](#where-the-usability-tests-live)
- [The Test Record](#the-test-record)
- [The Participant Profile](#the-participant-profile)
- [The Participants](#the-participants)
- [The Tasks](#the-tasks)
- [The Protocol](#the-protocol)
- [The Instruments](#the-instruments)
- [The Analysis](#the-analysis)
- [Consent And Recording](#consent-and-recording)
- [The Private Data Repository](#the-private-data-repository)
- [The Public Evidence](#the-public-evidence)
- [The Results And Findings](#the-results-and-findings)
- [The Triage](#the-triage)
- [The Week 8 Execution](#the-week-8-execution)
- [Full Example](#full-example)

## Where The Usability Tests Live

**Since: W7**

The usability test is maintained documentation: it is created in Week 7 in its final place and stays current, per [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository).
The test is designed in Week 7 and run in Week 8, so its design is written before its results exist and its record is updated when they do.

**Required**

1. The usability tests are one maintained group, `docs/usability-tests/`, with an index and one directory per test.
2. The index is `docs/usability-tests/README.md`, with one row per `UT-nn` and these columns, in this order:

   | Column    | What it holds                                                                                                                          |
   | --------- | -------------------------------------------------------------------------------------------------------------------------------------- |
   | `UT`      | The identifier as link text, linked to the test's record, such as `[UT-01](ut-01/README.md)`                                           |
   | `Goal`    | The test's one-sentence goal, copied from its record                                                                                   |
   | `Status`  | The record's `**Status:**` value                                                                                                       |
   | `Results` | `Pending` until the results are written, and after that a link to `results.md`, such as `[results](ut-01/results.md)`                  |
   | `Sprints` | The `**Design sprint:**` and the `**Run sprint:**`, linked to their plan sections, such as `[SPRINT-07](../project-plan.md#sprint-07)` |

3. The table is the index, so it lists each test once and is not a second record: the record carries the goal, the design, and the link to the results.
4. Each test is `docs/usability-tests/ut-nn/`, one directory per test, and its `README.md` is the test record, per [The Test Record](#the-test-record).
   The test is cited as `UT-nn`, and its record's path is the link target, per [Identifier Rules](general-requirements.md#identifier-rules).
5. A test directory carries the record in `README.md`, its instruments in `surveys.md`, the public consent template in `consent.md`, the session template and the session instructions in `sessions/README.md`, one sanitized note per counted session in `sessions/P-01.md`, `sessions/P-02.md`, and so on, the results in `results.md`, and the sanitized images in `images/`.
6. The record carries the goal, the research questions, the participant profile, the tasks, the protocol, the measures, the analysis plan, the schedule, the roles, the environment, and the evidence map.
   There is no separate `tasks.md`, `protocol.md`, or `analysis.md`, because the record is the one place a stranger runs the test from.
7. The page is created in Week 7 and kept current for the rest of the course.

## The Test Record

**Since: W7**

The record is the file a stranger runs the test from: what it is for, who it needs, what the participant does, what is measured, and what comes next.
It is public and sanitized; the private material is in [The Private Data Repository](#the-private-data-repository), and the public evidence is in [The Public Evidence](#the-public-evidence).

**Required**

1. The record's heading is `# UT-01: <title>`, with the identifier and a short title, such as `# UT-01: Book a paid session unaided`.
2. The heading is followed by these fields, in this order, as a bulleted list, per [Identifier Rules](general-requirements.md#identifier-rules):

   | Field                | What it says                                                                                                                                                     |
   | -------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------- |
   | `**Status:**`        | `Planned` until the counted sessions and the results are recorded, `Completed` when they are, or `Dropped`                                                       |
   | `**Design sprint:**` | The `SPRINT-nn` the test was designed in, linked to its plan section, such as `[SPRINT-07](../../project-plan.md#sprint-07)`                                     |
   | `**Run sprint:**`    | The `SPRINT-nn` the sessions run in, linked the same way, such as `[SPRINT-08](../../project-plan.md#sprint-08)`, and updated to `SPRINT-09` when the plan moves |
   | `**Dropped:**`       | Only on a dropped test: the date and the reason, per [Identifier Rules](general-requirements.md#identifier-rules)                                                |

3. Below the fields the record states, in this order: the goal in one sentence, the research questions, the `QR-nn` the test serves, the participant profile, the tasks, the protocol, the measures, the analysis plan, the schedule, the roles, the environment, the consent and data map, the public and private evidence map, and the link to `results.md`.
4. The goal is one sentence that says what the test is for in terms a reader outside the course can follow, such as whether a representative participant can book and pay without help.
5. The research questions are a short numbered list, each answerable with the session's data, such as whether a participant finds a free slot without a hint and which step makes them ask for help.
6. The `QR-nn` the test serves is linked to its requirement file and is the requirement whose `QRT-nn` names the test in `**Runs at:**`, per [Quality Requirement Tests](quality-requirements-requirements.md#quality-requirement-tests).
7. The record links `results.md`, which is a stub in the design week and is filled in the run week, per [The Results And Findings](#the-results-and-findings).
   The record links the results rather than copying them.
8. The record states the schedule: the week the sessions are booked for, the dates the team target, and the date the results are due.
9. The record states the roles: who facilitates, who observes, and who keeps the recordings and the raw notes, by GitHub username.
10. The record states the environment: the staging deployment on the university network, the seed the session starts from, and that no real payment is made.
11. The record states the consent and data map, per [Consent And Recording](#consent-and-recording) and [The Private Data Repository](#the-private-data-repository): what is private, what is public and sanitized, and where the recordings live.
12. The record becomes `Completed` when the counted sessions and the results are recorded, and it is `Dropped` with `**Dropped:**` when the team abandons the test.

## The Participant Profile

**Since: W7**

The profile says in observable terms who the test needs, so a reviewer can judge whether a counted session matched it and a replacement can be recruited against it.
The product vision's `Stakeholders` table is background, not the profile: it names who the product is for rather than how a reviewer judges that a participant matches.

**Required**

1. The record carries a `## Participant Profile` section with observable criteria:
   - the participant's role and the task the product's target user does, such as a person who books sessions online;
   - the participant's familiarity with similar products;
   - the device the session runs on;
   - the participant's relation to the target user.
2. Every counted participant matches the profile.
3. A session with someone outside the profile is exploratory: it is not counted, and the record says so.
4. The public note for a counted session states the relation to the target user, the familiarity, and the device, with no personal data, per [The Public Evidence](#the-public-evidence).
   The identity mapping stays in the private repository, per [The Private Data Repository](#the-private-data-repository).

## The Participants

**Since: W7**

A **participant** is a person outside the team who attempts the test's tasks, and a **usability session** is one participant's run of them.
A usability session is not the analytics `session_id`: the session is the sitting in front of the product, and `session_id` is the random identifier the product's events carry, per [Telemetry And Personal Data](visibility-requirements.md#telemetry-and-personal-data).

**Required**

1. The test is designed for at least three completed usability sessions with representative participants, and five is the design target.
2. A participant is 18 or older, is not a teammate, is not the customer, is not the instructor, and is not the course staff.
3. Every counted participant matches [The Participant Profile](#the-participant-profile).
4. A participant code is `P-01`, `P-02`, and so on: two digits, local to its `UT-nn`, assigned in the order the sessions are booked, cited as the pair `UT-01 P-01` or with the `UT-nn`'s path, and never reused, per [Identifier Rules](general-requirements.md#identifier-rules).
5. A pilot or dry run does not count as a completed session, and it is not evidence.
6. A session that is withdrawn, not recorded, not consented to the recording and the sanitized public results, or technically broken does not count.
7. A participant who does not complete the task still counts, because the failure is a result.
8. A replacement is recruited under the next free code, and a withdrawn code is retired and never reused.
9. The team recruits the participants and books the sessions in the design week, and the sessions run in the run week.

## The Tasks

**Since: W7**

A **usability test task** is a scenario the participant is asked to achieve: a goal and a start point, with no instruction about the interface.
The tasks are what makes one participant's run comparable with another's.

**Required**

1. The test has one **main usability test task** and two **secondary usability test tasks**.
2. The main task is the product's main flow that [The Events](analytics-requirements.md#the-events) covers, and it is the subject of the `QR-nn` the test serves.
3. The materials call it a usability test task and never `core task`.
4. Each task is a scenario with a goal and a start point: it says what the participant wants to achieve, and where the session begins.
5. The tasks are identical for every participant and are run in a fixed order, with the main task first.
6. A task's wording names no button, label, screen, step, or step count.
7. The success criterion is written before the first session, and it is one of:
   - `Unaided`: the participant reaches the defined end state without help;
   - `Assisted`: a hint or help is needed, and the help is recorded;
   - `Failed`: the end state is not reached within the time limit.
8. The time limit and the help rule are stated with the task, per [The Protocol](#the-protocol).
9. The two secondary tasks cover adjacent flows the team wants to learn about, and their order is fixed across participants.
10. A dry run with a teammate checks the wording and the time limit, is not evidence, and is not counted.

## The Protocol

**Since: W7**

The protocol is the order every session follows, so the sessions produce comparable data and no participant is helped differently from another.

**Required**

1. Every session runs in this order: the welcome, the consent and recording check, the pre-test, the think-aloud instruction, the scenario reading, the observation, the SEQ after each task, the SUS and the open-ended post-test after all the tasks, and the debrief.
2. Each session is in person, on the university network, and the participant uses the team's laptop or the campus network.
3. The session runs against the staging deployment, with the seed reset to the appropriate values before each session, and it makes no real payment.
4. The staging address and any credentials are shared for the session and are never committed, per [Sensitive Information Reference](visibility-requirements.md#sensitive-information-reference).
5. The facilitator reads the scenario verbatim, answers only questions about the scenario, and never about the interface, and does not solve the task for the participant.
6. The observer records the help given, the time on task, the friction points, and the quotes.
7. At least two team members run each session, and the same facilitator runs all the counted sessions.
8. The stop rule: the facilitator stops the session when the participant asks to stop, or when the team observes a critical or security-sensitive problem; the stop and its reason are recorded in the session note and in the results, and a session stopped before its data is complete does not count as completed.
9. The team checks that every test event carries `source=usability-test` before the first counted session, per [The Events](analytics-requirements.md#the-events).

## The Instruments

**Since: W7**

The instruments are the questions and the observations every session records.
The survey instrument is `surveys.md`, the session's recording sheet and the instructions are `sessions/README.md`, and the record states which measures the test reads.

**Required**

1. The survey instrument is `surveys.md`, and the session template and its instructions are `sessions/README.md`.
2. Every session records the pre-test background, the think-aloud observation, the task completion and assistance, the time on task, a SEQ after each task, a SUS after all the tasks, the SUS score, and the open-ended post-test.
3. The **pre-test** asks for the participant's role and background, their familiarity with similar products, the device, and their expectations.
   It carries no name, email address, phone number, or free-text identification, and it carries the 18-or-older declaration.
4. The **SEQ** is one question after each task on a seven-point scale: how difficult the task was.
5. The **SUS** is the standard ten items on the five-point scale, and it is scored `SUS = 2.5 × (20 + sum(odd) - sum(even))`.
   The results report its mean and median with the `n=<count>` caveat, because a small sample supports no claim about a population.
6. The quality requirement reads the main task's median SEQ, and the results report the per-task SEQ for the main task and for the two secondary tasks.
7. The **open-ended post-test** asks for the overall impression, what the participant would change, and what the team did not ask.
8. The qualitative evidence is the observation notes, the quotes, the friction points, and the think-aloud; the quantitative evidence is the completion, the assistance, the time on task, the SEQ, the SUS, and the Week 6 analytics events where they cover the task.
9. The ASQ is optional: the SEQ and the SUS are enough for comparability and for the lecture's frameworks.
10. Every session's pre-test, SEQ, SUS, and post-test are recorded for every counted participant, and missing data is never invented.

## The Analysis

**Since: W7**

The analysis plan is written before the first session, so the team cannot choose its measures after seeing the data.

**Required**

1. The analysis plan is written before the first session, and the record states it.
2. The plan covers: a per-participant table with the task outcomes and the assistance, the aggregate completion rate, the median time on task, the median SEQ, the SUS mean and median, a thematic analysis of the notes, a severity rating, a telemetry comparison, and a limitations section.
3. The thematic analysis groups the observations into a small set of themes, each with the sessions it came from, and it does not report a single participant's remark as a theme.
4. The severity rating classifies each finding as `Critical`, `Major`, or `Minor`, and the results state the reason for the rating.
5. The telemetry comparison reads the Week 6 events where they cover the task, with the `source=usability-test` filter, and it says which task the events could not cover rather than inventing an event or a metric.
6. The limitations state the sample size, the participants' relation to the target user, the environment, and what the team could not measure.
7. The record links `results.md`, which holds what was found, per [The Results And Findings](#the-results-and-findings).

## Consent And Recording

**Since: W7**

The consent is what makes a session usable as evidence: without it, the participant's words and actions cannot be kept or published.
It is recorded before the session, in a form the team can show the instructors.

**Required**

1. Every counted session has a **durable consent** recorded before it: a signed form, an email, a Telegram message, or another record the team can show the instructors.
2. The consent covers the participant's 18-or-older declaration, participation, the recording, the sanitized public results, the anonymized quotes, the private data repository, the recordings folder, the instructors' access, the tools used, the deletion of the tools' copies, the right to withdraw, and the deletion after grading.
3. Consent to the recording and to the sanitized public results is required for a session to count.
   A participant who does not give either cannot take part, and the team recruits a replacement.
4. Consent to an anonymized quote is separate and optional.
   A participant who consents to the recording and the public results but not to a quote still counts, and the team then uses the aggregate data and publishes no quote from that session.
5. The consent records, the identity mapping, and the raw notes are in the private repository; the recordings are in the cloud folder; the public record holds the template, the sanitized notes, and the sanitized results.
6. A session without the required consent or the recording does not count, and its data is removed.
7. A participant who withdraws has their raw data removed from the private repository and their recording removed from the folder, and the code is retired.
8. The public consent template is `consent.md`, and it contains the same clauses as the consent the participants sign, with the placeholders left unfilled.

## The Private Data Repository

**Since: W7**

The raw usability data is private: it identifies a person, or it can be joined to one, so it is kept outside the public product repository and outside the recordings folder.
The repository that holds it is in [The Usability Data Repository](repository-requirements.md#the-usability-data-repository), and the visibility table is in [The Usability Data Repository](visibility-requirements.md#the-usability-data-repository).

**Required**

1. The team creates one private `<organization>/<repo>-usability-data` repository in the design week, and it is private with the team and the instructors as readers.
2. It holds text only: the consent records, the identity mapping, the raw notes, the filtered telemetry export, the working analysis, and the recordings folder link and access.
   Its layout is the team's choice.
3. The recordings live in a team-owned cloud folder, such as the team's drive, shared with the instructors.
   They are never in the product repository and are not in the private repository.
4. The product repository links the private repository in the test record and the weekly report, and the link is excluded from the link check because it needs authentication, per [Link Checking](repository-requirements.md#link-checking).
5. The Moodle PDF carries the private repository link and access and the recordings folder link and access, per [Private Submission Wrapper](weekly-report-requirements.md#private-submission-wrapper).
6. The private repository and the recordings stay until the course is graded; after the course is graded the team deletes the private repository, its history, and the recordings, and the sanitized public record stays.
7. When an instructor cannot access GitHub, the team gives the private text data through a Moodle-only archive and declares the [deviation](weekly-report-requirements.md#declaring-deviations).
8. A filtered text export of the staging events for the test window may be kept in the private repository when it carries no IP address, location, user agent, referrer, or free text, per [Telemetry And Personal Data](visibility-requirements.md#telemetry-and-personal-data).

## The Public Evidence

**Since: W7**

The public record is what a reader follows: it is sanitized, so it carries no identity and no raw recording, and it links the private repository as the raw evidence the instructors can open.

**Required**

1. The public evidence is `docs/usability-tests/ut-01/README.md`, `surveys.md`, `consent.md`, `sessions/README.md`, `sessions/P-01.md`, `sessions/P-02.md`, and so on, `results.md`, and `images/`.
2. A session note is `sessions/P-nn.md`, headed `# P-01`, and it carries the participant's relation to the target user, the familiarity, the device, the task outcomes, the assistance, the times, the SEQ, the SUS, the themes, and the quotes only when the consent covers them.
3. A session note, a result, and an image carry no name, email address, phone number, postal address, or free-text identification, and no raw recording.
4. An anonymized quote is published only when the consent covers it, and it names no person and no organization.
5. A screenshot in `images/` is sanitized: it carries no participant identity, no raw recording, and no real address, per [Screenshot Evidence](visibility-requirements.md#screenshot-evidence).
6. The public record links the private repository, and the recordings folder is linked from the Moodle submission rather than from a public file, per [The Private Data Repository](#the-private-data-repository); the product repository carries no raw participant data.
7. The tests' public evidence is the evidence the quality requirement test's `Evidence` cell links, per [Quality Requirement Testing Plan](planning-requirements.md#quality-requirement-testing-plan); the raw data is the private repository's, and it is not linked from a public file except by the private repository link.

## The Results And Findings

**Since: W8**

The results are what the sessions found, and the findings are what the team decided each one means.
`results.md` is the record, and the weekly report and every later citation link it rather than restating it.

**Required**

1. `results.md` is written in the run week, and it carries the aggregate results, the SUS and SEQ summary with the `n=<count>` caveat, the qualitative findings with their severity and evidence, the telemetry comparison, the limitations, and the conclusion.
2. It links the sanitized session notes it summarizes, and it copies no raw data.
3. Each finding is a `### Finding 1` section with a stable anchor, and it carries these fields:

   | Field                 | What it says                                                                                |
   | --------------------- | ------------------------------------------------------------------------------------------- |
   | `**Severity:**`       | `Critical`, `Major`, or `Minor`, with the reason for the rating                             |
   | `**Tasks:**`          | The tasks and the participant codes the finding came from, such as `UT-01 P-01, UT-01 P-03` |
   | `**Evidence:**`       | What was observed or measured, linked to the session notes or the aggregate table           |
   | `**Recommendation:**` | What the team would change                                                                  |
   | `**Task issue:**`     | A link to the task issue that carries the work, or `None` when no issue was opened          |

4. A finding is cited by `docs/usability-tests/ut-01/results.md#finding-1`, and the citation names the finding rather than the test alone, per [Identifier Rules](general-requirements.md#identifier-rules).
5. The SUS summary reports the mean, the median, and the count, because a small sample supports no claim about a population.
6. The QR/QRT verdict is recorded in the testing plan, not in `results.md`: the results state what was found, and the plan's row records `Passes` or `Fails` with its `Checked` and `Evidence`, per [Quality Requirement Testing Plan](planning-requirements.md#quality-requirement-testing-plan).
7. The record links `results.md`, and the record's `**Status:**` becomes `Completed` when the counted sessions and the results are recorded.

## The Triage

**Since: W8**

Triage is how a finding becomes work rather than a paragraph: every finding is considered, and the team records what it does with each one.

**Required**

1. Every finding is triaged: the team records its severity, whether it opens a task issue, and when the work is scheduled.
2. When a significant finding exists, at least one becomes a task issue scheduled in the run week's sprint, which is `SPRINT-08` for `UT-01`.
   No finding is forced when the test finds nothing significant.
3. A finding that changes product behaviour and a defect are carried by a task issue that links the story and the `AC-nn` it serves and names the `FR-nnn` or `ADR-nnn` in `### Requirements`, per [The Issue Form](task-issues-requirements.md#the-issue-form).
   A defect names the `FR-nnn` or `ADR-nnn` and never says `None`.
4. A task that is not product work says `None: repository upkeep`.
5. The task issue cites the finding by its path and anchor, such as `docs/usability-tests/ut-01/results.md#finding-1`, and the finding's `**Task issue:**` links the issue.
6. A finding that changes behaviour but is not product work is still triaged: the finding's row records what the team did with it.
7. `REL-08` includes any fix the run week's sprint lands, per [Releases](planning-requirements.md#releases).
   A finding fixed after the run week's release moves to `SPRINT-09`, and the weekly report says so.

## The Week 8 Execution

**Since: W8**

The run week executes the design: the sessions run, the data goes to its two private places, the public record is written, and the result is learned from and reported.

**Required**

1. At least three usability sessions run after the design week's deadline, and the team targets 15 to 18 November for the sessions, 19 and 20 November for the analysis and the triage, and 21 November for the report.
2. The raw text goes to the private repository, the recordings go to the cloud folder, and the sanitized session notes and results go to `docs/usability-tests/ut-01/`.
3. The record's `**Status:**` becomes `Completed`, and its `results.md` is written, per [The Results And Findings](#the-results-and-findings).
4. The quality requirement's testing-plan row records `Passes` or `Fails` with `Checked: SPRINT-08` and the results as its evidence, per [Quality Requirement Testing Plan](planning-requirements.md#quality-requirement-testing-plan).
5. The findings are triaged, and the task issues are scheduled, per [The Triage](#the-triage).
6. The team's threshold-of-success usability goal, when it has one, is settled with its `**Outcome:**`, citing `UT-01`, per [The Threshold Of Success](planning-requirements.md#the-threshold-of-success).
7. `REL-08` is cut, per [Releases](planning-requirements.md#releases).
8. The run week's Sprint Review shows the sanitized results, the QR/QRT result, the findings and their task issues, and the next steps, at the time arranged with the customer, per [Showing Working Software](customer-meetings-requirements.md#showing-working-software).
9. The run week's weekly report carries the results summary, per [Weekly Public Report](weekly-report-requirements.md#weekly-public-report).
10. A test that cannot finish moves the QR/QRT row to `SPRINT-09` with a reason, and the weekly report declares the open window and claims no result.

## Full Example

The meeting-booking example's Week 7 design and Week 8 results, abridged: the index, the record, the instruments, the consent, one session note, and the results.

From `docs/usability-tests/README.md`:

```markdown
# Usability tests

| UT                       | Goal                                                                                  | Status    | Results                     | Sprints                                                                              |
| ------------------------ | ------------------------------------------------------------------------------------- | --------- | --------------------------- | ------------------------------------------------------------------------------------ |
| [UT-01](ut-01/README.md) | A representative participant books and pays for a session without help, on first use. | Completed | [results](ut-01/results.md) | [SPRINT-07](../project-plan.md#sprint-07), [SPRINT-08](../project-plan.md#sprint-08) |
```

From `docs/usability-tests/ut-01/README.md`:

```markdown
# UT-01: Book And Pay For A Session Unaided

- **Status:** Completed
- **Design sprint:** [SPRINT-07](../../project-plan.md#sprint-07)
- **Run sprint:** [SPRINT-08](../../project-plan.md#sprint-08)

A representative participant books and pays for a session without help, on first use.

## Research questions

1. Does a participant find a free slot and reach the confirmation without a hint?
2. Which step makes a participant ask for help?
3. Does a participant understand that the confirmation carries the meeting link?

## The Requirement

[`QR-05`](../../quality-requirements/qr/QR-05.md), whose `QRT-01` names `UT-01` in `**Runs at:**`.

## Participant Profile

- **Role:** a person who books sessions online, for example a client of a coach.
- **Familiarity:** has booked a session through a booking page or a calendar link before.
- **Device:** a mid-range phone or the team's laptop, whichever the participant prefers.
- **Relation to the target user:** someone who would book a paid session, not a teammate, the customer, or the course staff.

## The Tasks

1. **Main task: book and pay for one session.**
   You want a session with this coach next week, and you want it confirmed.
   Start at the coach's booking link.
   You have five minutes.
2. **Secondary task: reschedule the booking.**
   You want the same session on another day.
   Start at the confirmation page.
   You have three minutes.
3. **Secondary task: find the meeting link.**
   You want the link for the session you booked.
   Start at the confirmation page.
   You have two minutes.

The success criterion for each task is `Unaided` when the participant reaches the end state without help, `Assisted` when a hint is needed and recorded, and `Failed` when the end state is not reached within the time limit.
The facilitator reads each scenario verbatim and answers only questions about it.

## Protocol

Welcome, consent and recording check, pre-test, think-aloud instruction, the scenarios read verbatim, observation, the SEQ after each task, the SUS and the open-ended post-test, and the debrief.
The session is in person, on the university network, against the staging deployment, with the seed reset before it and no real payment.

## Measures

The completion and the assistance per task, the time on task, the SEQ per task, the SUS after all tasks, and the events tagged `source=usability-test`.

## Analysis Plan

A per-participant table, the aggregate completion, the median time, the median SEQ, the SUS mean and median, a thematic analysis, a severity per finding, the telemetry comparison, and the limitations.

## Schedule

The sessions are booked for 15 to 18 November, and the results are due with Submission 8 on 21 November.

## Roles

`@ana` facilitates every counted session, `@bo` observes and keeps the recordings, and `@cyd` keeps the private repository and the analysis.

## Environment

The staging deployment on the university VM, reached from the university network, with no real payment.

## Consent And Data

The consent records, the identity mapping, and the raw notes are in the [private usability-data repository](https://github.com/<organization>/<repo>-usability-data), which the link check excludes because it needs authentication.
The recordings are in the team's cloud folder, and both private links are in the Moodle submission.
The public evidence is this record, the surveys, the consent template, the session notes, the results, and the images.

## Evidence Map

| Item                                              | Where it goes                                               |
| ------------------------------------------------- | ----------------------------------------------------------- |
| The record, the surveys, and the consent template | `docs/usability-tests/ut-01/`                               |
| The sanitized session notes                       | `docs/usability-tests/ut-01/sessions/`                      |
| The results and the findings                      | `docs/usability-tests/ut-01/results.md`                     |
| The consent records and the identity mapping      | the private usability-data repository                       |
| The raw notes and the filtered telemetry export   | the private usability-data repository                       |
| The recordings                                    | the team's cloud folder, linked from the private repository |

The results are in [results.md](results.md).
```

From `docs/usability-tests/ut-01/surveys.md`, the SUS and one SEQ:

```markdown
## SEQ, after each task

How difficult was this task? 1 is very difficult, and 7 is very easy.

## SUS, after all the tasks

1. I think that I would like to use this product frequently.
2. I found the product unnecessarily complex.
3. I thought the product was easy to use.
4. I think that I would need the support of a technical person to be able to use this product.
5. I found the various functions in this product were well integrated.
6. I thought there was too much inconsistency in this product.
7. I would imagine that most people would learn to use this product very quickly.
8. I found the product very cumbersome to use.
9. I felt very confident using the product.
10. I needed to learn a lot of things before I could get going with this product.

Each item is answered on a five-point scale, from strongly disagree to strongly agree.
The SUS score is `SUS = 2.5 × (20 + sum(odd) - sum(even))`, where the odd items are the five positively worded items and the even items are the five negatively worded ones, so the even answers are subtracted rather than added.

## Open-ended post-test

- What was your overall impression of the booking flow?
- What would you change?
- What did we not ask that we should have?
```

From `docs/usability-tests/ut-01/consent.md`, the clauses:

```markdown
# Consent To Take Part In A Usability Test

- I am 18 or older.
- I agree to take part in a usability session for the meeting-booking product.
- I agree to the session being recorded, and I understand that the recording is private.
- I agree that the sanitized results from the session may be published in the team's public repository.
- I agree that an anonymized quote from the session may be published, and I understand that this is optional and that I still take part without it.
- I agree that the consent record, the identity mapping, and the raw notes are kept in the team's private usability-data repository, and that the recording is kept in the team's cloud recordings folder.
- I agree that the course instructors can access the private usability-data repository and the recordings folder.
- I understand that the team may use a survey form and a recorder, and that their copies are deleted after grading.
- I understand that the recording, the raw notes, and the identity mapping are deleted after the course is graded.
- I understand that I may withdraw at any time, and that the team then removes my data and retires my participant code.

Signature: ______________________ Date: ______________
```

From `docs/usability-tests/ut-01/sessions/P-01.md`:

```markdown
# P-01

- **Relation to the target user:** a client who books sessions with a coach twice a month.
- **Familiarity:** booked through Calendly and Cal.com before.
- **Device:** the team's laptop.

The main task was `Unaided` in 1 minute 40 seconds.
The participant found the free slot, chose one, and paid without a hint.
The first secondary task was `Assisted`: the participant looked for the reschedule control in the confirmation email rather than the page, and the observer pointed at the page's section.
The second secondary task was `Unaided` in 20 seconds.

- **SEQ:** main 7, secondary 5, secondary 7.
- **SUS:** 85.
- **Theme:** the confirmation page carries too many details for a reader looking for one thing.
- **Quote:** "I expected the meeting link to be in the page, not in an email." (published with consent)
```

From `docs/usability-tests/ut-01/results.md`:

```markdown
# UT-01 Results

Five sessions ran on 16 and 17 November 2026: `UT-01 P-01` to `UT-01 P-05`, all matching the participant profile.
One participant did not complete the main task.

## The Results

| Participant              | Main task | Main SEQ | Secondary 1 | Sec 1 SEQ | Secondary 2 | Sec 2 SEQ | SUS |
| ------------------------ | --------- | -------- | ----------- | --------- | ----------- | --------- | --- |
| [P-01](sessions/P-01.md) | Unaided   | 7        | Assisted    | 5         | Unaided     | 7         | 85  |
| [P-02](sessions/P-02.md) | Unaided   | 6        | Unaided     | 6         | Unaided     | 6         | 80  |
| [P-03](sessions/P-03.md) | Failed    | 2        | Failed      | 3         | Assisted    | 5         | 52  |
| [P-04](sessions/P-04.md) | Unaided   | 7        | Unaided     | 5         | Unaided     | 6         | 88  |
| [P-05](sessions/P-05.md) | Assisted  | 5        | Unaided     | 4         | Unaided     | 5         | 70  |

The aggregate completion rate is 4 of 5 unaided or assisted on the main task and 3 of 5 unaided.
The median main-task SEQ is 6, the median first secondary-task SEQ is 5, the median second secondary-task SEQ is 6, and the median time on the main task is 2 minutes 10 seconds.
The SUS mean is 75.0 and the median is 80.0, with `n=5`.

The events tagged `source=usability-test` cover the main task end to end, and the funnel's largest drop is between the slot list and the checkout form.
The secondary tasks were covered by the observation only, because the event table does not record a reschedule.

## Findings

### Finding 1

The checkout form asks for a phone number that the product never uses.

- **Severity:** Major: two participants stopped to look for the reason, and one abandoned the main task at that field.
- **Tasks:** `UT-01 P-03`, `UT-01 P-05`.
- **Evidence:** [P-03](sessions/P-03.md) and [P-05](sessions/P-05.md).
- **Recommendation:** remove the field, or mark it optional and explain why it is asked.
- **Task issue:** [#57](https://github.com/<organization>/<repo>/issues/57)

### Finding 2

The confirmation page does not carry the meeting link.

- **Severity:** Minor: the participants who looked for it found the link in the email, but they expected it on the page.
- **Tasks:** `UT-01 P-01`, `UT-01 P-02`, `UT-01 P-04`.
- **Evidence:** [P-01](sessions/P-01.md), [P-02](sessions/P-02.md), and [P-04](sessions/P-04.md).
- **Recommendation:** show the meeting link on the confirmation page.
- **Task issue:** [#58](https://github.com/<organization>/<repo>/issues/58), scheduled in `SPRINT-09`

## Limitations

Five participants, all clients of one coach, on the staging deployment, with the team observing.
The sample supports no claim about the population, and the SUS is reported with its count for that reason.

## Conclusion

The main task is usable for most participants, and the checkout form's phone field is the largest obstacle.
[`QR-05 QRT-01`](../../quality-requirements/qr/QR-05.md#qrt-01) passes: three participants completed the main task unaided, and the median main-task SEQ is 6.
```
