---
id: TASK-182
title: Correct the legacy Week 9 final-state and seven-sprint statements
status: To Do
assignee: []
created_date: '2026-11-24 21:11'
updated_date: '2026-11-26 12:16'
labels: []
dependencies: []
references:
  - course/plans/a9-plan.md
  - course/decisions/a9.md
  - assignments/assignment-3.md
  - course/decisions/a3.md
  - course/decisions/a7.md
  - course/decisions/a8.md
  - guides/usability-testing.md
  - guides/configuration-management.md
  - requirements/general-requirements.md
  - course/plans/a7-plan.md
  - requirements/configuration-management-requirements.md
  - requirements/weekly-report-requirements.md
modified_files:
  - assignments/assignment-3.md
  - course/decisions/a3.md
  - course/decisions/a7.md
  - course/decisions/a8.md
  - guides/usability-testing.md
  - guides/configuration-management.md
  - requirements/general-requirements.md
  - requirements/configuration-management-requirements.md
  - requirements/weekly-report-requirements.md
  - course/plans/a7-plan.md
type: docs
ordinal: 167000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Align the deferred older course materials with the two-sprint design in course/plans/a9-plan.md. The final state and project reflection are Week 10 work, SPRINT-10 is the eighth sprint, and the pitch deck is a separate Moodle submission. The A9 implementation already updates the syllabus, reversed decision statuses, Assignment 8, and the directly contradicted report and traceability passages.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 Assignment 3 and the A3 log point to the planning rule for the initial milestones and the Week 9 addition of SPRINT-10.
- [ ] #2 Remaining A7 and A8 historical statements point forward to the A9 design without rewriting original decisions or their already updated statuses.
- [ ] #3 The usability-testing and configuration-management guides and configuration-management requirements place the reflection and final repository state in Week 10.
- [ ] #4 The A7 plan carries a forward note for the two-sprint design, separate pitch deck submission and Week 10 final state.
- [ ] #5 Correct any remaining legacy Week 9 and seven-sprint prose in the listed requirements, preserving the A9 report and traceability corrections.
- [ ] #6 The Markdown and link gates pass.
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
- [ ] #6 `pnpm run check:links` passes
- [ ] #7 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->
