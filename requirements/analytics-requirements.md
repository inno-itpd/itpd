# Product Analytics Requirements

These requirements define the product analytics plan: where it lives, the focus metric and the tree around it, the events the product sends, the analytics pipeline that stores them, the dashboards that show them, and what the events may and may not collect.
The plan turns the product's use into numbers the team can act on, and it says which number the product's value is read from.
Where the page lives in the repository is in [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository), how an event and a metric are cited is in [Identifier Rules](general-requirements.md#identifier-rules), and what telemetry may carry is in [Telemetry And Personal Data](visibility-requirements.md#telemetry-and-personal-data).
The deployment that runs the pipeline is [Environments And Deployment](repository-requirements.md#environments-and-deployment)'s.
[Guide: Product Analytics And Observability](../guides/analytics-and-observability.md) is the method.

<h2>Table of contents</h2>

- [Where The Analytics Plan Lives](#where-the-analytics-plan-lives)
- [The Value And The Metrics](#the-value-and-the-metrics)
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

**Required**

1. The page names one focus metric, and it states the value proposition the metric expresses as a link to the `VP-nn` in `docs/research/value-proposition.md`, per [Traceability Into Later Weeks](general-requirements.md#traceability-into-later-weeks).
2. The page states the seven criteria of the [North Star Framework](https://openpracticelibrary.com/practice/north-star-framework/), one bullet each, and how the focus metric meets each one: it expresses value, it represents the vision and strategy, it is a leading indicator, it is actionable, it is understandable, it is measurable, and it is not a vanity metric.
3. The page names at least one metric it rejected as a vanity metric, with the reason, as a bullet in this section and not as a metric section.
4. The page names one counter-metric, and the tree marks it as guarding the focus metric.
5. The page names one L1 input metric and one or two L2 input metrics under it.
6. The metric tree is one nested list in this section: the focus metric at the top, the counter-metric beside it and marked as guarding it, the L1 input nested under the focus metric, and each L2 input nested under its L1.
   Indentation is what says which metric feeds which, and each metric has exactly one parent.
7. Each metric is a `###` section under this section, headed with the metric's name in sentence case, so only the first word, a proper noun, and an acronym keep a capital, as in `### Booking conversion rate`.
   Its anchor is the citation form `docs/analytics.md#<metric-anchor>`, as a feature is cited, per [Identifier Rules](general-requirements.md#identifier-rules).
   Every node in the tree has one section and no section stands outside the tree.
8. Each metric's section carries these fields, in this order:

   | Field             | What it says                                                                                                                                                 |
   | ----------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ |
   | `**Definition:**` | What the metric counts: a rate's numerator and denominator, or a count's unit and window                                                                     |
   | `**Source:**`     | The events that feed the metric, each named and linked to [The Events](#the-events)                                                                          |
   | `**Query:**`      | The computation a chart runs when it shows the metric, from the events [The Events](#the-events) records, with the window and the `source` filter it applies |

9. A metric that cannot be computed from the events in [The Events](#the-events) is not a metric: the event is added or the metric is dropped.
   No number is invented, and no chart is drawn from a table the team keeps outside the pipeline.
10. At least one metric is computed by its query rather than by hand, and the page names it.
11. The focus metric may depend on several input metrics and may have no value until real users produce traffic.
    The page says so rather than presenting test traffic as the metric's value.
12. A metric that is renamed or dropped updates every citation to it in the same pull request, and a dropped metric leaves the tree and gets no section.

## The Events

**Since: W6**

The **event** is one action the product records: what happened, what it carried, and where it was emitted.
The event table is the one registry and the schema the instrumentation sends, so the table and the code cannot disagree.

**Required**

1. The page carries a `## The Events` section with one table whose columns are `Event`, `Fires when`, `Fields`, and `Collected at`, in this order.
2. The table is the one registry of events: an event is cited by its name plus `docs/analytics.md#the-events`, and there is no section per event.
   An event's name matches a row exactly, and a rename updates every citation in the same pull request.
3. Every event's name follows one convention, stated under the table as `object_action` in snake case, such as `booking_confirmed`.
4. `Fires when` states the user's or the system's action that produces the event, in one sentence.
5. `Fields` is the event's payload: each field's name, its type, and whether it is required, such as `booking_id` (uuid, required) or `amount` (integer, minor units).
   An event carries no personal name, email address, phone number, postal address, free text, or payment card data, per [Telemetry And Personal Data](visibility-requirements.md#telemetry-and-personal-data).
   An event identifies a user by an opaque identifier when it needs to, and the identifier is not derived from personal data and cannot be reversed to it.
6. `Collected at` names the product container that emits the event and the environment it emits from, such as `backend`, staging and production.
7. Every event carries a `source` field, and its value records what the traffic is: `web`, `usability-test`, or `smoke`.
   `smoke` marks traffic the team generated to check the pipeline, so a metric excludes it.
   Only `smoke` is a pipeline check; `usability-test` records the team's usability sessions and is not excluded from a metric unless the page says why.
8. The table covers the core task end to end, so a later week's work has the events it needs.
9. Every event a metric's `**Source:**` names has a row.

## The Pipeline

**Since: W6**

The **analytics pipeline** carries each event from the container that emits it to the backend that stores it and serves the dashboards.
The backend's steps and configuration are the deployment runbook's, and this section says only what the plan records about them.

**Required**

1. The page states the instrumentation: which container sends the events, and how it sends them.
2. The analytics backend is OpenPanel by default, and another self-hosted backend is allowed when the page documents it.
   It runs on the university VM or a campus machine, per [Environments And Deployment](repository-requirements.md#environments-and-deployment).
3. One backend instance carries one environment scope per environment, `staging` and `production`, because the backend scopes its events, its sessions, and its dashboard to that scope.
   For OpenPanel the scope is a project; a documented alternative uses its equivalent.
   Each scope has its own credential, such as an OpenPanel client ID, and each environment's build is configured with its own, so each environment's dashboard serves charts from its own scope.
4. The page states the retention, and it covers the longest metric window the page defines.
5. The page records how collection is enabled and disabled, including the environment variable that turns it off.
6. The deployment's steps and configuration live in `docs/deployment.md`, per [Environments And Deployment](repository-requirements.md#environments-and-deployment); the page links that section and repeats none of it.
   `.env.example` carries the configuration's shape, and the secrets are installed outside the repository, per [Configuration And Sensitive Information](repository-requirements.md#configuration-and-sensitive-information).
7. A test event is sent only to the staging scope and is tagged `source=smoke`; the production scope contains only real traffic.
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
4. A chart in the staging scope excludes `source=smoke` from the metric, and the staging dashboard carries an event list or raw-events panel that shows the smoke event, so the exclusion is visible; the production scope's chart carries the same metric and the same query, and it receives no test traffic.
5. The dashboards' addresses and any credentials are private-only, per [Sensitive Information Reference](visibility-requirements.md#sensitive-information-reference), and the page names the dashboards and their charts rather than linking an address.
6. The evidence is two sanitized screenshots, one per environment, in `reports/week-NN/images/`, linked from the weekly report with the metric each chart shows, per [Screenshot Evidence](visibility-requirements.md#screenshot-evidence).

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
The focus metric expresses [`VP-01`](research/value-proposition.md#vp-01): a client books and pays for a session without leaving the booking page.

## The Value And The Metrics

The focus metric is the number the product's value is read from, and the team would report it if the system were operated.
It expresses [`VP-01`](research/value-proposition.md#vp-01), and its input metrics are the steps the team can change.

- **It expresses value:** a completed paid booking is what the coach and the client get from the product.
- **It represents the vision and strategy:** the vision's goal is a coach selling sessions online without negotiating in chat, and a paid booking is that goal counted.
- **It is a leading indicator:** bookings move before the coach's revenue does, so the team sees the change first.
- **It is actionable:** the booking page, the payment step, and the reminder each move it, and the team owns all three.
- **It is understandable:** one sentence says it, and a coach could repeat it.
- **It is measurable:** every booking is an event, so the metric is a query over the pipeline rather than a survey.
- **It is not a vanity metric:** it counts a paid booking a client chose to make, not a page view that costs the client nothing.

Rejected as a vanity metric: GitHub stars, because a star counts attention to a repository that no coach books a session from, and it never moves when the booking page changes.

- Completed paid bookings per active coach per week
  - Booking conversion rate
    - Checkout completion rate
    - Slot availability rate
- Cancellation and no-show rate within seven days (guards the focus metric)

The focus metric depends on real users: until a coach's clients book through the product, the page reports no value.
The two dashboards chart the booking conversion rate as its input, and the checkout completion rate is computed by its query from the events rather than by hand.

### Completed paid bookings per active coach per week

- **Definition:** A rate: the number of confirmed paid bookings in the week divided by the number of coaches who published at least one slot in that week; the unit is bookings per coach per week.
- **Source:** [`booking_confirmed`](#the-events) and [`availability_published`](#the-events).
- **Query:** the count of `booking_confirmed` events in the week, excluding `source = "smoke"`, divided by the count of distinct `coach_id` values in `availability_published` events in the same week.

### Cancellation and no-show rate within seven days

- **Definition:** A rate: the confirmed bookings in the week that were cancelled or reported as a no-show within seven days of their session, divided by the confirmed bookings in that week; the unit is cancelled or missed bookings per booking.
- **Source:** [`booking_confirmed`](#the-events), [`booking_cancelled`](#the-events), and [`booking_no_show_reported`](#the-events).
- **Query:** the count of `booking_cancelled` and `booking_no_show_reported` events matched to their `booking_confirmed` event inside seven days, excluding `source = "smoke"`, divided by the count of `booking_confirmed` events in the week.

### Booking conversion rate

- **Definition:** A rate: the confirmed paid bookings in the week divided by the booking-page sessions in that week; the unit is bookings per session.
- **Source:** [`booking_confirmed`](#the-events) and [`booking_page_viewed`](#the-events).
- **Query:** the count of `booking_confirmed` events in the week, excluding `source = "smoke"`, divided by the count of distinct `session_id` values in `booking_page_viewed` events in the same week.

### Checkout completion rate

- **Definition:** A rate: the paid bookings in the week divided by the checkouts started in that week; the unit is bookings per checkout.
- **Source:** [`payment_succeeded`](#the-events) and [`checkout_started`](#the-events).
- **Query:** the count of `payment_succeeded` events in the week, excluding `source = "smoke"`, divided by the count of `checkout_started` events in the same week.

### Slot availability rate

- **Definition:** A rate: the requests for free slots that found one divided by the requests for free slots; the unit is answered requests per request.
- **Source:** [`slot_availability_checked`](#the-events).
- **Query:** the count of `slot_availability_checked` events whose `found` is `true`, excluding `source = "smoke"`, divided by all `slot_availability_checked` events in the week.

## The Events

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

The events are named `object_action` in snake case, and every event carries `source`, which is `web`, `usability-test`, or `smoke`.

## The Pipeline

The `frontend` and the `backend` send the events to an OpenPanel instance on the university VM, through its client library in each container.
One OpenPanel instance carries two projects, `staging` and `production`: each has its own client ID, and each environment's build is configured with its own, so each environment's dashboard serves charts from its own project.
Retention is 90 days, which covers the seven-day window of the counter-metric and every other window this page defines.
Collection is switched by `ANALYTICS_ENABLED`, which is `false` on a developer's machine and `true` in staging and production.
The steps and configuration are in [the telemetry pipelines](deployment.md#the-telemetry-pipelines), and the secrets are installed on the VM outside the repository; `.env.example` carries the shape.
A test event goes only to the staging project, tagged `source=smoke`; the production project contains only real traffic.
The backend and its dashboards are reachable from the university network only, and their addresses and credentials are in the Moodle submission.

## The Dashboard

The staging dashboard is `Booking funnel (staging)` in the staging project, and the production dashboard is `Booking funnel (production)` in the production project.
Each chart is named after its metric and runs the query recorded under that metric's section.

| Chart                | Environment | What it runs                                                          |
| -------------------- | ----------- | --------------------------------------------------------------------- |
| `Booking conversion` | staging     | the booking conversion rate's query, with `source = "smoke"` excluded |
| `Booking conversion` | production  | the same query, over the production project's traffic                 |
| `Cancellations`      | staging     | the cancellation and no-show rate's query, which is optional          |
| `Recent events`      | staging     | the event list, which shows the test event tagged `source=smoke`      |

The staging dashboard was checked with a test event tagged `source=smoke`: the dashboard's event list shows it and the staging chart excluded it from the metric; the production dashboard carries the same required chart and query and received no test traffic.
Both dashboard addresses are in the Moodle submission, and the week report links one sanitized screenshot from each environment.

## Collected Data

The events collect the fields in [the events](#the-events): opaque identifiers for the coach, the booking, and the session; the slot's start; the amount and its currency; who cancelled; and `source`.
They never collect a personal name, an email address, a phone number, a postal address, free text, or payment card data.
An event identifies a client by the opaque `session_id`, which is generated at random and cannot be reversed to a person.
Collection is switched off with `ANALYTICS_ENABLED=false`.
The data lives in the OpenPanel instance's database on the university VM, outside the repository, and is reachable from the university network only.
```
