---
id: TASK-054
title: Let a code spike link its code as a closed pull request
status: Done
assignee: []
created_date: '2026-10-05 10:09'
updated_date: '2026-10-05 10:09'
labels:
  - docs
dependencies: []
priority: medium
ordinal: 54000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
A prototype is viewed by its screenshot or a view-only link, and its spike branch is disposable, so a reader cannot see the spike's code once the branch is deleted. A pull request closed without merging keeps its commits after the branch is deleted, so it is a link that survives.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Where Prototypes Live rule 2 lets a code spike also link its code as a pull request closed without merging, rather than the branch
- [x] #2 The prototyping guide's code spike paragraph shows how to open, close, and link that pull request
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Where Prototypes Live rule 2 lets a code spike link its code as a pull request closed without merging, which stays readable after the branch is deleted, while the screenshot stays the evidence and the branch stays disposable. The prototyping guide shows how: open the pull request with its task issue, close it unmerged, and link it rather than the branch. repository-requirements.md, assignment 2, and lecture 2 already agree, so they are unchanged.
<!-- SECTION:FINAL_SUMMARY:END -->
