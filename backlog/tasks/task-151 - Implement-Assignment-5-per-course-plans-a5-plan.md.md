---
id: TASK-151
title: Implement Assignment 5 per course/plans/a5-plan.md
status: To Do
assignee: []
created_date: '2026-10-27 08:43'
updated_date: '2026-10-27 08:47'
labels:
  - assignment-5
  - course-materials
dependencies: []
priority: high
ordinal: 130000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Implement the whole Assignment 5 design in `course/plans/a5-plan.md`: the quality requirement tests (`QRT-nn`) and the testing plan, the CI checks and the unit tests, the university VM environments and the manual deployment with `docs/deployment.md`, the milestone and story minima, the codebase design exercise, `REL-05`, the Sprint Review, the retrospective, and the AI usage report.

The design is `course/plans/a5-plan.md`; read it first. Its `## Scope And Contradictions`, `## Design Decisions`, `## Changes To The Requirements`, `## New And Edited Guides`, `## The Parts Assignment 5 Carries`, `## Edited Files Outside requirements/`, and `## Tests And Validation` are the specification, and its `## Assumptions` and `## Edge Cases And Failure Modes` are the boundaries.

The work is split into the subtasks below, in dependency order (`backlog sequence list --plain`):
- TASK-151.01 — Land the Week 5 quality requirement test and testing plan rules.
- TASK-151.02 — Land the Week 5 CI, environment, deployment, and visibility rules.
- TASK-151.03 — Write the quality requirement tests and deployment guides.
- TASK-151.04 — Write `assignments/assignment-5.md`.
- TASK-151.05 — Write `course/decisions/a5.md` and update the reversed decision records.
- TASK-151.06 — Update the syllabus, routers, `AGENTS.md`, and `TODO.md` for Week 5.
- TASK-151.07 — Run the A5 gates and audits and settle the backlog.

Each subtask is a work order for an independent session: it carries the files it changes, its acceptance criteria, and its dependencies. This parent closes when all seven are Done.

Constraints: this work lives in the `itpd` course repository only; no file is created under `docs/` or `reports/`, no pitch deck is edited, and no feature index or `FEAT-nn` family is added. Leave the user's staged changes in place.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 The four new files exist: `assignments/assignment-5.md`, `course/decisions/a5.md` with `A5-DEC-001` to `A5-DEC-033`, `guides/quality-requirement-tests.md`, and `guides/deployment-and-environments.md`.
- [ ] #2 The requirements files carry every `**Since: W5**` rule the plan lists, each with one owner, and the quality requirements full example shows one `deployed` and one `CI` test.
- [ ] #3 The syllabus, the routers, `AGENTS.md`, and `TODO.md` are updated in step with the week's artifacts, guides, environments, milestones, two stories, and the move of the in-class presentations to Week 7.
- [ ] #4 `A3-DEC-018` is marked reversed by `A5-DEC-013`, `A4-DEC-001` and `A4-DEC-024` name `A5-DEC-009` and the new Week 5 heading, and TASK-145 is repointed.
- [ ] #5 `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run test:markdown-format`, `pnpm run test:markdown-rules`, and `pnpm run check:links` pass.
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
- [ ] #6 `pnpm run check:links` passes
- [ ] #7 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->
