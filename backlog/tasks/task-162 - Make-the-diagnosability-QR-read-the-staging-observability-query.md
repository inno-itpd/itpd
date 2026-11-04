---
id: TASK-162
title: Make the diagnosability QR read the staging observability query
status: Done
assignee: []
created_date: '2026-11-04 06:32'
updated_date: '2026-11-04 06:39'
labels: []
dependencies: []
references:
  - guides/analytics-and-observability.md
  - requirements/observability-requirements.md
  - requirements/quality-requirements-requirements.md
  - assignments/assignment-6.md
  - requirements/weekly-report-requirements.md
  - course/decisions/a6.md
  - course/plans/a6-plan.md
  - guides/quality-requirement-tests.md
  - TODO.md
priority: high
type: docs
ordinal: 148000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The Week 6 diagnosability quality requirement names a product telemetry endpoint that the push-to-OpenObserve design does not expose. No requirement defines that endpoint, yet the observability example, Assignment 6, the guide, the weekly report example, and A6-DEC-008/011/023 all assume it. The product pushes a response-time histogram and a structured per-request log line to OpenObserve; the only read path is the staging organization's query API, and the dashboard is evidence, not the measurement. Without this change, the QR is untestable as written and the materials contradict the chosen architecture.

The selected design: push-only. The per-request point is a structured log line carrying request_id, route, outcome, and duration_ms; the aggregate is the histogram's five-minute P95. The QRT stays deployed, runs against staging from the university network, reads the log point within five seconds and the P95 series within one minute from the staging organization, and uses the dashboard screenshot as evidence. The 5s/1min budgets are met by configuring the log batch at about 1 second and the metric export at about 10 seconds, recorded in the deployment runbook. The principle becomes "the test reads the signal, not the chart."
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The guide's product-telemetry-endpoint TODO is replaced by the push + staging-query + structured-log-line model, and no student-facing file says the product exposes a telemetry endpoint.
- [x] #2 The QR-04/QRT-01 example reads the request's log point and the SLI's P95 series from the staging organization, with the 5s/1min thresholds, `$OPENOBSERVE_URL`, and the structured log line.
- [x] #3 The SLI-01 example uses the structured log line for the per-request point; The Signals and The Pipeline rules permit a signal an SLI's source names and require the export interval to meet the SLI's window.
- [x] #4 Assignment 6, the weekly report example, and the quality requirement test guide agree with the QR/QRT wording and the evidence the deployed level records.
- [x] #5 A6-DEC-026 records the design, reverses A6-DEC-023 in full with its surviving level clauses restated, and supersedes the endpoint clauses of A6-DEC-008 and A6-DEC-011; the plan's open question 25 points to it.
- [x] #6 TODO.md marks the endpoint question done with the answer.
- [x] #7 The implementation notes record the decisions made and the validation results, and the Markdown format, lint, and link checks pass.
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
- [x] #6 `pnpm run check:links` passes
- [x] #7 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
## Current System

The Week 6 materials assume a product telemetry endpoint at `/telemetry/sli` in `requirements/observability-requirements.md`, `requirements/quality-requirements-requirements.md` (QR-04/QRT-01), `assignments/assignment-6.md`, `guides/analytics-and-observability.md`, `requirements/weekly-report-requirements.md`, `course/decisions/a6.md` (A6-DEC-008/011/023), and `course/plans/a6-plan.md` (open question 25). No requirement defines that endpoint. The chosen design is push-only: the backend exports a response-time histogram and a structured per-request log line to OpenObserve; the test reads the staging organization's query API, and the dashboard is evidence.

## Plan

1. `requirements/observability-requirements.md`: allow a signal an `SLI`'s source names, require the export interval to meet the window, make the per-request point a log/trace rather than a metric label, and rewrite the full example's `SLI-01`, Signals, Pipeline, Dashboard, and Collected Data.
2. `requirements/quality-requirements-requirements.md`: rewrite the QR-04 Artifact/Response/Response Measure and the QRT-01 runs-at, procedure, and pass criterion to read the log point and the P95 series from the staging organization.
3. `guides/analytics-and-observability.md`: update Steps 4-7, explain the push/query/log-line model, remove the TODO, and add the endpoint and histogram mistakes.
4. `assignments/assignment-6.md`: update the objective, Parts 5/6/9, the Sprint Review script, the report item, What Good Looks Like, the Moodle wrapper, and the checklist.
5. `requirements/weekly-report-requirements.md`: update the "what we did" sentence and the test-evidence paragraph.
6. `course/decisions/a6.md`: add `A6-DEC-026`, reversing `A6-DEC-023` in full with its surviving level clauses restated, and superseding the endpoint clauses of `A6-DEC-008` and `A6-DEC-011`.
7. `course/plans/a6-plan.md`: update open question 25 and the tests/validation and acceptance bullets that name the endpoint.
8. `guides/quality-requirement-tests.md`: add the `deployed` test's query-as-measurement / dashboard-as-evidence paragraph.
9. `TODO.md`: mark the endpoint question done with the answer.
10. Run `pnpm run format:markdown`, `pnpm run format:markdown:check`, `pnpm run lint:markdown`, and `pnpm run check:links`; fix any failures; record the results.

## Risks and Decisions

- 5s needs the log exporter's batch delay around 1s; the OTel default of 5s is too close. 1min needs the metric export interval around 10s; the default of 60s is too close. Both are recorded in the deployment runbook and the `SLI`'s window.
- The staging organization's URL and query credential are private-only; the test uses `$OPENOBSERVE_URL` and reads the credential from the environment.
- The log line is required for the demonstrated `SLI`; the trace remains optional.
- The `deployed` level keeps its Week 5 meaning; only the read path changes.
- A6-DEC-023 is reversed in full because the decision log does not rewrite history in place; A6-DEC-008/011 are superseded only in their endpoint clauses.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Implemented the push-only diagnosability design. The product exports a response-time histogram and a structured per-request log line to OpenObserve; the QR/QRT now reads the log point by `request_id` and the `SLI`'s five-minute P95 series from the staging organization, with the dashboard as evidence. The per-request point cannot come from the histogram, and a `request_id` metric label is rejected because it would create one series per request.

Rewrote the QR-04 Artifact/Response/Response Measure and the QRT-01 `**Runs at:**`, procedure, and pass criterion; rewrote the `SLI-01` Definition/Window/Source and the Signals/Pipeline/Dashboard/Collected Data example; added the per-request log query beside the signal and the export-interval requirement to The Pipeline.

Updated Assignment 6 (objective, Parts 5/6/9, Sprint Review, report, What Good Looks Like, Moodle wrapper, checklist), the weekly report example, the quality-requirement-test guide's deployed-level paragraph, the guide's Steps 4-7 and Common Mistakes, and TODO.md.

Added `A6-DEC-026` to `course/decisions/a6.md`: it reverses `A6-DEC-023` in full with the surviving level clauses restated and supersedes the endpoint clauses of `A6-DEC-008` and `A6-DEC-011`. Updated the plan's open question 25, tests/validation, parts, acceptance, decision-log list, and Done-means bullet to match.

Validation: `pnpm run format:markdown` and `format:markdown:check` pass; `pnpm run lint:markdown` passes; `pnpm run test:markdown-format` (17 tests) and `test:markdown-rules` (17 tests) pass; `pnpm run check:lectures` passes with 6 decks matching; `pnpm run check:links` passes with 3064 OK, 0 errors, 2 excluded, 1 redirect.

Known follow-ups/risks: the 5s point needs the log exporter batch near 1s and the 1min aggregate needs the metric export near 10s, so the deployment runbook must record both; the staging organization URL and query credential stay in Moodle; the historical A6-DEC-008/011/023 entries remain as written and are superseded/amended by A6-DEC-026 per the decision-log convention.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
## Summary

Replaced the Week 6 diagnosability QR's assumed product telemetry endpoint with the push-only OpenObserve design.

- The QR-04/QRT-01 example reads the request's structured log point and the `SLI`'s P95 series from the staging organization, with the 5s/1min windows and `$OPENOBSERVE_URL`.
- The `SLI-01` example uses a structured log line for the per-request point; The Signals and The Pipeline rules allow a signal an `SLI`'s source names and require the export interval to meet the window.
- Assignment 6, the weekly report example, the analytics-and-observability guide, and the quality-requirement-test guide now agree with the QR/QRT wording and the evidence the `deployed` level records.
- `A6-DEC-026` reverses `A6-DEC-023` in full with the surviving level clauses restated and supersedes the endpoint clauses of `A6-DEC-008` and `A6-DEC-011`; the plan's open question 25 points to it.
- `TODO.md` marks the endpoint question done.

## Validation

- `pnpm run format:markdown` and `format:markdown:check`: pass.
- `pnpm run lint:markdown`: pass.
- `pnpm run test:markdown-format`: 17 tests pass.
- `pnpm run test:markdown-rules`: 17 tests pass.
- `pnpm run check:lectures`: 6 decks match.
- `pnpm run check:links`: 3064 OK, 0 errors, 2 excluded, 1 redirect.

## Risks And Follow-Ups

- The 5s point needs the log exporter's batch near 1s, and the 1min aggregate needs the metric export near 10s; the deployment runbook records both.
- The staging organization URL and query credential are private-only; the test reads them from the environment.
- The historical A6-DEC-008/011/023 entries remain as written and are superseded/amended by A6-DEC-026 per the decision-log convention.
<!-- SECTION:FINAL_SUMMARY:END -->
