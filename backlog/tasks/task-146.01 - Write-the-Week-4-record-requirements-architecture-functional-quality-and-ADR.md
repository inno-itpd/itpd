---
id: TASK-146.01
title: >-
  Write the Week 4 record requirements: architecture, functional, quality, and
  ADR
status: Done
assignee: []
created_date: '2026-10-20 17:55'
updated_date: '2026-10-20 18:16'
labels: []
dependencies: []
parent_task_id: TASK-146
type: docs
ordinal: 118000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Write `requirements/architecture-requirements.md`, `requirements/functional-requirements-requirements.md`, `requirements/quality-requirements-requirements.md`, and `requirements/adr-requirements.md`, per section 1 of `course/plans/a4-plan.md`.
Each file is flat in `requirements/`, carries `**Since: W4**` markers, a ToC, `Required` / `Recommended` / `Example` labels, and one full example set in the meeting-booking example.
The architecture document links the drivers to the sections and files that hold them and carries the decision index; the product vision keeps the scope.
The FR index, the QR index as the priority matrix, and the ADR decision index are the three indexes.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The four files exist with the sections and anchors the plan names, including `architecture-requirements.md#architectural-decisions` and the FR and QR indexes.
- [x] #2 `FR-nnn` and `ADR-nnn` take three digits and `QR-nn` takes two, and the FR example carries `### AC-nn` criteria with anchors.
- [x] #3 The quality requirement example carries one ISO/IEC 25010:2023 pair and the six scenario parts, and the testability requirement is rated `High` with its reason.
- [x] #4 Each file ends with one full example in the meeting-booking example.
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
Wrote `requirements/architecture-requirements.md` and `requirements/adr-requirements.md`, plus `requirements/functional-requirements-requirements.md` and `requirements/quality-requirements-requirements.md`. Decisions: the decision index owns the active/inactive order and the ADR file links it; the ADR example uses relative links inside `docs/`; the FR index and QR priority matrix are the two indexes the architecture drivers link; the testability requirement is `High` with the course-as-business reason; the `**Since: W4**` marker is not repeated under `## Full Example`, matching the pre-W4 files. Validation: `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `test:markdown-format`, `test:markdown-rules`, and `check:links` all pass.
<!-- SECTION:NOTES:END -->
