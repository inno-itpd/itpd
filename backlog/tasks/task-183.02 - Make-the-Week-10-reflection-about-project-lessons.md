---
id: TASK-183.02
title: Make the Week 10 reflection about project lessons
status: Done
assignee:
  - '@codex'
created_date: '2026-11-26 13:28'
updated_date: '2026-11-26 13:37'
labels: []
dependencies: []
documentation:
  - assignments/assignment-10.md
  - requirements/weekly-report-requirements.md
modified_files:
  - assignments/assignment-10.md
  - requirements/weekly-report-requirements.md
  - guides/final-sprints.md
  - course/decisions/a9.md
  - course/plans/a9-plan.md
parent_task_id: TASK-183
type: docs
ordinal: 170000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The Week 10 reflection example centers on a feature-specific fix and asks teams to restate a closeout requirement. The reflection should capture what the team learned about running the project and could apply in future work.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Lessons use What happened and Lesson, and the example demonstrates a successful shared practice and a difficulty that yields a transferable lesson.
- [x] #2 The public reflection allows shared working practices, excludes interpersonal conflicts, and leaves individual evaluation to Submission 11.
- [x] #3 The reflection carries no mandatory deletion note, the existing closeout instructions still cover deletion, and the assignment, requirements, guide and decision record agree.
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
1. Revise the reflection requirements, including the format, privacy boundary, and two worked lessons.
2. Align Assignment 10 and the final-sprints guide. Record the decision and add a forward note to the historical plan.
3. Verify the course references and run the repository gates.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Used What happened for successful and difficult project experiences. The worked example covers shared preparation for rotating review leads and agreement on acceptance checks before scheduling work. The shared working practices rule keeps interpersonal conflicts out of the public reflection and points individual evaluation to Submission 11. Verified both example entries and compared closeout and Moodle instructions with HEAD. The changed files pass the repository formatter. The full format check flags only the pre-existing TODO.md draft. Markdown lint, 68 fixture tests, nine lecture deck comparisons and the full link check with fragments passed.

Moved future actions into a Next time field in each lesson and updated the guide and decision record. Both example lessons follow the three-field format. Lint and the full link check passed. The full format check still flags only the pre-existing TODO.md draft.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Updated the Week 10 project reflection format, worked example, privacy boundary and course references. Verified the changed Markdown, links, lecture comparisons and reflection and closeout requirements.
<!-- SECTION:FINAL_SUMMARY:END -->
