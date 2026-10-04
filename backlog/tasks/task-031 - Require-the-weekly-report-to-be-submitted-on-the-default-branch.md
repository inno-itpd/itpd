---
id: TASK-031
title: Require the weekly report to be submitted on the default branch
status: Done
assignee: []
created_date: '2026-10-04 23:30'
updated_date: '2026-10-04 23:32'
labels:
  - docs
dependencies: []
priority: high
type: docs
ordinal: 31000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
From Week 1, the weekly report and every repository-resident artifact it links must be merged into main (the default branch) before the team submits. repository-requirements.md '## Permalinks And Snapshots' already says the submission commit is a commit on main, but '## Weekly Public Report', course/rules.md, the assignments, and lecture 1 never say the report itself must be on main, so a report left on an unmerged pull-request branch looks submitted. State it once in '## Weekly Public Report' and link it from the other layers. No new deadline: the soft/hard pair in course/rules.md still governs lateness.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 '## Weekly Public Report' in requirements/artifact-requirements.md requires, under Since: W1, that reports/week-NN/README.md and every repository-resident artifact it links are merged into main before submitting, linking '## Permalinks And Snapshots' and the default-branch rule rather than restating them
- [x] #2 course/rules.md says the weekly report is submitted from main and links the requirement, without adding a rule of its own
- [x] #3 The Submission Procedure in assignment-1.md and assignment-2.md starts with merging the report into main, then taking the permalink and the ZIP from that main commit
- [x] #4 The checklist in assignment-1.md and assignment-2.md has one item: the report and its linked files are on main, and the permalink and ZIP point at that commit
- [x] #5 lectures/lecture-1.typ's assignment-submission slide says the report is submitted from main, the PDF is rebuilt with pnpm run build:lectures, and pnpm run check:lectures passes
- [x] #6 No assignment restates the rule, heading anchors resolve, and no file is created under docs/ or reports/
- [x] #7 All Markdown gates pass
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
New item 2 in '## Weekly Public Report' (later items renumbered; nothing referenced them by number), linking #repository-setup and #permalinks-and-snapshots. course/rules.md Short Version item 2 gains one linking sentence. Both assignments' Submission Procedure gain two leading steps (merge into main, take permalink and snapshot from that commit) and one checklist item; neither restates the rule. lecture-1.typ submission slide gains one bullet; PDF rebuilt, still 31 pages. All four Markdown gates and check:lectures pass. Modified files: requirements/artifact-requirements.md, course/rules.md, assignments/assignment-1.md, assignments/assignment-2.md, lectures/lecture-1.typ, lectures/lecture-1.pdf
<!-- SECTION:NOTES:END -->
