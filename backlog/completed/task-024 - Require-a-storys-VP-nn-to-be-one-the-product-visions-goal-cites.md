---
id: TASK-024
title: Require a story's VP-nn to be one the product vision's goal cites
status: Done
assignee: []
created_date: '2026-10-04 21:35'
updated_date: '2026-10-04 21:51'
labels:
  - docs
dependencies: []
references:
  - lectures/AGENTS.md
priority: high
type: docs
ordinal: 24000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Lecture 2 draws the chain as GAP-nn, VP-nn -> the vision -> US-nn, while the requirements make a story trace to exactly one VP-nn and never to the vision. The vision has no identifier, so tracing a story to it directly would carry no information; the VP-nn is the story's link to the vision. Nothing currently requires that VP-nn to be one the vision's goal traces to, so a story can serve a value proposition the team did not commit to and still pass. Follows TASK-023, which introduced the Traces to list.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 process-requirements.md story item 4 requires the story's VP-nn to be one the product vision's goal traces to, and says what to do when the story needs a VP-nn the goal does not cite
- [x] #2 assignment-2.md Part 2 and the checklist state the constraint as a delta linking the requirement, without restating it
- [x] #3 guides/user-stories-and-prototyping.md explains that a story reaches the vision through its VP-nn, and every heading anchor still resolves
- [x] #4 lectures/lecture-2.typ states on the chain or story slide that a story reaches the vision through its VP-nn; lecture-2.pdf is rebuilt, the page count stays 27, and check:lectures passes
- [x] #5 All four Markdown gates and check:lectures pass, and every touched relative link and heading anchor resolves
- [x] #6 No file is created under docs/ or reports/
- [x] #7 The VP-nn is the only required Traces to entry apart from a split child's parent, and no file requires the no-gap line
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
The VP-nn is a story's link to the vision; the vision has one goal and no identifier, so a direct trace would carry no information. The constraint applies to active stories only, so a Won't Have story may keep a VP-nn outside the goal. An active story outside the goal either adds its VP-nn to the goal as a team decision or becomes Won't Have. The lecture-2 chain slide's story bullet names the VP-nn; the PDF is rebuilt, still 27 pages, and the bullet fits on one line. Gates: format check, lint, both fixtures (34/34 each), and check:lectures all pass.

Modified files: requirements/process-requirements.md, assignments/assignment-2.md, guides/user-stories-and-prototyping.md, lectures/lecture-2.typ, lectures/lecture-2.pdf

Decided in review: the VP-nn alone is enough. Origins are optional context, the no-gap line is removed, and 'plus any origins' now reads 'optional origins'. The split child still names its parent. Also modified: requirements/artifact-requirements.md, requirements/repository-requirements.md.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
An active story's VP-nn must be one the product vision's goal traces to, since the VP-nn is how a story reaches the vision; a story outside the goal adds its VP-nn to the goal as a team decision or becomes Won't Have. Decided in review that the VP-nn is the only required Traces to entry apart from a split child's parent: origins are optional and the no-gap line is gone from the requirements, assignment-2, and the guide. The lecture-2 chain slide names the VP-nn on the story bullet; the PDF is rebuilt and stays 27 pages. Verified: format:markdown:check, lint:markdown, test:markdown-format (34/34), test:markdown-rules (34/34), and check:lectures (2 decks match, Typst 0.15.1) pass; a search finds no leftover no-gap or required-origin wording; no file under docs/ or reports/.
<!-- SECTION:FINAL_SUMMARY:END -->
