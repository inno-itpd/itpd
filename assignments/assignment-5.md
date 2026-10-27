# Assignment 5: Testing, Verification, Deployment, And The Week 5 Release

**This week's deadline:**

- Hard deadline: Saturday 31 October 2026, 23:59.

There is no soft deadline.
See [Deadlines And Submission](../course/rules.md#deadlines-and-submission).

One submission per team.

Week 4 ended with the quality requirements and their priority matrix, the functional requirements, the architectural decision records, the architecture document with its container view, the glossary, the team's `AGENTS.md`, and `REL-04`.
This week the product leaves your laptops: it runs in staging and production on the university VM, the automated tests and the CI checks prove it, every active High business-importance quality requirement gets a test, and the testing plan records what each test last found.
The week also adds at least two plan milestones and two stories that carry the next increments, documents the product's features in `docs/features.md`, and ends with `REL-05`.

What you hand in is a deployed product the customer can open from the university network, the checks behind it at the level each one runs, and the plan and records the next increments rest on.

The tools the course suggests, from meeting transcripts to a coding agent, are in [Course Tooling](../course/tooling.md).

<h2>Table of contents</h2>

- [Objectives](#objectives)
- [Part 1: Plan The Sprint, Define The Milestones, And Add The Stories](#part-1-plan-the-sprint-define-the-milestones-and-add-the-stories)
- [Part 2: Add The Automated Tests And The CI Checks](#part-2-add-the-automated-tests-and-the-ci-checks)
- [Part 3: Deploy To The VM And Document The Environments](#part-3-deploy-to-the-vm-and-document-the-environments)
- [Part 4: Write The Quality Requirement Tests](#part-4-write-the-quality-requirement-tests)
- [Part 5: Run The Tests And Record The Testing Plan](#part-5-run-the-tests-and-record-the-testing-plan)
- [Part 6: Document The Features](#part-6-document-the-features)
- [Part 7: Carry Out The Week 4 Action Points And Open Questions](#part-7-carry-out-the-week-4-action-points-and-open-questions)
- [Part 8: Validate With The Customer](#part-8-validate-with-the-customer)
- [Part 9: Redeploy And Retest After Same-Week Rework](#part-9-redeploy-and-retest-after-same-week-rework)
- [Part 10: Cut The REL-05 Release](#part-10-cut-the-rel-05-release)
- [Part 11: Close The Sprint And Hold The Retrospective](#part-11-close-the-sprint-and-hold-the-retrospective)
- [Part 12: Report On Your AI Usage](#part-12-report-on-your-ai-usage)
- [What Good Looks Like](#what-good-looks-like)
- [Assignment Report In The Repository](#assignment-report-in-the-repository)
- [Assignment Report On Moodle](#assignment-report-on-moodle)
  - [Submission Procedure](#submission-procedure)
- [Checklist](#checklist)

## Objectives

By the end of this week you should be able to show a reader:

- The product in the four environments: development on your machines, integration in the product CI, staging and production on the university VM.
- A deployment runbook, `docs/deployment.md`, that a teammate on the university network could redeploy from with the address from the Moodle submission.
- The automated tests for the testability requirement's critical modules, and the CI checks that run them on pull requests and on `main`.
- A quality requirement test inside every active High business-importance requirement's file, with its level, what runs it, and a pass criterion a stranger can settle.
- At least two implemented quality requirement tests: the testability requirement's `CI` test and one other requirement's test at `CI`, `scripted`, or `deployed`.
- The testing plan with one row per test: its result, its last check, its planned sprint, and the evidence its level requires.
- At least two plan milestones and two new stories that make the next increments visible.
- The feature documentation: `docs/features.md`, with a user-language sentence per capability, its glossary line and first-use term links, and links to the story, requirement, and record that own each fact.
- Each story shown at the Sprint Review with its verdict recorded as a `DEC-nnn`, and each implemented test's result shown at its level.
- `REL-05`: the tag on the final production commit, the release body with its user summary, claim, and evidence links, the changelog section, and the plan's `REL-05` line.
- The sprint closed with its actual velocity, a retrospective that carries the Week 4 actions, and the AI usage report.

## Part 1: Plan The Sprint, Define The Milestones, And Add The Stories

The rules:

- The plan's `### SPRINT-nn` section carries the sprint's goal, its `**Due:**` field, its `**Sprint Backlog:**` link, `**Planned Velocity:**`, and later `**Actual Velocity:**`: [Sprints](../requirements/planning-requirements.md#sprints).
- A plan milestone carries its `**Due:**`, `**Sprints:**`, and `**Advances:**` fields and a description that leads with the increment its run delivers, and the team chooses its milestone set: [Milestones](../requirements/planning-requirements.md#milestones).
- The sprint opens with planning, and the next two sprints' worth of the product backlog is refined before it: [Sprint Planning](../requirements/sprint-ceremonies-requirements.md#sprint-planning) and [Product Backlog Refinement](../requirements/sprint-ceremonies-requirements.md#product-backlog-refinement).
- A story carries the `User Story` type, a `MoSCoW` value, `Story Points`, checkbox `AC-nn` criteria, and its `### Specified by` when it applies: [The Story](../requirements/user-stories-requirements.md#the-story), [Acceptance Criteria](../requirements/user-stories-requirements.md#acceptance-criteria), and [Estimation](../requirements/sprint-ceremonies-requirements.md#estimation).
- Scheduling is assigning an issue to its sprint's GitHub milestone, and refinement leaves an item unscheduled: [Scheduling An Issue](../requirements/issue-tracking-requirements.md#scheduling-an-issue).
- The sprint's GitHub milestone carries its focus and its due date: [Sprints](../requirements/planning-requirements.md#sprints).

This week:

1. Plan `SPRINT-05` in `docs/project-plan.md`: replace its provisional goal with the sprint's goal, set `**Due:**` to `2026-10-31`, link `**Sprint Backlog:**` to its GitHub milestone, and set `**Planned Velocity:**` to the story points of the stories you selected, computed by hand from their `Story Points`.
2. Count the plan milestones due in `SPRINT-05` through `SPRINT-09`: you need at least two in total.
   An existing milestone due in that range counts, and you add only the shortfall.
3. At least two of them are due in different sprints, each with its `**Due:**`, its `**Sprints:**` run of one or two sprints, its `**Advances:**`, and a description that leads with the increment its run delivers.
   A run may begin at `SPRINT-04` and end at `SPRINT-05`, and no two milestones cover the same sprint.
4. Add at least two new `US-nn` in the Week 4 shape: the `User Story` type, a `MoSCoW` value, `Story Points`, a `### Specified by` list, and checkbox criteria.
5. Schedule at least one of the two in `SPRINT-05`: its GitHub milestone, its `Responsible` and `Accountable` values, and both assignees.
   Refine the other for `SPRINT-06`: it keeps its `Story Points` and stays in the product backlog with no milestone.
6. Refine the next two sprints' worth of the product backlog until each item is ready to schedule, and leave them unscheduled.
7. A story larger than `13` points is split before it is scheduled.

The method is in [Step 3: Write The Milestones](../guides/planning-and-tracking.md#step-3-write-the-milestones) and [Step 4: Write The Sprints And Their Releases](../guides/planning-and-tracking.md#step-4-write-the-sprints-and-their-releases).

## Part 2: Add The Automated Tests And The CI Checks

The rules:

- `actionlint` runs over `.github/workflows/` on pull requests and on `main`, pinned like any other tool: [Continuous Integration](../requirements/repository-requirements.md#continuous-integration) and [Pinning Third-Party Actions](../requirements/repository-requirements.md#pinning-third-party-actions).
- The product-code CI names a step for each of the five checks that applies to your stack: linting, formatting, type checking, build, and automated tests: [Continuous Integration](../requirements/repository-requirements.md#continuous-integration).
- A check that does not apply is recorded as not applicable, with its reason, rather than silently skipped: [Continuous Integration](../requirements/repository-requirements.md#continuous-integration).
- The automated tests include at least one test for each critical module the testability requirement names, run from a clean checkout: [Continuous Integration](../requirements/repository-requirements.md#continuous-integration) and [The Quality Requirement](../requirements/quality-requirements-requirements.md#the-quality-requirement).
- The workflow stops at the build and the tests: there is no deployment job, because the product CI cannot reach the university network: [Continuous Integration](../requirements/repository-requirements.md#continuous-integration) and [Environments And Deployment](../requirements/repository-requirements.md#environments-and-deployment).
- The Definition of Done's pull request list names `actionlint` and the applicable product-code checks among the checks that must be green: [The Pull Request](../requirements/definition-of-done-requirements.md#the-pull-request).
- The latest run of every required check on `main` is green before you submit: [Continuous Integration](../requirements/repository-requirements.md#continuous-integration).

This week:

1. Add `actionlint` over `.github/workflows/` to a workflow that runs on pull requests and on `main`, and pin the action to a commit.
2. Add the product-code workflow with a named step for each check that applies to your stack, and pin every third-party action it uses.
3. Record each of the five checks that does not apply, with the reason, in the workflow beside the checks that do, and name it in the report's summary.
4. Add at least one test for each critical module the testability requirement names, so a broken one fails the suite from a clean checkout.
5. Add `actionlint` and the product-code checks to `docs/definition-of-done.md`'s `## Pull Request` list.
6. Get the latest run of every check on `main` green before the meeting in [Part 8](#part-8-validate-with-the-customer).
7. Keep the workflow free of a deployment job: the deploy in [Part 3](#part-3-deploy-to-the-vm-and-document-the-environments) is manual from a campus machine.

## Part 3: Deploy To The VM And Document The Environments

The rules:

- The product runs in four environments: development, integration, staging, and production, and a `QRT-nn` level runs in the environment its definition names: [Environments And Deployment](../requirements/repository-requirements.md#environments-and-deployment) and [Quality Requirement Tests](../requirements/quality-requirements-requirements.md#quality-requirement-tests).
- The university provides one VM per team; get it from the portal, recreate it, set its password, and connect over SSH from a machine on the university network: [Environments And Deployment](../requirements/repository-requirements.md#environments-and-deployment).
- Every team has at least one member on campus, and that member runs the deployment and the `deployed` test: [Environments And Deployment](../requirements/repository-requirements.md#environments-and-deployment).
- The customer reaches production from the university network at the VM's IPv4 address, and there is no domain name: [Environments And Deployment](../requirements/repository-requirements.md#environments-and-deployment).
- Staging and production are separate deployments on separate ports, with separate configuration and secrets: [Environments And Deployment](../requirements/repository-requirements.md#environments-and-deployment).
- Deploy by hand: the release candidate goes to staging first, and the same commit then goes to production; verify the core task after each production deploy, and roll back a deploy that fails its verification: [Environments And Deployment](../requirements/repository-requirements.md#environments-and-deployment) and [The Candidate](../requirements/minimum-usable-product-requirements.md#the-candidate).
- `docs/deployment.md` is the deployment runbook, not `docs/setup.md`: it links the setup guide for the build and the run and repeats none of it: [Environments And Deployment](../requirements/repository-requirements.md#environments-and-deployment) and [Setup And Run Instructions](../requirements/repository-requirements.md#setup-and-run-instructions).
- `docs/deployment.md` carries no real address, host name, password, token, or secret: [Environments And Deployment](../requirements/repository-requirements.md#environments-and-deployment) and [Sensitive Information Reference](../requirements/visibility-requirements.md#sensitive-information-reference).

This week:

1. Get the VM from the university portal, recreate it, set its password, and connect over SSH from a campus machine.
2. Write `docs/deployment.md` with the four environments, the VM and its campus-network access, the configuration, the manual deploy, the verification, and the rollback.
   Link `docs/setup.md` for the build and the run, and repeat none of it.
3. Keep the configuration's shape in `.env.example` with placeholders, install the real secrets outside the repository, and use `<university-vm-ipv4>` or an environment variable wherever an address would go.
4. When the VM is available, deploy the release candidate to staging, then deploy the same commit to production.
5. Verify the core task on production from a campus machine, and record what you checked with the release.
6. Put the real staging and production addresses in the Moodle submission in [Assignment Report On Moodle](#assignment-report-on-moodle), and in no repository file.
7. When the VM is not available, record the postponement and the date the group chat announces, and declare the deviation; the rest of the week proceeds, and the test in [Part 4](#part-4-write-the-quality-requirement-tests) falls back to `scripted` or `CI`.

The method is in [Step 1: Map The Four Environments](../guides/deployment-and-environments.md#step-1-map-the-four-environments), [Step 2: Prepare The VM](../guides/deployment-and-environments.md#step-2-prepare-the-vm), [Step 3: Configure The Deployment](../guides/deployment-and-environments.md#step-3-configure-the-deployment), [Step 5: Deploy To Production And Verify](../guides/deployment-and-environments.md#step-5-deploy-to-production-and-verify), and [Step 6: Document The Deployment](../guides/deployment-and-environments.md#step-6-document-the-deployment).

## Part 4: Write The Quality Requirement Tests

The rules:

- A test is a `## QRT-nn` section inside its requirement's file, after the requirement's `## Scenario`, with a one-sentence first line, its fields, a `### Procedure`, and one `**Pass when:**` criterion: [Quality Requirement Tests](../requirements/quality-requirements-requirements.md#quality-requirement-tests).
- Every active `QR-nn` whose business importance is `High` has at least one test: [Quality Requirement Tests](../requirements/quality-requirements-requirements.md#quality-requirement-tests).
- A High business-importance requirement's test is `CI`, `scripted`, or `deployed`; a `manual` test is the documented exception, with its `**Why Manual:**` and a declared deviation: [Quality Requirement Tests](../requirements/quality-requirements-requirements.md#quality-requirement-tests) and [Declaring Deviations](../requirements/weekly-report-requirements.md#declaring-deviations).
- The testability requirement's test is a `CI` test that runs the suite from a clean checkout: [Quality Requirement Tests](../requirements/quality-requirements-requirements.md#quality-requirement-tests) and [The Quality Requirement](../requirements/quality-requirements-requirements.md#the-quality-requirement).
- The test carries no result, no last check, and no evidence: [Quality Requirement Tests](../requirements/quality-requirements-requirements.md#quality-requirement-tests) and [Quality Requirement Testing Plan](../requirements/planning-requirements.md#quality-requirement-testing-plan).
- A `deployed` test names the staging deployment rather than production, and any address in its command is a placeholder or an environment variable: [Quality Requirement Tests](../requirements/quality-requirements-requirements.md#quality-requirement-tests).
- A test is cited as the pair `QR-01 QRT-02` and linked by its requirement's path and its `#qrt-nn` anchor: [Identifier Rules](../requirements/general-requirements.md#identifier-rules).

This week:

1. Write a `QRT-nn` inside the file of every active requirement whose business importance is `High`, after its `## Scenario`.
2. Implement the testability requirement's `CI` test: the workflow step that runs the suite from a clean checkout, with at least one test for each critical module the requirement names.
3. Implement one other active requirement's test at `CI`, `scripted`, or `deployed`, preferring `deployed` when staging is available.
   The testability test does not count as this one, and a `manual` test never satisfies it.
4. Put the other test on a High business-importance requirement other than the testability one when your matrix has another; when it does not, put it on the next active row by the matrix's sort and declare the deviation.
5. Where no command can check a requirement, its test is `manual` only with its `**Why Manual:**` and a declared deviation naming the requirement; choose another requirement's test for item 3 instead.
6. When staging is not available in time, fall back to `scripted` or `CI`, declare the deviation, and upgrade the test to `deployed` with staging evidence when the VM arrives in the same sprint.

The method is in [Step 1: Make The Requirement Testable](../guides/quality-requirement-tests.md#step-1-make-the-requirement-testable), [Step 2: Write The Test](../guides/quality-requirement-tests.md#step-2-write-the-test), and [Step 3: Pick The Environment The Test Needs](../guides/quality-requirement-tests.md#step-3-pick-the-environment-the-test-needs).

## Part 5: Run The Tests And Record The Testing Plan

The rules:

- `docs/project-plan.md` carries `## Quality Requirement Testing Plan`, one row per `QRT-nn`, with the columns `QR`, `QRT`, `Status`, `Checked`, `Planned for sprint`, and `Evidence`: [Quality Requirement Testing Plan](../requirements/planning-requirements.md#quality-requirement-testing-plan).
- The rows follow the quality requirements index, and a test's number breaks a tie: [The Quality Requirements Index](../requirements/quality-requirements-requirements.md#the-quality-requirements-index).
- `Evidence` links the proof the test's level requires and never holds the output: [Quality Requirement Tests](../requirements/quality-requirements-requirements.md#quality-requirement-tests).
- The quality requirements index links the plan once: [The Quality Requirements Index](../requirements/quality-requirements-requirements.md#the-quality-requirements-index).
- A row that is not `Passes` keeps its result: [Quality Requirement Testing Plan](../requirements/planning-requirements.md#quality-requirement-testing-plan).
- The weekly review reads the rows that are not `Passes`: [Progress Monitoring](../requirements/planning-requirements.md#progress-monitoring).

This week:

1. Run every test you wrote at its level: the `CI` tests in the product CI, a `scripted` test on a development machine, a `deployed` test against staging from a campus machine, and a `manual` test by inspection.
2. Add the plan's rows, in the order of the quality requirements index, with each `QR` and `QRT` cell linking its file and its section.
3. Set the testability `CI` row and the row of the other test you implemented at its level to `Passes` with `Checked` in `SPRINT-05`, and link the evidence each level requires.
4. Link the plan once from `docs/quality-requirements/README.md`, and point the report's summary at it.
5. Leave every row that is not `Passes` as it stands, with its result and its planned sprint, and copy no row into the report.
6. A dropped test's row says `Dropped` with `None` for `Checked`, `Planned for sprint`, and `Evidence`; a `Fails` row keeps its `Checked` and its evidence.

The method is in [Step 4: Record The Progress](../guides/quality-requirement-tests.md#step-4-record-the-progress).

## Part 6: Document The Features

The rules:

- `docs/features.md` is the one page where you document the product's features for users and developers: one flat `##` entry per capability, a user-language opening sentence, and links to what owns each fact: [Where The Features Live](../requirements/features-requirements.md#where-the-features-live) and [The Feature Entry](../requirements/features-requirements.md#the-feature-entry).
- A feature is a capability rather than an artifact, and each fact it joins already has one owner: [The Feature Entry](../requirements/features-requirements.md#the-feature-entry).
- The page carries at least three features at the end of the week, or every feature when the product has fewer: [Where The Features Live](../requirements/features-requirements.md#where-the-features-live).
- A feature's need is a `US-nn` story, its behavior an `FR-nnn`, the decision that shaped it an `ADR-nnn`, and its name, when the project uses the word in its own sense, a `docs/glossary.md` term: [The Story](../requirements/user-stories-requirements.md#the-story), [The Functional Requirement](../requirements/functional-requirements-requirements.md#the-functional-requirement), [What It Accounts For](../requirements/adr-requirements.md#what-it-accounts-for), and [The Term](../requirements/glossary-requirements.md#the-term).
- The glossary is the page's vocabulary: the page's intro links `docs/glossary.md`, and an entry's sentence links its terms at first use: [The Feature Entry](../requirements/features-requirements.md#the-feature-entry).
- An entry restates no behavior its `FR-nnn` owns and no acceptance criterion its story or requirement carries: [The Feature Entry](../requirements/features-requirements.md#the-feature-entry).
- The page changes in the same pull request as the change it reflects, whether that change is a story, a requirement, a record, or a term: [The Feature Entry](../requirements/features-requirements.md#the-feature-entry).

This week:

1. Write `docs/features.md` with at least three features, or every feature when the product has fewer, and the line that links `docs/glossary.md`.
2. Give each entry a `##` heading that names the capability and one opening sentence in the user's language that says what a user can do.
3. Link the entry's `**Stories:**` to the stories that carry the need and its `**Behavior:**` to the `FR-nnn` files that own the capability, add `**Decisions:**` when the capability has a record, and link a glossary term at its first use in the opening sentence.
4. Keep the entries one flat list in the order a reader should meet the product: no role grouping and no `**Users:**` field.
5. Update the page in the same pull request as a change to a story, a requirement, a record, or a term it links.
6. Link `docs/features.md` from the coverage table in [Assignment Report In The Repository](#assignment-report-in-the-repository).

The method is in [Step 8: Document The Features](../guides/quality-and-architecture.md#step-8-document-the-features).

## Part 7: Carry Out The Week 4 Action Points And Open Questions

The rules:

- Read the action points the Week 4 report recorded, with their owners and due weeks: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).
- Cite an action point by its report and anchor, with the action quoted: [Identifier Rules](../requirements/general-requirements.md#identifier-rules).
- Record each outcome in the Week 5 meeting report, since the Week 4 report is not edited: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).
- Carry each outcome into the artifact it changed: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).
- Close each Week 4 open question, or carry it forward: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).

This week:

The Week 4 action points are the rows of `## Action points` in `reports/week-04/meeting-report.md` that are due in Week 5.
They are due now, and at the latest before the meeting in [Part 8](#part-8-validate-with-the-customer).

1. Carry out each action point, or find out why it cannot be done.
2. Carry the outcome into the artifact it affects.
3. Put each row of `## Open questions` in `reports/week-04/meeting-report.md` to the customer in [Part 8](#part-8-validate-with-the-customer), unless the work since has answered it.
4. Record each outcome in `## Previous action points` and `## Previous open questions` in `reports/week-05/meeting-report.md`.

## Part 8: Validate With The Customer

The rules:

- The weekly meeting is the sprint's Sprint Review, so the meeting and the ceremony are one event: [Sprint Review](../requirements/sprint-ceremonies-requirements.md#sprint-review) and [Every Meeting](../requirements/customer-meetings-requirements.md#every-meeting).
- The product shown is the deployed production instance on the university VM, reached from the university network, with each implemented test's result at its level; when the VM is unavailable, show the local product and the deployment plan and declare the deviation: [Showing Working Software](../requirements/customer-meetings-requirements.md#showing-working-software).
- The team schedules the meeting, prepares in writing, assigns the roles, and lets the customer decide the scope: [Every Meeting](../requirements/customer-meetings-requirements.md#every-meeting).
- Ask the permission questions before you record: [Permission Questions](../requirements/customer-meetings-requirements.md#permission-questions).
- Write the script before the meeting, state its target in one sentence, and ask only questions that serve it: [Meeting Script](../requirements/customer-meetings-requirements.md#meeting-script).
- Write the report in the team's own words: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).
- Give each decision a `DEC-nnn` entry, list it in the report, and cite it from what it changed: [Decision Requirements](../requirements/decisions-requirements.md).
- Produce the report, and a transcript when the meeting was recorded or held in writing: [Where Meeting Artifacts Live](../requirements/customer-meetings-requirements.md#where-meeting-artifacts-live).
- Clean and sanitize a transcript before you publish it: [Meeting Transcript](../requirements/customer-meetings-requirements.md#meeting-transcript).
- Name the customer `Customer`, and keep personal data out of the repository: [Sensitive Information Reference](../requirements/visibility-requirements.md#sensitive-information-reference).
- Show each finished story against its acceptance criteria, one `AC-nn` at a time, and record each verdict: [Showing Working Software](../requirements/customer-meetings-requirements.md#showing-working-software).
- Add a comment to each story issue the meeting changed or accepted: [Where Stories Live](../requirements/user-stories-requirements.md#where-stories-live).

This week:

1. The meeting has to settle whether the deployed product does what the stories say, which quality requirements hold at the levels their tests run, and what comes next.
2. In `reports/week-05/meeting-script.md`, `## Agenda` shows the production deployment reached from the university network, then the testing plan's rows and the other implemented test at its level, and asks for the customer's verdict on each story.
3. Show each finished story against its acceptance criteria, one `AC-nn` at a time; an accepted story closes, and a rejected one stays open with its rework tasks.
4. Show the testability requirement's `CI` run and the other implemented test's result at its level with the deployed product.
5. Record each change the customer made as a `DEC-nnn`.
6. `reports/week-05/meeting-report.md` closes the Week 4 action points and open questions in `## Previous action points` and `## Previous open questions`, and carries at least two rows in `## Action points`, each due inside Week 6.

The method is in [Guide: Validating With The Customer](../guides/validating-with-the-customer.md).

## Part 9: Redeploy And Retest After Same-Week Rework

The rules:

- The release is cut at the sprint's end, on the state after the meeting and any same-week rework: [Releases](../requirements/planning-requirements.md#releases).
- A rejected story stays open with its rework tasks: [Showing Working Software](../requirements/customer-meetings-requirements.md#showing-working-software).
- Deploy by hand, the same commit to staging and then to production, and roll back a deploy that fails its verification: [Environments And Deployment](../requirements/repository-requirements.md#environments-and-deployment).
- The release claims a requirement only when every non-dropped test for it is `Passes` and `Checked` in the release's sprint, re-checking a test last checked in an earlier sprint: [Cutting A Release](../requirements/releases-requirements.md#cutting-a-release).

This week:

1. If the review asks for same-week rework, merge it, and redeploy it to staging.
2. Rerun the other implemented test at its level: against the new staging deployment, or in the CI on the reworked commit.
3. When it passes, deploy the same final commit to production and verify the core task again.
4. If the rework cannot finish before the deadline, defer it to `SPRINT-06` and keep the reviewed and tested commit as the release commit.
5. Only the final production deploy supplies the release's evidence: a rerun before the last deploy is not the released state's run.

The method is in [Step 4: Deploy To Staging And Run The Deployed Test](../guides/deployment-and-environments.md#step-4-deploy-to-staging-and-run-the-deployed-test) and [Step 5: Deploy To Production And Verify](../guides/deployment-and-environments.md#step-5-deploy-to-production-and-verify).

## Part 10: Cut The REL-05 Release

The rules:

- `CHANGELOG.md` follows Keep a Changelog, with an `[Unreleased]` section during development, and it is user-visible only: [The Changelog](../requirements/releases-requirements.md#the-changelog).
- Version with Semantic Versioning, prefix tags with `v`, point each tag at a commit on `main`, and protect it: [Versioning And Tags](../requirements/releases-requirements.md#versioning-and-tags).
- Title the release with its tag, move the released entries into a dated section linked to the release, and open a new empty `[Unreleased]`: [Cutting A Release](../requirements/releases-requirements.md#cutting-a-release).
- The release body opens with the customer summary and the limitation, then indexes the claim, and it repeats no title, tag, commit, or date: [Cutting A Release](../requirements/releases-requirements.md#cutting-a-release).
- The release body claims a `QR-nn` only when every non-dropped test for it is `Passes` and `Checked` in the release's sprint: [Quality Requirement Testing Plan](../requirements/planning-requirements.md#quality-requirement-testing-plan).
- `REL-05` is the plan's `#### REL-05` section under `### SPRINT-05`, carrying one line with the tag and the day it was cut: [Releases](../requirements/planning-requirements.md#releases).
- The sprint's `REL-nn` is the last release cut in that sprint: [Releases](../requirements/planning-requirements.md#releases).
- Close the sprint's GitHub milestone once the release is cut, after rescheduling each issue still open: [Cutting A Release](../requirements/releases-requirements.md#cutting-a-release).

This week:

1. Keep `CHANGELOG.md` current through the week, with an `[Unreleased]` entry for each user-visible change.
2. After the meeting and any rework, merge the sprint's pull requests, push the tag on the final production commit, and protect the tag from being moved or deleted.
3. Write the release body for the customer who opens it from the week's report, and check it against [Cutting A Release](../requirements/releases-requirements.md#cutting-a-release).
4. Re-check any test last checked in an earlier sprint on the released commit before its requirement is claimed; a test that does not pass is not claimed, and its row keeps its result.
5. Move the released entries into the dated section the changelog uses for a version, such as `[0.5.0]`, link that section to the release, open a new empty `[Unreleased]`, and merge what links the tag in this order: the changelog's released section, the plan's `REL-05` line, and the week's report.
6. Close `SPRINT-05`'s GitHub milestone after moving each issue still open into a later sprint's milestone.
7. The version is the team's choice under Semantic Versioning; `v0.5.0` continues the course's example rather than fixing a scheme.

The method is in [Releases](../guides/planning-and-tracking.md#releases).

## Part 11: Close The Sprint And Hold The Retrospective

The rules:

- At the close, the sprint section gains `**Actual Velocity:**`, the points of the completed stories and one sentence on what moved out and to which sprint: [Sprints](../requirements/planning-requirements.md#sprints).
- Every sprint from `SPRINT-04` on ends with `reports/week-NN/sprint-retrospective.md`: [Retrospective](../requirements/sprint-ceremonies-requirements.md#retrospective).
- The file carries `## What Went Well`, `## What Did Not`, `## Actions`, and `## Carried Actions`, with the row counts and columns the rule gives: [Retrospective](../requirements/sprint-ceremonies-requirements.md#retrospective).
- `## Carried Actions` has one row for each action the previous file marked `Carried: Yes`, and an action that is `Not done` is re-listed in `## Actions`: [Retrospective](../requirements/sprint-ceremonies-requirements.md#retrospective).
- An action is not an identifier family: cite it by the file's path and the `#actions` anchor, with the action quoted: [Identifier Rules](../requirements/general-requirements.md#identifier-rules).

This week:

1. Set `**Actual Velocity:**` in `### SPRINT-05` from the completed stories, computed by hand from their `Story Points`, with one sentence on what moved out and to which sprint.
2. Write `reports/week-05/sprint-retrospective.md` with its four sections, 3 or more things that went well, 2 or 3 that did not with their root causes, and 3 or 4 actions with their `Reason` and their `Carried` flag.
3. `## Carried Actions` carries the `SPRINT-04` actions marked `Carried: Yes`, each citing that file's `#actions` anchor with the action quoted and an `Outcome` of `Done`, `Not done`, or `Dropped`; re-list each `Not done` action in `## Actions` with `Carried: Yes`.

The method is in [Close With The Retrospective](../guides/planning-and-tracking.md#close-with-the-retrospective).

## Part 12: Report On Your AI Usage

The rules:

- Name the tools you used, what for, and what you did with their output: [AI Usage Report](../requirements/weekly-report-requirements.md#ai-usage-report).

This week:

1. Write `reports/week-05/ai-usage.md`, naming each tool, what you used it for, and what you accepted, changed, or rejected.
2. If you used no AI tools, say so in one line.

## What Good Looks Like

Assume your weekly public report is read by someone who does not know your project.
A strong submission has:

- **Milestones that place the next increments.**
  At least two due in `SPRINT-05` through `SPRINT-09` in total, due in different sprints, and each description leading with what its run delivers rather than with a task list.
- **A test on every High business-importance requirement.**
  Each active High requirement has at least one `QRT-nn`, and a requirement no command can check carries its `**Why Manual:**` and a declared exception.
- **Tests whose level matches how they run.**
  A test's `**Status:**` is its own state, its `**Runs at:**` names what runs it, and its result, last check, and evidence live in the testing plan.
- **A testing plan a reviewer can read in one pass.**
  It says what is verified, in which environment, when it was last checked, when the rest arrives, and what evidence proves it.
- **A runbook a teammate could redeploy from.**
  The four environments, the campus access, the configuration, the deploy, the verification, and the rollback, with the real address from the Moodle submission and none in the repository.
- **A VM prepared from the portal and a product the customer can open.**
  The VM recreated from the portal, reached over SSH from a campus machine, and production opened by the customer from the university network.
- **An automated test suite that fails when a critical module breaks.**
  At least one test for each module the testability requirement names, run from a clean checkout.
- **A CI check that is pinned, green, and deploys nothing.**
  `actionlint` and each applicable product-code check run on pull requests and on `main`, appear in the Definition of Done, and stop at the build and the tests.
- **Feature documentation a newcomer can act on.**
  One page lists the product's capabilities in the user's words, each linking the story, the requirement, and the records that own its facts, with the words the project defines linked to the glossary, and the page is updated in the same pull request as the change.
- **Stories that show what the increment is for.**
  The deployed, verified product on one side, and on the other the needs it serves, each story a user's need rather than a feature name.
- **A release that claims only what its tests verified.**
  Cut after the review and the rework, on the commit production finally runs, and claiming only the requirements whose tests are `Passes` and checked in the release's sprint.

## Assignment Report In The Repository

Write `reports/week-05/README.md`, per [Weekly Public Report](../requirements/weekly-report-requirements.md#weekly-public-report).
This week it also carries:

1. In the summary, the deployment and where it runs, the milestones you have and what each delivers, `REL-05` and its tag, the CI checks that do not apply to your stack and why, and what moved out of the sprint.
   Point at `docs/project-plan.md#quality-requirement-testing-plan` for the rows that are not `Passes`, and copy none of them.
2. The customer-meeting outcome: each story shown and whether the customer accepted or rejected it, each citing its `DEC-nnn`, and each implemented test's result at its level.
3. The coverage table, with these rows:

| Deliverable                | Artifact                                                                                                                          |
| -------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| Sprint plan and milestones | `docs/project-plan.md#sprint-05` and `#milestones`, with the goal, the planned and actual velocity, and each milestone's due week |
| New stories                | the issue list filtered by the `User Story` type, and the `SPRINT-05` milestone holding the scheduled one                         |
| Quality requirement tests  | `docs/quality-requirements/qr/`, with a `QRT-nn` in every active High business-importance requirement's file                      |
| Testing plan               | `docs/project-plan.md#quality-requirement-testing-plan`                                                                           |
| Automated tests and CI     | `.github/workflows/`, with `actionlint` and the product-code checks                                                               |
| Deployment                 | `docs/deployment.md`, the staging and production instances on the university VM, and the core-task verification                   |
| Feature documentation      | `docs/features.md`                                                                                                                |
| Week 4 action points       | `## Previous action points` in `reports/week-05/meeting-report.md`                                                                |
| Week 4 open questions      | `## Previous open questions` in the same report                                                                                   |
| Meeting script             | `reports/week-05/meeting-script.md`                                                                                               |
| Meeting transcript         | `reports/week-05/meeting-transcript.md`, or one line saying why there is none                                                     |
| Customer validation        | `reports/week-05/meeting-report.md`, and each story's verdict                                                                     |
| `REL-05`                   | the tag, its GitHub release body, the changelog's released section, and the plan's `REL-05` line                                  |
| Sprint retrospective       | `reports/week-05/sprint-retrospective.md`                                                                                         |
| AI usage                   | `reports/week-05/ai-usage.md`                                                                                                     |

If the customer refused publication of the transcript, that row says so and points at the Moodle submission instead.

4. Repository evidence: one merged pull request that closed its task issue, and the latest green link-check, Markdown-check, `actionlint`, and product-code CI runs on `main`.
5. `## Deviations`: anything you did differently from this assignment, per [Declaring Deviations](../requirements/weekly-report-requirements.md#declaring-deviations), including a VM that was not available, a `scripted` or `CI` fallback where staging was unavailable, a manual-only `QR-nn` with its `**Why Manual:**` reason, a second test on the next active row because the matrix has no other High business-importance requirement, and rework deferred to `SPRINT-06`.

## Assignment Report On Moodle

Create one PDF, per [Private Submission Wrapper](../requirements/weekly-report-requirements.md#private-submission-wrapper).
Keep it to two pages, and put nothing in it except the following.
A transcript under item 6 goes in an appendix, which the two pages do not count.

1. Project name and the team number.
2. A table of team members: GitHub username, real name, and university email.
3. A permalink to `reports/week-05/README.md` at the full commit hash.
4. The production and staging addresses on the university VM, private-only, and the note that the customer reaches them from the university network.
5. A link to the validation meeting recording, accessible to instructors, or one line saying why there is none: the customer refused recording, or the meeting was held in writing.
6. The meeting transcript, if the customer refused to let you publish it.
7. One line confirming that no private-only material was committed to the repository.

### Submission Procedure

- Merge `reports/week-05/README.md` and every file it links into `main`.
- Take the permalink and the snapshot from that `main` commit, per [Permalinks And Snapshots](../requirements/repository-requirements.md#permalinks-and-snapshots).
- Submit the PDF and the snapshot through Moodle.

## Checklist

- [ ] `SPRINT-05` planned with its goal, its `**Due:**` field, its `**Sprint Backlog:**` link, and its `**Planned Velocity:**` ([Part 1](#part-1-plan-the-sprint-define-the-milestones-and-add-the-stories)).
- [ ] 2 or more plan milestones due in `SPRINT-05` through `SPRINT-09` in total, with only the shortfall added, the two due in different sprints, and each with its fields and its increment ([Part 1](#part-1-plan-the-sprint-define-the-milestones-and-add-the-stories)).
- [ ] 2 or more new `US-nn` in the Week 4 shape, at least one scheduled in `SPRINT-05` and one refined for `SPRINT-06` with no milestone ([Part 1](#part-1-plan-the-sprint-define-the-milestones-and-add-the-stories)).
- [ ] The next two sprints' worth of the product backlog refined, with the `Story Points` on each and no sprint milestone ([Part 1](#part-1-plan-the-sprint-define-the-milestones-and-add-the-stories)).
- [ ] `actionlint` over `.github/workflows/` and a named step for each applicable product-code check, on pull requests and `main`, every action pinned ([Part 2](#part-2-add-the-automated-tests-and-the-ci-checks)).
- [ ] The checks that do not apply recorded with their reason, and the automated test suite covering the testability requirement's critical modules ([Part 2](#part-2-add-the-automated-tests-and-the-ci-checks)).
- [ ] The Definition of Done's pull request list carries `actionlint` and the product-code checks, the latest `main` runs are green, and the workflow deploys nothing ([Part 2](#part-2-add-the-automated-tests-and-the-ci-checks)).
- [ ] `docs/deployment.md` with the four environments, the campus access, the configuration, the deploy, the verification, and the rollback, and no real address ([Part 3](#part-3-deploy-to-the-vm-and-document-the-environments)).
- [ ] The release candidate deployed to staging and production, the core task verified from a campus machine, and the real addresses in the Moodle submission ([Part 3](#part-3-deploy-to-the-vm-and-document-the-environments)).
- [ ] A `QRT-nn` inside every active High business-importance requirement's file, with its fields, its procedure, and its pass criterion ([Part 4](#part-4-write-the-quality-requirement-tests)).
- [ ] The testability requirement's `CI` test and one other active requirement's test at `CI`, `scripted`, or `deployed`, with the High-requirement and next-active-row rule applied, and no `manual` test standing in for the second ([Part 4](#part-4-write-the-quality-requirement-tests)).
- [ ] The testing plan with one row per test, the testability and other implemented rows `Passes` and `Checked` in `SPRINT-05`, and every other row keeping its result ([Part 5](#part-5-run-the-tests-and-record-the-testing-plan)).
- [ ] The quality requirements index links the testing plan once ([Part 5](#part-5-run-the-tests-and-record-the-testing-plan)).
- [ ] Feature documentation in `docs/features.md`, with at least three features or every feature, one sentence per capability with its glossary term linked, the page's glossary line, and the story, requirement, and record links ([Part 6](#part-6-document-the-features)).
- [ ] Each Week 4 action point's outcome in `## Previous action points`, and in the artifact it changed ([Part 7](#part-7-carry-out-the-week-4-action-points-and-open-questions)).
- [ ] Each Week 4 open question answered or carried forward in `## Previous open questions` ([Part 7](#part-7-carry-out-the-week-4-action-points-and-open-questions)).
- [ ] `reports/week-05/meeting-script.md` ([Part 8](#part-8-validate-with-the-customer)).
- [ ] `reports/week-05/meeting-report.md`, with the deployed product and the implemented tests shown, a `DEC-nnn` for each story shown, and 2 or more action points due in Week 6 ([Part 8](#part-8-validate-with-the-customer)).
- [ ] `reports/week-05/meeting-transcript.md`, if the meeting was recorded or held in writing ([Part 8](#part-8-validate-with-the-customer)).
- [ ] Any same-week rework merged, redeployed to staging, retested, redeployed to production, and verified, or deferred to `SPRINT-06` with the reviewed commit released ([Part 9](#part-9-redeploy-and-retest-after-same-week-rework)).
- [ ] `REL-05` tagged on the final production commit, with its release body, the changelog's released section, the plan's `REL-05` line, and the sprint milestone closed ([Part 10](#part-10-cut-the-rel-05-release)).
- [ ] Every claimed `QR-nn` verified by a test that is `Passes` and `Checked` in `SPRINT-05`, re-checked on the released commit when it was last checked earlier ([Part 10](#part-10-cut-the-rel-05-release)).
- [ ] `**Actual Velocity:**` set in `### SPRINT-05`, and `reports/week-05/sprint-retrospective.md` with its four sections and its carried actions ([Part 11](#part-11-close-the-sprint-and-hold-the-retrospective)).
- [ ] `reports/week-05/ai-usage.md` ([Part 12](#part-12-report-on-your-ai-usage)).
- [ ] `reports/week-05/README.md` ([Assignment Report In The Repository](#assignment-report-in-the-repository)).
- [ ] Everything merged into `main`, with the permalink and the snapshot taken from that commit ([Submission Procedure](#submission-procedure)).
- [ ] PDF ready, the permalink opened in a browser at the full commit hash, and the production and staging addresses in it ([Assignment Report On Moodle](#assignment-report-on-moodle)).
