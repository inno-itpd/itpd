---
id: TASK-026
title: Drop superseding and split mechanics from Week 2
status: Done
assignee: []
created_date: '2026-10-04 22:32'
updated_date: '2026-10-04 22:33'
labels:
  - docs
dependencies: []
priority: medium
type: docs
ordinal: 26000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Week 2 is about creating user stories, not manipulating them, yet the W2 rules made every split close its parent as superseded. That excluded decomposition that keeps the parent (the future epic), artifact-requirements.md said the course has no epic artifact, and 'superseded' was defined only through a split. Decided in review: W2 does not talk about superseding at all; a large need is written as several small stories from the start. Backlog item: 'Superseding a parent'.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 No W2 text in requirements/, guides/, or assignments/ mentions superseding, a split parent, or a parent US-nn origin
- [x] #2 The inactive-story close reasons are removed and won't have, consistently across the three requirements files
- [x] #3 process-requirements.md states the one-week size rule once; assignment-2.md links it instead of restating it, and the guide explains it as writing several small stories up front
- [x] #4 artifact-requirements.md no longer says the course has no epic artifact
- [x] #5 All four Markdown gates pass, and no file is created under docs/ or reports/
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. process-requirements.md: inactive definition, origins list, item 8 to the size rule, item 11, traceability table. 2. artifact-requirements.md: origins, close reasons, delete item 3. 3. repository-requirements.md close comment. 4. assignment-2.md: origins, delete step 4 and renumber, step 7, checklist. 5. Guide: Step 2 origins, split paragraph, Common Mistakes. 6. Sweep grep, format, gates.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Assignment step 4 (split) deleted and steps renumbered; artifact-requirements User Stories item 3 deleted and items renumbered. Superseding and decomposition that keeps the parent are deferred to the epics follow-up. Validation: format:markdown:check, lint:markdown, test:markdown-format, test:markdown-rules, check:lectures all pass; rg for supersed/parent US/of a split/epic over requirements, guides, assignments, course, README returns no story-related hit. Modified files: requirements/process-requirements.md, requirements/artifact-requirements.md, requirements/repository-requirements.md, assignments/assignment-2.md, guides/user-stories-and-prototyping.md
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Removed superseding, split parents, and the parent US-nn origin from the W2 materials; inactive reasons are now removed and won't have; the split rule became a one-week size rule in process-requirements.md; the no-epic-artifact sentence is gone. Verified with the four Markdown gates, check:lectures, and a sweep grep.
<!-- SECTION:FINAL_SUMMARY:END -->
