---
id: TASK-120
title: Retarget TASK-010 for Week 4
status: Done
assignee:
  - '@opencode'
created_date: '2026-10-12 19:09'
updated_date: '2026-10-13 11:15'
labels: []
dependencies:
  - TASK-109
  - TASK-110
  - TASK-111
  - TASK-118
  - TASK-119
modified_files:
  - >-
    backlog/tasks/task-010 -
    Write-the-Week-3-sprint-estimation-and-retrospective-requirements.md
type: chore
ordinal: 116000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
TASK-010 still asks for Week 3 sprint, estimation, and retrospective requirements against files that no longer exist (`process-requirements.md` and `artifact-requirements.md`), and its `docs/work-plan.md` and `docs/threshold-of-success.md` criteria are owned by the new planning and risk requirements now.
This task retargets TASK-010 to Week 4 (sprint planning, grooming, estimation, and the retrospective against the sprint structure Week 3 defines) as the work lands.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 TASK-010 title, description, acceptance criteria, and references are retargeted to Week 4 sprint planning, grooming, estimation, and `reports/week-NN/sprint-retrospective.md`, against the structure Week 3 defines, and stale file references are gone
- [x] #2 TASK-010 no longer carries the `docs/work-plan.md` and `docs/threshold-of-success.md` criteria, which the planning and risk requirements own now
- [x] #3 `backlog doctor` passes
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

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Rewrite TASK-010 through the CLI: title, description, references, dependencies, modified files, acceptance criteria, plan, and notes, so it names Week 4 ceremonies against the Week 3 sprint structure and no stale file reference remains.
2. Refresh TASK-010 to the configured Definition of Done, which now includes the link check.
3. Verify with `backlog doctor` and the Markdown gates where the change lands, then record the notes, check the criteria, and finish.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Scope (2026-10-13): the maintainer narrowed the task to the TASK-010 retarget; the A3 section of `TODO.md` is left untouched.
TASK-010 now covers the Week 4 ceremonies against the structure Week 3 defines: sprint planning and grooming, estimation, and the retrospective, landing in `requirements/planning-requirements.md`, `guides/planning-and-tracking.md`, `course/syllabus.md`, and the routers.
The stale references are gone: `process-requirements.md`, `artifact-requirements.md`, `backlog.md`, and the `docs/work-plan.md` and `docs/threshold-of-success.md` criteria.
Decisions: the ceremony rules and the `reports/week-NN/sprint-retrospective.md` structure land in `requirements/planning-requirements.md`, which owns the sprint cycle; TASK-010 gains TASK-109, TASK-112, TASK-113, and TASK-118 as dependencies; its references become the 2025 planning sources; its modified files are the seven files the landing edits; its Definition of Done is refreshed to the configured list, which adds the link check; its type is `docs`.
The task file slug keeps its Week 3 name because the CLI does not rename a task file on a title edit, and hand-edits are disallowed, so the drift matches the existing task files.
`modified_files` now names the TASK-010 task file, the file this task changes; the CLI has no option to clear the field.
Validation: `backlog task view TASK-010` shows the new title, description, seven acceptance criteria, references, and dependencies, and a grep for `process-requirements`, `artifact-requirements`, `work-plan`, and `backlog.md` over the file returns nothing.
`backlog doctor` reports no duplicate IDs, self-referential dependencies, or cycles.
`format:markdown` (no changes), `format:markdown:check`, `lint:markdown`, `test:markdown-format` (34 passed), `test:markdown-rules` (34 passed), `check:lectures` (3 decks match Typst 0.15.1), and `check:links` (1157 total, 0 errors, 2 excluded, 1 redirect) all pass.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Retargeted TASK-010 to Week 4: its title, description, references, dependencies, modified files, acceptance criteria, plan, and notes now cover sprint planning, grooming, estimation, and `reports/week-NN/sprint-retrospective.md` against the sprint structure Week 3 defines, the retired `process-requirements.md` and `artifact-requirements.md` references and the plan and threshold criteria are gone, and its Definition of Done carries the link check. TODO.md was left untouched by the maintainer's scope decision. Verified with `backlog doctor` and the Markdown gates, both plugin suites, the deck check, and the link check.
<!-- SECTION:FINAL_SUMMARY:END -->
