---
id: TASK-010
title: >-
  Write the Week 4 sprint planning, grooming, estimation, and retrospective
  requirements
status: To Do
assignee: []
created_date: '2026-10-02 07:07'
updated_date: '2026-10-20 15:59'
labels: []
dependencies:
  - TASK-109
  - TASK-112
  - TASK-113
  - TASK-118
references:
  - tmp/itpd-2025/lectures/lecture-2.1.pdf
  - tmp/itpd-2025/assignments/assignment-2.md
  - tmp/itpd-2025/assignments/assignment-3.md
  - tmp/itpd-2025/assignments/assignment-4.md
  - course/syllabus.md
modified_files:
  - requirements/sprint-ceremonies-requirements.md
  - requirements/issue-types-requirements.md
  - requirements/issue-tracking-requirements.md
  - requirements/planning-requirements.md
  - guides/quality-and-architecture.md
  - course/syllabus.md
  - course/decisions/a4.md
  - README.md
  - SKILL.md
  - course/rules.md
  - AGENTS.md
type: docs
ordinal: 10000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Week 3 defines the sprint structure the Week 4 ceremonies operate: one course week is a sprint, the `SPRINT-03` to `SPRINT-09` sections in `docs/project-plan.md` carry each sprint goal and its `REL-nn` release, each sprint is a GitHub milestone the issues are scheduled into, and `## Progress Monitoring` holds the weekly review, per `requirements/planning-requirements.md` and `requirements/issue-tracking-requirements.md`.
Week 4 adds the ceremonies on top: each sprint starts with planning and grooming, estimation is required as the `Story Points` issue field prescribes, and each sprint ends with a retrospective at `reports/week-NN/sprint-retrospective.md`, per `plan.md`.
The rules land in a new `requirements/sprint-ceremonies-requirements.md` and the issue fields in `requirements/issue-tracking-requirements.md`, the method in `guides/quality-and-architecture.md` or `guides/planning-and-tracking.md`, and the Week 4 deliverables in `course/syllabus.md`, and the routers stay in step in the same change; the plan and threshold structures the planning requirements own are not reopened.
`tmp/itpd-2025/lectures/lecture-2.1.pdf` is the planning source; `tmp/itpd-2025/assignments/assignment-2.md` carries the story-points exercise, and `tmp/itpd-2025/assignments/assignment-3.md` and `assignment-4.md` carry the 2025 sprint review, grooming, and retrospective checklists; estimation has no source material anywhere in the 2025 decks and must be written from scratch.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 The requirements for the ceremonies land in a new `requirements/sprint-ceremonies-requirements.md`, owned there rather than in `planning-requirements.md`, in the file's shape: `## Sprint Planning`, `## Product Backlog Grooming`, `## Estimation`, and `## Retrospective`, each separately anchored, and the plan's `planning-requirements.md#sprints` and `#progress-monitoring` link them rather than restate them
- [ ] #2 Estimation is prescribed as the design session decided, which replaces this task's earlier 'no unit prescribed': the `Story Points` field on a `User Story` and the `Priority` field on a `Task`, their option lists, the `13SP` ceiling, and every story in a sprint's milestone estimated before the work starts
- [ ] #3 `reports/week-NN/sprint-retrospective.md` gets its structure and rules in the ceremonies file: the three headings, the 3+/2-3/3-4 row counts, the `High`/`Medium`/`Low` impact, and the 1-2 actions carried into the next sprint; every sprint from `SPRINT-04` on ends with one, and the weekly report's coverage table links it
- [ ] #4 The retrospective name and path are checked against the Week 9 project reflection and the Week 10 course retrospective, so no two artifacts share the word ambiguously
- [ ] #5 The method lands in a new `guides/quality-and-architecture.md` step on planning, grooming, estimation, and the retrospective, rather than in `guides/planning-and-tracking.md`; or, if it does land in an existing guide, that guide's table of contents and `## What You Produce` stay in step
- [ ] #6 `course/syllabus.md` names the planning record, the estimates, and the retrospective in the Week 4 deliverables and the Submission 4 row
- [ ] #7 The routers stay in step: `README.md`, `SKILL.md`, `course/rules.md`, and `AGENTS.md`'s requirements table and Scrum paragraph name the new file, and a new `A4-DEC` entry records that the ceremonies supersede `A3-DEC-002`'s deferral
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

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Read `tmp/itpd-2025/assignments/assignment-3.md` and `assignment-4.md` for the 2025 sprint review, grooming, and retrospective checklists, and `lecture-2.1.pdf` for the planning vocabulary.
2. Write `requirements/sprint-ceremonies-requirements.md` with its four anchored sections, per `plan.md` section 1, and link it from `planning-requirements.md#sprints` and `#progress-monitoring` rather than restating it.
3. Add the `Story Points` and `MoSCoW` fields on a `User Story` and the `Priority` field on a `Task` to `requirements/issue-tracking-requirements.md#issue-fields`, and the `User Story` and `Task` issue types to `requirements/issue-types-requirements.md`.
4. Add the ceremonies step to `guides/quality-and-architecture.md`, or extend `guides/planning-and-tracking.md` and keep its table of contents and `## What You Produce` in step.
5. Add the planning record, the estimates, and the retrospective to the Week 4 deliverables and the Submission 4 row in `course/syllabus.md`.
6. Update the routers in the same change, record the `A4-DEC` entries in `course/decisions/a4.md`, run the Markdown gates, `check:links`, and `backlog doctor`, and record the notes.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Retargeted by TASK-120: the sprint structure landed in Week 3, so this task keeps the Week 4 ceremonies and drops the plan and threshold structures, which the planning requirements own.
TASK-009 registered the path `reports/week-NN/sprint-retrospective.md` and deferred its structure to this task.
Estimation has no source material anywhere in the 2025 decks, so it must be written from scratch; it is the part students will push back on hardest.
The Week 4 assignment cites the new sections and is its own task, as Assignment 3 was.

Retargeted again by the Assignment 4 design review: see `plan.md` corrections C3, C4, C7, C12 and the Decisions Settled In This Session table. The ceremonies file is its own requirements file so that one rule has one owner; estimation is prescribed; and the retrospective is a coverage row, not a new report section.
<!-- SECTION:NOTES:END -->

## Comments

<!-- COMMENTS:BEGIN -->
created: 2026-10-20 15:59
---
Dropped ideal hours in the Assignment 4 plan revision: `course/plans/a4-plan.md` now prescribes no `Ideal Hours` field and no `8H` ceiling, and a sprint section carries `**Planned Velocity:**` and `**Actual Velocity:**` only, computed from the stories' `Story Points`; a task is ordered by `Priority`.
---
<!-- COMMENTS:END -->
