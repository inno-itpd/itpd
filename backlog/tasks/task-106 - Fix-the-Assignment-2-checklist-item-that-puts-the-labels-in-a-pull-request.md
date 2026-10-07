---
id: TASK-106
title: Fix the Assignment 2 checklist item that puts the labels in a pull request
status: To Do
assignee: []
created_date: '2026-10-07 20:52'
labels: []
dependencies: []
ordinal: 102000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The Assignment 2 checklist (assignments/assignment-2.md, Submission Checklist) says "user-story.yml, task.yml, config.yml, and the labels, in one pull request". Labels are repository settings, not files, so no pull request can contain them. Part 1 step 1 says it correctly: merge the forms pull request and create the labels. The autochecker A2 rubric (frozen at a949e8d) checks only that the labels exist.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 The checklist item says the forms are added in one pull request and the labels are created, matching Part 1 step 1
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
