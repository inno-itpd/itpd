---
id: TASK-146.04
title: Write the quality-and-architecture guide and update the two existing guides
status: Done
assignee: []
created_date: '2026-10-20 17:56'
updated_date: '2026-10-20 18:16'
labels: []
dependencies: []
parent_task_id: TASK-146
type: docs
ordinal: 121000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Write `guides/quality-and-architecture.md` per section 3 of `course/plans/a4-plan.md`: a short preamble, `## What You Produce`, seven numbered `## Step N:` sections with their `###` sub-sections, and `## Common Mistakes`, following the shape of `guides/planning-and-tracking.md`.
Link the requirements rather than restating them.
Then update `guides/user-stories-and-prototyping.md` and `guides/planning-and-tracking.md` per section 6.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The guide covers the quality expectations, the requirement, prioritization, the functional requirements, the drivers, the decision records, and the indexes.
- [x] #2 The story guide uses the type and the field values, filters the registry by `User Story`, and shows the criteria as checkboxes.
- [x] #3 The planning guide gains the velocity fields, refinement, the Sprint Review, and the retrospective, each linking the ceremonies file.
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

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Wrote `guides/quality-and-architecture.md` with `## What You Produce`, the seven steps and their 32 sub-sections, and `## Common Mistakes`; updated `guides/user-stories-and-prototyping.md` and `guides/planning-and-tracking.md`. Decision: the registry command lists every issue and reads the highest `US-nn` from the titles rather than filtering by a search qualifier GitHub does not document for issue types, and the type filter is described in prose. Validation: formatted and linted, and `check:links` passes.
<!-- SECTION:NOTES:END -->
