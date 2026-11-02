# Plan: Assignment 6 — Product Analytics, Service Levels, And The Week 6 Release

This plan designs Assignment 6 as [`a5-plan.md`](a5-plan.md) designs Assignment 5: the analytics plan and its metric tree, the events and the instrumentation, the backend and the two visualizations on the university VM, the SLI and SLO rewriting of the quality requirements' response measures, the second implemented quality requirement test, the architectural decision record and the container view, the hypothesis-driven experiment, the threshold-of-success review, `REL-06`, the Sprint Review, the retrospective, and the AI usage report.
It states the week's scope and identifies the contradictions the wider materials expose, with the resolution each one takes, in [Scope And Contradictions](#scope-and-contradictions).
The lecture is [`lectures/lecture-6.typ`](../../lectures/lecture-6.typ), whose five sections are the hypothesis-driven approach, the metrics, product analytics, the service levels, and observability.
The plan designs the week against the deck as it is committed and edits no slide.

Week 6 has no pitch deck.
The maintainer's decision moves the deck out of Week 6, and the in-progress syllabus edit moves the in-class presentations to the Week 8 class; the deck's own requirements and submission week are settled with the later assignment that carries it.
This plan reverses [`A5-DEC-029`](../decisions/a5.md#a5-dec-029-week-5-has-no-pitch-deck) for that reason, and [What Moved, And Where It Lands](#what-moved-and-where-it-lands) records the clauses that survive.

**Superseded in part:** [`A5-DEC-029`](../decisions/a5.md#a5-dec-029-week-5-has-no-pitch-deck) made the deck Week 6's deliverable, presented in the Week 7 class and submitted on 7 November.
This plan reverses it in full: Week 6 carries no deck, the in-class presentations are in the Week 8 class, and the deck's submission and shape are the later plan's.
The rest of Assignment 5's design stands.

Assignment 5 delivered the quality requirement tests and the testing plan, the automated tests and the CI checks, the four environments and the manual deployment to the university VM, the two plan milestones and the two stories, the feature documentation, `REL-05`, and the Sprint Review and retrospective; [`a5-plan.md`](a5-plan.md) designs that and [`assignment-5.md`](../../assignments/assignment-5.md) is the design.
The rules this plan adds are `**Since: W6**`.
The requirements files they land in are existing files, plus one new file for the analytics plan; the service levels land in the quality requirements, the identifiers in the general requirements, the endpoint in the repository requirements, and the private addresses in the visibility requirements.
It removes no numbered rule; it rewrites the meaning of a quality requirement's `Response Measure` for the requirements that carry a test, and [Scope And Contradictions](#scope-and-contradictions) records why.

## Goal And Success Criteria

Write the whole design of Assignment 6 and everything it depends on, so Week 6 can be written and handed in from one account rather than from a syllabus line, a deck, and a set of rules that disagree.

Done means:

- Every rule has exactly one owner, and no rule that Week 6 needs is missing: the analytics plan, the metric tree, the events and the pipeline in `requirements/analytics-requirements.md`; the SLI and SLO in `requirements/quality-requirements-requirements.md`; the identifiers and their traceability in `requirements/general-requirements.md`; the threshold review in `requirements/planning-requirements.md`; the endpoint and its deployment in `requirements/repository-requirements.md`; the private address and the telemetry privacy in `requirements/visibility-requirements.md`; the review's analytics content in `requirements/customer-meetings-requirements.md`; and the report's metrics content in `requirements/weekly-report-requirements.md`.
- `assignments/assignment-6.md` carries the parts in [The Parts Assignment 6 Carries](#the-parts-assignment-6-carries), written as a delta against `requirements/`, in the shape `assignment-5.md` uses, in the order the work succeeds in, with no deck.
- [Scope And Contradictions](#scope-and-contradictions) resolves every contradiction it names, and each resolution is applied by the file changes this plan lists in [Changes To The Requirements](#changes-to-the-requirements) and under [Edited Files Outside `requirements/`](#edited-files-outside-requirements).
- `requirements/analytics-requirements.md` exists and owns `docs/analytics.md`: the value moment traced to the `VP-nn`, the north star metric, one counter-metric, three or four L1 and L2 input metrics, the metric tree, the event table, the pipeline and its backend, the two visualizations and their endpoint, the enable/disable flag, the privacy rules, the same-pull-request rule, and the full example.
- `requirements/quality-requirements-requirements.md` gains the `**Since: W6**` block: a quality requirement that carries a `QRT-nn` states its `Response Measure` as an `SLO-nn` over an `SLI-nn`, the two sections sit inside the requirement's file after `## Scenario` and before its tests, the test's `**Pass when:**` restates the SLO, and the testability requirement's measure is converted with the rest.
- `requirements/general-requirements.md` adds `SLI-nn` and `SLO-nn` as the Week 6 families, two digits, scoped to the `QR-nn` and cited as the pairs `QR-01 SLI-01` and `QR-01 SLO-01`, with the bare-identifier heading, the rule-5 exception, the rule-10 exception because they are parts of the requirement's measure, the QR's lifecycle governing them, and the traceability rows.
- `requirements/planning-requirements.md` owns the `**Since: W6**` threshold review: an open goal's `**Measure:**` links the analytical metric or the evidence that settles it, a goal whose measure names Week 6 or an earlier week is set `Achieved` or `Missed` with `**Outcome:**`, and a changed target is a bar move that cites the customer's `DEC-nnn`; the full example becomes a Week 6 plan and threshold.
- `requirements/repository-requirements.md` owns the `**Since: W6**` analytics endpoint: the backend runs on the university VM, its configuration and secrets live outside the repository, the endpoint is reachable from the university network, its address is private-only, and `docs/deployment.md` links the analytics plan's pipeline rather than repeating it.
- `requirements/visibility-requirements.md` sends the endpoint's address and any credentials to Moodle only, and states that telemetry data is never committed and that no event carries personal data.
- `requirements/customer-meetings-requirements.md` requires the Sprint Review to show the endpoint's two visualizations and the `QRT`'s result with the deployed product, and to agree any threshold bar move.
- `requirements/weekly-report-requirements.md` requires the report to state the north star's current value and the `SLI`/`SLO` result, and to link the analytics plan and the test's evidence without copying a chart.
- `assignments/assignment-6.md` asks for the analytics plan, the metric tree, the event table and instrumentation, the backend and the two visualizations, the `SLI` and `SLO` conversion, the new analysability requirement and its `QRT`, the ADR, the container view update, the experiment, the threshold review, `REL-06`, the Sprint Review, the retrospective, and the AI usage report.
- The new quality requirement is a `Maintainability` / `Analysability` requirement about the analytics endpoint, it carries `**Business importance:** High`, it has an `SLI-nn` and an `SLO-nn` and a `QRT-nn` at the `deployed` level, and its architectural decision record addresses it.
- The architecture document's container view shows the analytics backend as an external system the product exchanges telemetry with, the container set is unchanged, and no new view is drawn; the diagram conventions stay Assignment 4's.
- Exactly one more quality requirement test is implemented this week, on the new requirement; the testability requirement's `CI` test from Week 5 stays the other implemented test, and the week does not implement a third.
- `docs/analytics.md` is in the `docs/` destination map, the routing names the new requirements file, the guide, and the assignment, and the terminology names the week's words.
- `course/decisions/a6.md` records every decision as an `A6-DEC-nnn` entry, including `A6-DEC-001` for the week's scope and `A6-DEC-004`, which reverses `A5-DEC-029` in full and restates its surviving clauses; `course/decisions/a5.md` marks A5-DEC-029 reversed and points at the new entry.
- `course/syllabus.md` gives Week 6 the analytics and service levels, removes the deck from its deliverables and its Submission 6 row, removes the deck's `To revise` note and its `TODO` comment, keeps the 7 November deadline, and moves the in-class presentations to the Week 8 class as the maintainer's edit does.
- `course/plans/a5-plan.md` carries a forward note that this plan reverses A5-DEC-029 and designs Week 6, and the rules it hands over are not repeated there.
- `README.md`, `SKILL.md`, `course/rules.md`, `AGENTS.md`, `course/tooling.md`, and `TODO.md` are updated in step with the analytics plan, the service levels, the endpoint, the two visualizations, the no-deck week, the guide, and the `SLI` and `SLO` identifiers.
- `pnpm run format:markdown:check`, `pnpm run lint:markdown`, and `pnpm run check:links` pass; `pnpm run check:lectures` is green once its committed PDF matches the committed source, and this plan edits no slide.

## Scope And Contradictions

Week 6's scope is the analytics and the service levels the lecture teaches, and the wider materials expose rules that already exist and a deck that no longer fits.
Each row is a contradiction or scope decision the materials carry now, and the resolution the implementation applies; the `A6-DEC` entry named in the row records it in `course/decisions/a6.md`.

| #   | Contradiction                                                                                                                                                                                                                | Resolution                                                                                                                                                                                                                                                                                                                                                    |
| --- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1   | The syllabus's Week 6 scope is telemetry, event tracking, instrumentation, analytics architectures, and data-driven decisions, while the lecture teaches hypotheses, metrics, product analytics, SLI/SLO, and observability. | The heading becomes "Product Analytics & Service Levels"; the Class 6 line names the deck's five sections; the objectives and deliverables name the metric tree, the events, the two visualizations, the SLI/SLO, the new requirement and its test, the experiment, and the threshold review. `A6-DEC-005`.                                                   |
| 2   | Week 6 has no `## Objectives` and only three terse deliverables, with no student-facing path.                                                                                                                                | Give Week 6 the Week 5 shape: the objectives, the numbered deliverables with their paths, a Submission 6 row, and the assignment. `A6-DEC-005`.                                                                                                                                                                                                               |
| 3   | `A5-DEC-029` makes the deck Week 6's, presented in the Week 7 class and submitted on 7 November; the maintainer moves the deck out of Week 6 and the in-progress syllabus edit moves the presentations to Week 8.            | A6-DEC-004 reverses A5-DEC-029 in full because a decision is not partially reversible, and restates the clauses that survive: Week 5 has no deck, the presentations are not in Week 6, and the deck's submission and shape are the later plan's; the syllabus drops the deck from Week 6 and its Submission 6 row and records the Week 8 class. `A6-DEC-004`. |
| 4   | `docs/analytics.md` exists only in `TODO.md`; no requirements file owns it and the `docs/` destination map has no Week 6 row.                                                                                                | Add `requirements/analytics-requirements.md`, the Week 6 row in the destination map, and the routing rows. `A6-DEC-002`.                                                                                                                                                                                                                                      |
| 5   | The 2025 Assignment 6 used `docs/architecture/analytics.md`, `observability.md`, `telemetry-data.md`, sprint folders, Grafana Cloud, OpenTelemetry, logs, traces, alerts, and a walkthrough recording.                       | Port the ideas, not the paths or the stack: the current `docs/` map, `docs/analytics.md`, the university VM, OpenObserve, the two visualizations, and the SLI/SLO the deck teaches; logs, traces, and alerts are not required. `A6-DEC-002` and `A6-DEC-003`.                                                                                                 |
| 6   | The product exchanges telemetry with a backend, so the container view must show that external system, while the stack choice is a technology choice and an ADR must address at least one `FR-nnn` or `QR-nn`.                | Add a `Maintainability` / `Analysability` quality requirement about the endpoint, its `SLI` and `SLO`, its `QRT`, an ADR whose `**Addresses:**` names that requirement, and the backend as an external system in the container view; the container set is unchanged and no new view is drawn. `A6-DEC-008` and `A6-DEC-009`.                                  |
| 7   | `A5-DEC-011` says no later week adds or restates a diagram rule, while a pipeline diagram would be a new diagram.                                                                                                            | No pipeline diagram: `docs/analytics.md` states the pipeline as a table, and the container view carries the structure; the diagram conventions stay `A5-DEC-011`'s and are used only for the container-view edit. `A6-DEC-010`.                                                                                                                               |
| 8   | The Week 5 rule makes a test's `**Pass when:**` restate the requirement's `Response Measure`, and the Week 6 plan rewrites that measure as an SLO.                                                                           | The `**Since: W6**` block moves the pass criterion to the SLO; the testability requirement is converted with the new requirement, and the testing plan's columns are unchanged. `A6-DEC-007`.                                                                                                                                                                 |
| 9   | Week 5's plan leaves `QRT` rows planned for `SPRINT-06`, and the release block names what was checked in the sprint.                                                                                                         | Assignment 6 checks the rows planned for `SPRINT-06`, runs the new requirement's `QRT`, and writes `REL-06`'s `Checked QRs` from the tests checked in the sprint. `A6-DEC-011`.                                                                                                                                                                               |
| 10  | The endpoint's address is on the university VM and the repository is public.                                                                                                                                                 | The address and any credentials are Moodle-only; the analytics plan, the QRT's `**Runs at:**`, and the report use a placeholder or an environment variable; the report points at the Moodle submission for the address; a screenshot is sanitized. `A6-DEC-012`.                                                                                              |
| 11  | The threshold of success was written in Week 3 with no metrics, and moving a goal's target is a bar move that needs the customer's `DEC-nnn`.                                                                                | The Week 6 review links each open goal's measure to the analytical metric or the evidence that settles it, settles a goal whose measure names Week 6 with `**Outcome:**`, and agrees a bar move at the Sprint Review with a `DEC-nnn`. `A6-DEC-013`.                                                                                                          |
| 12  | Telemetry payloads can carry a name, an email, or a customer's data, and the repository is public.                                                                                                                           | No event carries personal data; an event uses an opaque identifier and no free text, the analytics plan lists what is collected and what is never collected, the data lives outside the repository, and a dashboard screenshot is sanitized. `A6-DEC-014`.                                                                                                    |
| 13  | The analytical metric has no identifier family, and the week introduces `SLI-nn` and `SLO-nn` instead of a metric family.                                                                                                    | The analytical metrics are `##` sections in `docs/analytics.md`, cited by their heading anchors, as a feature is cited; the `SLI` and `SLO` are scoped to their requirement and have no metric family of their own. `A6-DEC-006`.                                                                                                                             |
| 14  | Rule 10 gives every identifier a `**Status:**`, and an SLI and an SLO are parts of a requirement's measure rather than records of their own.                                                                                 | The `**Since: W6**` block makes `SLI-nn` and `SLO-nn` exceptions to rule 10: the requirement's `**Status:**` governs, a dropped requirement keeps them with its scenario, and a changed target is the requirement's `**Changed:**`. `A6-DEC-006`.                                                                                                             |
| 15  | The lecture's SLO examples are latency SLOs, the new requirement needs an observable level, and the two visualizations must be exposed at one endpoint.                                                                      | The new requirement is `Performance Efficiency` / `Time Behaviour`: the endpoint returns both visualizations within two seconds 95% of the time; the `SLI` is the endpoint's response time, the `SLO` is the target, and the `QRT` samples the endpoint from campus. `A6-DEC-008`.                                                                            |
| 16  | `lecture-6.typ` carries the SLI/SLO slides, and the committed `lecture-6.pdf` predates them, so `pnpm run check:lectures` is red.                                                                                            | The plan edits no slide; the PDF is rebuilt from the committed source with `pnpm run build:lectures` as a build-only change, or the rebuild lands before this change, so the gate is green. `A6-DEC-015`.                                                                                                                                                     |
| 17  | The root `README.md` Lectures table stops at lecture 4, although lecture 5 and lecture 6 are committed, and `lectures/AGENTS.md` requires a row per deck.                                                                    | Add the two rows, and link each PDF rather than its source. `A6-DEC-016`.                                                                                                                                                                                                                                                                                     |
| 18  | `AGENTS.md`'s Repository Map has no `course/plans/` row and no Week 6 `docs/` row, while this plan and the analytics plan are maintained files.                                                                              | Add the plans row, the analytics requirements row, the guide row, and the Week 6 destination row; add the `SLI-nn` and `SLO-nn` conventions and the week's terminology. `A6-DEC-016`.                                                                                                                                                                         |
| 19  | The Moodle wrapper is one PDF of links, and Week 6 no longer has a deck to attach.                                                                                                                                           | The Week 6 wrapper carries the endpoint's address and credentials, the permalink, the meeting recording or its reason, the transcript when the customer refused publication, and the privacy line; it carries no deck. `A6-DEC-017`.                                                                                                                          |
| 20  | Week 7's usability work uses the Week 6 telemetry, and Week 6 no longer has a deck to present before it.                                                                                                                     | The event table covers the core task end to end so Week 7 can use it, and the Week 7 plan reaches the analytics plan rather than restating it; the in-class presentations are in the Week 8 class. `A6-DEC-018`.                                                                                                                                              |

The contradictions that follow from the VM, the endpoint, the experiment, and the students' repository are in [Edge Cases And Failure Modes](#edge-cases-and-failure-modes).

## What Moved, And Where It Lands

[Assignment 5's plan](a5-plan.md) designs the groups Week 6 inherits and leaves the analytics to this plan.
This plan takes them over, with the week marker they carry, and adds the parts the wider scope owns.

| Group                             | What Assignment 5's plan said                                                           | Where it lands here                                                                                          |
| --------------------------------- | --------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------ |
| The deck                          | Week 6's deliverable, presented near-final in the Week 7 class, submitted on 7 November | Out of Week 6; the presentations are in the Week 8 class, and the deck's own plan owns its shape and week    |
| The second implemented test       | Week 5 asked for two implemented tests, the testability `CI` test and one other         | Week 6 implements one more, the new requirement's `QRT`; the testability test is the one already implemented |
| The test's pass rule              | The test's `**Pass when:**` restates the requirement's `Response Measure`               | The measure is the SLO, and the pass criterion restates the SLO, `**Since: W6**`                             |
| The quality requirement's measure | A `Response Measure` in the scenario's six parts                                        | An `SLO-nn` over an `SLI-nn`, for the requirements that carry a test                                         |
| Telemetry                         | Nothing: the Week 5 product runs in four environments with no analytics                 | `docs/analytics.md`, the event table, the pipeline, and the OpenObserve backend on the university VM         |
| The two visualizations            | Nothing                                                                                 | The endpoint on the VM, one chart for the `QRT`'s `SLI` and one for the analytical metric                    |
| The architecture                  | The container view is Assignment 4's and its container set is fixed                     | The same view gains the analytics backend as an external system; the container set is unchanged              |
| The threshold                     | The example's `TOS-01` lands in Week 6                                                  | The Week 6 review links the metric and settles the due goal                                                  |
| Week 7's usability                | Week 7 uses the Week 6 telemetry                                                        | The event table covers the core task, and the Week 7 plan links the analytics plan                           |
| The experiment                    | Nothing                                                                                 | One product-change hypothesis, its instrumentation, its evidence, and its sample-size estimate               |

No rule is new in `adr-requirements.md`: the analytics stack's record follows the existing rules, and its `**Addresses:**` names the new quality requirement.
The endpoint's address, the visualizations, the experiment, and the threshold review are the assignment's week-specific minima where they are not rules.

## Design Decisions

Week 6 is the analytics and the service levels, the product is instrumented, the data is visible at one endpoint on the VM, the quality requirements are stated as service levels, and one more requirement is implemented and tested.
The week then reviews the threshold against what it can now measure, and the deck is not part of it.

- **Scope.**
  Assignment 6 is the whole week outside the deck: `docs/analytics.md` and its metric tree, the event table and the instrumentation, the OpenObserve backend and the endpoint on the VM, the two visualizations, the `SLI` and `SLO` conversion of the tested quality requirements, the new analysability requirement and its `QRT`, the ADR and the container-view external system, the experiment, the threshold review, `REL-06`, the Sprint Review, the retrospective, and the AI usage report.
  Logs, traces, and alerts are not required: the deck teaches them, and the week grades the metrics and the service levels.
  Week 6 has no pitch deck.
- **The analytics plan.**
  `docs/analytics.md` is one maintained page: the value moment, the metric tree, the analytical metrics, the event table, the pipeline, the two visualizations and their endpoint, the privacy rules, and the full example.
  Its metrics are `##` sections with the metric in the heading, not an identifier family, cited as `docs/analytics.md#<metric-anchor>`, as a feature is cited, because the week's new families are the `SLI` and the `SLO`.
- **The metric tree.**
  The plan carries one north star metric, one counter-metric, and three or four L1 and L2 input metrics, and the tree is one table that links each metric and says what it feeds.
  The north star satisfies the deck's four criteria: it measures value to the customer, it represents the core product strategy, it is a leading indicator, and it is actionable now.
  At least one candidate the team rejected as a vanity metric is named with the reason, so the tree is a choice rather than a list.
- **The events.**
  The event table is one table with the event, when it fires, its properties, the metric it feeds, and where it is collected, and one naming convention applies to every event.
  No event carries a personal name, an email address, a phone number, a free-text field, or a customer's data; an event identifies a user by an opaque identifier when it needs to.
  The table covers the core task end to end, so Week 7's usability work has the events it needs.
- **The pipeline.**
  The product emits the events through its instrumentation, the backend on the university VM stores them, and the endpoint serves the two visualizations from the same backend.
  The pipeline is a table rather than a diagram, the backend is OpenObserve because it is one service that stores and serves the events and the metrics, and the team runs it on the VM it already has.
  The enable/disable flag is one environment variable, the configuration and the secrets are installed outside the repository, and `.env.example` carries the shape.
- **The two visualizations.**
  The endpoint exposes exactly two charts: one for the `SLI` of the quality requirement the week implements, and one for an analytical metric, the north star or the input metric the experiment moves.
  Each chart names its metric and shows its query, so a stranger can recompute it, and the evidence is a sanitized screenshot linked from the report and the endpoint's address in the Moodle submission.
  The endpoint is on the VM and is reachable from the university network, which is where the customer and the team's campus member reach it.
- **The service levels.**
  A quality requirement that carries a `QRT-nn` states its `Response Measure` as an `SLO-nn` over an `SLI-nn`.
  The `SLI` is what is measured and how, with its unit, its window, and its source; the `SLO` is the target over that `SLI`, with its window; both sit inside the requirement's file after `## Scenario` and before the tests, and the requirement's `**Status:**` governs them.
  The requirement's `### Response Measure` states the SLO's target in one sentence and links the `SLO-nn`; the test's `**Pass when:**` restates the target, and its procedure measures the `SLI`.
- **The new requirement.**
  The week adds a `Performance Efficiency` / `Time Behaviour` quality requirement about the analytics endpoint: the endpoint returns both visualizations within two seconds 95% of the time, measured over the test's window and the endpoint's chart.
  It carries `**Business importance:** High` because the course's evidence depends on it, its `**Technical risk:**` is `Medium`, and its `QRT-nn` is a `deployed` test that samples the endpoint from a campus machine with `$ANALYTICS_URL` and checks the target.
  It is the one more test the week implements; the testability requirement's `CI` test is the one implemented last week, and a third is not required.
- **The architecture.**
  The analytics backend is an external system the product's backend exchanges telemetry with, so the container view shows it, labelled with its technology and the protocol, and the container set is unchanged.
  The team records the stack as one `ADR-nnn` whose `**Addresses:**` names the new quality requirement, whose `**Containers:**` names the product containers that emit the telemetry, and whose `## Context` says why one backend on the VM is the choice; no new view is drawn and the diagram conventions stay Assignment 4's.
- **The experiment.**
  The week runs one product-change hypothesis in the deck's format: "We believe that [change] for [persona] will result in [outcome] when [condition] because [reasoning]", with its falsification condition, an input metric from the tree that it moves, the change implemented, test traffic through the events, the evidence that the events fire and the metric computes, and the estimate of how many real users and how much data a verdict would need.
  It records no verdict, because the course has no real users; the report says what the experiment would need, and a synthetic traffic result is never presented as a verdict.
- **The threshold review.**
  Every open `TOS-nn` goal is reviewed against what the team can now measure: a goal whose measure names Week 6 or an earlier week is set `Achieved` or `Missed` with its `**Outcome:**` and the evidence, and every other open goal's `**Measure:**` links the analytical metric or the evidence that will settle it.
  A changed target is a bar move, so it is agreed at the Sprint Review and its `**Changed:**` cites the customer's `DEC-nnn`; a metric link alone is not a bar move.
- **The release.**
  `REL-06` is cut after the Sprint Review and any same-week rework, on the final production commit, and its `**Checked QRs:**` lists every requirement with at least one test checked in `SPRINT-06`, the new requirement included.
  The changelog stays user-visible: the analytics work is internal and is not a changelog entry, and the release body carries the technical verification in the team's shape.
- **The deck is out.**
  Week 6 carries no deck, no deck artifact, and no deck row in its report, its wrapper, or its checklist.
  The in-class presentations are in the Week 8 class, per the maintainer's syllabus edit, and the deck's requirements and submission week are the later plan's.
  `A5-DEC-029` is reversed in full because a decision cannot be partially reversed, and the clauses that survive are that Week 5 has no deck, the presentations are not in Week 6, and the deck is not a Week 5 or Week 6 deliverable.
- **The endpoint is private-only.**
  The analytics plan, the `QRT`'s `**Runs at:**`, and the report carry a placeholder or an environment variable such as `$ANALYTICS_URL`; the Moodle wrapper carries the real address and any credentials; no real address is committed, and no link is excluded from the link check.
- **The guide.**
  The method is a new `guides/analytics-and-service-levels.md`, because the metric tree, the event instrumentation, and the SLI and SLO are the practices this week adds; the existing guides need no change beyond a pointer from the planning guide's threshold step.

## Changes To The Requirements

These are changes to files Assignment 5 creates or edits, plus one new requirements file.
No other requirements file changes.

### `analytics-requirements.md`

- A new requirements file, `**Since: W6**`, after `features-requirements.md` in the artifact-group series.
- `## Where The Analytics Plan Lives`: `docs/analytics.md`, one maintained page, created in Week 6, kept current for the rest of the course, linked from `docs/deployment.md` and the report.
- `## The Value And The Metrics`: the value moment traced to the product vision's `VP-nn`, the north star metric, one counter-metric, three or four L1 and L2 input metrics, the metric tree as one table, and the north star's four criteria with one rejected vanity metric.
  Each metric is a `##` section in `docs/analytics.md`, headed with the metric's name in sentence case, with its `**Definition:**` (the numerator, the denominator, the unit, and the window) and its `**Source:**` (the events that feed it, linked to the event table); a metric that cannot be computed from the events is not a metric, and the event is added or the metric is dropped.
- `## The Events`: one table with the event, when it fires, its properties, the metric it feeds, and where it is collected; one naming convention; no personal data; the core task end to end; the same-pull-request rule when a change adds or renames an event.
- `## The Pipeline`: the instrumentation, the backend, the environments, the endpoint, the retention, the access, the enable/disable flag, and the secrets outside the repository; the deployment of the backend is `docs/deployment.md`'s, linked rather than repeated.
- `## The Two Visualizations`: one chart for the `SLI` of the requirement the week implements and one for an analytical metric, each naming its metric and its query, served at the endpoint, with the evidence rule for the screenshot and the private address.
- `## Privacy`: what is collected, what is never collected, how collection is disabled, and where the data lives.
- `## Full Example`: the meeting-booking app after Week 6, with the value moment, the north star (completed paid bookings per active coach per week), the counter-metric (cancellations and no-shows within seven days), the inputs, the events, the pipeline, the endpoint, the two charts, and the privacy list.

### `quality-requirements-requirements.md`

- A `**Since: W6**` block in `## The Quality Attribute Scenario`: a requirement that carries a `QRT-nn` states its `Response Measure` as an `SLO-nn` over an `SLI-nn`; the two sections sit in the requirement's file after `## Scenario` and before its tests; the `### Response Measure` states the SLO's target in one sentence and links the `SLO-nn`.
- A `**Since: W6**` block in `## Quality Requirement Tests`: the test's `**Pass when:**` restates the SLO's target, and its `### Procedure` measures the `SLI`, so the test proves the service level rather than a separate number.
- The `SLI-nn` fields: the indicator's first line, `**Definition:**`, `**Unit:**`, `**Window:**`, `**Source:**`, and no `**Status:**`, because the requirement's status governs it, per [Identifier Rules](../../requirements/general-requirements.md#identifier-rules).
- The `SLO-nn` fields: the objective's first line, `**SLI:**` (the pair link), `**Target:**`, `**Window:**`, and no `**Status:**`; a changed target is the requirement's `**Changed:**` and cites the customer's `DEC-nnn` when it is a bar move.
- The testability requirement's `Response Measure` is converted with the rest, so its `CI` test's pass criterion restates its SLO.
- The quality requirements index's columns and testing-plan rule change nothing; the matrix still lists the requirements and not their service levels.

### `general-requirements.md`

- Rule 1 gains `SLI-nn` and `SLO-nn` as the Week 6 families, two digits, so the family list is complete.
- A new `**Since: W6**` block after the `QRT-nn` rules: `SLI-nn` and `SLO-nn` are scoped to their `QR-nn`, so their identifiers are the pairs `QR-01 SLI-01` and `QR-01 SLO-01`; their headings are the bare identifiers, `## SLI-nn` and `## SLO-nn`, and their anchors are `#sli-nn` and `#slo-nn`, an exception to rule 5; they are parts of the requirement's measure, so rule 10 does not apply and the requirement's `**Status:**` governs them; a dropped requirement keeps them with its scenario, and a changed target is the requirement's `**Changed:**`.
- [Traceability Into Later Weeks](../../requirements/general-requirements.md#traceability-into-later-weeks) gains two rows: a Week 6 `SLI` and `SLO` trace to their `QR-nn`, and the `QRT` that proves the SLO; and the Week 6 analytics plan traces to the `VP-nn` of its value moment, the `TOS-nn` its metric serves, and the `RISK-nn` its endpoint protects.

### `planning-requirements.md`

- `## The Threshold Of Success` gains a `**Since: W6**` block: while a goal is `Open`, its `**Measure:**` links the analytical metric or the evidence that settles it; a goal whose measure names Week 6 or an earlier week is set `Achieved` or `Missed` with `**Outcome:**`; a changed target is a bar move that cites the customer's `DEC-nnn`.
- The full example becomes the meeting-booking plan and threshold after Week 6: `TOS-01` is `Achieved` or `Missed` with its `**Outcome:**` and the evidence, the other goals link their metric, and the `SPRINT-06` section and `REL-06` block are written.
- `## Progress Monitoring` changes no rule; the weekly review already reads the testing plan's rows that are not `Passes`.
- `## Quality Requirement Testing Plan` changes no column; the new requirement's row is added, and `Checked` is `SPRINT-06`.

### `repository-requirements.md`

- `## Environments And Deployment` gains a `**Since: W6**` block: the analytics backend runs on the university VM, its configuration and secrets are installed outside the repository, the endpoint is reachable from the university network, the address is private-only, and `docs/deployment.md` links the analytics plan's pipeline rather than repeating it.
- The product CI changes nothing: the analytics backend is not deployed by a workflow, and the product CI cannot reach the university network.

### `visibility-requirements.md`

- [Sensitive Information Reference](../../requirements/visibility-requirements.md#sensitive-information-reference) gains a `**Since: W6**` row: the analytics endpoint's address and any credentials are Moodle-only.
- A `**Since: W6**` block states that telemetry data is never committed, an event carries no personal name, email address, phone number, free text, or customer's data, the telemetry lives outside the repository, and a dashboard screenshot is sanitized before it is published.

### `customer-meetings-requirements.md`

- [Showing Working Software](../../requirements/customer-meetings-requirements.md#showing-working-software) gains a `**Since: W6**` rule: the Sprint Review shows the deployed product with the endpoint's two visualizations and the `QRT`'s result at its level, shows the experiment's status and the threshold goal it serves, and agrees any bar move with the customer's `DEC-nnn`.

### `weekly-report-requirements.md`

- A new `**Since: W6**` rule after rule 15: the report's summary states the north star's current value and the `SLI`/`SLO` result, links `docs/analytics.md` and the test's evidence, and copies no chart or row.
- The full example becomes a Week 06 report: its summary carries the two values, its coverage table lists the analytics plan, the events, the endpoint, the service levels, the experiment, the threshold review, and `REL-06`, and it carries no deck row.

### No Change

- `architecture-requirements.md` changes no rule: its container view's rule that the diagram shows every external system a container exchanges data with already covers the analytics backend, and the container set is unchanged; the implementation updates the diagram and its source, and the plan records the reading in [Design Decisions](#design-decisions).
- `adr-requirements.md` changes no rule: the new record follows its fields and must address the new quality requirement.
- `releases-requirements.md` changes no rule: `REL-06` follows the `REL-nn` block, and the analytics work is not a changelog entry.
- `features-requirements.md` changes no rule: the analytics is internal, and a user-facing analytics capability would need a story, a functional requirement, and a feature entry.
- `sprint-ceremonies-requirements.md`, `issue-tracking-requirements.md`, `definition-of-done-requirements.md`, `glossary-requirements.md`, `quality-requirements-requirements.md`'s index rules, and `minimum-usable-product-requirements.md` change nothing.

## New And Edited Guides

`guides/analytics-and-service-levels.md` follows the shape of `guides/quality-requirement-tests.md` and `guides/deployment-and-environments.md`: a short preamble, `## What You Produce`, numbered `## Step N:` sections with their `###` sub-sections, and `## Common Mistakes`.
The steps:

1. **Find the value moment and the metrics.**
   The value proposition's value moment, the candidate metrics, the north star's four criteria, the counter-metric, and the tree that connects them.
2. **Write the events and instrument the product.**
   The event table, the naming convention, the properties, the metric each event feeds, the opaque identifier, and the same-pull-request rule.
3. **Deploy the backend and expose the endpoint.**
   The pipeline, the OpenObserve backend on the VM, the environment variables, the enable/disable flag, the endpoint, and the private address.
4. **Record the evidence.**
   The two charts, their queries, the sanitized screenshot, the event that fired, the commit, and the report section that links them.
5. **Write the SLI and the SLO, and the test.**
   The indicator's definition, unit, window, and source; the objective's target and window; the `### Response Measure`; the `QRT` that samples the endpoint and restates the SLO.
6. **Run the experiment.**
   The hypothesis, the falsification condition, the change, the test traffic, the events, the metric, and the sample-size estimate without a verdict.
7. **Review the threshold.**
   The open goals, the metric link, the due goal's verdict, and the bar move that needs the customer's `DEC-nnn`.
8. **Keep the data private.**
   What is collected, what is never collected, the opaque identifier, the sanitized screenshot, the Moodle-only address, and the disabled flag.

`## Common Mistakes` covers a vanity metric, a metric with no event, an event with personal data, a chart with no query, an endpoint only on localhost, an SLI with no definition, an SLO with no window, a test that restates the SLO without measuring the SLI, a verdict from synthetic traffic, a committed token, a screenshot with personal data, and a deck that is not this week's.

`guides/planning-and-tracking.md` gains a pointer in its threshold step to the analytics guide's Step 7, and no new rule.

## The Parts Assignment 6 Carries

`assignments/assignment-6.md` is written as a delta against `requirements/`, in the shape `assignment-5.md` uses: the header, `## Objectives`, the numbered parts, `## What Good Looks Like`, the repository report with its coverage table, the Moodle wrapper, the submission procedure, and the checklist.
The header carries Week 6's hard deadline, Saturday 7 November 2026 at 23:59, with no soft deadline.

The parts, in the order the work succeeds in:

- **Part 1: Plan The Sprint And Refine The Backlog.**
  `SPRINT-06`'s goal, `**Due:**` `2026-11-07`, `**Sprint Backlog:**` link, and `**Planned Velocity:**`; the next two sprints' worth of the product backlog refined and unscheduled; at least one new `US-nn` for the experiment's change and the task issues for the instrumentation.
- **Part 2: Write The Analytics Plan And The Metric Tree.**
  `docs/analytics.md` with the value moment traced to the `VP-nn`, the north star, the counter-metric, three or four L1 and L2 input metrics, the tree, the north star's four criteria, and one rejected vanity metric.
- **Part 3: Write The Event Table And Instrument The Product.**
  The events, the naming convention, the properties, the metrics they feed, no personal data, the instrumentation, the enable/disable flag, and the same-pull-request rule.
- **Part 4: Record The Stack Decision And Deploy The Backend.**
  The `ADR-nnn` addressing the new requirement, the OpenObserve backend on the VM, the configuration and secrets outside the repository, the endpoint reachable from the university network, and the container view's external system with its source.
- **Part 5: Expose The Two Visualizations And Prove The Collection.**
  One chart for the `SLI`, one for an analytical metric, each with its query, at the endpoint; an event fired on the deployed product, the chart updated, the commit, and a sanitized screenshot in the report.
- **Part 6: Write The Service Levels And Implement The Test.**
  The new `Performance Efficiency` / `Time Behaviour` requirement with its scenario, its `SLI` and `SLO`, and its `QRT` at `deployed`; the testability requirement's measure converted; the two tested requirements' sections; the new `QRT` run and `Passes` with `Checked` in `SPRINT-06`, and the testing plan's row.
- **Part 7: Run The Experiment.**
  One product-change hypothesis in the deck's format, its falsification condition, an input metric from the tree, the change implemented, test traffic, the events and the metric observed, and the sample-size estimate; no verdict.
- **Part 8: Review The Threshold Of Success.**
  Each open goal's measure linked to the metric or the evidence, each due goal set `Achieved` or `Missed` with `**Outcome:**`, and any bar move agreed at the Sprint Review with a `DEC-nnn`.
- **Part 9: Carry Out The Week 5 Action Points And Open Questions.**
  Each Week 5 action point due in Week 6 carried out or explained, its outcome carried into the artifact it changed, and each Week 5 open question answered or carried forward.
- **Part 10: Validate With The Customer.**
  The Sprint Review on the deployed product, with the two visualizations, the `QRT`'s result, the experiment's status, and the threshold goal it serves; the meeting script and report, and the transcript when the meeting was recorded or held in writing; the story verdicts recorded as `DEC-nnn`; and the action points due in Week 7.
- **Part 11: Redeploy And Retest After Same-Week Rework.**
  Any same-week rework merged, redeployed to staging, retested at its level, redeployed to production, and verified; a rework that cannot finish is deferred to `SPRINT-07`, and the reviewed commit is the release commit.
- **Part 12: Cut The `REL-06` Release.**
  The tag on the final production commit, the changelog's version section such as `[0.6.0]` when the product changed, the release body with the tests checked in `SPRINT-06` and the claimed `QR-nn`s, the plan's `REL-06` block with `**Released:**` and `**Checked QRs:**`, and the sprint milestone closed after any open issue is rescheduled.
- **Part 13: Close The Sprint And Hold The Retrospective.**
  `**Actual Velocity:**` in `### SPRINT-06`, and `reports/week-06/sprint-retrospective.md` with its four sections and the actions carried from Week 5.
- **Part 14: Report On Your AI Usage.**
  `reports/week-06/ai-usage.md`, per [AI Usage Report](../../requirements/weekly-report-requirements.md#ai-usage-report).

The assignment ends with the repository report, the Moodle wrapper, the submission procedure, and the checklist, in `assignment-5.md`'s shape.
The report's summary carries the two values, the event that proved the collection, the threshold result, and what moved out of the sprint; its coverage table carries the sprint plan, the new stories, the analytics plan, the events and instrumentation, the endpoint and the two visualizations, the service levels and the test, the ADR and the container view, the experiment, the threshold review, the Week 5 action points and open questions, the meeting script, the meeting transcript when one exists, the customer validation, `REL-06`, the retrospective, and the AI usage; its repository evidence links a merged pull request and the latest green link-check, Markdown-check, product-code CI, and `actionlint` runs on `main`; and its deviations declare a VM that was unavailable, an endpoint that was not reachable, an experiment that could not be implemented, or rework deferred to `SPRINT-07`.
The Moodle wrapper carries the project and the team number, the member table, the permalink to `reports/week-06/README.md`, the endpoint's address and any credentials, which are private-only, with the note that the customer reaches them from the university network, the meeting recording link or one line saying why there is none, the meeting transcript when the customer refused publication, and the privacy line; it carries no deck.
The submission procedure merges the report and every file it links into `main`, takes the permalink and the snapshot from that commit, and submits the PDF and the snapshot through Moodle.

### What Good Looks Like

- a metric tree whose north star measures value to the customer, whose counter-metric guards it, and whose inputs are computable from the events in one pass;
- an event table a developer can instrument from and a stranger can recompute a metric from, with no personal data in any event;
- an endpoint on the VM that shows the `SLI` and one analytical metric, each with its query, and a screenshot a reviewer can read without an account;
- a service level a stranger can read: what is measured, in which unit, over which window, and what target it must meet;
- a test that samples the endpoint and restates the SLO, with its result in the testing plan and its evidence in the report;
- one more quality requirement implemented and tested this week, and the testability requirement's `CI` test still the other one;
- a container view that shows the analytics backend and an ADR that says why it is the choice, with no new view and no new container;
- an experiment with a falsifiable hypothesis, an implemented change, events that fire, a metric that computes, and an honest estimate of the traffic a verdict would need;
- a threshold of success that is now measurable: each open goal links its metric, each due goal has its verdict, and no bar moved without the customer;
- a week with no deck, and a Week 7 that can use the events the week left.

## New Maintainer Decision Log `course/decisions/a6.md`

The file follows the format of `course/decisions/a5.md`: a header paragraph, then `A6-DEC-nnn` entries with `**Status:**`, `**Decision:**`, `**Why:**`, `**Alternatives considered:**`, `**Where it lands:**`, and `**Reverses:**` on the entries that reverse an `A3-DEC`, an `A4-DEC`, or an `A5-DEC`.

The entries:

1. Week 6 is product analytics and service levels: the analytics plan and metric tree, the events and instrumentation, the backend and the two visualizations on the VM, the SLI and SLO, the new requirement and its test, the ADR and container view, the experiment, the threshold review, `REL-06`, the review, the retrospective, and the AI usage; no deck, no logs, no traces, and no alerts.
2. `docs/analytics.md` is the week's one maintained page, and its metrics are `##` sections cited by their anchors rather than a `MET-nn` family; the Week 6 families are the `SLI-nn` and the `SLO-nn`.
3. The backend is OpenObserve on the university VM, because one service stores and serves the events and the metrics, the team already has the VM, and the data stays on the university network; the endpoint is on the VM and the address is private-only.
4. The deck leaves Week 6: the in-class presentations are in the Week 8 class, and the deck's shape and submission week are the later plan's; this reverses `A5-DEC-029` in full and restates the clauses that survive.
5. The week's scope is the deck's five sections, with the logs, traces, and alerts not required: the hypotheses, the metrics, the product analytics, the service levels, and the observability; the assignment grades what the deck teaches.
6. `SLI-nn` and `SLO-nn` are the Week 6 families, scoped to their `QR-nn`, cited as `QR-01 SLI-01` and `QR-01 SLO-01`, with bare headings and the rule-5 exception; they are parts of the requirement's measure, so they carry no `**Status:**` and the requirement's status governs them.
7. A requirement that carries a `QRT-nn` states its `Response Measure` as an `SLO-nn` over an `SLI-nn`, the test's `**Pass when:**` restates the SLO, and the test's procedure measures the SLI; the testability requirement is converted with the new one.
8. The new requirement is `Performance Efficiency` / `Time Behaviour` about the analytics endpoint: both visualizations return within two seconds 95% of the time; it is `High` business importance, its `QRT` is `deployed`, and it is the one more test the week implements.
9. The analytics backend is an external system in the container view, and the stack choice is an `ADR-nn` whose `**Addresses:**` names the new requirement; the container set is unchanged and no new view is drawn.
10. The pipeline is a table, not a diagram: the container view carries the structure, the analytics plan carries the data, and the diagram conventions stay Assignment 4's.
11. The testing plan adds the new requirement's row and `REL-06` lists the requirements with a test checked in `SPRINT-06`; the Week 5 testability test stays the other implemented test.
12. The endpoint's address and credentials are Moodle-only; the analytic plan, the `QRT`'s `**Runs at:**`, and the report use a placeholder or an environment variable; no real address is committed.
13. The threshold review links each open goal's measure to the analytical metric or the evidence, settles a goal due by Week 6 with `**Outcome:**`, and moves a target only with the customer's `DEC-nnn` at the Sprint Review.
14. No event carries personal data: an event uses an opaque identifier and no free text, the analytics plan lists what is collected and never collected, the data stays outside the repository, and a screenshot is sanitized.
15. The lecture is not edited: its SLI/SLO slides are the teaching the assignment relies on, and this plan changes no slide; the committed PDF is rebuilt from the committed source when the gate needs it.
16. The syllabus, the routers, the destination map, the plans row, the README lecture rows, and `AGENTS.md` are updated for the analytics plan, the service levels, the endpoint, the new families, the no-deck week, and the Week 8 presentations.
17. The Week 6 Moodle wrapper carries the endpoint's address and credentials and no deck; the report says the customer reaches the endpoint from the university network.
18. Week 7's usability work uses the events the week leaves, so the event table covers the core task end to end, and the Week 7 plan links the analytics plan rather than restating it.
19. The new requirement, the ADR, the container view, the service levels, the events, and the metric tree are the assignment's parts in the order the work succeeds in; the milestones and the story minimum stay the team's, with at least one new story for the experiment's change.
20. The experiment is designed and implemented, its events and metric are shown, and its sample size is estimated, but no verdict is recorded without real users.
21. `REL-06` is the release at the end of Week 6 and carries no ordinal; the version is the team's choice under Semantic Versioning, with `v0.6.0` as the example.
22. The guide is `guides/analytics-and-service-levels.md`, and the planning guide gains a pointer to its threshold step.

## Edited Files Outside `requirements/`

- **`course/syllabus.md`**: The ToC entry and the Week 6 heading become `Product Analytics & Service Levels`, and the focus row names the lecture, the analytics, the endpoint, and Submission 6.
  The Class 6 line names the deck's five sections, and the Week 6 objectives name the metric tree, the events, the two visualizations, the SLI and SLO, the new requirement and its test, the experiment, and the threshold review; the Week 6 deliverables name `docs/analytics.md`, the events and instrumentation, the endpoint and the two visualizations, the service levels and the test, the ADR and container view, the experiment, the threshold review, the retrospective, and `REL-06`, and the pitch deck is removed.
  The Submission 6 row becomes a `Product Analytics & Service Levels` summary in the same order, drops the deck, and keeps the 7 November deadline.
  The deck's `To revise` note and the `<!-- TODO pitch deck -->` comment are removed from Week 6; the in-class presentations move to the Week 8 class as the maintainer's edit does, the Week 7 heading and class line drop them, and the Week 7 and Week 8 Submission rows carry no deck; the Week 9 final deck stays.
  No week's objectives or deliverables gain logs, traces, or alerts.
- **`README.md`**: The assignment 6 row, the guide row, and the lecture 5 and lecture 6 rows in the Lectures table, each linking its PDF.
- **`SKILL.md`**: The routing rows for `requirements/analytics-requirements.md` and `guides/analytics-and-service-levels.md`, the `docs/analytics.md` row, and the front-matter `description` gaining the analytics, the service levels, and the endpoint.
- **`course/rules.md`**: The guide list gains the analytics guide, and `## Where The Rules Live` gains the analytics requirements row.
- **`AGENTS.md`**: The Repository Map gains `requirements/analytics-requirements.md`, `guides/analytics-and-service-levels.md`, `course/decisions/a6.md`, and a `course/plans/` row; the `docs/` Destination Map's Week 6 row adds `docs/analytics.md`; the identifier conventions gain `SLI-nn` and `SLO-nn` with their scoping, their pair citations, and their rule-5 and rule-10 exceptions; the terminology gains `SLI`, `SLO`, `service level`, `metric tree`, `north star metric`, `counter-metric`, `input metric`, `event`, `instrumentation`, `telemetry`, `analytics endpoint`, and `experiment`.
- **`course/tooling.md`**: An OpenObserve section, suggesting it as one service for the events and the metrics on the team's VM, with a line that the analytics requirements own the rules.
- **`TODO.md`**: The A6 items this work answers are ticked or annotated: the lecture's two slides are done, the threshold review is the assignment's, OpenObserve is the backend choice, `docs/analytics.md` is the Week 6 artifact, and the Week 6 maintained artifact is decided; the `planning-and-tracking.md` line is already fixed, and the deck item records that the deck is not Week 6's.
- **`course/decisions/a5.md`**: `A5-DEC-029` gets `**Status:** Reversed by A6-DEC-004`, linked to that entry once `course/decisions/a6.md` exists, and keeps its statement and fields; its `**Where it lands:**` pointer says the deck is the later plan's.
- **`course/plans/a5-plan.md`**: A forward note that this plan reverses `A5-DEC-029` and designs Week 6, with its full examples staying Week 5's; the rules it hands over are not repeated there.
- **`backlog/`**: The A6 task breakdown is not created here; it is decided when this plan is approved.

## Edge Cases And Failure Modes

- **The VM is not available this week:** The backend and the endpoint are postponed to the date the group chat announces, the report declares the postponement, and the experiment and the threshold review proceed with the local product; the `QRT`'s row stays `Not verified` with `Planned for sprint: SPRINT-06`, and its `Planned for sprint` moves to `SPRINT-07` if the VM arrives then.
- **The VM is too small for the backend:** The backend runs on a team machine on the university network or a free service the team documents, the address stays private-only, no personal data leaves the network, the deviation is declared in the report, and the endpoint's evidence is a sanitized screenshot.
- **The endpoint is not reachable from the university network:** The team checks the access before the Sprint Review; when the customer cannot reach it, the meeting shows the sanitized screenshots and the deployment evidence, and the report records why.
- **The endpoint's response is slower than the SLO:** The `QRT` fails, the row keeps its `Fails` and its evidence, the report records the measured value, and the release claims no quality through it; the team either fixes the endpoint or moves the `SLO` with the customer's `DEC-nnn`, which is a bar move.
- **An event would carry personal data:** The property is dropped or replaced with an opaque identifier; an event with a free-text field is not instrumented, and the metric is recomputed from the anonymous events.
- **A metric has no event:** The event is added in the same pull request, or the metric is dropped; no number is invented and no chart is drawn from a spreadsheet the team keeps outside the pipeline.
- **A team already has an endpoint or a dashboard:** It is kept, the two visualizations are added to it, and the analytics plan records where it runs; no second backend is required.
- **A team's quality requirements have no tests yet:** The week converts the two it tests; the others keep their plain `Response Measure` until they get a test, and no test is invented to carry the `SLI` and `SLO`.
- **A team has no other High business-importance requirement:** The new requirement is the one implemented this week, and the testability requirement's `CI` test is the other one; no third test is required.
- **The experiment's change is not delivered:** It is deferred to `SPRINT-07` and the report records why; the events, the metric, and the service levels still count.
- **The threshold goal is missed:** It is set `Missed` with its `**Outcome:**` and the evidence, which is a finding rather than a failure, and the report says what changed.
- **A public file would name the endpoint:** It does not: the address and credentials are Moodle-only, the analytics plan and the `QRT` use `$ANALYTICS_URL` or a placeholder, the screenshots are sanitized, and no link is excluded from the link check.
- **A user-facing analytics capability is added:** It needs a story, a functional requirement, and a feature entry, per the existing rules; the assignment does not require one.
- **A team draws a pipeline diagram anyway:** It is the team's choice, no rule asks for it, and the analytics plan's table stays the record; the container view's conventions are not restated.

## Tests And Validation

- `pnpm run format:markdown`, then `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run test:markdown-format`, and `pnpm run test:markdown-rules`.
- `pnpm run check:links`, which checks every heading anchor the new files and the edited files cite.
- `pnpm run check:lectures`: the plan edits no slide, and the check is green once the committed PDF matches the committed source; the rebuild is `pnpm run build:lectures` and is a build-only change.
- `pnpm run lint:actions` only if a workflow in this repository changes; the analytics endpoint is the students' deployment, not this repository's workflow.
- A scope audit: every success criterion has a part, a rule, or a file change in [Changes To The Requirements](#changes-to-the-requirements) or [Edited Files Outside `requirements/`](#edited-files-outside-requirements), and every part has a rule or is a documented assignment minimum.
- A contradiction audit: every row in [Scope And Contradictions](#scope-and-contradictions) has its resolution applied, the files named in the row carry it, and the `A6-DEC` entry the row cites contains that resolution; in particular, the deck is absent from Week 6, the presentations are in Week 8, the endpoint is private-only, and the new requirement is tested.
- A routing audit: `requirements/analytics-requirements.md` and `guides/analytics-and-service-levels.md` appear in `README.md`, `SKILL.md`, `course/rules.md`, and `AGENTS.md`'s Repository Map; `docs/analytics.md` is in the destination map; the plans row exists; the lecture 5 and 6 rows are in the README; no deck row remains in Week 6.
- A cross-reference audit: every `**Since: W6**` rule has an Assignment 6 part, and every part has a rule or is a documented assignment minimum.
- A decision-log audit: the contradiction table, the design decisions, and the edited-file notes cite `A6-DEC` entries that exist, and each cited entry states the resolution it is cited for.
- An identifier audit: `SLI-nn` and `SLO-nn` are two digits, scoped, cited as pairs, headed by the bare identifier, and carry no `**Status:**`; the requirement's `**Status:**` governs them; `MET-nn` does not exist.
- A service-level audit: every requirement with a `QRT` states its `Response Measure` as an `SLO` over an `SLI`; each `SLI` has a definition, a unit, a window, and a source; each `SLO` has an `SLI`, a target, and a window; each test's `**Pass when:**` restates its `SLO`; the testability requirement is converted.
- A test audit: the new requirement is `High` business importance, has a `QRT` at `deployed`, and the test is one more than the one implemented in Week 5; the testing plan's row is `Passes` with `Checked` in `SPRINT-06` and the evidence its level requires; `REL-06`'s `Checked QRs` names it.
- An analytics audit: the metric tree has one north star, one counter-metric, and three or four inputs; each metric has a definition and a source; one vanity metric is rejected with a reason; the events cover the core task; no event carries personal data.
- An evidence audit: the endpoint exposes two visualizations, one for the `SLI` and one analytical; each names its metric and its query; the event fired on the deployed product, the chart updated, the commit is recorded, and the screenshot is sanitized.
- An architecture audit: the container view shows the analytics backend as an external system, the container set is unchanged, no new view exists, the ADR addresses the new requirement, and the diagram conventions are Assignment 4's.
- A threshold audit: every open goal's measure links the metric or the evidence; every due goal has its verdict and `**Outcome:**`; a bar move cites the customer's `DEC-nnn`; the example is a Week 6 plan and threshold.
- A privacy audit: no address, credential, token, or telemetry payload is committed; the Moodle wrapper carries the address and credentials; the report says the endpoint is reached from the university network; no link is excluded.
- A deck audit: no Week 6 artifact, report row, wrapper item, or decision designs a deck; the in-class presentations are in the Week 8 class; the deck's plan is the later one; `A5-DEC-029`'s status names the reversal.
- A full-example audit: the analytics example, the quality requirements example, the planning example, and the weekly report example carry their new sections and fields, and each is set in Week 6.
- `pnpm run check:links` after the edits, and `backlog doctor` if a backlog task is created; no A6 breakdown is created here.

## Assumptions

- This work lands in the `itpd` course repository only, and no file is created under `docs/` or `reports/`, since those belong to student repositories.
- Assignment 6 is Week 6, and Week 6's due date is Saturday 7 November 2026 at 23:59, set by `A4-DEC-022`.
- Assignment 5 lands first: the quality requirements with their tests, the testing plan, the automated tests and CI, the staging and production deployments, the testing plan's rows, and `REL-05` exist before this work adds to them.
- The lecture `lectures/lecture-6.typ` teaches the hypotheses, the metrics, the product analytics, the SLI and SLO, and the observability pillars, and its PDF is rebuilt from the committed source when the gate needs it; the plan edits no slide.
- The course has no real users, so the experiment records a design, an implementation, and an estimate, not a verdict.
- The university provides one VM per team, it can run the OpenObserve backend beside the staging and production deployments, and the customer reaches the endpoint from the university network.
- Every team has at least one member on campus, and that member runs the deployment and the `QRT` from a machine there; the product CI cannot reach the university network.
- The two visualizations are enough for the week: one for the `SLI` and one analytical metric; logs, traces, and alerts are the deck's material and are not required.
- The new requirement is `Performance Efficiency` / `Time Behaviour`, its `SLI` is the endpoint's response time, its `SLO` is 95% within two seconds, and its `QRT` samples the endpoint from campus; the exact window is the team's.
- Week 6 has no deck; the in-class presentations are in the Week 8 class, and the deck's requirements and submission week are the later plan's.
- The examples are set in the week their rule belongs to: the planning example after Week 6, the analytics example at the end of Week 6, the quality requirements example with the two tested requirements, and the weekly report a Week 06 report.
- The meeting-booking example is the example for every full example, as it is in Assignment 5's files.

## Sources

### The Course Materials This Plan Changes

- [`course/plans/a5-plan.md`](a5-plan.md), especially its [Design Decisions](a5-plan.md#design-decisions) and [Changes To The Requirements](a5-plan.md#changes-to-the-requirements): the shape this plan follows and the groups it takes over.
- [`lectures/lecture-6.typ`](../../lectures/lecture-6.typ): the hypotheses, the metrics, the product analytics, the SLA/SLO/SLI section, and the observability section this week designs against.
- [`course/syllabus.md`](../syllabus.md), especially Week 6, Week 7, Week 8, and the Submission 6 and Submission 7 rows: the week's deliverables, the deadlines, and the maintainer's in-progress presentation move.
- [`assignment-5.md`](../../assignments/assignment-5.md): the shape Assignment 6 follows.
- [`course/decisions/a5.md`](../decisions/a5.md), especially `A5-DEC-029` (the deck move this plan reverses) and `A5-DEC-003` (the test's level and environment the new requirement follows).
- [`TODO.md`](../../TODO.md), especially the A6 items: the threshold review, OpenObserve, the `docs/analytics.md` row, and the Week 6 maintained artifact.
- The prior iteration, `tmp/itpd-2025/assignments/assignment-6.md`: the analytics, observability, and hypothesis-driven ideas this plan ports without its paths or tools.

### The Requirements This Plan Extends

- `requirements/analytics-requirements.md` (new), [Quality Requirements](../../requirements/quality-requirements-requirements.md), [General Requirements](../../requirements/general-requirements.md), [Planning Requirements](../../requirements/planning-requirements.md), [Repository Requirements](../../requirements/repository-requirements.md), [Visibility Requirements](../../requirements/visibility-requirements.md), [Customer Meeting Requirements](../../requirements/customer-meetings-requirements.md), and [Weekly Report Requirements](../../requirements/weekly-report-requirements.md), plus `requirements/architecture-requirements.md`, `requirements/adr-requirements.md`, `requirements/releases-requirements.md`, and `requirements/features-requirements.md`, whose rules the new work uses without a change.

### The Format Reference

- The `timeful` checkout at `/home/eyjafjallajokull/Desktop/gh/timeful`, whose `docs/requirements/quality/README.md`, `qr/QR-nnn.md`, and `adr/TEMPLATE.md` are the shape the quality requirements and the records follow.
- [The SRE Book](https://sre.google/sre-book/service-level-objectives/) for the SLI and SLO wording, and [the OpenTelemetry instrumentation concepts](https://opentelemetry.io/docs/concepts/instrumentation/) for the event and signal vocabulary the deck uses.

### The Prior Iterations Consulted

- `tmp/itpd-2025/assignments/assignment-6.md`, for the metric tree, the north star, the counter-metric, the SLOs, and the hypothesis-driven log.
- `tmp/swp-2026/assignments/Assignment_06.md`, for the shape a later-week assignment takes.
