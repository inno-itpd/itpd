---
id: TASK-163
title: Define how duration_ms is measured in the SLI example and the guide
status: Done
assignee: []
created_date: '2026-11-04 06:57'
updated_date: '2026-11-04 06:58'
labels: []
dependencies: []
references:
  - requirements/observability-requirements.md
  - guides/analytics-and-observability.md
  - assignments/assignment-6.md
  - requirements/quality-requirements-requirements.md
priority: medium
type: docs
ordinal: 149000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
`duration_ms` is named on the `SLI-01` per-request log line in the observability example, in the observability page's collected data, and in Assignment 6, but no file defines how it is calculated: the measurement boundary, the clock, and whether it is the same observation the histogram records are all unstated. A team can therefore record one duration on the log line and another on the histogram, and a wall-clock subtraction can produce a negative or inflated point. The example and the guide should state the boundary and the clock once, so the per-request point and the aggregate cannot disagree.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The `SLI-01` example's `**Definition:**` states the measurement boundary: the elapsed time from the `backend` receiving the request to its response completing.
- [x] #2 The `SLI-01` example states that `duration_ms` is measured on an elapsed-time clock and is the same observation the histogram records, so the per-request point and the aggregate cannot disagree.
- [x] #3 The guide states the same calculation where it places the request duration with the `backend` rather than with a script that runs after the fact.
- [x] #4 The example and the guide agree on the boundary and the clock, and no other student-facing file states a different calculation for `duration_ms`.
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

`duration_ms` is named in the `SLI-01` example's `**Definition:**`, in Assignment 6's Part 5, and in the observability page's collected data, but no file says how it is calculated. The guide's Step 5 places a request duration with the `backend` and not with a script that runs afterwards, but it does not say what the duration covers or which clock measures it.

## Plan

1. Add the boundary, the clock, and the same-observation rule to the `SLI-01` `**Definition:**` in the observability full example.
2. Add the same calculation to the guide's Step 5, beside the sentence that places the duration with the `backend`.
3. Check that no other file states a different calculation for `duration_ms`.
4. Run the Markdown format, lint, and link gates plus the two plugin test suites, and record the results.

## Notes

- The trace stays optional, so the definition names an elapsed-time clock rather than a specific span; a team may take the duration from its server span when one is recorded.
- `QRT-01` keeps its current assertion (request identity, not the duration value), so this change does not alter what the test measures.
- The example keeps milliseconds as the unit, matching the `booking_request_duration_ms` histogram.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Defined `duration_ms` once, in the `SLI-01` example's `**Definition:**`, as the elapsed time from the `backend` receiving the request to its response completing, measured on a monotonic clock, and stated there that it is the same observation the histogram records. The guide's Step 5 repeats the same calculation beside the sentence that places the request duration with the `backend`. The trace stays optional, so the definition names the clock rather than a span, while a team may still take the value from its server span; `QRT-01` keeps its request-identity assertion and does not read the duration value. No other student-facing file states a different calculation: Assignment 6 lists the field without defining it.

Validation: `pnpm run format:markdown` and `pnpm run format:markdown:check` pass; `pnpm run lint:markdown` passes; `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` each pass 34 tests across the local and `.direnv` copies; `pnpm run check:lectures` reports 6 decks matching with Typst 0.15.1; `pnpm run check:links` reports 3066 total, 3064 OK, 0 errors, 2 excluded, and 1 redirect.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
## Summary

Defined `duration_ms` in the `SLI-01` full example and repeated the calculation in the analytics-and-observability guide's Step 5.

- `duration_ms` is the elapsed time from the `backend` receiving the request to its response completing, measured on a monotonic clock, and it is the same observation the histogram records.
- The guide's Step 5 states the same calculation beside the sentence that places the request duration with the `backend`.
- No normative rule, assignment, or other student-facing file was changed; Assignment 6 lists the field without a competing definition.
- `QRT-01` keeps its request-identity assertion, so the change fixes what the field means, not what the test reads.

## Validation

- `pnpm run format:markdown` and `format:markdown:check`: pass.
- `pnpm run lint:markdown`: pass.
- `pnpm run test:markdown-format`: 34 tests pass.
- `pnpm run test:markdown-rules`: 34 tests pass.
- `pnpm run check:lectures`: 6 decks match, Typst 0.15.1.
- `pnpm run check:links`: 3066 total, 3064 OK, 0 errors, 2 excluded, 1 redirect.

## Risks and follow-ups

- The test does not verify that `duration_ms` matches the histogram value; a team that records the point without the aggregate's observation still passes. Tightening that would change `QRT-01`'s scope.
- The example keeps milliseconds, while OTel semantic conventions name the HTTP server duration in seconds; a team following the convention would rename the histogram and convert the unit.
<!-- SECTION:FINAL_SUMMARY:END -->
