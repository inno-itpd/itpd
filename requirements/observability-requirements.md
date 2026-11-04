# Observability Requirements

These requirements define the observability plan: where it lives, the signals the product emits, the `SLI`s it defines, the observability pipeline that stores the signals, the dashboards that show them, and what the signals may and may not collect.
The plan turns the product's own operating signals into numbers an operator can read, and it defines the service level indicators a runtime quality requirement test names.
Where the page lives in the repository is in [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository), how an `SLI` is issued and cited is in [Identifier Rules](general-requirements.md#identifier-rules), and what telemetry may carry is in [Telemetry And Personal Data](visibility-requirements.md#telemetry-and-personal-data).
The deployment that runs the pipeline is [Environments And Deployment](repository-requirements.md#environments-and-deployment)'s, and the test that reads an `SLI` is [Quality Requirement Tests](quality-requirements-requirements.md#quality-requirement-tests)'s.
[Guide: Product Analytics And Observability](../guides/analytics-and-observability.md) is the method.

<h2>Table of contents</h2>

- [Where The Observability Plan Lives](#where-the-observability-plan-lives)
- [The Signals](#the-signals)
- [The SLIs](#the-slis)
- [The Pipeline](#the-pipeline)
- [The Dashboard](#the-dashboard)
- [Collected Data](#collected-data)
- [Full Example](#full-example)

## Where The Observability Plan Lives

**Since: W6**

The observability plan is maintained documentation: it is created in Week 6 in its final place and stays current, per [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository).

**Required**

1. The product's observability plan is `docs/observability.md`, one page.
2. The page is created in Week 6, and it is kept current for the rest of the course.
3. The page is linked from `docs/deployment.md`, from each runtime `QRT-nn` that names an `SLI`, and from the weekly report, which names it rather than copying a signal's value.

## The Signals

**Since: W6**

A **signal** is what the product reports about its own operation: a **metric**, a **log**, or a **trace**.
The metric is the number the `SLI`s are computed from, and the log and the trace are the detail an operator reads when a number is wrong.

**Required**

1. The page names the three signal types, the metric, the log, and the trace, and states which of them the product emits.
2. The product emits a metric for every `SLI`; the log and the trace are optional.
3. An alert is a rule over a signal rather than a signal of its own: it is optional, and the page records one only when the team defines it.

## The SLIs

**Since: W6**

A **service level indicator**, `SLI-nn`, is a product quality signal the product emits and the observability pipeline records: what is measured, in which unit, over which window, and by which query.
It is not an analytics metric and not a quality requirement: the `SLI` records the measured signal, and the requirement's `Response Measure` stays the target.
The family, its two digits, its repository-wide scope, its `## SLI-01` heading, its status values, and its citation are in [Identifier Rules](general-requirements.md#identifier-rules).
The query is written in the backend's query language; OpenObserve runs PromQL through its metrics API, so the example's PromQL is what its chart runs, and a backend that uses SQL records the SQL form.

**Required**

1. The section introduces the `SLI`s, and each `SLI` is a `## SLI-01` section after it, headed with the bare identifier, with its name on the first line, so its anchor is `#sli-01`.
2. Each `SLI` carries these fields, in this order:

   | Field             | What it says                                                                                                             |
   | ----------------- | ------------------------------------------------------------------------------------------------------------------------ |
   | `**Status:**`     | `Active`, `Planned`, or `Dropped`                                                                                        |
   | `**Definition:**` | What the signal measures and which labels it carries                                                                     |
   | `**Unit:**`       | The unit the value is reported in, such as milliseconds or a ratio                                                       |
   | `**Window:**`     | The window the value covers, and how soon a point appears after the event it measures                                    |
   | `**Source:**`     | The signal and the instrumentation that produces it, including the container that emits it                               |
   | `**Query:**`      | The query a chart runs when it shows the SLI, in the backend's query language, with the labels and the window it selects |
   | `**Dropped:**`    | Only on a dropped `SLI`: the date and the reason, per [Identifier Rules](general-requirements.md#identifier-rules)       |

3. The team lists the `SLI`s its runtime quality requirements need, and it instruments and demonstrates at least one `Active` one.
4. The `SLI` the observability requirement's test reads names, in its `**Definition:**`, the labels that identify the request and the failure, so the test can read them.
5. A runtime `QRT-nn` written from Week 6 on names an `Active` `SLI-nn` in its `**Runs at:**`, per [Quality Requirement Tests](quality-requirements-requirements.md#quality-requirement-tests).
6. A dropped `SLI` leaves its requirement active when another `Active` `SLI` covers it: the `QRT-nn`'s `**Runs at:**` names the replacement, or its testing-plan row becomes `Not verified`, per [Quality Requirement Testing Plan](planning-requirements.md#quality-requirement-testing-plan).
7. The query is recorded in the `SLI`'s `**Query:**` field, and a dashboard chart that shows the `SLI` names it and runs it, so the query has one public owner.
8. The chart's address is private-only, per [Sensitive Information Reference](visibility-requirements.md#sensitive-information-reference), so the page names the chart rather than linking it.

## The Pipeline

**Since: W6**

The **observability pipeline** carries each signal from the container that emits it to the backend that stores it and serves the dashboards.
The backend's steps and configuration are the deployment runbook's, and this section says only what the plan records about them.

**Required**

1. The page states the instrumentation: which container emits each signal, and how it exports it.
2. The observability backend is OpenObserve by default, because one service stores and serves the signals with relatively low resources, and another documented backend is allowed.
   It runs on the university VM, per [Environments And Deployment](repository-requirements.md#environments-and-deployment).
3. One backend instance carries one environment scope per environment, `staging` and `production`, because the backend scopes its dashboard to that scope.
   For OpenObserve the scope is an organization; a documented alternative uses the equivalent.
   Each scope has its own dashboard, and each environment's build configures its own.
4. The staging scope carries the test traffic; the production scope's dashboard is configured with the same query and is not exercised with test traffic.
5. The page states the access: the backend, its dashboards, and their credentials are reachable by the team and the customer from the university network, and their addresses and credentials are private-only, per [Sensitive Information Reference](visibility-requirements.md#sensitive-information-reference).
6. The page states the retention, and it covers the longest `SLI` window the page defines.
7. The page records how collection is enabled and disabled, including the environment variable that turns it off.
8. The deployment's steps and configuration live in `docs/deployment.md`, per [Environments And Deployment](repository-requirements.md#environments-and-deployment); the page links that section and repeats none of it.
   `.env.example` carries the configuration's shape, and the secrets are installed outside the repository, per [Configuration And Sensitive Information](repository-requirements.md#configuration-and-sensitive-information).

## The Dashboard

**Since: W6**

Each environment scope's dashboard is where the pipeline's signal becomes a chart an operator can read, and the `SLI`'s section is where its query is written.

**Required**

1. Each environment scope's dashboard carries at least one chart for an `Active` `SLI`.
   An `SLI` without a chart still records its `**Query:**`; the one-chart minimum is the dashboard's, not every `SLI`'s.
2. The chart names the `SLI` it shows and runs the `**Query:**` recorded in that `SLI`'s section.
3. The staging scope's dashboard shows the test traffic; the production scope's dashboard carries the same chart and query and is not exercised with test traffic.
4. The dashboard's address and any credentials are private-only, per [Sensitive Information Reference](visibility-requirements.md#sensitive-information-reference), and the page names the dashboard and its charts rather than linking the address.
5. The evidence is two sanitized screenshots, one per scope, in `reports/week-NN/images/`, linked from the weekly report with the `SLI` each chart shows, per [Screenshot Evidence](visibility-requirements.md#screenshot-evidence).

## Collected Data

**Since: W6**

The plan says what the product records about its own operation, because a signal is collected once and read for the rest of the course.

**Required**

1. The page states what the signals collect, field by field, and where the data lives.
2. The page states what is never collected, and it repeats no rule from [Telemetry And Personal Data](visibility-requirements.md#telemetry-and-personal-data), which owns the definition of personal data, the never-committed rule, and the opaque identifier.
3. The page states how collection is disabled.

## Full Example

The meeting-booking example's `docs/observability.md` after Week 6.
`SLI-01` is the signal the diagnosability requirement's test reads, and it is the one the team demonstrates.

```markdown
# Observability

The signals this product reports about its own operation, the service level indicators they define, and the pipeline that stores them.
The product's diagnosability requirement is checked against [`SLI-01`](#sli-01), and the OpenObserve query below is the evidence that the pipeline stores and renders it.

## The Signals

The product emits a metric for every `SLI`, and it emits a log line and a trace span for every request when `TELEMETRY_LOGS` is `true`.
An alert is a rule over a signal rather than a signal of its own, and the team defines none this week.

## The SLIs

An `SLI` is a quality signal the product emits and the pipeline records.
Its target is the `Response Measure` of the requirement whose test reads it.

## SLI-01

Booking request response time.

- **Status:** Active
- **Definition:** The five-minute P95 of the `backend`'s booking-request response time, in milliseconds, computed from an OpenTelemetry histogram labelled `route` and `outcome`, where `outcome` is `ok`, `client_error`, or `server_error`.
  The product's telemetry endpoint also exposes the per-request point with `request_id`, `route`, and `outcome`, so a failed request can be found.
- **Unit:** Milliseconds.
- **Window:** Five minutes, evaluated every minute; the endpoint's per-request point appears within five seconds of the response, and the aggregate point follows within one minute.
- **Source:** An OpenTelemetry histogram the `backend` exports through its instrumentation to OpenObserve, and the product's telemetry endpoint at `/telemetry/sli`, which exposes the per-request points and the aggregate.
- **Query:** `histogram_quantile(0.95, sum by (le, route, outcome) (rate(booking_request_duration_ms_bucket[5m])))`

## The Pipeline

The `backend` exports the histogram over OTLP/HTTP to an OpenObserve instance on the university VM, and the `frontend` sends its request timing with the same request identifier.
One OpenObserve instance carries two organizations, `staging` and `production`, and each organization's dashboard runs the query recorded under `SLI-01`.
The staging organization receives the test traffic; the production organization's dashboard carries the same query and is not exercised with test traffic.
Retention is 30 days, which covers the five-minute window the `SLI` query reads.
Collection is switched by `TELEMETRY_ENABLED`, which is `false` on a developer's machine and `true` in staging and production.
The steps and configuration are in [the telemetry pipelines](deployment.md#the-telemetry-pipelines), and the secrets are installed on the VM outside the repository; `.env.example` carries the shape.
The backend and its dashboards are reachable from the university network only, and their addresses and credentials are in the Moodle submission.

## The Dashboard

The staging dashboard is `Booking latency (staging)` in the staging organization, and the production dashboard is `Booking latency (production)` in the production organization.
Each chart names `SLI-01` and runs the query recorded under it.

| Chart                    | Organization | What it runs                                                    |
| ------------------------ | ------------ | --------------------------------------------------------------- |
| `P95 latency by outcome` | staging      | the `SLI-01` query, which the staging test traffic fills        |
| `P95 latency by outcome` | production   | the same query, over the production organization's real traffic |

The staging dashboard was checked with a failed booking request: the chart shows the `server_error` series, and the product's telemetry endpoint exposed the request's point with its `request_id`; the production dashboard carries the same chart and received no test traffic.
Both dashboard addresses are in the Moodle submission, and the week report links one sanitized screenshot from each organization.

## Collected Data

The signals collect the request identifier, the route, the outcome, and the duration on the per-request point, and the route, the outcome, and the duration on the aggregate; they also record the container that emitted them.
They never collect a personal name, an email address, a phone number, a postal address, free text, or payment card data.
A request is identified by the opaque `request_id`, which is generated at random and cannot be reversed to a person.
Collection is switched off with `TELEMETRY_ENABLED=false`.
The data lives in the OpenObserve instance's storage on the university VM, outside the repository, and is reachable from the university network only.
```
