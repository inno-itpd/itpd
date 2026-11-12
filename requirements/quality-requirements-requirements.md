# Quality Requirements Requirements

These requirements define the quality requirements: where they live, the ISO/IEC 25010:2023 pair each one carries, the six parts of its quality attribute scenario, the priority matrix that lists them, and the tests that check them.
A quality requirement states a measurable expectation about how well the product does something rather than what it does, and its scenario says how a reviewer could fail it.
The architecture document links the quality requirements index as the quality-requirement driver group, per [Drivers](architecture-requirements.md#drivers).
How the `QR-nn` and `QRT-nn` identifiers are issued and cited is in [General Requirements](general-requirements.md#identifier-rules).
[Guide: Quality And Architecture](../guides/quality-and-architecture.md) is the method.

<h2>Table of contents</h2>

- [Where Quality Requirements Live](#where-quality-requirements-live)
- [The Quality Requirement](#the-quality-requirement)
- [The Quality Attribute Scenario](#the-quality-attribute-scenario)
- [Quality Requirement Tests](#quality-requirement-tests)
- [The Allowed Pairs](#the-allowed-pairs)
- [The Quality Requirements Index](#the-quality-requirements-index)
- [Full Example](#full-example)

## Where Quality Requirements Live

**Since: W4**

A quality requirement is maintained documentation.
It is created in Week 4 in its final place and stays current, per [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository).

**Required**

1. Each quality requirement is `docs/quality-requirements/qr/QR-nn.md`, a file of its own, headed `# QR-nn: <short outcome>`.
2. `QR-nn` takes two digits, and is issued once, never renumbered, and never reused, per [Identifier Rules](general-requirements.md#identifier-rules).
3. A quality requirement is a file rather than an issue: it carries none of the [issue fields](issue-tracking-requirements.md#issue-fields), and the work that achieves it is scheduled as [task issues](task-issues-requirements.md#where-task-issues-live).
4. The quality requirements index is `docs/quality-requirements/README.md`, per [The Quality Requirements Index](#the-quality-requirements-index).

**Recommended**

- Create the file in the same change as its row in the matrix, so the index never lists a file that does not exist.

## The Quality Requirement

**Since: W4**

The requirement is the file: its outcome sentence, its pair, its two priorities, and its scenario.
The fields are the record that finds it in the matrix and says how important it is.

**Required**

1. The first line below the heading is the outcome in one sentence, which a reviewer could fail: "A client sees the free slots within two seconds" can be failed, and "the page is fast" cannot.
2. The file carries these fields, in this order, as a bulleted list, per [Identifier Rules](general-requirements.md#identifier-rules):

   | Field                      | What it says                                                                                                                                                                |
   | -------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
   | `**Status:**`              | `Active` or `Dropped`                                                                                                                                                       |
   | `**Characteristic:**`      | One characteristic from [The Allowed Pairs](#the-allowed-pairs)                                                                                                             |
   | `**Sub-characteristic:**`  | One of that characteristic's sub-characteristics, in the Title Case the table writes it                                                                                     |
   | `**Business importance:**` | `High`, `Medium`, or `Low`: the value of the outcome to the customer                                                                                                        |
   | `**Technical risk:**`      | `High`, `Medium`, or `Low`: how hard the outcome is to achieve and to test                                                                                                  |
   | `**Changed:**`             | Each change, recorded as a gap records one, per [Gap Analysis](research-requirements.md#gap-analysis), only when it changed                                                 |
   | `**Dropped:**`             | Only on a dropped requirement: the date, the reason, and the `DEC-nnn` that caused it when a decision did, per [Identifier Rules](general-requirements.md#identifier-rules) |

3. Rate the two priorities separately: a requirement can be valuable and cheap, and a requirement is not important because it is hard.
   A matrix where every row is `High` sorts nothing.
4. The team's quality requirements include one about `Maintainability` / `Testability`.
   It names its critical modules by repository path, such as the frontend entry point `frontend/src/main.tsx` or the payment module `backend/src/payments/checkout.ts`, so the requirement can be checked against the code rather than against a description of it.
   It carries `**Business importance:** High`, because the course is part of the business and the instructors are stakeholders who require it.
5. A requirement that changed without dropping records each change under `**Changed:**` as a gap records one, per [Gap Analysis](research-requirements.md#gap-analysis).
6. A dropped requirement keeps its file, its title, and its six scenario headings, so every anchor still resolves; its `**Status:**` becomes `Dropped`, and its `**Dropped:**` field gives the date and the reason, citing the `DEC-nnn` when a decision caused it, per [Identifier Rules](general-requirements.md#identifier-rules).

**Recommended**

- Write the outcome as the state a reviewer can observe on the product, not as the test that would check it, so the requirement survives a change of test tool.

**Since: W6**

7. The requirement's `Response Measure` remains its target, and the `SLI-nn` a test reads is the measured signal the test names in its `**Runs at:**`, per [Quality Requirement Tests](#quality-requirement-tests).
   No separate `SLO-nn` record is written.

## The Quality Attribute Scenario

**Since: W4**

The scenario turns the outcome into something a reviewer can judge: it names who causes the event, what happens, where, what it affects, and how the response is measured.
The six parts are the quality attribute scenario of lecture 4, and together they are the requirement's body.

**Required**

1. The requirement's body carries a `## Scenario` section with these six `###` sub-headings, in this order:

   | Sub-heading        | What it states                                                                         |
   | ------------------ | -------------------------------------------------------------------------------------- |
   | `Source`           | The user, operator, component, or other actor that causes the event                    |
   | `Stimulus`         | The event or condition that occurs                                                     |
   | `Environment`      | The relevant load, deployment, or state the event happens in                           |
   | `Artifact`         | The system component or capability the event affects                                   |
   | `Response`         | The required observable outcome                                                        |
   | `Response Measure` | The threshold, allowed result, or other objective criterion that verifies the response |

2. Each part states its one thing: the `Response` is the behavior the product must show, and the `Response Measure` is how a reviewer knows it did.
3. The `Response Measure` is what a reviewer fails the requirement on, so it is a number, a threshold, a conformance outcome, or a state a reviewer can observe, not an adjective.
4. The scenario states the behavior, not the design tactic that achieves it, so a scenario that names a cache, a queue, or a library has moved from the requirement to the decision.

**Recommended**

- Write the `Response Measure` first, then the other five parts, so the scenario is about the number a reviewer can check.
- Name the state that makes the response hard, such as a slow payment provider or a month of free slots, because the easy case proves nothing.

## Quality Requirement Tests

**Since: W5**

A requirement is a claim until something checks it.
A **quality requirement test**, `QRT-nn`, is the check for one requirement: it states what a reviewer runs, where it runs, and what result passes.
It is a section inside its requirement's file, not a file of its own, so the requirement and its checks are read together.
The testing plan carries each test's result, per [Quality Requirement Testing Plan](planning-requirements.md#quality-requirement-testing-plan).

**Required**

1. Each test is a `## QRT-nn` section inside its `QR-nn` file, after the requirement's `## Scenario`, and its heading is the identifier alone, so its anchor is `#qrt-nn`.
   Number the tests within their requirement from `QRT-01` upward, and cite one as the pair `QR-01 QRT-02`, per [Identifier Rules](general-requirements.md#identifier-rules).
2. The first line below the heading is the test in one sentence.
   Its body is a `### Procedure` section, whose numbered list is the steps a stranger runs, followed by one `**Pass when:**` criterion.
   The criterion restates the requirement's `Response Measure` in a form the procedure's output can settle.
3. The test carries these fields, in this order, as a bulleted list, per [Identifier Rules](general-requirements.md#identifier-rules):

   | Field             | What it says                                                                                                      |
   | ----------------- | ----------------------------------------------------------------------------------------------------------------- |
   | `**Status:**`     | `Active` or `Dropped`, the test's own state, per [Identifier Rules](general-requirements.md#identifier-rules)     |
   | `**Level:**`      | One of `CI`, `scripted`, `deployed`, or `manual`, per rule 5                                                      |
   | `**Runs at:**`    | What runs the test, in one line, per rule 6, and, when it reads one, the `Active` `SLI-nn`, per rule 11           |
   | `**Why Manual:**` | Only on a `manual` test: why no command can check the requirement, in one sentence                                |
   | `**Dropped:**`    | Only on a dropped test: the date and the reason, per [Identifier Rules](general-requirements.md#identifier-rules) |

4. The test carries no check result: its `**Status:**` is its own state, and its result, the sprint it was last checked in, and its evidence are the testing plan's row, per [Quality Requirement Testing Plan](planning-requirements.md#quality-requirement-testing-plan).
5. `**Level:**` says what kind of check the test is:

   | Level      | What it is and where it runs                                                                                                                                            |
   | ---------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
   | `CI`       | An automated check in the product CI workflow, in the integration environment.                                                                                          |
   | `scripted` | A script or command a person runs on a development machine, in the development environment.                                                                             |
   | `deployed` | An automated check run against the staging deployment on the university VM, by the team's member on campus, because the product CI cannot reach the university network. |
   | `manual`   | A person's inspection, in no environment of its own.                                                                                                                    |

6. `**Runs at:**` says in one line what runs the test: the workflow and step for a `CI` test, the script path or command for a `scripted` test, the staging deployment and the command or tool for a `deployed` test, and the inspection step for a `manual` test.
   A `deployed` test names the staging deployment and not the production one, and any address in its command is a placeholder or an environment variable such as `$STAGING_URL`, because the real address is private-only, per [Sensitive Information Reference](visibility-requirements.md#sensitive-information-reference).
7. The testability requirement's test is a `CI` test that runs the product's suite from a clean checkout, so a broken module the requirement names fails it, per [The Quality Requirement](#the-quality-requirement).
8. Every active `QR-nn` whose `**Business importance:**` is `High` has at least one `QRT-nn`.
   `**Technical risk:**` does not make a requirement high-priority for this rule, a requirement whose `**Business importance:**` is `Medium` or `Low` may have a `QRT-nn`, and a dropped requirement needs none.
9. A `CI`, `scripted`, or `deployed` test satisfies rule 8, so the requirement is checked by a command rather than by a person.
   A `manual` test is the documented exception, used only when no automated form is possible: it carries `**Why Manual:**`, and the team declares the deviation naming the requirement, per [Declaring Deviations](weekly-report-requirements.md#declaring-deviations).
   A manual inspection of the deployment is `manual`, carries the field, and is not a `deployed` test.
   The usability test that rule 17 exempts needs no deviation.
10. The evidence a test produces follows its level, and the testing plan's `Evidence` cell links it rather than restating it:

    - A `CI` test links its run on `main`.
    - A `scripted` test records the command and its output in a dated section of `reports/week-NN/README.md` or in a week-local supporting file the report links.
    - A `deployed` test records the command or tool, the staging environment, the output, the measured value, and the commit it ran against, with a screenshot when the result is visual, and names no real address.
    - A `manual` test records what was inspected, by whom, and what was observed, with a screenshot when the evidence is visual.
      A usability test records the sanitized `results.md` it reads and the private raw data behind it, per [The Results And Findings](usability-testing-requirements.md#the-results-and-findings).

**Since: W6**

11. A runtime `QRT-nn` written from Week 6 on is at level `scripted`, `deployed`, or `manual`, and it names the `Active` `SLI-nn` it reads in `**Runs at:**`, linked to the `SLI`'s section, per [The SLIs](observability-requirements.md#the-slis).
    A `manual` test that reads no signal is exempt, and it says so in `**Why Manual:**`.
    A runtime test written before Week 6 that is re-run and given an `SLI-nn` citation reads the signal too: any test that names an `SLI-nn` in `**Runs at:**` reads it in its `### Procedure`, whenever it was written.
12. Its `### Procedure` reads the signal the `SLI` defines, and its `**Pass when:**` states the requirement's `Response Measure` made specific to the test's environment and window, and still settles the measure's threshold.
    A particular request or event may be the instance the procedure produces, but it does not narrow the threshold.
13. A `CI` test is not a runtime test and cites no `SLI`: the testability requirement's test is the `CI` test that proves a broken module fails the suite.
14. A dropped `SLI` leaves its requirement active when another `Active` `SLI` covers it: the `QRT`'s `**Runs at:**` names the replacement, or its testing-plan row becomes `Not verified`, per [Quality Requirement Testing Plan](planning-requirements.md#quality-requirement-testing-plan).
    The requirement's `**Changed:**` records the loss only when its measure changed.

**Since: W7**

15. A usability requirement uses `Interaction Capability` and one sub-characteristic the team chooses from `Learnability`, `Self-descriptiveness`, and `Operability`, and the requirement states in one sentence why the chosen sub-characteristic is what the `UT-nn` measures.
    It carries `**Business importance:** High`, so rule 8 requires its test.
16. The requirement's `Response` is the behaviour its chosen measure reads, and its `Response Measure` is a real, countable criterion the team writes before the first session.
    The team chooses the measure from the main task's completion and assistance, the time on task, the main task's SEQ, or the SUS; the four are the menu of instruments, not of statistics.
    The `Response Measure` uses one of the statistics the analysis plan reports for them: the main-task completion or assistance count or proportion, the main-task median time, the main-task median SEQ, or the SUS mean or median.
    The example reads the main task's median SEQ.
    The requirement says why the chosen measure reads the chosen sub-characteristic, and the measures it does not read stay analysis results and are reported.
    Its `QRT-nn` is `manual`, names the `UT-nn` it runs in `**Runs at:**`, and carries `**Why Manual:**` saying why no command can judge the chosen measure and that it reads no `SLI-nn`.
    Its `### Procedure` runs the main usability test task with at least three participants per the `UT-nn` record and reads that record's `results.md`, so the record is the procedure's source.
    Its `**Pass when:**` settles the requirement's `Response Measure`, and its evidence is the sanitized `results.md` and the private raw data, per [The Results And Findings](usability-testing-requirements.md#the-results-and-findings).
17. A `manual` test whose requirement is `Interaction Capability`, with one of the three sub-characteristics, and whose `**Runs at:**` names a `UT-nn`, is the expected manual test for usability: it reads no `SLI`, says so in `**Why Manual:**`, and needs no deviation.
    Every other `manual` test keeps rule 9's deviation.
18. The testing plan's row for a usability test is `Not verified` with `Planned for sprint: SPRINT-08` in the design week, and `Passes` or `Fails` with `Checked: SPRINT-08` and the `results.md` evidence in the run week, per [Quality Requirement Testing Plan](planning-requirements.md#quality-requirement-testing-plan).

## The Allowed Pairs

**Since: W4**

The pair is what the priority matrix sorts and counts on, so it is a value rather than a description.

**Required**

1. Use one characteristic and one sub-characteristic from this table, in the Title Case it writes, from [ISO/IEC 25010:2023](https://iso25000.com/en/iso-25000-standards/iso-25010):

   | Characteristic           | Sub-characteristics                                                                                                                                                    |
   | ------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
   | `Functional Suitability` | `Functional Completeness`, `Functional Correctness`, `Functional Appropriateness`                                                                                      |
   | `Performance Efficiency` | `Time Behaviour`, `Resource Utilization`, `Capacity`                                                                                                                   |
   | `Compatibility`          | `Co-existence`, `Interoperability`                                                                                                                                     |
   | `Interaction Capability` | `Appropriateness Recognizability`, `Learnability`, `Operability`, `User Error Protection`, `User Engagement`, `Inclusivity`, `User Assistance`, `Self-descriptiveness` |
   | `Reliability`            | `Faultlessness`, `Availability`, `Fault Tolerance`, `Recoverability`                                                                                                   |
   | `Security`               | `Confidentiality`, `Integrity`, `Non-repudiation`, `Accountability`, `Authenticity`, `Resistance`                                                                      |
   | `Maintainability`        | `Modularity`, `Reusability`, `Analysability`, `Modifiability`, `Testability`                                                                                           |
   | `Flexibility`            | `Adaptability`, `Scalability`, `Installability`, `Replaceability`                                                                                                      |
   | `Safety`                 | `Operational Constraint`, `Risk Identification`, `Fail Safe`, `Hazard Warning`, `Safe Integration`                                                                     |

2. `**Characteristic:**` is one characteristic from the table, and `**Sub-characteristic:**` is one of that characteristic's sub-characteristics.
3. Use exactly one pair per requirement: a requirement that addresses two sub-characteristics is two requirements, because one cell holds one value and the matrix orders the value.

## The Quality Requirements Index

**Since: W4**

`docs/quality-requirements/README.md` is the group's entry point and the priority matrix; it is not a second list.
It lists every requirement once, with the priorities that order it and the pair that classifies it, and the architecture document links it as the quality-requirement driver group, per [Drivers](architecture-requirements.md#drivers).

**Required**

1. The index is `docs/quality-requirements/README.md`, with one row per `QR-nn`.
2. Its columns, in this order, are `QR`, `Outcome`, `Business importance`, `Technical risk`, `Characteristic`, `Sub-characteristic`, and `Status`.
3. The `QR` cell is the identifier as link text, linked to its file under `qr/`, and the `Outcome` cell repeats the requirement's one-sentence outcome.
4. Sort the rows: active records first, then `**Business importance:**` from `High` to `Low`, then `**Technical risk:**` from `High` to `Low`; `QR-nn` order breaks a tie.
5. The `Status` column is the requirement's own `Active` or `Dropped`, so the matrix and the file cannot disagree.
6. The index repeats none of the scenario: the requirement file carries it, and the row only finds the requirement.
7. A requirement cites no ADR and has no `ASR` field: the ADR's `**Addresses:**` lists the requirement it accounts for, so a requirement an ADR names is an architecturally significant requirement, and the reverse lookup is a search of the ADR lists, per [What It Accounts For](adr-requirements.md#what-it-accounts-for).
   The connection is recorded once, on the ADR side, per [Traceability Into Later Weeks](general-requirements.md#traceability-into-later-weeks).

**Since: W5**

8. The index links `docs/project-plan.md#quality-requirement-testing-plan` once, so the index is where the testing plan is reached and the plan is where a test's status is maintained.
9. The `Status` column never holds a test's result: a test's result and its last check are in the testing plan, per [Quality Requirement Tests](#quality-requirement-tests).

**Recommended**

- Let a dropped requirement fall below the active ones rather than deleting its row, because the matrix is the record of what the team decided not to meet.

## Full Example

The priority matrix, the three active requirements with their tests, and the tests themselves, in `docs/quality-requirements/`, in the meeting-booking example.
`QR-02` is the mandated testability requirement, so it names the frontend entry point `frontend/src/main.tsx` and the payment module `backend/src/payments/checkout.ts` in its scenario and carries `**Business importance:** High`.
`QR-01` carries a `deployed` test that reads no `SLI`, because it measures the page's display time and not the backend's response; `QR-02` carries a `CI` test that cites no `SLI`; and `QR-04` a `deployed` test that reads `SLI-01`; `QR-05` carries a `manual` test that reads `UT-01`, because no command can judge how a representative participant rates the main task on the SEQ, which the example chooses as its measure; `QR-03` is dropped, so it needs none.
The `SLI` itself, its query, and the OpenObserve evidence are in [Observability Requirements](observability-requirements.md#full-example).

From `docs/quality-requirements/README.md`:

```markdown
# Quality requirements

| QR                   | Outcome                                                                                                                             | Business importance | Technical risk | Characteristic         | Sub-characteristic   | Status  |
| -------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ------------------- | -------------- | ---------------------- | -------------------- | ------- |
| [QR-01](qr/QR-01.md) | A client sees the free slots within two seconds of opening the coach's booking link on a mid-range phone.                           | High                | Medium         | Performance Efficiency | Time Behaviour       | Active  |
| [QR-02](qr/QR-02.md) | A developer can run the checks that cover the payment module from a clean checkout, and a broken payment change fails them.         | High                | Medium         | Maintainability        | Testability          | Active  |
| [QR-04](qr/QR-04.md) | An operator can find a failed booking request in the product's response-time signal and see which request failed and what happened. | High                | Medium         | Maintainability        | Analysability        | Active  |
| [QR-05](qr/QR-05.md) | A representative participant completing the product's main usability test task for the first time finds it easy on the SEQ.         | High                | Medium         | Interaction Capability | Self-descriptiveness | Active  |
| [QR-03](qr/QR-03.md) | The booking page stays available for 99.9% of the month.                                                                            | Medium              | High           | Reliability            | Availability         | Dropped |

The tests and their results are in [the testing plan](../project-plan.md#quality-requirement-testing-plan).
```

From `docs/quality-requirements/qr/QR-01.md`:

```markdown
# QR-01: Show Free Slots Within Two Seconds

A client opening the coach's booking link sees the free slots within two seconds on a mid-range phone.

- **Status:** Active
- **Characteristic:** Performance Efficiency
- **Sub-characteristic:** Time Behaviour
- **Business importance:** High
- **Technical risk:** Medium

## Scenario

### Source

A client opens the coach's booking link for a meeting type.

### Stimulus

The booking page is requested for a meeting type with a month of free slots.

### Environment

The product runs on the single small VPS of [`CON-01`](../../product-vision.md#con-01), and the availability is read from the calendar integration.

### Artifact

The booking page served by the `frontend`, and the availability the `backend` returns to it.

### Response

The booking page shall show the free slots without the client waiting for the calendar integration to finish.

### Response Measure

On a mid-range phone over a mobile connection, the free slots are visible within two seconds in at least 9 of 10 page loads.

## QRT-01

The booking page shows the free slots within two seconds on a mid-range phone over a mobile connection.

- **Status:** Active
- **Level:** deployed
- **Runs at:** the staging deployment on the university VM, from a machine on the university network: `scripts/check-booking-latency.ts $STAGING_URL`.

### Procedure

1. Deploy the release candidate to the staging deployment on the university VM.
2. From a machine on the university network, run `scripts/check-booking-latency.ts $STAGING_URL` for a meeting type with a month of free slots.
3. Read the ten timed page loads in the script's output.

**Pass when:** the free slots are visible within two seconds in at least 9 of the 10 page loads.
```

From `docs/quality-requirements/qr/QR-02.md`:

```markdown
# QR-02: Run The Payment Module's Checks From A Clean Checkout

A developer can run the checks that cover the payment module from a clean checkout, and a broken payment change fails them.

- **Status:** Active
- **Characteristic:** Maintainability
- **Sub-characteristic:** Testability
- **Business importance:** High
- **Technical risk:** Medium

## Scenario

### Source

A developer opens a pull request that changes the payment module.

### Stimulus

The product CI runs the suite from a clean checkout.

### Environment

The integration environment, on a machine with none of the developer's local state or build artifacts.

### Artifact

The `frontend` entry point `frontend/src/main.tsx` and the payment module `backend/src/payments/checkout.ts`.

### Response

The suite checks both modules and fails when either of them breaks.

### Response Measure

A pull request that breaks a payment test fails the suite, and the suite passes on `main` with at least one test for each of the two modules the requirement names.

## QRT-01

The product's test suite runs from a clean checkout and fails when a payment test breaks.

- **Status:** Active
- **Level:** CI
- **Runs at:** the `test` job of `.github/workflows/ci.yml`, on every pull request and on `main`.

### Procedure

1. Break a test that covers `backend/src/payments/checkout.ts` on a branch.
2. Open a pull request and let the `test` job run.
3. Read the job's result.

**Pass when:** the `test` job fails on the broken branch and passes on `main`, with at least one test covering each of `frontend/src/main.tsx` and `backend/src/payments/checkout.ts`.
```

From `docs/quality-requirements/qr/QR-04.md`:

```markdown
# QR-04: Find A Failed Request In The Operating Signals

An operator investigating a failed booking request finds that request in the product's response-time signal and sees which request failed, in staging.

- **Status:** Active
- **Characteristic:** Maintainability
- **Sub-characteristic:** Analysability
- **Business importance:** High
- **Technical risk:** Medium

## Scenario

### Source

An operator investigates a booking request that failed.

### Stimulus

One booking request in the core task fails.

### Environment

The staging deployment on the university VM, with the observability pipeline running and `TELEMETRY_ENABLED` set.

### Artifact

The `backend`'s request path and the operating signals it emits for a booking request: the response-time histogram and the structured request log line.

### Response

The staging organization's queries return the request's log point, labelled with the request identifier, route, and failure, and the `SLI`'s aggregate series for the failure.

### Response Measure

Within five seconds of the failed request's response, the staging organization's query returns one log point for that request, carrying its `request_id`, its `route`, and an `outcome` of `server_error`; within one minute, the `SLI-01` query returns the `server_error` series for the route with a P95 value.

## QRT-01

A failed booking request in staging is queryable in the staging organization within five seconds, labelled with its request identifier, route, and failure, and the `SLI`'s P95 query returns the failure series within one minute.

- **Status:** Active
- **Level:** deployed
- **Runs at:** the staging deployment on the university VM, from a machine on the university network: `scripts/check-sli.ts $STAGING_URL $OPENOBSERVE_URL`; it reads [`SLI-01`](../../observability.md#sli-01), which the `backend` exports to the staging organization.

### Procedure

1. Deploy the release candidate to the staging deployment on the university VM.
2. From a machine on the university network, run `scripts/check-sli.ts $STAGING_URL $OPENOBSERVE_URL`, which runs the core task's traffic in staging, fails one booking request, and prints the failed request's `request_id`.
3. Query the staging organization for the failed request's log line by its `request_id`; record the result and the time between the failed response and the query.
4. After waiting up to one minute for the metric export, record the `SLI-01` query's result in the staging organization, which returns the `server_error` series, and the dashboard screenshot as the evidence that the pipeline stored and rendered the signal.

**Pass when:** within five seconds of the failed request's response, the staging organization's query returns one log point for it, carrying its `request_id`, its `route`, and an `outcome` of `server_error`; within one minute, the `SLI-01` query returns the `server_error` series for the route with a P95 value.
```

From `docs/quality-requirements/qr/QR-05.md`, the usability requirement and its manual test:

```markdown
# QR-05: Find The Main Task Easy On First Use

A representative participant completing the product's main usability test task for the first time finds it easy on the SEQ.

- **Status:** Active
- **Characteristic:** Interaction Capability
- **Sub-characteristic:** Self-descriptiveness
- **Business importance:** High
- **Technical risk:** Medium

`Self-descriptiveness` is what the test measures, because a participant who can tell what each screen expects finds the task easy on the SEQ.
The team chose the main task's SEQ as its measure; it records the completion and assistance, the time on task, and the SUS as analysis results.

## Scenario

### Source

A representative participant who has not used the product before.

### Stimulus

The participant is given the main usability test task's scenario and the product's staging deployment.

### Environment

The staging deployment on the university VM, reached from the university network, with the seed reset before the session and no real payment, per the `UT-01` record.

### Artifact

The product's interface and the main usability test task.

### Response

The participant rates the main task on the SEQ after the attempt.

### Response Measure

The median main-task SEQ is at least five of seven, the bar the team set before the first session.

## QRT-01

A representative participant finds the main usability test task easy on first use.

- **Status:** Active
- **Level:** manual
- **Runs at:** [`UT-01`](../../usability-tests/ut-01/README.md), whose sessions run the main task with at least three representative participants and record the results in [`results.md`](../../usability-tests/ut-01/results.md); it reads no `SLI`.
- **Why Manual:** no command can judge how a representative participant rates the main task on the SEQ, and it reads no `SLI`.

### Procedure

1. Book the at least three sessions the `UT-01` record schedules, with participants who match its participant profile.
2. Run each session's main task per the record's protocol, and record its SEQ in `sessions/P-nn.md`.
3. Write the median main-task SEQ in `results.md`.

**Pass when:** the median main-task SEQ is at least five of seven.
```
