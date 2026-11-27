---
id: TASK-186
title: Add a checklist to the student pull request template
status: Done
assignee:
  - '@codex'
created_date: '2026-11-27 15:05'
updated_date: '2026-11-27 15:09'
labels: []
dependencies: []
documentation:
  - requirements/pull-requests-requirements.md
modified_files:
  - assignments/assignment-3.md
  - requirements/definition-of-done-requirements.md
  - requirements/pull-requests-requirements.md
  - requirements/releases-requirements.md
  - requirements/task-issues-requirements.md
type: docs
ordinal: 181000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The PR template should prompt authors and reviewers to confirm the checks that require their judgment before merging, with the full standard available from the pull request.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 From Week 3, the pull request requirements specify a short template checklist for the author’s changelog and privacy checks and the reviewer’s task acceptance criteria check.
- [x] #2 The template links to the full Definition of Done and preserves the implementation notes prompts.
- [x] #3 The Definition of Done, task and release requirements, and Assignment 3 point students to the applicable checklist or source rule.
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
1. Add the Week 3 checklist and a complete student template example to the pull request requirements.
2. Link the checklist from the Definition of Done, release and task requirements, and Assignment 3.
3. Verify week applicability, link targets and the existing repository checks.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
The checklist starts in Week 3, when teams publish their Definition of Done. Its scope is pull requests opened by team members. The release requirements own which changes belong in the changelog, and the task issue remains where reviewers tick the acceptance criteria.
Verified the Week 3 example and cross-references. The five changed course files match the repository formatter. The repository-wide format check flagged only pre-existing edits in TODO.md. Markdown lint, both fixture suites (102 tests), all 10 lecture builds, and the full link check (0 errors) passed.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Added a three-item checklist and a complete student pull request template example. Assignment 3 and the Definition of Done, release, and task issue requirements link to the checklist. Verified the changed files with the repository formatter, Markdown lint, both fixture suites, the lecture check, and the full link check.
<!-- SECTION:FINAL_SUMMARY:END -->
