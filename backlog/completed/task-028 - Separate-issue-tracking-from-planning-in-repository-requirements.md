---
id: TASK-028
title: Separate issue tracking from planning in repository requirements
status: Done
assignee: []
created_date: '2026-10-04 22:50'
updated_date: '2026-10-04 22:51'
labels:
  - docs
dependencies: []
type: docs
ordinal: 28000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
repository-requirements.md had two TODOs: '## Planning And Issue Tracking' should be about issues only, and the W3 docs/work-plan.md requirement does not belong in the user-story issue section. Decided in review: rename the section to Issue Tracking, move the in-repository task tracker recommendation to its own section, and drop docs/work-plan.md until Week 3 reintroduces it.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The section is '## Issue Tracking' and holds only the W2 issue rules
- [x] #2 The in-repository task tracker recommendation is its own section, '## Tracking Tasks Inside The Repository', Since W2, Recommended
- [x] #3 No requirements file mentions docs/work-plan.md
- [x] #4 Every link to #planning-and-issue-tracking points at #issue-tracking, and the TOC lists both sections
- [x] #5 Both TODO comments are removed
- [x] #6 All Markdown gates pass, and no file is created under docs/ or reports/
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
1. repository-requirements.md: remove TODOs and the W3 work-plan block, rename the section to Issue Tracking, move the backlog.md recommendation to a new section after it, update the TOC. 2. Repoint inbound anchors in process-requirements, artifact-requirements, assignment-2. 3. Update root backlog.md notes. 4. Sweep, format, gates.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Renamed the section to Issue Tracking; the backlog.md recommendation is now '## Tracking Tasks Inside The Repository' (Since W2, Recommended). The docs/work-plan.md requirement is dropped until Week 3 reintroduces it; course/syllabus.md still names it and was left unchanged. Inbound anchors repointed in process-requirements.md, artifact-requirements.md, assignment-2.md. All Markdown gates and check:lectures pass. Modified files: requirements/repository-requirements.md, requirements/process-requirements.md, requirements/artifact-requirements.md, assignments/assignment-2.md
<!-- SECTION:NOTES:END -->
