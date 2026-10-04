---
id: TASK-025
title: Explain how specific a user story may be
status: Done
assignee: []
created_date: '2026-10-04 22:18'
updated_date: '2026-10-04 22:19'
labels:
  - docs
dependencies: []
references:
  - lectures/AGENTS.md
priority: medium
type: docs
ordinal: 25000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The W2 materials enforced 'need, not design' with an absolute rule that a story never names a screen, a button, or a component. That is right for the team's own design but wrong for a detail the customer has settled, such as an external system the user already works with. process-requirements.md also said a story's job is to make a gap concrete, which contradicts letting a story trace to any origin. Backlog item: 'Better explain the concept of a user story'.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 process-requirements.md says a story makes one need concrete, not a gap
- [x] #2 process-requirements.md story item 3 states the who-settled test: a story leaves out what only the team decides and may carry what the user or customer settled, in an acceptance criterion or a constraint by default and in the statement only when the specific is itself the need
- [x] #3 guides/user-stories-and-prototyping.md Step 2 explains how specific a story should be, with a meeting booking app example, the context diagram cross-check, and that stories sharpen closer to being built; Common Mistakes names the too-vague story
- [x] #4 assignment-2.md links the rule instead of restating it and no longer mentions epics
- [x] #5 lectures/lecture-2.typ states that a story leaves the solution open, adds a How specific? slide with a booking app example, resolves the examples TODO, and records the change in the header; lecture-2.pdf is rebuilt at 28 pages and check:lectures passes
- [x] #6 All four Markdown gates and check:lectures pass, and no file is created under docs/ or reports/
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
Decided in review: the test is who settled the detail, with timing as a note, since customer decisions usually arrive close to building. A settled detail goes in an acceptance criterion by default, a vision constraint when product-wide, and the statement only when the specific is itself the need. The example is the coach's calendar (Google Calendar), not payment, to stay in the meeting booking app; Google Calendar sits outside the boundary on the context diagram. Epics and features stay out of W2, so the assignment's epic clause is deleted rather than scoped. The wording avoids 'does not constrain the solution space', because every requirement constrains it.

Modified files: requirements/process-requirements.md, guides/user-stories-and-prototyping.md, assignments/assignment-2.md, lectures/lecture-2.typ, lectures/lecture-2.pdf
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
A story states the problem precisely and leaves the solution open. Story item 3 in process-requirements.md replaces the absolute screen/button/component ban with the who-settled test and the placement rule, and the intro says a story makes one need concrete rather than a gap. The guide adds a How specific passage with the calendar example and a too-vague-story mistake; assignment-2 links the rule and drops the epic clause; lecture 2 rewords the story slide, tightens the example notes, and adds a How specific? slide (28 pages). Verified: format:markdown:check, lint:markdown, test:markdown-format (34/34), test:markdown-rules (34/34), and check:lectures (2 decks match, Typst 0.15.1) pass; no file under docs/ or reports/.
<!-- SECTION:FINAL_SUMMARY:END -->
