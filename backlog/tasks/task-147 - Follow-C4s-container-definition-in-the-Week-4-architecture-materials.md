---
id: TASK-147
title: Follow C4's container definition in the Week 4 architecture materials
status: Done
assignee: []
created_date: '2026-10-20 20:41'
updated_date: '2026-10-20 20:45'
labels:
  - docs
dependencies: []
priority: medium
type: docs
ordinal: 126000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Assignment 4 defines a container as a deployable unit. C4 defines it as an application or a data store, a runtime boundary, explicitly not Docker, and not a JAR, DLL, or module. Fix the guide, the architecture requirements, the FR and ADR field descriptions, and the assignment to use C4's wording, and make the C4 page a visible link where the definition is given.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 guides/quality-and-architecture.md#draw-the-container-view defines a container as C4 does, with https://c4model.com/abstractions/container visible as the link text.
- [x] #2 requirements/architecture-requirements.md#container-view states the C4 definition with the visible link once, and its rules say application or data store rather than deployable unit.
- [x] #3 requirements/functional-requirements-requirements.md and requirements/adr-requirements.md call these units C4 containers, not C4 deployable units.
- [x] #4 assignments/assignment-4.md uses the same wording in its objectives, Part 3, and what-good-looks-like section.
- [x] #5 pnpm run format:markdown:check, pnpm run lint:markdown, pnpm run test:markdown-format, pnpm run test:markdown-rules, pnpm run check:lectures, and pnpm run check:links pass.
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
Decisions: the guide owns the explanation and the architecture requirements own the one normative definition with the visible C4 URL; the assignment stays a pointer to the guide, per the layering rules. C4's words are used for the unit (an application or a data store, a runtime boundary) while "deploys or rents" stays as the practical test, and both negatives are named: not a Docker container, and a JAR, DLL, or module organises the code inside one. The history was updated too, at the user's request: a4-plan.md, a5-plan.md, and the two A4-DEC entries now say containers instead of deployable units. Validation: pnpm run format:markdown:check, pnpm run lint:markdown, pnpm run test:markdown-format (34 tests), pnpm run test:markdown-rules (34 tests), pnpm run check:lectures (4 decks match), and pnpm run check:links (1941 OK, 0 errors, the C4 URL included) all pass.
<!-- SECTION:NOTES:END -->
