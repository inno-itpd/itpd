# Guide: Quality Requirement Tests

How to turn a quality requirement into a check another person can run, give that test the environment it needs, and keep its result where the week and the release read it.

The rules are in [Quality Requirement Tests](../requirements/quality-requirements-requirements.md#quality-requirement-tests): the section's placement, its fields, the four levels, the evidence each level produces, and which requirements need a test at all.
Its result is kept in [Quality Requirement Testing Plan](../requirements/planning-requirements.md#quality-requirement-testing-plan), and the claim a release builds from it is in [Cutting A Release](../requirements/releases-requirements.md#cutting-a-release).
The deployment address a test reads is private-only, per [Sensitive Information Reference](../requirements/visibility-requirements.md#sensitive-information-reference), and the environments themselves belong to [Environments And Deployment](../requirements/repository-requirements.md#environments-and-deployment).
This guide is the method: making a requirement checkable, writing the check, choosing where it runs, and reading its result into the plan.

**Timebox:** about half a day for two tests, most of it on the first one.
Making a response measure runnable is the hour that decides whether the rest is a check or a paragraph; the runs themselves wait for the suite and the deployment to exist.

<h2>Table of contents</h2>

- [What You Produce](#what-you-produce)
- [Step 1: Make The Requirement Testable](#step-1-make-the-requirement-testable)
  - [Read The Response Measure As An Instruction](#read-the-response-measure-as-an-instruction)
  - [Write The Pass Condition As One Comparison](#write-the-pass-condition-as-one-comparison)
  - [Tell A Test From A Restatement](#tell-a-test-from-a-restatement)
- [Step 2: Write The Test](#step-2-write-the-test)
  - [Put It Under The Requirement It Proves](#put-it-under-the-requirement-it-proves)
  - [State The Assertion In One Sentence](#state-the-assertion-in-one-sentence)
  - [Set The Level And Where It Runs](#set-the-level-and-where-it-runs)
  - [Justify A Manual Test](#justify-a-manual-test)
  - [Write The Procedure For A Stranger](#write-the-procedure-for-a-stranger)
  - [Close With The Pass Criterion](#close-with-the-pass-criterion)
- [Step 3: Pick The Environment The Test Needs](#step-3-pick-the-environment-the-test-needs)
  - [Let The Check Choose The Level](#let-the-check-choose-the-level)
  - [Run The Deployed Test From Campus](#run-the-deployed-test-from-campus)
  - [Fall Back When Staging Is Missing](#fall-back-when-staging-is-missing)
  - [Keep The Inspection Out Of The Deployed Level](#keep-the-inspection-out-of-the-deployed-level)
- [Step 4: Record The Progress](#step-4-record-the-progress)
  - [Give Every Test One Row](#give-every-test-one-row)
  - [Set The Result From The Run](#set-the-result-from-the-run)
  - [Link The Evidence Its Level Requires](#link-the-evidence-its-level-requires)
  - [Point The Week At The Plan](#point-the-week-at-the-plan)
  - [Leave The Test A Definition](#leave-the-test-a-definition)
- [Common Mistakes](#common-mistakes)

## What You Produce

```text
docs/quality-requirements/qr/QR-nn.md   a QRT-nn section under the requirement's Scenario: the assertion, the fields, the procedure, and the pass criterion
docs/project-plan.md                    the testing plan's row per test: its result, its last check, its planned sprint, and a link to its evidence
reports/week-NN/README.md               the scripted, deployed, or manual evidence the plan's Evidence cell links, in a dated section or a week-local file
```

The section is the definition, the row is the result, and the evidence is the proof: three places, one fact each, and no fact in two of them.

## Step 1: Make The Requirement Testable

A **quality requirement test** is a check that can come out against the product, on the requirement's own terms.
It does not prove the requirement; it fails the product when the requirement's response measure is missed, which is what the customer and the release need from it.
The work of this step is reading the measure closely enough that a procedure can be written at all.

### Read The Response Measure As An Instruction

The requirement's `Response Measure` is the threshold, and [The Quality Attribute Scenario](../requirements/quality-requirements-requirements.md#the-quality-attribute-scenario) already says it is a number, a threshold, or a state a reviewer can observe.
Turn it into a sentence that starts with a verb: load the booking page ten times from a connection that stands for a mid-range phone, and time each load.
That sentence is the test's skeleton, and when you cannot write it, the requirement needs another pass before the test does.

Three things have to be settled before the procedure exists: what is measured, from when to when, and on what state of the product.
[The full example](../requirements/quality-requirements-requirements.md#full-example) settles all three in one requirement: the free slots, from the opening of the link to the visible page, on a meeting type with a month of loaded slots.

### Write The Pass Condition As One Comparison

A `**Pass when:**` criterion is one comparison between what the procedure prints and the threshold.
"At least 9 of the 10 loads showed the slots within two seconds" is one comparison, and "it loads fast and shows no errors" is two checks with one verdict: a reader cannot tell which of them failed.
Keep the units and the interval the requirement used, so the test and the requirement cannot pass and fail each other.

### Tell A Test From A Restatement

A restatement repeats the requirement in the test's voice: "the booking page loads fast enough", or "the payment module is testable".
A test names what is done, against what, and which output settles the verdict.
Two questions catch the restatement:

1. **Could two people run this and reach different verdicts?**
   If they could, the procedure is a conversation rather than a check.
2. **Could the team satisfy it by editing the test?**
   If a word changed in the test makes it pass without the product changing, the test is not measuring the product.

Naming a tool is fine, because the tool is what runs the test; naming only the requirement is not.

## Step 2: Write The Test

The test is a section inside its requirement's file, so the requirement and its checks are read together.
[Quality Requirement Tests](../requirements/quality-requirements-requirements.md#quality-requirement-tests) fixes the placement, the numbering, and the fields; this step is the order that makes the section readable to someone who has not met the requirement before.

### Put It Under The Requirement It Proves

Write the section after the requirement's `Scenario`, and number it from `QRT-01` inside that requirement.
The number is unique within its requirement rather than in the repository, so cite the pair, `QR-01 QRT-01`, and link it to the section's anchor.
The second requirement's first test is also `QRT-01`, and that is the point: the requirement is the scope, and the pair is the identifier.

### State The Assertion In One Sentence

The first line below the heading is the test in one sentence, and a reader comparing two requirements should be able to compare their tests by their first lines alone.
Write what must hold rather than how it is checked: "the product's suite runs from a clean checkout and fails when a payment check breaks" is the claim, and the branch, the job, and the step arrive in the procedure and `**Runs at:**`.

Keep the sentence about the product rather than about the team's effort, because a test is read as a statement about the version it last ran against.

### Set The Level And Where It Runs

`**Status:**` is the test's own state, and it is `Active` from the day the test is written.
A test the team stops needing becomes `Dropped` with its date and reason, per [Identifier Rules](../requirements/general-requirements.md#identifier-rules), and it keeps the section, so the pair is never reused.
The status is not the result, and [Step 4](#step-4-record-the-progress) is where the result goes.

`**Level:**` follows the choice in [Step 3](#step-3-pick-the-environment-the-test-needs), and it is a claim about how the check runs rather than how long it took to write.
`**Runs at:**` names what runs the test in one line, and the line is what a second person needs to re-run the check: the workflow and its step, the script path or the command, the staging deployment and the command or tool, or the inspection step.
Write the step rather than the workflow alone: "the `test` job of `.github/workflows/ci.yml`, on every pull request and on `main`" is re-runnable, and "CI" is not.

### Justify A Manual Test

A `manual` test carries `**Why Manual:**` in one sentence, and the sentence has to say why no command can check the requirement.
"A person reads the confirmation email in three mail clients" is a reason, because three renderings and a person's judgement are not something the suite asserts on yet.
"We ran out of time to automate it" is not a reason: it says the test is unfinished rather than that the requirement is unautomatable.

The manual exception is for a requirement no command can check, not a way to get out of running one.
When an active requirement's check can be automated, that check is the one the team runs, and the manual test belongs to the requirement whose measure a command cannot reach.

### Write The Procedure For A Stranger

The `### Procedure` is a numbered list of the steps somebody else runs: set up the state, perform the action, and read the output.
Write the output the reader is looking for, in the units the criterion uses, so the last step is reading a number rather than hunting for one.
Name where the runner stands, because a step that only works on the author's laptop is not a procedure: on the campus machine, against the staging deployment, or from a clean checkout.

Keep the verdict out of the procedure.
The steps produce the number, and the pass criterion judges it, so a reader who stops before the criterion knows what was measured and no more.

### Close With The Pass Criterion

`**Pass when:**` follows the procedure and states the comparison from [Step 1](#write-the-pass-condition-as-one-comparison).
It is one line, it uses the requirement's own threshold, and it is the only place in the section where the verdict is decided.

**Example**

The shape of a `deployed` test, from `docs/quality-requirements/qr/QR-01.md`:

```markdown
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

The first line is the claim, the fields say where the check runs and what runs it, the procedure produces ten numbers, and the criterion judges them.
`$STAGING_URL` stands in for the address, which never reaches the repository, per [Sensitive Information Reference](../requirements/visibility-requirements.md#sensitive-information-reference).

## Step 3: Pick The Environment The Test Needs

The level says where the check can run, which is why it is chosen before the procedure is written: every step of the procedure depends on it.

### Let The Check Choose The Level

[Quality Requirement Tests](../requirements/quality-requirements-requirements.md#quality-requirement-tests) owns the levels and their environments, and [Environments And Deployment](../requirements/repository-requirements.md#environments-and-deployment) owns the environments themselves.
The pairing is one line: a check a developer runs locally is `scripted`, a check the product CI runs is `CI`, a check against the staging deployment is `deployed`, and a check a person performs is `manual`.

Ask what has to be true for the number to mean anything.
A measurement of the built product under a production-like load needs staging; a suite that has to run from a clean checkout needs the integration environment; a number a developer can produce from a local run is `scripted`, and it costs the team nothing to keep.

The testability requirement is the anchor of the week, because its check is the suite itself: it runs from a clean checkout in the product CI, so it is `CI`, and the critical modules it has to cover come from [Write The Testability Requirement Against The Code](quality-and-architecture.md#write-the-testability-requirement-against-the-code).

### Run The Deployed Test From Campus

A `deployed` test exists because the product CI cannot reach the university network.
The staging deployment is reachable from a machine on that network, so the team's member on campus runs the check, and the test's `**Runs at:**` names the staging deployment rather than production.
Write the procedure around the runner they already have: the SSH session, the browser, and the command with an environment variable for the address.

The staging deployment is the test bed, and production is where the customer uses the product.
A check run against production measures a state the team has already promised rather than a state it can still change.

### Fall Back When Staging Is Missing

When the VM or the staging deployment is unavailable, the other implemented test has two honest forms, and the team picks one and says which in the week's report.

The first is to write it at the level that can run, `CI` or `scripted`, and record that run: the level, `**Runs at:**`, and the row's evidence all change together, and the release can claim the requirement through the check that actually happened.
The second is to keep it `deployed` and leave the row `Not verified` with the sprint the VM is now expected in, so the test still says what the team means to run and nothing is claimed through it.

Both forms declare the deviation, per [Declaring Deviations](../requirements/weekly-report-requirements.md#declaring-deviations), and neither leaves the row as a `Passes` that no run produced.
When the VM arrives, a test written at the fallback level is checked again at `deployed`, and the row moves to the sprint that check happens in.

### Keep The Inspection Out Of The Deployed Level

"Open the deployed page and see that it works" is an inspection, and an inspection is `manual` with its `**Why Manual:**`.
A `deployed` test is automated: a command or tool that prints the measured value against the staging deployment, and a person reading the output rather than deciding the verdict.
The difference is what the evidence carries, because a screenshot of a page that looks right is not a measured value, and calling the inspection `deployed` does not make it one.

## Step 4: Record The Progress

The test's section is a definition, and the plan's table is the record of what the definition last found.
[Quality Requirement Testing Plan](../requirements/planning-requirements.md#quality-requirement-testing-plan) owns the columns and what a row keeps when it is not `Passes`; this step is how the values are set.

### Give Every Test One Row

One row per test, in the order of the quality requirements index, with the `QR` and `QRT` cells linked.
The pair is what the row is about, so a row that names only `QRT-01` cannot be told from another requirement's first test.
A test without a row is a definition nobody has run, and a row without a test is a result nobody can check.

### Set The Result From The Run

`Passes` means the procedure ran and the criterion held, `Fails` means it ran and the criterion did not, and `Not verified` means no run is recorded yet.
Set the result from the output rather than from the intention, and put the sprint of the run in `Checked`.
A row that is not `Passes` keeps its result and is what the weekly review reads, per [Progress Monitoring](../requirements/planning-requirements.md#progress-monitoring).

### Link The Evidence Its Level Requires

The evidence follows the level, and [Quality Requirement Tests](../requirements/quality-requirements-requirements.md#quality-requirement-tests) says what each level produces: a run on `main`, a command and its output, a staging run with its measured value and commit, or an inspection with who looked and what they saw.
Put that proof in the week's report or in a week-local supporting file the report links, and make it findable by its heading rather than by scrolling.

The `Evidence` cell is a link to the proof, never the proof itself.
Output pasted into a table cell is a second copy of a result the report owns, and it makes the plan unreadable at the moment the team most needs to scan it.

### Point The Week At The Plan

The week's report points at the testing plan for the tests that are not `Passes`, and copies none of the rows, per [Weekly Public Report](../requirements/weekly-report-requirements.md#weekly-public-report).
The plan is the one place the rows live, and the report is the one place the week explains what it did about them.

The Sprint Review shows each implemented test's result beside the working software, per [Showing Working Software](../requirements/customer-meetings-requirements.md#showing-working-software), so the plan's rows are what the customer sees before the release claims anything.

### Leave The Test A Definition

The test section carries no result, no checked sprint, and no evidence link.
Those are the plan's, and a second copy on the test drifts the first week the test is re-run: the plan says `Passes`, the test says `Not verified`, and nobody knows which one the team believes.
A dropped test is the one exception, and it is not a result either: `**Dropped:**` records that the check is no longer maintained, and the plan's row records that nothing is claimed through it.

## Common Mistakes

- **A test that restates the requirement.**
  "The booking page is fast" cannot fail, so it cannot pass either; name the action, the output, and the comparison that settles it.
- **A manual test offered as the second implemented test.**
  The manual exception is for a requirement no command can check; when another active requirement's check can be automated, that is the test the team runs.
- **A `deployed` test that is really an inspection.**
  A person deciding from a page that looks right is a `manual` test without its `**Why Manual:**`, so the manual exception is claimed without being declared and the evidence is a screenshot rather than a measured value.
- **A result kept on the test.**
  `Passes` in the test's `**Status:**` turns the test's own state into a second result that drifts from the plan; the section stays a definition and the row carries the run.
- **Output pasted into the `Evidence` cell.**
  The cell is a link; a table of pasted numbers cannot be read, cannot be checked against its run, and is a second copy of the report.
- **A deployed test run against production.**
  Production is the state the team has promised, so a check there cannot fail without the release being wrong; run the check against staging and keep production for the customer.
- **A real address in a public file.**
  A `**Runs at:**` line, a procedure, or a report that names the VM's address publishes a private-only value; use `$STAGING_URL` or a placeholder and keep the address in the Moodle submission.
- **An ADR that cites a `QRT-nn`.**
  A record answers requirements rather than checks, so its `**Addresses:**` names the `QR-nn` and the test is reached through it, per [What It Accounts For](../requirements/adr-requirements.md#what-it-accounts-for).
- **A release that claims a quality requirement its tests have not verified.**
  A requirement is claimed when its tests are `Passes` and checked in the release's sprint, per [Cutting A Release](../requirements/releases-requirements.md#cutting-a-release); a test last checked two sprints ago is re-run before the claim rather than trusted.
