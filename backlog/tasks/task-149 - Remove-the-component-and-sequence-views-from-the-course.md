---
id: TASK-149
title: Remove the component and sequence views from the course
status: Done
assignee: []
created_date: '2026-10-25 13:26'
updated_date: '2026-10-25 13:26'
labels: []
dependencies: []
references:
  - course/plans/a5-plan.md
  - requirements/architecture-requirements.md
  - guides/quality-and-architecture.md
  - lectures/lecture-2.typ
  - course/decisions/a4.md
modified_files:
  - course/plans/a5-plan.md
  - course/plans/a4-plan.md
  - requirements/architecture-requirements.md
  - guides/quality-and-architecture.md
  - course/decisions/a4.md
  - AGENTS.md
  - TODO.md
  - lectures/lecture-2.typ
  - lectures/lecture-2.pdf
type: docs
ordinal: 128000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Assignment 5 planned a component view and a sequence view on top of Assignment 4's container view. The course now stops at the container view, so the two views are removed rather than deferred: the A5 plan covers the quality requirement tests, the testing plan, and continuous integration only. The decision is `A5-DEC-009` in `course/plans/a5-plan.md`, which records the removal and the reversal of `A4-DEC-033`'s Week 5 views clause; the Week 5 verification work proves requirements and names no view.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 course/plans/a5-plan.md covers the tests, the testing plan, and CI only: no part, guide step, edge case, or audit expects a component or sequence view, and the guide is guides/quality-requirement-tests.md
- [x] #2 requirements/architecture-requirements.md no longer carries the Week 5 rule that added `## Component View` and `## Sequence View`, its numbered rules run on without a gap, and the container view is stated as the last view the document gains
- [x] #3 The deferrals are gone: course/plans/a4-plan.md, AGENTS.md's destination map, TODO.md, and lectures/lecture-2.typ no longer promise the two views
- [x] #4 course/decisions/a4.md's A4-DEC-033 names the reversal in its status and points at the plan, and A5-DEC-009 records it
- [x] #5 pnpm run format:markdown:check, lint:markdown, test:markdown-format, test:markdown-rules, check:lectures, check:links, and backlog doctor pass
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
Decisions: the views are removed, not deferred. The plan keeps decision slots 9-11 so A5-DEC-017 and A5-DEC-018 keep their IDs and TASK-145's criterion stays valid. The guide is guides/quality-requirement-tests.md, because the week adds tests and CI, not views. A4-DEC-033's status names the reversal and points at the plan until course/decisions/a5.md exists. lectures/lecture-2.typ's context-diagram slide now names the Week 4 container view instead of promising components, and its PDF was rebuilt.

Validation: pnpm run format:markdown:check, lint:markdown, test:markdown-format (34 tests), test:markdown-rules (34 tests), check:lectures (5 decks match, Typst 0.15.1), check:links (1951 OK, 0 errors), and backlog doctor all pass.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
The component and sequence views are removed from the course, so Assignment 5 covers the tests, the testing plan, and CI, and the architecture document stops at the container view.
<!-- SECTION:FINAL_SUMMARY:END -->
