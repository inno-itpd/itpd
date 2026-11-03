# Assignment 6: Product Analytics, Observability, And The Week 6 Release

**This week's deadline:**

- Hard deadline: Saturday 7 November 2026, 23:59.

There is no soft deadline.
See [Deadlines And Submission](../course/rules.md#deadlines-and-submission).

One submission per team.

Week 5 ended with a tested, deployed product, the testing plan's rows, the feature documentation, and `REL-05`.
This week the product starts telling you how it is used and how it operates: you choose the metric its value is read from, record the events that feed it, run the analytics pipeline and its two dashboards, define the quality signals as `SLI`s, and run the observability pipeline and its two dashboards.
You add the two internal capabilities that make that data useful, one quality requirement about the product's diagnosability and its test, the threshold review, and `REL-06`.
Week 6 has no pitch deck and no experiment: the analytics is set up and shown, and the numbers it produces are read at the Sprint Review.

What you hand in is a deployed product whose use and operation are visible in four dashboards, the two plans behind them, and the stories and records that make the data a product capability.

The tools the course suggests, from meeting transcripts to a coding agent, are in [Course Tooling](../course/tooling.md).

<h2>Table of contents</h2>

- [Objectives](#objectives)
- [Part 1: Refine The Product Backlog And Plan The Sprint](#part-1-refine-the-product-backlog-and-plan-the-sprint)
- [Part 2: Write The Analytics Plan And The Metric Tree](#part-2-write-the-analytics-plan-and-the-metric-tree)
- [Part 3: Write The Event Table And Instrument The Product](#part-3-write-the-event-table-and-instrument-the-product)
- [Part 4: Deploy The Analytics Backend And Expose Its Dashboards](#part-4-deploy-the-analytics-backend-and-expose-its-dashboards)
- [Part 5: Write The Observability Plan And Define The SLIs](#part-5-write-the-observability-plan-and-define-the-slis)
- [Part 6: Deploy OpenObserve And Build The SLI Dashboards](#part-6-deploy-openobserve-and-build-the-sli-dashboards)
- [Part 7: Record The Two ADRs And Update The Container View](#part-7-record-the-two-adrs-and-update-the-container-view)
- [Part 8: Document The Two Features](#part-8-document-the-two-features)
- [Part 9: Write The Observability Requirement And Its Test, And Run The Test](#part-9-write-the-observability-requirement-and-its-test-and-run-the-test)
- [Part 10: Review The Threshold Of Success](#part-10-review-the-threshold-of-success)
- [Part 11: Carry Out The Week 5 Action Points And Open Questions](#part-11-carry-out-the-week-5-action-points-and-open-questions)
- [Part 12: Validate With The Customer](#part-12-validate-with-the-customer)
- [Part 13: Redeploy And Retest After Same-Week Rework](#part-13-redeploy-and-retest-after-same-week-rework)
- [Part 14: Cut The REL-06 Release](#part-14-cut-the-rel-06-release)
- [Part 15: Close The Sprint And Hold The Retrospective](#part-15-close-the-sprint-and-hold-the-retrospective)
- [Part 16: Report On Your AI Usage](#part-16-report-on-your-ai-usage)
- [What Good Looks Like](#what-good-looks-like)
- [Assignment Report In The Repository](#assignment-report-in-the-repository)
- [Assignment Report On Moodle](#assignment-report-on-moodle)
  - [Submission Procedure](#submission-procedure)
- [Checklist](#checklist)

## Objectives

By the end of this week you should be able to show a reader:

- An analytics plan, `docs/analytics.md`, with one focus metric traced to its `VP-nn`, a counter-metric, a metric tree, and a metric section for every node.
- An event table a developer can instrument from, with no personal data, `source` on every event, and the core task covered end to end.
- An analytics backend on the university network, with a staging and a production project, and a dashboard in each.
- An observability plan, `docs/observability.md`, with the signals, the `SLI`s, their definitions, units, windows, sources, queries, and status, and the one `SLI` the week demonstrates.
- An observability backend with a staging and a production organization, and a dashboard in each, whose chart names its `SLI`.
- Two new stories, one for a product analyst and one for a system operator, and the two functional requirements and two architectural decision records that specify them.
- The container view updated with the two telemetry backends as external systems, and the container set unchanged.
- A `Maintainability` / `Analysability` requirement about the product's diagnosability, with a `deployed` test that fails a staging request and reads the product's telemetry endpoint, and the test's result in the testing plan.
- The optional re-run of one runtime test that names the same `Active` `SLI`.
- The threshold review with each open goal's current measure, and the customer's agreement recorded as a `DEC-nnn` for any change.
- `REL-06`: the tag on the final production commit, the release body for whoever deploys it, the changelog's released section, and the plan's `REL-06` block with its `Released` and `Checked QRs` fields.
- The sprint closed with its actual velocity, a retrospective that carries the Week 5 actions, and the AI usage report.

## Part 1: Refine The Product Backlog And Plan The Sprint

The rules:

- The sprint opens with planning, and the next two sprints' worth of the product backlog is refined before it: [Sprint Planning](../requirements/sprint-ceremonies-requirements.md#sprint-planning) and [Product Backlog Refinement](../requirements/sprint-ceremonies-requirements.md#product-backlog-refinement).
- The plan's `### SPRINT-nn` section carries the sprint's goal, its `**Due:**` field, its `**Sprint Backlog:**` link, `**Planned Velocity:**`, and later `**Actual Velocity:**`: [Sprints](../requirements/planning-requirements.md#sprints).
- A story carries the `User Story` type, a `MoSCoW` value, `Story Points`, checkbox `AC-nn` criteria, and its `### Specified by` list, which names the `FR-nnn` and `ADR-nnn` that specify it: [The Story](../requirements/user-stories-requirements.md#the-story).
- A story names a `VP-nn` the vision's goal traces to, and a need the research did not anticipate is a story rather than a rewrite of the research: [Traceability Into Later Weeks](../requirements/general-requirements.md#traceability-into-later-weeks).
- A task issue carries its `### Requirements` section, and a pull request closes one: [The Issue Form](../requirements/task-issues-requirements.md#the-issue-form).
- Scheduling is assigning an issue to its sprint's GitHub milestone, and refinement leaves an item unscheduled: [Scheduling An Issue](../requirements/issue-tracking-requirements.md#scheduling-an-issue).
- The plan milestone that lands this increment has its own fields and a description that leads with what it delivers: [Milestones](../requirements/planning-requirements.md#milestones).

This week:

1. Refine the next two sprints' worth of the product backlog until each item is ready to schedule, and leave those items unscheduled.
2. Plan `SPRINT-06`: replace its provisional goal with the sprint's goal, set `**Due:**` to `2026-11-07`, link `**Sprint Backlog:**` to its GitHub milestone, and set `**Planned Velocity:**` to the story points of the stories you scheduled, computed by hand from their `Story Points`.
3. Add one `US-nn` for the product analyst and one for the system operator, in the Week 4 story shape.
4. Schedule both in `SPRINT-06`, with their GitHub milestone, their `Responsible` and `Accountable` values, and both assignees.
5. Each story's `### Specified by` names the `FR-nnn` and the `ADR-nnn` that specify it: `FR-007` and `ADR-005` for the analyst, and `FR-008` and `ADR-006` for the operator.
6. Each story names a `VP-nn` the vision's goal traces to.
   When no existing value proposition covers the internal user, add one to `docs/research/value-proposition.md`, update the vision goal's `Supports:` list in the same change, and record it as a team decision.
7. Write the task issues for the two pipelines, the four dashboards, and the observability test, each with its `### Requirements` section, and schedule them in `SPRINT-06`.
8. The plan milestone due in `SPRINT-06` leads with the increment the telemetry delivers, and it is the milestone the release belongs to.

The method is in [Step 4: Write The Sprints And Their Releases](../guides/planning-and-tracking.md#step-4-write-the-sprints-and-their-releases).

## Part 2: Write The Analytics Plan And The Metric Tree

The rules:

- `docs/analytics.md` is one maintained page, created this week and kept current: [Where The Analytics Plan Lives](../requirements/analytics-requirements.md#where-the-analytics-plan-lives).
- The plan names one focus metric traced to its `VP-nn`, one counter-metric, one L1 input, and one or two L2 inputs, and it states the seven criteria of the North Star Framework and one rejected vanity metric: [The Value And The Metrics](../requirements/analytics-requirements.md#the-value-and-the-metrics).
- The metric tree is one nested list, each metric is a `###` section with its `**Definition:**`, `**Source:**`, and `**Query:**`, and every node has one section: [The Value And The Metrics](../requirements/analytics-requirements.md#the-value-and-the-metrics).
- An analytics metric is not an identifier family, and it is cited by its heading anchor: [Identifier Rules](../requirements/general-requirements.md#identifier-rules).

This week:

1. Write `docs/analytics.md` with the focus metric, the `VP-nn` it expresses, the seven criteria one bullet each, and at least one rejected vanity metric with its reason.
2. Write the counter-metric beside the focus metric, the one L1 input under the focus metric, and one or two L2 inputs under the L1, as one nested list.
3. Give every node in the tree its own `###` section, headed with the metric's name in sentence case, with its `**Definition:**`, `**Source:**`, and `**Query:**`.
4. Write a query for every metric, and name the one metric that is computed by its query rather than by hand.
5. Say on the page that the focus metric may have no value until people outside the team use the product, if that is true for your product.
6. Add the week's terms, `focus metric`, `input metric`, `counter-metric`, and `metric tree`, to `docs/glossary.md`.

The method is in [Step 1: Find The Metrics](../guides/analytics-and-observability.md#step-1-find-the-metrics).

## Part 3: Write The Event Table And Instrument The Product

The rules:

- The event table is one table with `Event`, `Fires when`, `Fields`, and `Collected at`, and it is the one registry and the schema the instrumentation sends: [The Events](../requirements/analytics-requirements.md#the-events).
- Every event carries `source`, and `smoke` marks the team's own pipeline check: [The Events](../requirements/analytics-requirements.md#the-events).
- An event or a signal carries no personal data, and an opaque identifier is allowed when it cannot be reversed to a person: [Telemetry And Personal Data](../requirements/visibility-requirements.md#telemetry-and-personal-data).
- A functional requirement is a file under `docs/functional-requirements/fr/`, with its behavior, its criteria, and its row in the index: [The Functional Requirement](../requirements/functional-requirements-requirements.md#the-functional-requirement).
- A change to a metric, its events, or its query is made in the same pull request as every citation of it: [The Value And The Metrics](../requirements/analytics-requirements.md#the-value-and-the-metrics).

This week:

1. Write the event table with its four columns, the naming convention under it, and the fields each event carries.
2. Cover the core task end to end, so the Week 7 usability work has the events it needs.
3. Instrument the product to send each event from the container and environment its `Collected at` names.
4. Give every event a `source` field with a closed set of values, and send a staging test event tagged `source=smoke`.
5. Check every field against the personal-data rule, and replace any personal field with an opaque identifier.
6. Write the analytics functional requirement, `FR-007`, with its behavior and acceptance criteria, and add its row to `docs/functional-requirements/README.md`.
7. Update every metric's `**Source:**` to name the events that feed it, and every citation when a name changed.

The method is in [Step 2: Write The Events And Instrument The Product](../guides/analytics-and-observability.md#step-2-write-the-events-and-instrument-the-product).

## Part 4: Deploy The Analytics Backend And Expose Its Dashboards

The rules:

- The analytics backend is OpenPanel by default, another documented self-hosted backend is allowed, and it runs on the university VM or a campus machine: [The Pipeline](../requirements/analytics-requirements.md#the-pipeline).
- One backend instance carries two projects, `staging` and `production`, each with its own client ID: [The Pipeline](../requirements/analytics-requirements.md#the-pipeline).
- Each environment's dashboard carries at least one chart for a metric in the tree, and the chart runs the query recorded in the metric's section: [The Dashboard](../requirements/analytics-requirements.md#the-dashboard).
- The dashboards' addresses and credentials are private-only, and the evidence is two sanitized screenshots: [Sensitive Information Reference](../requirements/visibility-requirements.md#sensitive-information-reference) and [Screenshot Evidence](../requirements/visibility-requirements.md#screenshot-evidence).
- `docs/deployment.md` carries the two telemetry pipelines' steps and configuration and links the two plans: [Environments And Deployment](../requirements/repository-requirements.md#environments-and-deployment).
- The configuration's shape is in `.env.example`, and the secrets are installed outside the repository: [Configuration And Sensitive Information](../requirements/repository-requirements.md#configuration-and-sensitive-information).

This week:

1. Deploy OpenPanel, or another backend the page documents, on the university VM or a campus machine.
2. Create the `staging` and `production` projects, give each its own client ID, and configure each environment's build with its own.
3. Build a dashboard in each project with at least one chart for the focus metric or its L1 input, and name the chart after the metric.
4. Run the query recorded in the metric's section in the chart, and check the staging chart excludes the test event tagged `source=smoke`.
5. Check the staging dashboard with a test event, and confirm the production dashboard carries the same chart and query and received no test traffic.
6. Write the telemetry pipelines' section in `docs/deployment.md` with the steps and the configuration, and link `docs/analytics.md` from it.
7. Keep the dashboards' addresses and credentials out of the repository, and check that the dashboards are reachable from the university network.

The method is in [Step 3: Deploy The Analytics Backend And Expose The Dashboards](../guides/analytics-and-observability.md#step-3-deploy-the-analytics-backend-and-expose-the-dashboards) and [Step 4: Deploy To Staging And Run The Deployed Test](../guides/deployment-and-environments.md#step-4-deploy-to-staging-and-run-the-deployed-test).

## Part 5: Write The Observability Plan And Define The SLIs

The rules:

- `docs/observability.md` is one maintained page, created this week and kept current: [Where The Observability Plan Lives](../requirements/observability-requirements.md#where-the-observability-plan-lives).
- The signals are the metric, the log, and the trace; the metric is required, the log and the trace are optional, and an alert is a rule over a signal rather than a signal: [The Signals](../requirements/observability-requirements.md#the-signals).
- Each `SLI` is a `## SLI-nn` section with its name on the first line, its `**Status:**`, `**Definition:**`, `**Unit:**`, `**Window:**`, `**Source:**`, and `**Query:**`: [The SLIs](../requirements/observability-requirements.md#the-slis).
- `SLI-nn` is repository-wide, it takes two digits, and its status values are `Active`, `Planned`, and `Dropped`: [Identifier Rules](../requirements/general-requirements.md#identifier-rules).
- A functional requirement is a file under `docs/functional-requirements/fr/`, with its behavior, its criteria, and its row in the index: [The Functional Requirement](../requirements/functional-requirements-requirements.md#the-functional-requirement).

This week:

1. Write `docs/observability.md` with the signals the product emits, and say which of the three signal types it uses.
2. List the `SLI`s your runtime requirements need, in `## SLI-nn` sections, with a definition, a unit, a window, a source, and a query each.
3. Make the `SLI` the week demonstrates `Active`, and name the labels that identify the request and the failure in its `**Definition:**`.
4. Write the observability functional requirement, `FR-008`, with its behavior and acceptance criteria, and add its row to `docs/functional-requirements/README.md`.
5. Add the week's terms, `signal`, `SLI`, `service level indicator`, `observability`, and `telemetry`, to `docs/glossary.md`.

The method is in [Step 4: Define The `SLI`s And Instrument The Signals](../guides/analytics-and-observability.md#step-4-define-the-slis-and-instrument-the-signals).

## Part 6: Deploy OpenObserve And Build The SLI Dashboards

The rules:

- The observability backend is OpenObserve by default, another documented backend is allowed, and it runs on the university VM or a campus machine: [The Pipeline](../requirements/observability-requirements.md#the-pipeline).
- One backend instance carries two organizations, `staging` and `production`, each with its own dashboard: [The Pipeline](../requirements/observability-requirements.md#the-pipeline).
- Each organization's dashboard carries at least one chart for an `Active` `SLI`, and the chart runs the query recorded in the `SLI`'s section: [The Dashboard](../requirements/observability-requirements.md#the-dashboard).
- The dashboard's address is private-only, and the evidence is two sanitized screenshots: [Sensitive Information Reference](../requirements/visibility-requirements.md#sensitive-information-reference) and [Screenshot Evidence](../requirements/visibility-requirements.md#screenshot-evidence).
- `docs/deployment.md` carries the observability pipeline's steps and configuration and links the plan: [Environments And Deployment](../requirements/repository-requirements.md#environments-and-deployment).

This week:

1. Deploy OpenObserve, or another backend the page documents, on the university VM or a campus machine.
2. Create the `staging` and `production` organizations, and point each environment's build at its own.
3. Build a dashboard in each organization with at least one chart for an `Active` `SLI`, and name the chart after the `SLI`.
4. Record the query in the `SLI`'s `**Query:**` field and run it in the chart, so the page and the chart carry the same query.
5. Send the staging test traffic to the staging organization, and leave the production dashboard configured with the same query and unexercised.
6. Write the observability pipeline's steps and configuration into `docs/deployment.md`, and link `docs/observability.md` from it.
7. Keep the backend's and dashboards' addresses and credentials out of the repository, and check that they are reachable from the university network.

The method is in [Step 5: Deploy OpenObserve And Build The `SLI` Dashboards](../guides/analytics-and-observability.md#step-5-deploy-openobserve-and-build-the-sli-dashboards).

## Part 7: Record The Two ADRs And Update The Container View

The rules:

- An architectural decision record is a file under `docs/architecture/adr/` with its fields and its four body sections, and each `**Addresses:**` names at least one `FR-nnn` or `QR-nn`: [The Record](../requirements/adr-requirements.md#the-record) and [What It Accounts For](../requirements/adr-requirements.md#what-it-accounts-for).
- The container view shows every external system a container exchanges data with, and the arrow carries the protocol: [Container View](../requirements/architecture-requirements.md#container-view).
- The diagram conventions are the Week 4 ones, and no later week adds or restates a diagram rule: [Diagrams And Legends](../requirements/architecture-requirements.md#diagrams-and-legends).
- The ADR index lists each record once: [Architectural Decisions](../requirements/architecture-requirements.md#architectural-decisions).

This week:

1. Write the analytics architectural decision record, addressing `FR-007`, with its `**Containers:**` naming the product containers that emit the events.
2. Write the observability architectural decision record, addressing `QR-04` and `FR-008`, with its `**Containers:**` naming the containers that emit the signals.
3. Update the container view so the analytics backend and the observability backend appear as external systems the product exchanges telemetry with, with the protocol on each arrow.
4. Keep the container set unchanged, draw no new view, and add both records to the ADR index.

The method is in [Step 6: Write The Architectural Decision Records](../guides/quality-and-architecture.md#step-6-write-the-architectural-decision-records) and [Draw The Container View](../guides/quality-and-architecture.md#draw-the-container-view).

## Part 8: Document The Two Features

The rules:

- `docs/features.md` carries one flat `##` entry per capability, a user-language opening sentence, and links to what owns each fact: [Where The Features Live](../requirements/features-requirements.md#where-the-features-live) and [The Feature Entry](../requirements/features-requirements.md#the-feature-entry).
- A feature is a capability a user recognises, and the user may be an internal one: [Where The Features Live](../requirements/features-requirements.md#where-the-features-live).
- A word `docs/glossary.md` defines links to its term at its first use in the entry's sentence: [The Feature Entry](../requirements/features-requirements.md#the-feature-entry).

This week:

1. Add an entry for the analytics capability, such as `See how the product is used`, with its user-language sentence, its `**Stories:**`, `**Behavior:**`, and `**Decisions:**` links, and its glossary term at first use.
2. Add an entry for the observability capability, such as `Diagnose a quality problem from the operating signals`, in the same shape.
3. Link the two internal capabilities, not the dashboards: the dashboards are their evidence, and no dashboard address is linked.
4. Add the week's terms, `event`, `instrumentation`, `analytics backend`, `observability backend`, and `dashboard`, to `docs/glossary.md`.
5. Keep the page current in the same pull request as any story, requirement, record, or term it links.

The method is in [Step 8: Document The Features](../guides/quality-and-architecture.md#step-8-document-the-features).

## Part 9: Write The Observability Requirement And Its Test, And Run The Test

The rules:

- The requirement is a file under `docs/quality-requirements/qr/` with its outcome, its ISO/IEC 25010:2023 pair, its business importance, its technical risk, and its six-part scenario: [The Quality Requirement](../requirements/quality-requirements-requirements.md#the-quality-requirement) and [The Quality Attribute Scenario](../requirements/quality-requirements-requirements.md#the-quality-attribute-scenario).
- A test is a `## QRT-nn` section inside its requirement's file, with its fields, its procedure, and one `**Pass when:**` criterion: [Quality Requirement Tests](../requirements/quality-requirements-requirements.md#quality-requirement-tests).
- A runtime test written from this week on names the `Active` `SLI-nn` it reads in `**Runs at:**`: [Quality Requirement Tests](../requirements/quality-requirements-requirements.md#quality-requirement-tests) and [The SLIs](../requirements/observability-requirements.md#the-slis).
- The requirement's `Response Measure` remains the target, and the test's `**Pass when:**` settles it in the test's environment and window: [Quality Requirement Tests](../requirements/quality-requirements-requirements.md#quality-requirement-tests).
- The testing plan carries each test's result, its last check, its planned sprint, and its evidence: [Quality Requirement Testing Plan](../requirements/planning-requirements.md#quality-requirement-testing-plan).
- The quality requirements index and its matrix list every active requirement once: [The Quality Requirements Index](../requirements/quality-requirements-requirements.md#the-quality-requirements-index).

This week:

1. Write `QR-04` about the product's diagnosability, with the `Maintainability` / `Analysability` pair, `**Business importance:** High`, `**Technical risk:** Medium`, and a scenario whose source is the operator and whose stimulus is a failed request in the core task.
2. Make its `Response Measure` about the product's telemetry endpoint: within five seconds of the failed request's response, the endpoint exposes one series point for it, carrying its request identifier and its failure label.
3. Write `QRT-01` at `deployed`, naming the staging deployment and `SLI-01` in `**Runs at:**`, with a procedure that runs the core task's traffic and fails one request.
4. Write the script or command, for example `scripts/check-sli.ts`, that generates the traffic, fails the request, reads the point, and prints it; the address is `$STAGING_URL`.
5. Run the test against the staging deployment from a campus machine, and record its result as `Passes` with `Checked` in `SPRINT-06` and the evidence the `deployed` level requires.
6. Run each row the testing plan planned for `SPRINT-06`, or move it to `SPRINT-07` with a reason, and declare both in the report.
7. Optionally re-run one implemented runtime `QRT-nn` whose signal you can instrument: its `**Runs at:**` names the same `Active` `SLI`, and a failed re-run records `Fails` and does not remove this week's demonstration.
8. Add `QR-04`'s row to the index and its row to the matrix, and link the testing plan from the index once.

The method is in [Step 6: Write The Observability Requirement And Run Its Test](../guides/analytics-and-observability.md#step-6-write-the-observability-requirement-and-run-its-test) and [Step 4: Record The Progress](../guides/quality-requirement-tests.md#step-4-record-the-progress).

## Part 10: Review The Threshold Of Success

The rules:

- In Week 6 the team reviews each open `TOS-nn` against what it can now measure, and the review is preparation for the Sprint Review: [The Threshold Of Success](../requirements/planning-requirements.md#the-threshold-of-success).
- The team may propose an analytics-measured goal or a revised `**Measure:**`, and only the customer's `DEC-nnn` at the Sprint Review moves the bar: [The Threshold Of Success](../requirements/planning-requirements.md#the-threshold-of-success).
- A goal whose measure is already settled is `Achieved` or `Missed` with its `**Outcome:**`, and one whose measure lands later stays `Open`: [The Threshold Of Success](../requirements/planning-requirements.md#the-threshold-of-success).
- The report carries the review in its `## Threshold review` section: [Weekly Public Report](../requirements/weekly-report-requirements.md#weekly-public-report).

This week:

1. Record each open goal's current `**Measure:**` and whether the analytics or the observability data can settle it.
2. If the team proposes an analytics-measured goal or a revised measure, state its number and the week it lands in and link the metric's `###` section in `docs/analytics.md`.
3. Set each goal whose measure is already settled to `Achieved` or `Missed` with its `**Outcome:**` and its evidence, and leave each goal due later `Open`.
4. Write the `## Threshold review` section in `reports/week-06/README.md`, and present the proposal at the Sprint Review.
5. Record any change the customer agrees as a `DEC-nnn`, cite it under the goal's `**Changed:**`, and list it in the meeting report's `## Decisions`.
6. No goal is required to change: a review that records why nothing moves is complete.

The method is in [Step 8: Review The Threshold](../guides/analytics-and-observability.md#step-8-review-the-threshold).

## Part 11: Carry Out The Week 5 Action Points And Open Questions

The rules:

- Read the action points the Week 5 report recorded, with their owners and due weeks: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).
- Record each outcome in the Week 6 meeting report, since the Week 5 report is not edited: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).
- Carry each outcome into the artifact it changed: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).
- Close each Week 5 open question, or carry it forward: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).

This week:

The Week 5 action points are the rows of `## Action points` in `reports/week-05/meeting-report.md` that are due in Week 6.
They are due now, and at the latest before the meeting in [Part 12](#part-12-validate-with-the-customer).

1. Carry out each action point, or find out why it cannot be done.
2. Carry the outcome into the artifact it affects.
3. Put each row of `## Open questions` in `reports/week-05/meeting-report.md` to the customer in [Part 12](#part-12-validate-with-the-customer), unless the work since has answered it.
4. Record each outcome in `## Previous action points` and `## Previous open questions` in `reports/week-06/meeting-report.md`.

## Part 12: Validate With The Customer

The rules:

- The weekly meeting is the sprint's Sprint Review, so the meeting and the ceremony are one event: [Sprint Review](../requirements/sprint-ceremonies-requirements.md#sprint-review) and [Every Meeting](../requirements/customer-meetings-requirements.md#every-meeting).
- The review shows the deployed product with the analytics dashboards, the observability dashboards, the observability `QRT`'s result, and each runtime `QRT`'s result at its level: [Showing Working Software](../requirements/customer-meetings-requirements.md#showing-working-software).
- The review names the `SLI-nn` each runtime test read, presents the threshold proposal, and agrees any change with the customer's `DEC-nnn`: [Showing Working Software](../requirements/customer-meetings-requirements.md#showing-working-software).
- The team schedules the meeting, prepares in writing, assigns the roles, and asks the permission questions before recording: [Every Meeting](../requirements/customer-meetings-requirements.md#every-meeting) and [Permission Questions](../requirements/customer-meetings-requirements.md#permission-questions).
- Give each decision a `DEC-nnn` entry, list it in the report, and cite it from what it changed: [Decision Requirements](../requirements/decisions-requirements.md).
- Produce the report, and a transcript when the meeting was recorded or held in writing: [Where Meeting Artifacts Live](../requirements/customer-meetings-requirements.md#where-meeting-artifacts-live).
- Name the customer `Customer`, and keep personal data out of the repository: [Sensitive Information Reference](../requirements/visibility-requirements.md#sensitive-information-reference).

This week:

1. The meeting has to settle whether the telemetry answers the questions the customer recognises, whether the diagnosability requirement holds in staging, and what the threshold should measure next.
2. In `reports/week-06/meeting-script.md`, `## Agenda` shows the deployed product, the analytics staging and production dashboards, the observability staging and production dashboards, the observability test's result with its `SLI`, and the optional runtime test's result; it ends with the threshold proposal.
3. Show `QR-04 QRT-01`'s result: the failed request's series point, the `request_id` and failure labels it carries, the OpenObserve query, and the dashboard screenshot.
4. Show the optional runtime test's result at its level when it was run, and name the `SLI` it read.
5. Record the customer's decision on the threshold proposal as a `DEC-nnn`, and list it in `## Decisions`; a proposal the customer rejects is recorded as no change.
6. `reports/week-06/meeting-report.md` closes the Week 5 action points and open questions in `## Previous action points` and `## Previous open questions`, and carries at least two rows in `## Action points`, each due inside Week 7.

The method is in [Guide: Validating With The Customer](../guides/validating-with-the-customer.md).

## Part 13: Redeploy And Retest After Same-Week Rework

The rules:

- The release is cut at the sprint's end, on the state after the meeting and any same-week rework: [Releases](../requirements/planning-requirements.md#releases).
- Deploy by hand, the same commit to staging and then to production, and roll back a deploy that fails its verification: [Environments And Deployment](../requirements/repository-requirements.md#environments-and-deployment).
- A re-run of a runtime `QRT` names the same `Active` `SLI`: [Quality Requirement Tests](../requirements/quality-requirements-requirements.md#quality-requirement-tests).

This week:

1. If the review asks for same-week rework, merge it, and redeploy it to staging.
2. Re-run the observability test and, when it was run, the optional runtime test at its level against the new staging deployment.
3. When they pass, deploy the same final commit to production and verify the core task again.
4. If the rework cannot finish before the deadline, defer it to `SPRINT-07` and keep the reviewed and tested commit as the release commit.

The method is in [Step 4: Deploy To Staging And Run The Deployed Test](../guides/deployment-and-environments.md#step-4-deploy-to-staging-and-run-the-deployed-test) and [Step 5: Deploy To Production And Verify](../guides/deployment-and-environments.md#step-5-deploy-to-production-and-verify).

## Part 14: Cut The REL-06 Release

The rules:

- `CHANGELOG.md` follows Keep a Changelog, with an `[Unreleased]` section during development, and it records the notable changes for the people who use and operate the product: [The Changelog](../requirements/releases-requirements.md#the-changelog).
- Version with Semantic Versioning, prefix tags with `v`, point each tag at a commit on `main`, and protect it: [Versioning And Tags](../requirements/releases-requirements.md#versioning-and-tags).
- The release body is the upgrade note for whoever deploys it, states whether the upgrade needs anything beyond deploying this version, and ends with the `[Full changelog](...)` line: [Cutting A Release](../requirements/releases-requirements.md#cutting-a-release).
- `REL-06` is the plan's `#### REL-06` section under `### SPRINT-06`, carrying `**Released:**` and `**Checked QRs:**`: [Releases](../requirements/planning-requirements.md#releases).
- Close the sprint's GitHub milestone once the release is cut, after rescheduling each issue still open: [Cutting A Release](../requirements/releases-requirements.md#cutting-a-release).

This week:

1. Keep `CHANGELOG.md` current through the week, with an `[Unreleased]` entry for each notable change.
2. After the meeting and any rework, merge the sprint's pull requests, push the tag on the final production commit, and protect the tag.
3. Move the released entries into the dated section the changelog uses for a version, such as `[0.6.0]`, with `### Added` entries for the analytics and the observability, link that section to the release, and open a new empty `[Unreleased]`.
4. Write the release body as the upgrade note: state whether anything beyond deploying this version is needed, name the new environment variables and configuration, and close with the absolute `Full changelog` link.
5. Write `REL-06`'s block from the tests checked in `SPRINT-06`: a requirement appears when at least one of its tests was checked this sprint, and the new requirement is one of them.
6. Close `SPRINT-06`'s GitHub milestone after moving each issue still open into a later sprint's milestone.

The method is in [Releases](../guides/planning-and-tracking.md#releases).

## Part 15: Close The Sprint And Hold The Retrospective

The rules:

- At the close, the sprint section gains `**Actual Velocity:**`, the points of the completed stories and one sentence on what moved out and to which sprint: [Sprints](../requirements/planning-requirements.md#sprints).
- Every sprint from `SPRINT-04` on ends with `reports/week-NN/sprint-retrospective.md`, carrying `## What Went Well`, `## What Did Not`, `## Actions`, and `## Carried Actions`: [Retrospective](../requirements/sprint-ceremonies-requirements.md#retrospective).
- An action is not an identifier family, so it is cited by its file's path and `#actions` anchor, with the action quoted: [Identifier Rules](../requirements/general-requirements.md#identifier-rules).

This week:

1. Set `**Actual Velocity:**` in `### SPRINT-06` from the completed stories, computed by hand from their `Story Points`, with one sentence on what moved out and to which sprint.
2. Write `reports/week-06/sprint-retrospective.md` with its four sections, 3 or more things that went well, 2 or 3 that did not with their root causes, and 3 or 4 actions with their `Reason` and their `Carried` flag.
3. `## Carried Actions` carries the `SPRINT-05` actions marked `Carried: Yes`, each citing that file's `#actions` anchor with the action quoted and an `Outcome` of `Done`, `Not done`, or `Dropped`; re-list each `Not done` action in `## Actions` with `Carried: Yes`.

The method is in [Close With The Retrospective](../guides/planning-and-tracking.md#close-with-the-retrospective).

## Part 16: Report On Your AI Usage

The rules:

- Name the tools you used, what for, and what you did with their output: [AI Usage Report](../requirements/weekly-report-requirements.md#ai-usage-report).

This week:

1. Write `reports/week-06/ai-usage.md`, naming each tool, what you used it for, and what you accepted, changed, or rejected.
2. If you used no AI tools, say so in one line.

## What Good Looks Like

Assume your weekly public report is read by someone who does not know your project.
A strong submission has:

- **A metric tree that explains the product in one list.**
  The focus metric expresses the `VP-nn` and passes all seven criteria, the counter-metric guards it, and the one L1 and one or two L2 inputs are computable from the events in one pass.
- **Events a developer can instrument from and a stranger can recompute.**
  The table has `Fields` and `Collected at`, every event carries `source`, and no event carries personal data or free text.
- **Four dashboards a reader can open.**
  Two analytics dashboards, one in each environment's project, and two observability dashboards, one in each organization; each has a chart for the focus metric or its L1 input, or for an `Active` `SLI`, and each chart runs the query the plan records.
- **A staging test event that stays in staging.**
  The staging chart shows it and excludes it from the metric, the production dashboard carries the same query, and the production project never receives it.
- **An observability page a test can read.**
  Each `SLI` names its definition, unit, window, source, query, and status, and the demonstrated one names the labels that identify the request and the failure.
- **A diagnosability requirement about the product, not the dashboard.**
  The product's telemetry endpoint exposes the failed request's point within five seconds, and the OpenObserve query and the screenshot are the evidence that the pipeline stored and rendered it.
- **Two internal capabilities with their records.**
  The analyst's story and the operator's story each name their `FR-nnn` and `ADR-nnn`, and each capability has a `docs/features.md` entry that links them and no dashboard address.
- **A container view that shows what the product talks to.**
  The two telemetry backends appear as external systems with the protocol on each arrow, the container set is unchanged, and the two records address the requirements they serve.
- **A threshold that moves only with the customer.**
  Each open goal has its current measure and whether the new data can settle it, a settled goal has its verdict and `**Outcome:**`, a goal due later stays `Open`, and any change cites the customer's `DEC-nnn`.
- **A release whose record says what was checked.**
  `REL-06` is cut on the final production commit, its release body is the upgrade note with the new configuration, its `Checked QRs` lists the requirements checked in `SPRINT-06`, and the new requirement is one of them.
- **A week with no deck and no experiment.**
  The metrics are set up and shown, the report says whether the focus metric is computable yet, and the Week 7 usability work can use the events this week left.

## Assignment Report In The Repository

Write `reports/week-06/README.md`, per [Weekly Public Report](../requirements/weekly-report-requirements.md#weekly-public-report).
This week it also carries:

1. In the summary, whether the focus metric is computable yet and what it would need, at least one analytics metric its query computes, `REL-06` and its tag, and what moved out of the sprint.
   Point at `docs/project-plan.md#quality-requirement-testing-plan` for the rows that are not `Passes`, and copy none of them.
2. The `## Threshold review` section, with each open goal's current measure and whether the analytics or the observability data can settle it, and the customer's decision on the proposal.
3. The four sanitized dashboard screenshots in `reports/week-06/images/`, linked with the metric or `SLI` each shows, and the observability test's result with the request identifier and failure labels it recorded.
4. The coverage table, with these rows:

| Deliverable                   | Artifact                                                                                                                                            |
| ----------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
| Sprint plan and new stories   | `docs/project-plan.md#sprint-06`, and the two internal stories in the `SPRINT-06` milestone                                                         |
| Analytics plan                | `docs/analytics.md`, with the metric tree and a section per metric                                                                                  |
| Events and instrumentation    | `docs/analytics.md#the-events`                                                                                                                      |
| Analytics dashboards          | `reports/week-06/images/`, one screenshot per environment, linked with the metric each chart shows                                                  |
| Observability plan and `SLI`s | `docs/observability.md`                                                                                                                             |
| Observability dashboards      | `reports/week-06/images/`, one screenshot per organization, linked with the `SLI` each chart shows                                                  |
| Feature documentation         | `docs/features.md`                                                                                                                                  |
| Functional requirements       | `docs/functional-requirements/README.md`, with `FR-007` and `FR-008`                                                                                |
| ADRs and container view       | `docs/architecture/adr/` and `docs/architecture/README.md#container-view`                                                                           |
| Observability requirement     | `docs/quality-requirements/qr/QR-04.md` and its `QRT-01`                                                                                            |
| Runtime test re-run           | `docs/project-plan.md#quality-requirement-testing-plan`, when one was run                                                                           |
| Threshold review              | `reports/week-06/README.md#threshold-review`                                                                                                        |
| Week 5 action points          | `## Previous action points` in `reports/week-06/meeting-report.md`                                                                                  |
| Week 5 open questions         | `## Previous open questions` in the same report                                                                                                     |
| Meeting script                | `reports/week-06/meeting-script.md`                                                                                                                 |
| Meeting transcript            | `reports/week-06/meeting-transcript.md`, or one line saying why there is none                                                                       |
| Customer validation           | `reports/week-06/meeting-report.md`, and the threshold decision's `DEC-nnn`                                                                         |
| `REL-06`                      | the tag, its release body for whoever deploys it, the changelog's released section, and the plan's `REL-06` block with `Released` and `Checked QRs` |
| Sprint retrospective          | `reports/week-06/sprint-retrospective.md`                                                                                                           |
| AI usage                      | `reports/week-06/ai-usage.md`                                                                                                                       |

If the customer refused publication of the transcript, that row says so and points at the Moodle submission instead.

5. Repository evidence: one merged pull request that closed its task issue, and the latest green link-check, Markdown-check, `actionlint`, and product-code CI runs on `main`.
6. `## Deviations`: anything you did differently from this assignment, per [Declaring Deviations](../requirements/weekly-report-requirements.md#declaring-deviations), including a VM that was unavailable, a backend that ran on a second campus machine, a dashboard the customer could not reach, a staging test event that reached production, a row planned for `SPRINT-06` that moved to `SPRINT-07` with its reason, and a test whose window was still open at the deadline.

## Assignment Report On Moodle

Create one PDF, per [Private Submission Wrapper](../requirements/weekly-report-requirements.md#private-submission-wrapper).
Keep it to two pages, and put nothing in it except the following.
A transcript under item 6 goes in an appendix, which the two pages do not count.

1. Project name and the team number.
2. A table of team members: GitHub username, real name, and university email.
3. A permalink to `reports/week-06/README.md` at the full commit hash.
4. All four dashboards' addresses, and any credentials they need: the analytics staging and production dashboards and the observability staging and production dashboards.
   They are private-only, and the customer reaches them from the university network.
5. The product's staging and production addresses on the university VM, private-only, with the note that the customer reaches them from the university network.
6. A link to the validation meeting recording, accessible to instructors, or one line saying why there is none: the customer refused recording, or the meeting was held in writing.
7. The meeting transcript, if the customer refused to let you publish it.
8. One line confirming that no private-only material was committed to the repository.

The PDF carries no deck.

### Submission Procedure

- Merge `reports/week-06/README.md` and every file it links into `main`.
- Take the permalink and the snapshot from that `main` commit, per [Permalinks And Snapshots](../requirements/repository-requirements.md#permalinks-and-snapshots).
- Submit the PDF and the snapshot through Moodle.

## Checklist

- [ ] `SPRINT-06` planned with its goal, its `**Due:**` field, its `**Sprint Backlog:**` link, and its `**Planned Velocity:**` ([Part 1](#part-1-refine-the-product-backlog-and-plan-the-sprint)).
- [ ] One `US-nn` for the product analyst and one for the system operator, each with its `VP-nn`, its `### Specified by`, its `MoSCoW`, `Story Points`, `Responsible`, `Accountable`, and two assignees, both scheduled in `SPRINT-06` ([Part 1](#part-1-refine-the-product-backlog-and-plan-the-sprint)).
- [ ] The next two sprints' worth of the product backlog refined, with the `Story Points` on each and no sprint milestone ([Part 1](#part-1-refine-the-product-backlog-and-plan-the-sprint)).
- [ ] The task issues for the two pipelines, the four dashboards, and the observability test, each with its `### Requirements`, scheduled in `SPRINT-06` ([Part 1](#part-1-refine-the-product-backlog-and-plan-the-sprint)).
- [ ] `docs/analytics.md` with the focus metric traced to its `VP-nn`, the seven criteria, one rejected vanity metric, the counter-metric, the L1 and L2 inputs, and the tree ([Part 2](#part-2-write-the-analytics-plan-and-the-metric-tree)).
- [ ] A `###` section for every node in the tree, each with its `**Definition:**`, `**Source:**`, and `**Query:**`, and one metric computed by its query named on the page ([Part 2](#part-2-write-the-analytics-plan-and-the-metric-tree)).
- [ ] The event table with its four columns, its naming convention, `source` on every event, no personal data, and the core task covered end to end ([Part 3](#part-3-write-the-event-table-and-instrument-the-product)).
- [ ] The product instrumented, the staging test event tagged `source=smoke`, and the staging chart excluding it ([Part 3](#part-3-write-the-event-table-and-instrument-the-product)).
- [ ] `FR-007` written with its behavior and criteria, and its row in the functional requirements index ([Part 3](#part-3-write-the-event-table-and-instrument-the-product)).
- [ ] The analytics backend on the university network, with a staging and a production project, each with its own client ID ([Part 4](#part-4-deploy-the-analytics-backend-and-expose-its-dashboards)).
- [ ] A dashboard in each project, with at least one chart for the focus metric or its L1 input, running the query recorded in the page ([Part 4](#part-4-deploy-the-analytics-backend-and-expose-its-dashboards)).
- [ ] `docs/deployment.md` carrying the two telemetry pipelines' steps and configuration, linking the two plans ([Part 4](#part-4-deploy-the-analytics-backend-and-expose-its-dashboards) and [Part 6](#part-6-deploy-openobserve-and-build-the-sli-dashboards)).
- [ ] `docs/observability.md` with the signals and the `SLI-nn` sections, each with its definition, unit, window, source, query, and status ([Part 5](#part-5-write-the-observability-plan-and-define-the-slis)).
- [ ] The demonstrated `SLI` is `Active` and names the labels that identify the request and the failure ([Part 5](#part-5-write-the-observability-plan-and-define-the-slis)).
- [ ] `FR-008` written with its behavior and criteria, and its row in the functional requirements index ([Part 5](#part-5-write-the-observability-plan-and-define-the-slis)).
- [ ] OpenObserve on the university network with a staging and a production organization, each with a dashboard whose chart names its `SLI` ([Part 6](#part-6-deploy-openobserve-and-build-the-sli-dashboards)).
- [ ] The analytics and observability ADRs, each addressing its `FR-nnn` or `QR-nn`, with its `**Containers:**` named, and both in the ADR index ([Part 7](#part-7-record-the-two-adrs-and-update-the-container-view)).
- [ ] The container view showing the two backends as external systems with the protocol on each arrow, the container set unchanged, and no new view ([Part 7](#part-7-record-the-two-adrs-and-update-the-container-view)).
- [ ] `docs/features.md` with an entry for each internal capability, linking its story, its `FR-nnn`, and its `ADR-nnn`, and no dashboard address ([Part 8](#part-8-document-the-two-features)).
- [ ] The week's terms in `docs/glossary.md`, linked at first use in the two entries ([Part 8](#part-8-document-the-two-features)).
- [ ] `QR-04` with its `Maintainability` / `Analysability` pair, `High` business importance, and its diagnosability scenario ([Part 9](#part-9-write-the-observability-requirement-and-its-test-and-run-the-test)).
- [ ] `QR-04 QRT-01` at `deployed`, naming the staging deployment and `SLI-01` in `**Runs at:**`, with its procedure, its script, and its pass criterion ([Part 9](#part-9-write-the-observability-requirement-and-its-test-and-run-the-test)).
- [ ] The test run against staging, its row `Passes` with `Checked` in `SPRINT-06`, and its evidence linked ([Part 9](#part-9-write-the-observability-requirement-and-its-test-and-run-the-test)).
- [ ] Each `SPRINT-06` testing-plan row run or moved to `SPRINT-07` with a reason, the optional re-run recorded when it was run, and the moves declared in the report ([Part 9](#part-9-write-the-observability-requirement-and-its-test-and-run-the-test)).
- [ ] `QR-04`'s row in the index and the matrix, and the index linking the testing plan once ([Part 9](#part-9-write-the-observability-requirement-and-its-test-and-run-the-test)).
- [ ] Each open goal's current measure and whether the new data can settle it, each settled goal set with its `**Outcome:**`, each later goal left `Open`, and the `## Threshold review` in the report ([Part 10](#part-10-review-the-threshold-of-success)).
- [ ] Each Week 5 action point's outcome in `## Previous action points`, and each Week 5 open question answered or carried forward in `## Previous open questions` ([Part 11](#part-11-carry-out-the-week-5-action-points-and-open-questions)).
- [ ] `reports/week-06/meeting-script.md` ([Part 12](#part-12-validate-with-the-customer)).
- [ ] `reports/week-06/meeting-report.md`, with the dashboards, the tests' results, the `SLI` each runtime test read, the threshold proposal, a `DEC-nnn` for any change, and 2 or more action points due in Week 7 ([Part 12](#part-12-validate-with-the-customer)).
- [ ] `reports/week-06/meeting-transcript.md`, if the meeting was recorded or held in writing ([Part 12](#part-12-validate-with-the-customer)).
- [ ] Any same-week rework merged, redeployed to staging, retested, redeployed to production, and verified, or deferred to `SPRINT-07` with the reviewed commit released ([Part 13](#part-13-redeploy-and-retest-after-same-week-rework)).
- [ ] `REL-06` tagged on the final production commit, with the changelog's `[0.6.0]` section, the upgrade note ending with the `Full changelog` line, the plan's `REL-06` block, and the sprint milestone closed ([Part 14](#part-14-cut-the-rel-06-release)).
- [ ] `**Actual Velocity:**` set in `### SPRINT-06`, and `reports/week-06/sprint-retrospective.md` with its four sections and its carried actions ([Part 15](#part-15-close-the-sprint-and-hold-the-retrospective)).
- [ ] `reports/week-06/ai-usage.md` ([Part 16](#part-16-report-on-your-ai-usage)).
- [ ] `reports/week-06/README.md` with the summary, the threshold review, the four screenshots, and the coverage rows ([Assignment Report In The Repository](#assignment-report-in-the-repository)).
- [ ] Everything merged into `main`, with the permalink and the snapshot taken from that commit ([Submission Procedure](#submission-procedure)).
- [ ] PDF ready, the permalink opened in a browser at the full commit hash, the four dashboards' addresses and credentials in it, and the product's staging and production addresses in it ([Assignment Report On Moodle](#assignment-report-on-moodle)).
