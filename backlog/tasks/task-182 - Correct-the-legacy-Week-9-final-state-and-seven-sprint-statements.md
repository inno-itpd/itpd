---
id: TASK-182
title: Correct the legacy Week 9 final-state and seven-sprint statements
status: To Do
assignee: []
created_date: '2026-11-24 21:11'
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
  - course/syllabus.md
modified_files:
  - assignments/assignment-3.md
  - course/decisions/a3.md
  - course/decisions/a7.md
  - course/decisions/a8.md
  - guides/usability-testing.md
  - guides/configuration-management.md
  - requirements/general-requirements.md
  - course/syllabus.md
type: docs
ordinal: 167000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The two-sprint design moves the final repository state and the project reflection to Week 10, makes SPRINT-10 the eighth sprint, and submits the pitch deck only with Submission 10. Assignment 3, the A3/A7/A8 decision logs, two guides, the general-requirements traceability table, and the remaining Week 11 prose still state the one-sprint, seven-sprint, Week 9 design. The a9 implementation does not rewrite those past-week records, so this task corrects them afterwards and keeps the course materials consistent.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 assignment-3.md and course/decisions/a3.md no longer state that the course has exactly seven sprints: they say SPRINT-03 to SPRINT-09 are created in Week 3 and SPRINT-10 is added in Week 9, with the planning sprints rule as the authority
- [ ] #2 The a7.md and a8.md entries that place the reflection, the final repository state, the deck with Submission 9, or the Week 10 rehearsal in the old design carry a forward note or status pointing at the reversing A9-DEC entry, without rewriting the original decision
- [ ] #3 guides/usability-testing.md points the final reflection at the Week 10 project reflection, not Week 9
- [ ] #4 guides/configuration-management.md puts the final repository state in Week 10, not the Week 9 handoff
- [ ] #5 general-requirements.md's Week 9 final reflection traceability row is replaced by a Week 10 project reflection row that cites the UT-nn results, the configuration plan, the retrospectives, and the risks
- [ ] #6 The remaining Week 11 syllabus prose that the a9 renumbering leaves stale is corrected, and no submission number or deadline contradicts the a9 assessment
- [ ] #7 format:markdown:check, lint:markdown, check:links, test:markdown-format, and test:markdown-rules pass
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
