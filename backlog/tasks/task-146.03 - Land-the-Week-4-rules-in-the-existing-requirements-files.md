---
id: TASK-146.03
title: Land the Week 4 rules in the existing requirements files
status: Done
assignee: []
created_date: '2026-10-20 17:56'
updated_date: '2026-10-20 18:16'
labels: []
dependencies: []
parent_task_id: TASK-146
type: docs
ordinal: 120000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Edit the existing requirements files per section 2 of `course/plans/a4-plan.md`: `general-requirements.md`, `repository-requirements.md`, `definition-of-done-requirements.md`, `issue-tracking-requirements.md`, `user-stories-requirements.md`, `task-issues-requirements.md`, `planning-requirements.md`, `decisions-requirements.md`, `product-vision-requirements.md`, `weekly-report-requirements.md`, and `customer-meetings-requirements.md`. `pull-requests-requirements.md` does not change.
A new obligation arrives in a `**Since: W4**` block inside its section; amended wording is corrected in place under its original marker.
The full examples gain the new fields and lose their `Labels:` lines.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The new identifier rules, the link model, and the traceability rows are in `general-requirements.md`.
- [x] #2 The three issue fields replace the label fallback, and the type rule retires the story and task labels.
- [x] #3 The story criteria are checkboxes and the story and task examples carry `### Specified by` and `### Requirements`.
- [x] #4 The velocity fields, the date fields, the product-vision architecture link, and the weekly-report retrospective row are in place.
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
Edited `general-requirements.md` (W4 families, the file-per-record heading and dropped-form exceptions, the link model with the search rule), `repository-requirements.md` (product-code CI moved to a `W5` block; the `AGENTS.md` recommendation removed), `definition-of-done-requirements.md` (item 2 moved to `W5`), `issue-tracking-requirements.md` (three new fields, the five-field pinning, the six-label retirement, no fallback, the table-view columns), `user-stories-requirements.md` (type, `Specified by`, checkbox criteria and the tick, `MoSCoW` field, allowed `Traces to` origins), `task-issues-requirements.md` (type, `### Requirements`), `planning-requirements.md` (planned and actual velocity), `decisions-requirements.md` (technology choice links the ADR rule), `product-vision-requirements.md` (architecture link), `weekly-report-requirements.md` (retrospective row, no individual assessment, Week 04 example), and `customer-meetings-requirements.md` (the meeting is the Sprint Review). `pull-requests-requirements.md` is unchanged, as the plan says. Validation: the four Markdown gates and `check:links` pass.
<!-- SECTION:NOTES:END -->
