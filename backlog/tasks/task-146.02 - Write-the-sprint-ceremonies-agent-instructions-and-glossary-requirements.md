---
id: TASK-146.02
title: 'Write the sprint ceremonies, agent instructions, and glossary requirements'
status: Done
assignee: []
created_date: '2026-10-20 17:56'
updated_date: '2026-10-20 18:16'
labels: []
dependencies: []
parent_task_id: TASK-146
type: docs
ordinal: 119000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Write `requirements/sprint-ceremonies-requirements.md`, `requirements/agent-instructions-requirements.md`, and `requirements/glossary-requirements.md`, per section 1 of `course/plans/a4-plan.md`.
The ceremonies file carries `## Sprint Planning`, `## Product Backlog Refinement`, `## Estimation`, `## Sprint Review`, and `## Retrospective`, each separately anchored, since other files link those anchors.
The agent-instructions file owns the team own `AGENTS.md` and defers the skill installation to `repository-requirements.md`.
The glossary owns `docs/glossary.md` with at least three terms.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The five ceremony anchors exist and the three estimation fields, their options, and the `13` ceiling are stated once.
- [x] #2 The retrospective structure carries the four sections, the row counts, the `Reason` and `Carried` columns, and the first retrospective rule.
- [x] #3 `agent-instructions-requirements.md` states the layout, checks, conventions, and off-limits files, and links the course `SKILL.md` once as the router.
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
Wrote `requirements/sprint-ceremonies-requirements.md` with the five separately anchored sections, `requirements/agent-instructions-requirements.md`, and `requirements/glossary-requirements.md`. Decisions: `## Carried Actions` is the sentence saying there is no previous retrospective in the first file, with its rows shown in the next sprint; the `Carried` flag is `Yes`/`No`; the team `AGENTS.md` example runs `lychee .` for the link check; the glossary example points two terms at `FR-001`. Validation: the four Markdown gates and `check:links` pass.
<!-- SECTION:NOTES:END -->
