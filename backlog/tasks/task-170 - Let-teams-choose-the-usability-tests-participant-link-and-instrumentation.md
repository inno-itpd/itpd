---
id: TASK-170
title: Let teams choose the usability test's participant link and instrumentation
status: Done
assignee: []
created_date: '2026-11-12 07:11'
updated_date: '2026-11-12 07:56'
labels:
  - assignment-7
  - usability
  - requirements
dependencies: []
references:
  - assignments/assignment-7.md
  - assignments/assignment-6.md
  - requirements/usability-testing-requirements.md
  - requirements/analytics-requirements.md
  - requirements/visibility-requirements.md
  - requirements/repository-requirements.md
  - requirements/weekly-report-requirements.md
  - requirements/general-requirements.md
  - guides/usability-testing.md
  - course/decisions/a7.md
  - course/plans/a7-plan.md
  - course/syllabus.md
  - course/rules.md
  - README.md
  - SKILL.md
  - AGENTS.md
priority: high
type: docs
ordinal: 155000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Assignment 7 currently forces one way to link a usability session's telemetry to a participant and assumes the Week 6 events are enough.

The rules fix the funnel to `source=usability-test` plus the session time window and ban a per-participant field, in `requirements/visibility-requirements.md#telemetry-and-personal-data` rule 5 and `requirements/analytics-requirements.md#the-events` rule 10. `requirements/usability-testing-requirements.md#the-tasks` rule 2 ties the main task to the flow the Week 6 event table covers, and `assignments/assignment-7.md` Parts 3, 6, and 7 plus What Good Looks Like expect the Week 6 events and only check `source=usability-test`. That constrains teams: a usability test is not analytics, its tasks may not match a Week 6 metric flow, and the team may need its own events, its own transport, or its own way of telling one session's events from another's.

The maintainer decided:

1. The team chooses how to link a session's events to a participant, documents it, and the guide lists the time window, an opaque session token, and the `P-nn` code as examples, not a closed menu. The review that reopened this task dropped a separate staging scope, because it isolates test traffic but does not tell one session's records from another's.
2. The `P-nn` code may appear in staging test telemetry. The code is not identity, the identity mapping stays in the private repository, and production carries no test traffic.
3. The test record gains a `## Instrumentation` section saying what the test observes, what already exists, what was added, how a session is linked, and where the data goes. The team may extend the Week 6 analytics pipeline or use its own test instrumentation path; an event that goes through the analytics pipeline still gets a row in the analytics event table, and a test-only path may skip it.
4. The instrumentation is implemented and verified before the first counted session. Verification is scheduled in `SPRINT-07` or `SPRINT-08`, before the first counted session, and completed by the start of `SPRINT-09`; the dry run may be that verification when it is that run. Week 7 must prepare the implementation and schedule the verification, so the test never runs on an unverified path.
5. The main task is the product's main flow the team instruments for the test, not a flow the Week 6 event table must already cover. Week 6 promises coverage of its metrics and the main flow, not sufficiency for the test. The staging usability funnel is optional when the team uses its own instrumentation path.
6. The quality requirement stays on the four session measures: the main task's completion and assistance, the time on task, the main task's SEQ, or the SUS. The instrumentation feeds the instrumentation comparison, not the `QR/QRT`.

The results comparison becomes the test's instrumentation rather than the Week 6 events, and the private usability-data repository holds the test's telemetry export rather than only a Week 6 event export. The change reaches the requirements, the assignment, the guide, the plan, the decision log, the routers, and the syllabus, and the old rule is reversed by a new `A7-DEC` entry. The review also relabelled the analytics full example as the page after the Week 7 instrumentation work, removed the Week 6 sufficiency promise, made the `P-nn` code an explicit exception to the opaque-identifier rule, and listed `participant_code` as an optional staging-test field in the reused events' rows.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `requirements/usability-testing-requirements.md` gains a `## The Instrumentation` section: the team-chosen participant link and instrumentation path, the record's `## Instrumentation` section, no personal data, staging-only test data, the analytics exclusion when the pipeline is used, and implementation and verification before the first counted session; the record, tasks, protocol, instruments, analysis, private repository, results, Week 8 execution, and full example are in step
- [x] #2 `requirements/analytics-requirements.md` and `requirements/visibility-requirements.md` allow the team to choose how a session is linked, including `P-nn` in staging test telemetry, remove the no-per-participant-field ban, keep test traffic out of metrics and production, and make the staging usability funnel optional when the test uses its own instrumentation path
- [x] #3 `requirements/repository-requirements.md` and `requirements/weekly-report-requirements.md` name the test's telemetry export and carry the instrumentation in the design-week and run-week report sections and examples
- [x] #4 `assignments/assignment-7.md` adds the `## Instrumentation` record stub and the Week 7 work: decide what the test must observe, reuse or add events, document the link and the path, implement it, verify it before the first session, schedule the implementation in `SPRINT-07` and the verification in `SPRINT-07` or `SPRINT-08`, free the main task from the Week 6 event table, and update the report coverage, What Good Looks Like, and checklist
- [x] #5 `assignments/assignment-6.md` no longer promises that its event table is sufficient for the Week 7 test; it says the table covers the metrics and the main flow and Week 7 may extend the test's instrumentation
- [x] #6 `guides/usability-testing.md` explains what the test must observe, when to reuse and when to add events, the participant-link methods, the `## Instrumentation` record section, the verification, the privacy, the updated comparison, and the common mistakes
- [x] #7 `course/decisions/a7.md` adds `A7-DEC-032`, reversing the relevant clauses of `A7-DEC-009` and `A7-DEC-010` and restating the surviving clauses; `course/plans/a7-plan.md` is in step with the new design
- [x] #8 `course/syllabus.md`, `README.md`, `SKILL.md`, `AGENTS.md`, and `course/rules.md` state the Week 7 instrumentation deliverable wherever they describe the week or the test
- [x] #9 The Markdown format and lint gates, the plugin fixtures, the lecture check, and the link check pass
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
1. Reopen and correct the task record; keep the course work staged.
2. Week 6: replace the analytics table's sufficiency promise with coverage of the metrics and the main flow; relax assignment 6; relabel the analytics full example as the page after the Week 7 instrumentation work.
3. Analytics and visibility: allow the test's own path and participant link; make `P-nn` an explicit exception to the opaque-identifier rule; list `participant_code` on the reused event rows; keep the source field and the metric exclusion for pipeline events; drop the separate staging scope.
4. Usability requirements, assignment, and guide: condition the event-table row on the analytics pipeline; verify in `SPRINT-07` or `SPRINT-08` before the first counted session and complete by the start of `SPRINT-09`; the dry run counts only when it is that verification; update the record, consent and data map, analysis, private repository, Week 8 execution, full example, report examples, and customer-meeting review.
5. Decisions, plan, syllabus, routers, and examples: mark `A7-DEC-010`'s source clauses reversed in part; restate the surviving pipeline-only rule in `A7-DEC-032`; add the missing landing links; bring the plan, syllabus, `README.md`, `SKILL.md`, `AGENTS.md`, `course/rules.md`, weekly-report and customer-meeting examples in step.
6. Validate: `format:markdown`, `format:markdown:check`, `lint:markdown`, both plugin fixtures, `check:lectures`, `check:links`, and `git diff --check`.
7. Re-check every acceptance criterion, record the notes and summary, and set the task Done.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Reopened after the review found the remaining gaps; all the findings the review named are fixed.

- Week 6: `requirements/analytics-requirements.md` rule 8 now says the table covers the flows its metrics read and the product's main flow, and the Week 7 test adds the events its tasks need. `assignments/assignment-6.md`'s objective, Week 6 item, and checklist say the same.
- Analytics example: relabelled as the page after the Week 7 instrumentation work; the test rows, participant-code note, and funnel stay. `participant_code` (string, optional, staging test only) is on the six reused event rows, and the under-table note and `Collected Data` list match.
- Instrumentation rules: the event-table row is conditional on the analytics pipeline; verification is in `SPRINT-07` or `SPRINT-08`, before the first counted session, and complete by the start of `SPRINT-09`; the dry run counts only when it is that verification; the separate staging scope is dropped; the `P-nn` code is an explicit exception to the opaque-identifier rule in visibility rule 5, analytics rule 5, usability rule 4, and `A7-DEC-032`.
- Decisions: `A7-DEC-010`'s two `source=usability-test` clauses are marked reversed in part; `A7-DEC-032` states the pipeline-only survival and the participant-code row; its `**Where it lands:**` now includes The Test Record, The Analysis, and Weekly Public Report; the plan's decision audit matches.
- Plan, syllabus, and routers: the plan's introduction, record contents, report contents, examples, coverage table, private repository, decision entries, and audits name the instrumentation, its verification, the comparison, and the test's telemetry export; the syllabus Week 7 and Week 8 rows, objectives, deliverable, and Submission 8; `SKILL.md`'s privacy line.
- Report and meeting examples: the Week 7 summary says what was verified, the Week 8 summary gives the comparison, the handoff and the record's consent and evidence map carry the test's telemetry export, and the customer-meeting design review shows the instrumentation and its verification.
- Usability summaries: the introduction, record contents, full-example introduction, consent and data map, and evidence map are in step.
- Minor: the general-requirements measurement sentence, the guide introduction, the assignment-7 "new event" wording, and the guide's common-mistakes participant link.

Validation on the final tree:

- `pnpm run format:markdown` formatted `requirements/analytics-requirements.md`, `requirements/usability-testing-requirements.md`, `course/plans/a7-plan.md`, and `course/syllabus.md`.
- `pnpm run format:markdown:check` passes.
- `pnpm run lint:markdown` passes.
- `pnpm run test:markdown-format` 34 tests pass.
- `pnpm run test:markdown-rules` 34 tests pass.
- `pnpm run check:lectures` 7 decks match their sources, built with Typst 0.15.1.
- `pnpm run check:links` 3703 total, 841 unique, 3701 OK, 0 errors, 2 excluded.
- `git diff --check` and `git diff --cached --check` pass.

The pre-existing unstaged `TODO.md` and untracked `GOALS.md` were left untouched. The course files are staged; the task-record update is in the worktree. No commit was made.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Reopened and repaired the staged TASK-170 work after review. The Week 6 event table now promises coverage of its metrics and the main flow rather than sufficiency for the Week 7 test; the analytics example is labelled after the Week 7 instrumentation work; the test may choose its instrumentation path and participant link, with the `P-nn` code as an explicit exception to the opaque-identifier rule and `participant_code` on the reused event rows; the separate staging scope is gone; verification is in `SPRINT-07` or `SPRINT-08` before the first counted session and complete by the start of `SPRINT-09`; and the plan, syllabus, routers, report and meeting examples, decision log, and usability summaries are in step.

All nine acceptance criteria and seven Definition of Done items are verified. The Markdown format, format check, lint, both plugin fixtures, the seven lecture decks, and the link check (3703 total, 3701 OK, 0 errors) pass. The pre-existing unstaged `TODO.md` and untracked `GOALS.md` were left untouched, and no commit was made.
<!-- SECTION:FINAL_SUMMARY:END -->
