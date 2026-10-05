---
id: TASK-029
title: Say why an in-repository task tracker is recommended
status: Done
assignee: []
created_date: '2026-10-04 23:11'
updated_date: '2026-10-04 23:11'
labels:
  - docs
dependencies: []
modified_files:
  - requirements/repository-requirements.md
  - assignments/assignment-2.md
type: docs
ordinal: 29000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
repository-requirements.md had '<!-- TODO why recommended -->' in '## Tracking Tasks Inside The Repository', and assignment-2.md had a TODO questioning its restated backlog.md recommendation. Decided in review: drop the recommendation from the assignment, give reasons that do not depend on story issues (agent-friendly, decomposes a bigger task inside one pull request), say why it is only Recommended, and add a multi-branch config example.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 '## Tracking Tasks Inside The Repository' gives two reasons: a coding agent can use the tracker, and it breaks a bigger task into subtasks inside one pull request
- [x] #2 The section says why the tracker is Recommended rather than Required, without depending on story issues
- [x] #3 An Example gives backlog/config.yml keys that stop tasks created on different branches from colliding on IDs
- [x] #4 assignment-2.md no longer mentions backlog.md
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

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Reasons are a numbered list under Recommended; the existing scope bullet (not the home of a user story, repository content, not graded) is unchanged. Config keys verified against the installed backlog CLI. All Markdown gates and check:lectures pass. Unrelated won't-have TODO in assignment-2.md left in place.
<!-- SECTION:NOTES:END -->
