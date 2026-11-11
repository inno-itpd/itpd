# Product Analytics Requirements

These requirements define the product analytics plan: where it lives, the focus metric and the tree around it, the events the product sends, the analytics pipeline that stores them, the dashboards that show them, and what the events may and may not collect.
The plan turns the product's use into numbers the team can act on, and it says which number the product's value is read from.
Where the page lives in the repository is in [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository), how an event and a metric are cited is in [Identifier Rules](general-requirements.md#identifier-rules), and what telemetry may carry is in [Telemetry And Personal Data](visibility-requirements.md#telemetry-and-personal-data).
The deployment that runs the pipeline is [Environments And Deployment](repository-requirements.md#environments-and-deployment)'s.
[Guide: Product Analytics And Observability](../guides/analytics-and-observability.md) is the method.

<h2>Table of contents</h2>

- [Where The Analytics Plan Lives](#where-the-analytics-plan-lives)
- [The Value And The Metrics](#the-value-and-the-metrics)
  - [The Metric Tree](#the-metric-tree)
  - [Why This Focus Metric](#why-this-focus-metric)
  - [The Metric Sections](#the-metric-sections)
- [The Events](#the-events)
- [The Pipeline](#the-pipeline)
- [The Dashboard](#the-dashboard)
- [Collected Data](#collected-data)
- [Full Example](#full-example)

## Where The Analytics Plan Lives

**Since: W6**

The analytics plan is maintained documentation: it is created in Week 6 in its final place and stays current, per [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository).

**Required**

1. The product's analytics plan is `docs/analytics.md`, one page.
2. The page is created in Week 6, and it is kept current for the rest of the course.
3. `docs/deployment.md` links the page, and the weekly report links it rather than copying a metric's value, per [Weekly Report Requirements](weekly-report-requirements.md#weekly-public-report).

## The Value And The Metrics

**Since: W6**

The plan reads from what the product is worth to its user down to the events that count it.
The **focus metric** is the one number the product's value is read from, the **counter-metric** is the number that guards against buying it with harm, and the **input metrics** are the steps a team can change.
The part is read in this order: the tree, the justification of the focus metric, and one section per metric.

### The Metric Tree

**Since: W6**

The **metric tree** is the plan's shape: the number the value is read from, what guards it, and the steps under it.
It is the page's map, so it comes before the argument for it, and each node is a link to that metric's section.

**Required**

1. The page names one focus metric: the section's opening sentence states it, and its next sentence links the value proposition the metric expresses as a `VP-nn` in `docs/research/value-proposition.md`, per [Traceability Into Later Weeks](general-requirements.md#traceability-into-later-weeks).
2. The section's first sub-heading is `### The Metric Tree`, and under it the tree is one nested list, before [Why This Focus Metric](#why-this-focus-metric).
3. The list carries these labels, in bold:

   | Label                      | What it labels                                                     |
   | -------------------------- | ------------------------------------------------------------------ |
   | `**Focus:**`               | the one focus metric, at the top of the list                       |
   | `**L1 (counter-metric):**` | the one counter-metric, nested under the focus metric              |
   | `**L1:**`                  | the one L1 input metric, nested under the focus metric             |
   | `**L2:**`                  | one or two L2 input metrics, each nested under the L1 input metric |

4. Each item's text is the metric's name as a link to that metric's `###` section, and the name matches the section's heading, so every metric is reachable from the tree.
5. One sentence above the list says the label is the metric's level.
6. The counter-metric is not an input metric: it guards the focus metric rather than feeding it, and the tree gives it the counter-metric label for that reason.
7. Indentation is what says which metric sits under which, and each metric has exactly one parent.

### Why This Focus Metric

**Since: W6**

The page justifies the number after the reader has met it: the argument follows the tree and says why this number, and not another, is the one the value is read from.

**Required**

1. The tree is followed by `### Why This Focus Metric`, which states the seven criteria of the [North Star Framework](https://openpracticelibrary.com/practice/north-star-framework/), one bullet each, with the focus metric's answer to each: it expresses value, it represents the vision and strategy, it is a leading indicator, it is actionable, it is understandable, it is measurable, and it is not a vanity metric.
2. One metric the page rejected as a vanity metric is one labelled line in this section, with the reason, and not a metric section, such as `Rejected as a vanity metric: <name>, because <the reason>`.
3. The page states here that the focus metric may depend on several input metrics and may have no value until real users produce traffic, rather than presenting test traffic as the metric's value.

### The Metric Sections

**Since: W6**

Each node in the tree is one metric section below the justification, and the section is where the metric is defined, where its events are named, and how it is computed.
The sections follow the tree, so the reader walks the tree down the page.

**Required**

1. Each node in the tree has exactly one `###` section under `## The Value And The Metrics`, in tree order, and the only other `###` headings there are `### The Metric Tree` and `### Why This Focus Metric`.
2. Each section is headed with the metric's name in sentence case, so only the first word, a proper noun, and an acronym keep a capital, as in `### Booking conversion rate`, and its anchor is the citation form `docs/analytics.md#<metric-anchor>`, as a feature is cited, per [Identifier Rules](general-requirements.md#identifier-rules).
3. Each metric's section carries these fields, in this order:

   | Field             | What it says                                                                                                                                                 |
   | ----------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ |
   | `**Definition:**` | What the metric counts: a rate's numerator and denominator, or a count's unit and window                                                                     |
   | `**Source:**`     | The events that feed the metric, each named and linked to [The Events](#the-events)                                                                          |
   | `**Query:**`      | The computation a chart runs when it shows the metric, from the events [The Events](#the-events) records, with the window and the `source` filter it applies |

4. A metric that cannot be computed from the events in [The Events](#the-events) is not a metric: the event is added or the metric is dropped.
   No number is invented, and no chart is drawn from a table the team keeps outside the pipeline.
5. At least one metric is computed by its query rather than by hand, and its section says so in one sentence.
6. A metric that is renamed or dropped updates every citation to it in the same pull request, and a dropped metric leaves the tree and gets no section.

## The Events

**Since: W6**

The **event** is one action the product records: what happened, what it carried, and where it was emitted.
The event table is the one registry and the schema the instrumentation sends, so the table and the code cannot disagree.

**Required**

1. The page carries a `## The Events` section with one table whose columns are `Event`, `Fires when`, `Fields`, and `Collected at`, in this order.
2. The table is the one registry of events: an event is cited by its name plus `docs/analytics.md#the-events`, and there is no section per event.
   An event's name matches a row exactly, and a rename updates every citation in the same pull request.
3. Every event's name follows one convention, stated above the table as `object_action` in snake case, such as `booking_confirmed`.
4. `Fires when` states the user's or the system's action that produces the event, in one sentence.
5. `Fields` is the event's payload: each field's name, its type, and whether it is required, such as `booking_id` (uuid, required) or `amount` (integer, minor units).
   An event carries no personal name, email address, phone number, postal address, free text, or payment card data, per [Telemetry And Personal Data](visibility-requirements.md#telemetry-and-personal-data).
   An event identifies a user by an opaque identifier when it needs to, and the identifier is not derived from personal data and cannot be reversed to it.
6. `Collected at` names the product container that emits the event and the environment it emits from, such as `backend`, staging and production.
7. Every event carries a `source` field, and its value records what the traffic is: `web`, `usability-test`, or `smoke`.
   `usability-test` records the team's usability sessions and `smoke` marks traffic the team generated to check the pipeline, so both are test traffic and every metric excludes both.
   The page states for each metric why the test traffic is excluded, and only `web` traffic is a metric's value.
8. The table covers the core task end to end, so a later week's work has the events it needs.
9. Every event a metric's `**Source:**` names has a row.

**Since: W7**

10. The usability test runs on the staging deployment with seeded data and no real payment, and the page names that environment.
    The test's task funnel is read with the `source=usability-test` filter and is shown separately from a metric, per [The Dashboard](#the-dashboard).
    The page adds no new per-participant field, because the `session_id` already groups a booking-page visit, per [Telemetry And Personal Data](visibility-requirements.md#telemetry-and-personal-data).

## The Pipeline

**Since: W6**

The **analytics pipeline** carries each event from the container that emits it to the backend that stores it and serves the dashboards.
The backend's steps and configuration are the deployment runbook's, and this section says only what the plan records about them.

**Required**

1. The page states the instrumentation: which container sends the events, and how it sends them.
2. The analytics backend is OpenPanel by default, and another self-hosted backend is allowed when the page documents it.
   It runs on the university VM, per [Environments And Deployment](repository-requirements.md#environments-and-deployment).
3. One backend instance carries one environment scope per environment, `staging` and `production`, because the backend scopes its events, its sessions, and its dashboard to that scope.
   For OpenPanel the scope is a project; a documented alternative uses its equivalent.
   Each scope has its own credential, such as an OpenPanel client ID, and each environment's build is configured with its own, so each environment's dashboard serves charts from its own scope.
4. The page states the retention, and it covers the longest metric window the page defines.
5. The page records how collection is enabled and disabled, including the environment variable that turns it off.
6. The deployment's steps and configuration live in `docs/deployment.md`, per [Environments And Deployment](repository-requirements.md#environments-and-deployment); the page links that section and repeats none of it.
   `.env.example` carries the configuration's shape, and the secrets are installed on the VM and are not tracked in the repository, per [Configuration And Sensitive Information](repository-requirements.md#configuration-and-sensitive-information).
7. A test event is sent only to the staging scope and is tagged `source=smoke` or `source=usability-test`; the staging scope carries both, and the production scope carries only `web` traffic.
8. The backend's address, its dashboards' addresses, and any credentials are private-only, per [Sensitive Information Reference](visibility-requirements.md#sensitive-information-reference).
   The page names the backend and its dashboards and links neither address.

## The Dashboard

**Since: W6**

Each environment's dashboard is where the pipeline's data becomes a chart a reader can read, and the metric's section is where its query is written.

**Required**

1. Each environment has a dashboard: one in the staging scope and one in the production scope.
2. Each dashboard carries at least one chart for a metric in the tree: the focus metric once it has a value, otherwise its L1 input metric.
   A counter-metric chart is optional.
   A metric without a chart still records its `**Query:**`; the one-chart minimum is the dashboard's, not every metric's.
3. Each chart names its metric and runs the `**Query:**` recorded in that metric's section, so the page owns the query and the chart owns the display.
4. A metric chart in the staging scope excludes `source=smoke` and `source=usability-test` from the metric, and the staging dashboard carries an event list or raw-events panel that shows the test traffic, so the exclusion is visible; the production scope's chart carries the same metric and the same query, and it receives no test traffic.
   A separate usability funnel chart reads `source=usability-test` and is not a metric, per [The Events](#the-events).
5. The dashboards' addresses and any credentials are private-only, per [Sensitive Information Reference](visibility-requirements.md#sensitive-information-reference), and the page names the dashboards and their charts rather than linking an address.
6. The evidence is two sanitized screenshots, one per environment, in `reports/week-NN/images/`, linked from the weekly report with the metric each chart shows, per [Screenshot Evidence](visibility-requirements.md#screenshot-evidence).
7. A dashboard's definition may be tracked when it carries no address, no credential, and no other private-only value; the page still owns the query, so a tracked definition is regenerated in the same pull request when the query changes.

## Collected Data

**Since: W6**

The plan says what the product records about its users, because an event is collected once and read for the rest of the course.

**Required**

1. The page states what the events collect, field by field, and where the data lives.
2. The page states what is never collected, and it repeats no rule from [Telemetry And Personal Data](visibility-requirements.md#telemetry-and-personal-data), which owns the definition of personal data, the never-committed rule, and the opaque identifier.
3. The page states how collection is disabled.

## Full Example

The meeting-booking example's `docs/analytics.md` after Week 6.
The focus metric expresses `VP-01`, which is the value proposition the vision's goal traces to.

```markdown
# Product analytics

The numbers this product is judged by, the events that produce them, and the pipeline that stores them.

## The Value And The Metrics

The focus metric is completed paid bookings per active coach per week: the one number the page reads the product's value from.
It expresses [`VP-01`](research/value-proposition.md#vp-01): a client books and pays for a session without leaving the booking page.
Every metric excludes the test traffic, because a usability participant is not a paying customer.

### The Metric Tree

The label is the metric's level: `Focus` is the focus metric, `L1` an input metric one level under it, and `L2` an input under an L1 input.
`(counter-metric)` marks the counter-metric, which guards the focus metric rather than feeding it.
Each metric's name links to its section.

- **Focus:** [Completed paid bookings per active coach per week](#completed-paid-bookings-per-active-coach-per-week)
  - **L1 (counter-metric):** [Cancellation and no-show rate within seven days](#cancellation-and-no-show-rate-within-seven-days)
  - **L1:** [Booking conversion rate](#booking-conversion-rate)
    - **L2:** [Checkout completion rate](#checkout-completion-rate)
    - **L2:** [Slot availability rate](#slot-availability-rate)

### Why This Focus Metric

- **It expresses value:** a completed paid booking is what the coach and the client get from the product.
- **It represents the vision and strategy:** the vision's goal is a coach selling sessions online without negotiating in chat, and a paid booking is that goal counted.
- **It is a leading indicator:** bookings move before the coach's revenue does, so the team sees the change first.
- **It is actionable:** the booking page, the payment step, and the reminder each move it, and the team owns all three.
- **It is understandable:** one sentence says it, and a coach could repeat it.
- **It is measurable:** every booking is an event, so the metric is a query over the pipeline rather than a survey.
- **It is not a vanity metric:** it counts a paid booking a client chose to make, not a page view that costs the client nothing.

Rejected as a vanity metric: GitHub stars, because a star counts attention to a repository that no coach books a session from, and it never moves when the booking page changes.

The focus metric depends on its input metrics and on real users: until a coach's clients book through the product, the page reports no value.
The focus metric excludes the test traffic because a usability participant is not a paying customer, and the `UT-01` funnel is read with the `source = "usability-test"` filter.

### Completed paid bookings per active coach per week

- **Definition:** A rate: the number of confirmed paid bookings in the week divided by the number of coaches who published at least one slot in that week; the unit is bookings per coach per week.
- **Source:** [`booking_confirmed`](#the-events) and [`availability_published`](#the-events).
- **Query:** the count of `booking_confirmed` events in the week, excluding `source = "smoke"` and `source = "usability-test"`, divided by the count of distinct `coach_id` values in `availability_published` events in the same week.

### Cancellation and no-show rate within seven days

- **Definition:** A rate: the confirmed bookings in the week that were cancelled or reported as a no-show within seven days of their session, divided by the confirmed bookings in that week; the unit is cancelled or missed bookings per booking.
- **Source:** [`booking_confirmed`](#the-events), [`booking_cancelled`](#the-events), and [`booking_no_show_reported`](#the-events).
- **Query:** the count of `booking_cancelled` and `booking_no_show_reported` events matched to their `booking_confirmed` event inside seven days, excluding `source = "smoke"` and `source = "usability-test"`, divided by the count of `booking_confirmed` events in the week.

### Booking conversion rate

- **Definition:** A rate: the confirmed paid bookings in the week divided by the booking-page sessions in that week; the unit is bookings per session.
- **Source:** [`booking_confirmed`](#the-events) and [`booking_page_viewed`](#the-events).
- **Query:** the count of `booking_confirmed` events in the week, excluding `source = "smoke"` and `source = "usability-test"`, divided by the count of distinct `session_id` values in `booking_page_viewed` events in the same week.

### Checkout completion rate

- **Definition:** A rate: the paid bookings in the week divided by the checkouts started in that week; the unit is bookings per checkout.
- **Source:** [`payment_succeeded`](#the-events) and [`checkout_started`](#the-events).
- **Query:** the count of `payment_succeeded` events in the week, excluding `source = "smoke"` and `source = "usability-test"`, divided by the count of `checkout_started` events in the same week.

The rate is computed by this query rather than by hand, so the team reads it from the pipeline and not from a table it keeps.

### Slot availability rate

- **Definition:** A rate: the requests for free slots that found one divided by the requests for free slots; the unit is answered requests per request.
- **Source:** [`slot_availability_checked`](#the-events).
- **Query:** the count of `slot_availability_checked` events whose `found` is `true`, excluding `source = "smoke"` and `source = "usability-test"`, divided by all `slot_availability_checked` events in the week.

## The Events

Every event is named `object_action` in snake case.
Every event carries `source`, which is `web`, `usability-test`, or `smoke`.

| Event                       | Fires when                                                      | Fields                                                                                                                         | Collected at                       |
| --------------------------- | --------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------- |
| `availability_published`    | A coach publishes or changes the slots offered for a week.      | `coach_id` (uuid, required), `week_start` (date, required), `source` (required)                                                | `backend`, staging and production  |
| `booking_page_viewed`       | A client opens the coach's booking link.                        | `coach_id` (uuid, required), `session_id` (uuid, required), `source` (required)                                                | `frontend`, staging and production |
| `slot_availability_checked` | The booking page asks for free slots and the `backend` answers. | `coach_id` (uuid, required), `session_id` (uuid, required), `found` (boolean, required), `source` (required)                   | `backend`, staging and production  |
| `slot_selected`             | A client selects a free slot.                                   | `coach_id` (uuid, required), `session_id` (uuid, required), `slot_start` (ISO 8601, required), `source` (required)             | `frontend`, staging and production |
| `checkout_started`          | A client opens the checkout for the selected slot.              | `booking_id` (uuid, required), `amount` (integer, minor units, required), `currency` (ISO 4217, required), `source` (required) | `frontend`, staging and production |
| `payment_succeeded`         | The payment provider confirms the payment.                      | `booking_id` (uuid, required), `amount` (integer, minor units, required), `currency` (ISO 4217, required), `source` (required) | `backend`, staging and production  |
| `booking_confirmed`         | The booking is stored and the client sees the confirmation.     | `booking_id` (uuid, required), `coach_id` (uuid, required), `source` (required)                                                | `backend`, staging and production  |
| `booking_cancelled`         | A client or the coach cancels a confirmed booking.              | `booking_id` (uuid, required), `cancelled_by` (one of `client`, `coach`, required), `source` (required)                        | `backend`, staging and production  |
| `booking_no_show_reported`  | The coach reports that the client did not attend.               | `booking_id` (uuid, required), `source` (required)                                                                             | `frontend`, staging and production |

## The Pipeline

The `frontend` and the `backend` send the events to an OpenPanel instance on the university VM, through its client library in each container.
One OpenPanel instance carries two projects, `staging` and `production`: each has its own client ID, and each environment's build is configured with its own, so each environment's dashboard serves charts from its own project.
Retention is 90 days, which covers the seven-day window of the counter-metric and every other window this page defines.
Collection is switched by `ANALYTICS_ENABLED`, which is `false` on a developer's machine and `true` in staging and production.
The steps and configuration are in [the telemetry pipelines](deployment.md#the-telemetry-pipelines), and the secrets are installed on the VM and are not tracked in the repository; `.env.example` carries the shape.
A test event goes only to the staging project, tagged `source=smoke` or `source=usability-test`; the staging project carries both, and the production project contains only `web` traffic.
The backend and its dashboards are reachable from the university network only, and their addresses and credentials are in the Moodle submission.

## The Dashboard

The staging dashboard is `Booking funnel (staging)` in the staging project, and the production dashboard is `Booking funnel (production)` in the production project.
Each chart is named after its metric and runs the query recorded under that metric's section.

| Chart                | Environment | What it runs                                                                                          |
| -------------------- | ----------- | ----------------------------------------------------------------------------------------------------- |
| `Booking conversion` | staging     | the booking conversion rate's query, with `source = "smoke"` and `source = "usability-test"` excluded |
| `Booking conversion` | production  | the same query, over the production project's traffic                                                 |
| `Cancellations`      | staging     | the cancellation and no-show rate's query, which is optional                                          |
| `Recent events`      | staging     | the event list, which shows the test traffic tagged `source=smoke` and `source=usability-test`        |
| `Usability funnel`   | staging     | the booking funnel read with the `source = "usability-test"` filter, shown separately from a metric   |

The staging dashboard was checked with a test event tagged `source=smoke`: the dashboard's event list shows it and the staging chart excluded it from the metric; the production dashboard carries the same required chart and query and received no test traffic.
The `Usability funnel` chart is read with the `source = "usability-test"` filter and is not a metric: the `UT-01` sessions in Week 8 are the participants' visits, not paying customers, so the test traffic is never a metric's value.
Both dashboard addresses are in the Moodle submission, and the week report links one sanitized screenshot from each environment.

## Collected Data

The events collect the fields in [the events](#the-events): opaque identifiers for the coach, the booking, and the session; the slot's start; the amount and its currency; who cancelled; and `source`.
They never collect a personal name, an email address, a phone number, a postal address, free text, or payment card data.
An event identifies a client by the opaque `session_id`, which is generated at random and cannot be reversed to a person.
Collection is switched off with `ANALYTICS_ENABLED=false`.
The data lives in the OpenPanel instance's database on the university VM, outside the repository, and is reachable from the university network only.
```
