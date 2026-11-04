# Guide: Product Analytics And Observability

How to decide what the product should measure, record it, run it through a backend the team can keep, and put it on a dashboard a reader can open.

The rules are in [Product Analytics Requirements](../requirements/analytics-requirements.md) and [Observability Requirements](../requirements/observability-requirements.md): the focus metric and the tree, the event table, the two pipelines, the four dashboards, and the `SLI`s.
What telemetry may contain is in [Telemetry And Personal Data](../requirements/visibility-requirements.md#telemetry-and-personal-data), and how the two backends are deployed is in [Environments And Deployment](../requirements/repository-requirements.md#environments-and-deployment).
How a runtime test names an `SLI` is in [Quality Requirement Tests](../requirements/quality-requirements-requirements.md#quality-requirement-tests), and how the week's review uses the numbers is in [The Threshold Of Success](../requirements/planning-requirements.md#the-threshold-of-success).
This guide is the method: finding the numbers, recording them, running the two pipelines, and reading the result into the week.

**Timebox:** about two days for the whole of it, most of it on the two pipelines and the four dashboards.
The metric tree is an afternoon once the events are named, and the observability test is an hour once the product exposes the signal.

<h2>Table of contents</h2>

- [What You Produce](#what-you-produce)
- [Step 1: Find The Metrics](#step-1-find-the-metrics)
  - [Start From The Value Proposition](#start-from-the-value-proposition)
  - [Pass The Focus Metric Through The Seven Criteria](#pass-the-focus-metric-through-the-seven-criteria)
  - [Guard It With A Counter-Metric](#guard-it-with-a-counter-metric)
  - [Decompose It Into Input Metrics](#decompose-it-into-input-metrics)
  - [Draw The Tree As One Nested List](#draw-the-tree-as-one-nested-list)
  - [Write The Query, Not The Number](#write-the-query-not-the-number)
- [Step 2: Write The Events And Instrument The Product](#step-2-write-the-events-and-instrument-the-product)
  - [Write The Table Before The Code](#write-the-table-before-the-code)
  - [Name The Events One Way](#name-the-events-one-way)
  - [Keep Personal Data Out Of The Payload](#keep-personal-data-out-of-the-payload)
  - [Carry `source` On Every Event](#carry-source-on-every-event)
  - [Trace Every Metric To Its Events](#trace-every-metric-to-its-events)
- [Step 3: Deploy The Analytics Backend And Expose The Dashboards](#step-3-deploy-the-analytics-backend-and-expose-the-dashboards)
  - [Self-Host The Backend On The University Network](#self-host-the-backend-on-the-university-network)
  - [Separate The Environments By Scope](#separate-the-environments-by-scope)
  - [Chart The Query The Page Records](#chart-the-query-the-page-records)
  - [Check The Staging Dashboard With A Test Event](#check-the-staging-dashboard-with-a-test-event)
- [Step 4: Define The `SLI`s And Instrument The Signals](#step-4-define-the-slis-and-instrument-the-signals)
  - [Choose The Signal, Not The Chart](#choose-the-signal-not-the-chart)
  - [Write The Labels A Test Can Read](#write-the-labels-a-test-can-read)
  - [Name The One `SLI` The Week Demonstrates](#name-the-one-sli-the-week-demonstrates)
- [Step 5: Deploy OpenObserve And Build The `SLI` Dashboards](#step-5-deploy-openobserve-and-build-the-sli-dashboards)
  - [Run One Instance With One Scope Per Environment](#run-one-instance-with-one-scope-per-environment)
  - [Put The Query In The `SLI`, Not The Chart](#put-the-query-in-the-sli-not-the-chart)
- [Step 6: Write The Observability Requirement And Run Its Test](#step-6-write-the-observability-requirement-and-run-its-test)
  - [State Diagnosability As The Requirement](#state-diagnosability-as-the-requirement)
  - [Make The Test Fail One Request](#make-the-test-fail-one-request)
  - [Cite The `SLI` And Settle The Threshold](#cite-the-sli-and-settle-the-threshold)
  - [Re-Run A Runtime Test Only When It Helps](#re-run-a-runtime-test-only-when-it-helps)
- [Step 7: Record The Evidence](#step-7-record-the-evidence)
  - [Capture The Four Dashboards](#capture-the-four-dashboards)
  - [Record The Point, The Query, And The Commit](#record-the-point-the-query-and-the-commit)
  - [Link It From The Report](#link-it-from-the-report)
- [Step 8: Review The Threshold](#step-8-review-the-threshold)
  - [Read Each Open Goal Against The New Data](#read-each-open-goal-against-the-new-data)
  - [Propose A Measure](#propose-a-measure)
  - [Settle Only What The Review Can Settle](#settle-only-what-the-review-can-settle)
- [Step 9: Keep The Data Private](#step-9-keep-the-data-private)
  - [List What Is Collected And What Never Is](#list-what-is-collected-and-what-never-is)
  - [Use An Opaque Identifier](#use-an-opaque-identifier)
  - [Sanitize The Screenshot And Hide The Address](#sanitize-the-screenshot-and-hide-the-address)
  - [Leave A Switch That Turns It Off](#leave-a-switch-that-turns-it-off)
- [Common Mistakes](#common-mistakes)

## What You Produce

```text
docs/analytics.md                       the focus metric, its tree, its metric sections, the event table, the pipeline, the dashboards, and the collected data
docs/observability.md                   the signals, the SLI sections, the pipeline, and the two dashboards
docs/deployment.md                      the steps and configuration of both telemetry pipelines, linking the two plans
docs/quality-requirements/qr/QR-nn.md   the diagnosability requirement and its deployed test, which names an Active SLI
docs/features.md                        one entry per internal capability, linking its story, its FR-nnn, and its ADR-nnn
reports/week-NN/images/                 the four sanitized dashboard screenshots
reports/week-NN/README.md               the summary, the threshold review, the evidence links, and the coverage rows
```

The two plans are maintained pages: the pipeline's steps live in the deployment runbook, and the metric's query and the `SLI`'s query live on the pages that define them, once each.

## Step 1: Find The Metrics

A **metric** is a number the product's use is counted in.
The work of this step is choosing the one number the product's value is read from, and the few numbers that explain it, before writing any code.

### Start From The Value Proposition

Read [The Value And The Metrics](../requirements/analytics-requirements.md#the-value-and-the-metrics) and take the `VP-nn` the vision's goal traces to, per [Goal](../requirements/product-vision-requirements.md#goal).

The **focus metric** expresses that value proposition, not the product's features: "completed paid bookings per active coach per week" expresses a value proposition about selling sessions, while "events recorded" expresses nothing a user would recognise.

Write the candidate metrics on one line each, then keep only those a user's action produces.
A number that needs a survey, a spreadsheet outside the pipeline, or a guess is not a metric yet.

### Pass The Focus Metric Through The Seven Criteria

Take the [North Star Framework's](https://openpracticelibrary.com/practice/north-star-framework/) seven criteria, one at a time, and write the focus metric's answer beside each.
The point is not the list; it is that a metric failing one of them is replaced before the work starts.

If the focus metric fails "measurable" because the product records nothing that feeds it, that is a gap in [Step 2](#step-2-write-the-events-and-instrument-the-product), not a reason to keep a metric the pipeline cannot compute.

Reject at least one vanity metric in writing, with the reason.
A GitHub star, a follower, a page view, and a download count the cheapest action a stranger can take; a booking, a payment, and a completed session count the value the product exists for.

### Guard It With A Counter-Metric

A **counter-metric** is the number that would fall if the focus metric rose by harming the user.
If the focus metric is bookings per week, the counter-metric is the cancellation and no-show rate; if it is sessions delivered, it is the complaint rate.
Write the pair together, so the team cannot optimize one into the other.

### Decompose It Into Input Metrics

Choose one L1 input metric under the focus metric and one or two L2 inputs under it.
An **input metric** is a step the team can change this sprint: a conversion rate, a completion rate, an availability rate.
The L1 explains most of the focus metric's movement, and each L2 explains the L1, so a chart of the L1 tells the team where to look.

Do not add an L2 under each L1 for symmetry: the tree is a diagnostic, and a metric the team cannot act on is noise.

### Draw The Tree As One Nested List

The tree is one nested list, and indentation is what says which metric feeds which, per [The Value And The Metrics](../requirements/analytics-requirements.md#the-value-and-the-metrics).
The focus metric is the top item, the counter-metric is its sibling marked as guarding it, the L1 is nested under the focus metric, and each L2 is nested under its L1.
Each metric has exactly one parent, and each node has one `###` section below the tree, so the tree and the sections are one-to-one.

### Write The Query, Not The Number

Each metric's `**Query:**` is the computation a chart uses when it shows the metric, and it is written from the events the table records.
Write the query with its window and its `source` filter, so the page says how the number is computed rather than how it was read on a day.
A rate states its numerator and its denominator; a count states its unit and its window.

At least one metric is computed by its query rather than by hand, and the page names it.
The focus metric may have no value until people outside the team use the product; say so on the page, and chart the L1 input until then.

## Step 2: Write The Events And Instrument The Product

An **event** is one action the product records.
The event table is the schema the code sends, so it is written before the code and updated in the same pull request as any change to it, per [The Events](../requirements/analytics-requirements.md#the-events).

### Write The Table Before The Code

Draw the core task from its first screen to its confirmation, and put one row per step in the table.
`Fires when` says the user's action, `Fields` is the payload with each field's type and whether it is required, and `Collected at` names the container and the environment that emit it.
Then read the table back: could a developer instrument from it, and could a stranger recompute a metric from it without reading the code?

### Name The Events One Way

State one convention under the table, such as `object_action` in snake case, and follow it in every row.
A mixed `bookingConfirmed`, `booking_confirmed`, and `confirm_booking` makes a query guess at names, and a rename breaks every chart silently.

### Keep Personal Data Out Of The Payload

Check every field against [Telemetry And Personal Data](../requirements/visibility-requirements.md#telemetry-and-personal-data).
An event carries an opaque identifier instead of a name, an email address, a phone number, or free text, and it carries no payment card data.
Free text is the field that most often arrives by accident, because a cancellation reason or a note is easy to add and impossible to sanitize later.

### Carry `source` On Every Event

Every event carries `source`, with a value from a closed set such as `web`, `usability-test`, or `smoke`.
`smoke` is the team's own pipeline check: it goes to the staging scope only, the staging dashboard's event list shows it and the chart excludes it, so a test run never becomes a metric's value.
A staging test event that reaches production is a deviation the week's report declares, per [Declaring Deviations](../requirements/weekly-report-requirements.md#declaring-deviations).

### Trace Every Metric To Its Events

Read each metric's `**Source:**` back to the table: every event it names has a row, and every row is either a metric's source or the record the week needs.
A metric with no event is dropped or gets its event in the same pull request; a number invented outside the pipeline is not a metric.

## Step 3: Deploy The Analytics Backend And Expose The Dashboards

The **analytics backend** stores the events and serves the dashboards.
The default is OpenPanel self-hosted, per [The Pipeline](../requirements/analytics-requirements.md#the-pipeline), and the deployment's steps belong to `docs/deployment.md`, per [Environments And Deployment](../requirements/repository-requirements.md#environments-and-deployment).

### Self-Host The Backend On The University Network

Run the backend on the university VM, so the data never leaves the university network.
Install its configuration on the machine, keep its secrets and private-only values untracked, and keep the shape in `.env.example` with placeholders, per [Configuration And Sensitive Information](../requirements/repository-requirements.md#configuration-and-sensitive-information).
A sanitized configuration file may be tracked, such as a compose file that reads its values from environment variables.

Write the deployment's steps into `docs/deployment.md` under a section such as `## The Telemetry Pipelines`, and link that section from `docs/analytics.md` instead of repeating the commands on both pages.
The runbook carries the commands, the ports, the configuration, and the restart; the plan carries the topology and the queries.

### Separate The Environments By Scope

One backend instance carries one environment scope per environment, `staging` and `production`: an OpenPanel project, or the documented backend's equivalent.
Give each scope its own credential such as a client ID, configure each environment's build with its own, and verify that the staging build's events land in the staging scope and the production build's in the production scope.

The separation is what lets the team test the pipeline without writing the production metric.
A single scope for both environments makes every later chart a mixture, and no query can clean it afterwards.

### Chart The Query The Page Records

Build a dashboard in each environment scope with at least one chart for a metric in the tree: the focus metric once it has a value, otherwise its L1 input.
Name the chart after its metric and run the `**Query:**` recorded in that metric's section, so the page owns the query and the chart owns the display.
A chart that runs a query the page does not carry is a number nobody can recompute.
A dashboard's definition may be tracked when it carries no address, credential, or other private-only value, but the page still owns the query, so regenerate the definition when the query changes.

### Check The Staging Dashboard With A Test Event

Send one event tagged `source=smoke` to the staging scope, open the staging dashboard, and check that the event list shows it and that the metric chart excludes it.
Then open the production dashboard and check that it carries the same chart and query and has received no test traffic.

Keep the dashboard's address and any credentials in the Moodle submission, per [Sensitive Information Reference](../requirements/visibility-requirements.md#sensitive-information-reference), and name the dashboard and its charts on the page instead of linking them.

## Step 4: Define The `SLI`s And Instrument The Signals

A **signal** is what the product reports about its own operation: a metric, a log, or a trace.
A **service level indicator**, `SLI-nn`, is the measured signal a runtime quality requirement test names, per [The SLIs](../requirements/observability-requirements.md#the-slis).

### Choose The Signal, Not The Chart

The metric is required, and the log and the trace are optional, per [The Signals](../requirements/observability-requirements.md#the-signals).
Choose the signal the requirement's `Response Measure` needs: a response-time requirement needs a duration, and a diagnosability requirement needs the duration with the labels that identify the request.
Do not define an `SLI` for a chart the team wants; define the signal a test reads.

### Write The Labels A Test Can Read

Write the `**Definition:**` with the labels the signal carries, the `**Unit:**` it is reported in, and the `**Window:**` it covers.
The `SLI` the diagnosability test reads names the labels that identify the request and the failure, such as `request_id` and `outcome`, so the test can find one request's point as well as the aggregate.

Record the `**Query:**` a chart uses when it shows the signal, with the labels and the window it selects.
A signal without a chart still records its query, and a test can read it; a chart cannot run a query the page does not carry.

### Name The One `SLI` The Week Demonstrates

List the `SLI`s the runtime requirements need, instrument at least one `Active` one, and name it on the page and in the week's report.
A `Planned` `SLI` is not yet a signal a test can read, and a `Dropped` one keeps its section with its `**Dropped:**` field, per [Identifier Rules](../requirements/general-requirements.md#identifier-rules).

## Step 5: Deploy OpenObserve And Build The `SLI` Dashboards

The **observability backend** stores the signals and serves their dashboards.
The default is OpenObserve, because one service stores and serves the signals with relatively low resources, and another documented backend is allowed, per [The Pipeline](../requirements/observability-requirements.md#the-pipeline).

### Run One Instance With One Scope Per Environment

One OpenObserve instance carries one environment scope per environment, `staging` and `production`: an organization, or the documented backend's equivalent.
Point each environment's build at its own scope, and keep the credentials in the Moodle submission and out of the repository.
As with the analytics pipeline, write the steps and the configuration into `docs/deployment.md` and link them from `docs/observability.md`.

Export the signals with OpenTelemetry, and keep the instrumentation in the container that measures the thing: a request duration belongs to the `backend`, not to a script that runs after the fact.

### Put The Query In The `SLI`, Not The Chart

Build a dashboard in each environment scope with at least one chart for an `Active` `SLI`.
The chart names the `SLI` and runs the `**Query:**` recorded under it, and the page names the chart rather than linking its private address.
Send the staging test traffic through the staging scope, and leave the production scope's dashboard configured with the same query and unexercised.
The dashboard's definition may be tracked when it is sanitized, but the page still owns the `SLI`'s query, so regenerate the definition when the query changes.

## Step 6: Write The Observability Requirement And Run Its Test

The week's quality requirement is about the product's diagnosability, not about a dashboard: the dashboard is evidence, and the product's own telemetry endpoint is what the test measures.
The rules for the requirement and its test are in [Quality Requirements](../requirements/quality-requirements-requirements.md#the-quality-requirement) and [Quality Requirement Tests](../requirements/quality-requirements-requirements.md#quality-requirement-tests), and the method is in [Guide: Quality Requirement Tests](quality-requirement-tests.md).

### State Diagnosability As The Requirement

Use the `Maintainability` / `Analysability` pair and write the scenario as an operator's investigation: the operator is the `Source`, a failed request in the core task is the `Stimulus`, the staging deployment with the pipeline running is the `Environment`, the product's request path and its instrumentation is the `Artifact`, the request's labelled point and the `SLI`'s aggregate series for the failure are the `Response`, and the endpoint's five-second exposure of the point and the five-minute P95 query are the `Response Measure`.

The measure is about the product: the product's telemetry endpoint exposes the point, and the OpenObserve query shows the pipeline stored and rendered the aggregate.
A requirement about a dashboard would be a requirement about a tool, and the tool is replaceable.

### Make The Test Fail One Request

Write a script or command, for example `scripts/check-sli.ts`, that runs the core task's traffic against `$STAGING_URL` and fails one booking request.
Then read the request's series point from the product's telemetry endpoint and check that it appears within five seconds, carrying the request identifier and the failure label.
After waiting up to a minute for the pipeline, record the `SLI`'s five-minute P95 query result in OpenObserve and the dashboard screenshot as the evidence that the pipeline stored and rendered the signal.

A short-window check is the week's required demonstration because it can pass before the deadline; a longer check a team runs on its own stays `Not verified` with its planned sprint, per [Quality Requirement Testing Plan](../requirements/planning-requirements.md#quality-requirement-testing-plan).

### Cite The `SLI` And Settle The Threshold

The test's `**Runs at:**` names the staging deployment, the command, and the `Active` `SLI` it reads, linked, per [Quality Requirement Tests](../requirements/quality-requirements-requirements.md#quality-requirement-tests).
Its `**Pass when:**` states the requirement's `Response Measure` made specific to staging and to the five-second window, and still settles the measure's threshold: one failed request is the instance the procedure produces, not a narrower bar, and the `SLI`'s five-minute P95 query must return the failure series within one minute.

Record the result as the testing plan's row, with `Checked` in the sprint and the evidence the `deployed` level requires, and declare any test traffic that reached production as a deviation.

### Re-Run A Runtime Test Only When It Helps

Re-running an existing runtime `QRT-nn` with the same `Active` `SLI` is optional, and its row then names the new sprint in `Checked`.
A re-run that adds an `SLI` citation reads it in its procedure, even when the test was written before Week 6.
A failed re-run records its `Fails` result and does not remove the week's demonstration, which is the observability requirement's test.

## Step 7: Record The Evidence

The evidence is the dashboards, the queries, and the run, and it lives in the week's report and its images directory, per [Screenshot Evidence](../requirements/visibility-requirements.md#screenshot-evidence).

### Capture The Four Dashboards

Capture one screenshot per dashboard: the analytics staging and production dashboards, and the observability staging and production dashboards.
Each shows at least one chart and its metric or `SLI`, and each is sanitized so it carries no personal data and no real address.
Name the files so a reader can tell them apart, such as `analytics-staging.png` and `observability-production.png`.

### Record The Point, The Query, And The Commit

The observability test's evidence is the product endpoint's output for the failed request, the `SLI`'s five-minute P95 query result after the wait, the chart that updated, the staging environment, and the commit the test ran against.
The analytics test event's evidence is the staging dashboard's event list, which shows it, and the metric chart, which excludes it.

Name no real address in any of it: use an environment variable or a placeholder, per [Environments And Deployment](../requirements/repository-requirements.md#environments-and-deployment).

### Link It From The Report

The week's report links the four screenshots with the metric or `SLI` each shows, the test's result, and the commit, per [Weekly Report Requirements](../requirements/weekly-report-requirements.md#weekly-public-report).
It copies no chart and no row: the plan carries the query, the plan carries the result, and the report carries the link.

## Step 8: Review The Threshold

The threshold review is preparation for the Sprint Review, per [The Threshold Of Success](../requirements/planning-requirements.md#the-threshold-of-success).
The team now has numbers it did not have when the goals were written, and the review asks what that changes.

### Read Each Open Goal Against The New Data

For each open `TOS-nn`, write its current `**Measure:**` and whether the analytics or the observability data can settle it.
Some goals were written before the product had numbers, and the review is where that gap becomes visible.

### Propose A Measure

The team may propose an analytics-measured goal or a revised `**Measure:**`, and the proposal states the number, the week it lands in, and the metric's `###` link in `docs/analytics.md`.
The customer agrees the change at the Sprint Review, and only that `DEC-nnn` moves the bar, per [The Threshold Of Success](../requirements/planning-requirements.md#the-threshold-of-success).

No goal is required to change: a week that proposes nothing and records why is a complete review.

### Settle Only What The Review Can Settle

A goal whose measure is already met or already impossible becomes `Achieved` or `Missed` with its `**Outcome:**`, and one whose measure lands later stays `Open`.
The report carries the review in its `## Threshold review` section, and the meeting report records the customer's decision in `## Decisions`.

## Step 9: Keep The Data Private

Telemetry is the easiest private data to commit by accident, because it looks like a test fixture and lives in a dashboard someone screenshots.

### List What Is Collected And What Never Is

Both plans state what is collected, field by field, and what is never collected, per [Collected Data](../requirements/analytics-requirements.md#collected-data) and [Collected Data](../requirements/observability-requirements.md#collected-data).
The list is the review a teammate reads before adding a field.

### Use An Opaque Identifier

An opaque identifier is allowed when it is generated at random, is not derived from personal data, and cannot be reversed to a person, per [Telemetry And Personal Data](../requirements/visibility-requirements.md#telemetry-and-personal-data).
A hash of an email address is not opaque: it is the email address with one step in front of it.

### Sanitize The Screenshot And Hide The Address

Crop the screenshot to the chart, and check that no name, email address, free text, or real address is visible.
Keep the dashboards' addresses and credentials in the Moodle submission, and keep every committed link a placeholder or an environment variable.
No link is excluded from the link check, because an excluded link is how a private address stays in the repository.

### Leave A Switch That Turns It Off

Both plans state the variable that disables collection, such as `ANALYTICS_ENABLED` and `TELEMETRY_ENABLED`, and both record where the data lives.
The switch is what a team on a development machine uses, and what the review asks for when a privacy question comes up.

## Common Mistakes

- **A vanity metric.**
  GitHub stars, page views, and downloads count attention rather than the value the product exists for.
- **A focus metric read from test traffic.**
  A number from the team's own smoke events is not the product's value; the page says the metric needs real users.
- **A metric with no event, no query, or no section in the tree.**
  The tree, the sections, and the events are one-to-one, and a metric outside them is not computable.
- **An event with personal data or with no `source`.**
  A free-text field and a missing `source` are the two most common payload mistakes.
- **A chart whose query is not in the plan page.**
  The metric's section owns the query, and the chart runs it.
- **A dashboard only on localhost.**
  The customer reaches the dashboards from the university network, so a localhost dashboard shows nobody anything.
- **A single dashboard for both environments.**
  Each environment has its own dashboard in its own environment scope.
- **A single environment scope for both environments.**
  A dry run then pollutes the production metric, and no query can separate it afterwards.
- **An `SLI` with no definition, unit, window, or query.**
  The signal is then a name, and a test cannot read it.
- **A `QRT` that names an `SLI` without reading it in the procedure.**
  A test that names an `SLI` in `**Runs at:**` reads that signal, whether it was written this week or re-run from an earlier week.
- **A `QRT` that reads a `Planned` `SLI`.**
  A test names an `Active` `SLI`, because a planned signal is not emitted yet.
- **An `SLO` family or a `Samples` field.**
  The requirement's `Response Measure` is the target and the test's `**Pass when:**` settles it in the test's context.
- **A `deployed` test that runs against production.**
  The `deployed` level is the staging deployment, and a test against production writes the customer's data.
- **A screenshot with personal data.**
  Sanitize before publishing, and crop to the chart.
- **A dashboard on the public internet.**
  The backends and the dashboards are reachable from the university network only.
- **A committed secret or a private-only value.**
  A sanitized configuration file may be tracked; `.env`, a credential, and a real address stay untracked.
- **A dashboard definition tracked with its address.**
  A definition may be tracked only when it is sanitized, and the page still owns the query.
- **A staging test event that reached production.**
  The environment scopes are separate, the event is tagged `source=smoke`, and a leak is declared as a deviation.
