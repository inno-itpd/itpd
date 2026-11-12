---
id: TASK-168
title: Make the usability analysis a minimum and allow planned extra measures
status: Done
assignee:
  - '@dsh'
created_date: '2026-11-12 06:21'
updated_date: '2026-11-12 06:26'
labels: []
dependencies: []
priority: medium
type: docs
ordinal: 154000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The Week 7 analysis currently prescribes a list of aggregates but leaves three things fuzzy: the SEQ median is not explicitly per task, the time and completion aggregates do not say they are the main task's, and the quality requirement's "measure" is an instrument rather than a statistic, so a team could write a criterion the analysis plan never reports. The maintainer has settled the design: the current list is the minimum every team reports, with the scope stated; a team may add measures relevant to its product, but only ones the analysis plan names, with their statistic and scope, before the first session; and the four quality-requirement instruments are the menu, not the statistic, so the requirement's criterion uses a statistic the analysis reports.

Files: requirements/usability-testing-requirements.md (The Analysis, The Results And Findings, full example), requirements/quality-requirements-requirements.md (rule 16), guides/usability-testing.md (Step 7, Step 8, the results step), assignments/assignment-7.md (Part 5, Part 7, checklist, What Good Looks Like), course/decisions/a7.md (new A7-DEC-031), and course/plans/a7-plan.md. Keep the assignment a delta against requirements/.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 requirements/usability-testing-requirements.md The Analysis states the minimum measures with their scope: the per-participant table, the main task's aggregate completion (including unaided), the main task's median time, the median SEQ for each task, the SUS mean and median with n, the thematic analysis, severity, telemetry comparison, and limitations
- [x] #2 The Analysis permits additional measures only when the plan names the measure, its statistic, and its scope before the first session, and forbids adding one after the data
- [x] #3 The Results And Findings reports the minimum measures and every additional measure the plan named
- [x] #4 requirements/quality-requirements-requirements.md rule 16 says the four instruments are the menu, not the statistic, and the QR criterion uses a statistic the analysis reports
- [x] #5 guides/usability-testing.md Step 7, Step 8, and the results step match the minimum and the additional-measure rule
- [x] #6 assignments/assignment-7.md Part 5, Part 7, the checklist, and What Good Looks Like match and stay a delta
- [x] #7 course/decisions/a7.md records A7-DEC-031 and course/plans/a7-plan.md is in step
- [x] #8 The Markdown format check, lint, both plugin fixtures, the lecture check, and the link check pass, and the implementation notes record the decisions and validation results
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

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Tightened the Week 7 analysis across the five student-facing files and the maintainer plan. `requirements/usability-testing-requirements.md` The Analysis now states the minimum every team reports, with scope: the per-participant table, the main task's aggregate completion (reached and unaided), the main task's median time, the median SEQ for each task, the SUS mean and median with `n`, and the qualitative analysis. A team may add a measure relevant to its product only when the plan names the measure, its statistic, and its scope before the first session; a measure not in the plan is not added after the data. The Results rule reports the minimum and every additional planned measure.

`requirements/quality-requirements-requirements.md` rule 16 now says the four instruments are the menu, not the statistic: the `Response Measure` uses the main-task completion or assistance count or proportion, the main-task median time, the main-task median SEQ, or the SUS mean or median. The guide's Step 7, Step 8, and results step, the assignment's Part 5, Part 7, checklist, and What Good Looks Like, and `A7-DEC-031` carry the same rule. `course/plans/a7-plan.md` is updated in step, including the decision list and the audits.

Validation: `pnpm run format:markdown` and `pnpm run format:markdown:check` pass; `pnpm run lint:markdown` passes; `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass (17 tests each); `pnpm run check:lectures` passes (7 decks against Typst 0.15.1); `pnpm run check:links` passes (3642 total, 3640 OK, 2 excluded, 0 errors, 1 redirect). `TODO.md` and `GOALS.md` are the maintainer's own changes and were left alone.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Made the Week 7 usability analysis a minimum rather than a menu. Every team reports the per-participant table, the main task's aggregate completion (reached and unaided), the main task's median time, the median SEQ for each task, the SUS mean and median with `n`, and the qualitative analysis; a team may add a product-relevant measure only when the plan names the measure, its statistic, and its scope before the first session. The QR's four instruments are now explicitly the menu, not the statistic: its criterion uses the main-task completion or assistance count or proportion, the main-task median time, the main-task median SEQ, or the SUS mean or median. Added A7-DEC-031, updated the guide, assignment, quality-requirement rule, and A7 plan, and ran the format check, lint, both plugin fixtures, the lecture check, and the link check successfully.
<!-- SECTION:FINAL_SUMMARY:END -->
