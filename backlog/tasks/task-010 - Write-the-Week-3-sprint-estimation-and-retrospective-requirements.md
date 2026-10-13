---
id: TASK-010
title: >-
  Write the Week 4 sprint planning, grooming, estimation, and retrospective
  requirements
status: To Do
assignee: []
created_date: '2026-10-02 07:07'
updated_date: '2026-10-13 11:11'
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
  - requirements/planning-requirements.md
  - guides/planning-and-tracking.md
  - course/syllabus.md
  - AGENTS.md
  - README.md
  - SKILL.md
  - course/rules.md
type: docs
ordinal: 10000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Week 3 defines the sprint structure the Week 4 ceremonies operate: one course week is a sprint, the `SPRINT-03` to `SPRINT-09` sections in `docs/project-plan.md` carry each sprint goal and its `REL-nn` release, the `Sprint` issue field schedules the issues, and `## Progress Monitoring` holds the weekly review, per `requirements/planning-requirements.md` and `requirements/issue-tracking-requirements.md`.
Week 4 adds the ceremonies on top: each sprint starts with planning and grooming, estimation is required with no unit prescribed, and each sprint ends with a retrospective at `reports/week-NN/sprint-retrospective.md`, per the Scrum paragraph in `AGENTS.md`.
The rules land as `**Since: W4**` sections in `requirements/planning-requirements.md`, the method in `guides/planning-and-tracking.md`, and the Week 4 deliverables in `course/syllabus.md`, and the routers stay in step in the same change; the plan and threshold structures the planning requirements own are not reopened.
`tmp/itpd-2025/lectures/lecture-2.1.pdf` is the planning source; `tmp/itpd-2025/assignments/assignment-2.md` carries the story-points exercise, and `tmp/itpd-2025/assignments/assignment-3.md` and `assignment-4.md` carry the 2025 planning, grooming, and retrospective checklists; estimation has no source material anywhere in the 2025 decks and must be written from scratch.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 `requirements/planning-requirements.md` gains a `**Since: W4**` section for sprint planning and grooming, in the file's shape: planning opens the sprint, selects its issues from the product backlog, sets their `Sprint`, `Responsible`, and `Accountable` values and the matching assignees, and replaces the provisional goal with the sprint goal; grooming keeps the product backlog ready between sprints; the section cites the Week 3 sprint and issue-field rules rather than restating them, and the file's table of contents and `Required`/`Recommended`/`Example` labels stay in step
- [ ] #2 Estimation is required with no unit prescribed: the approach is decided and stated in `requirements/planning-requirements.md`, or deliberately left to teams with the reason recorded, and story points stay unprescribed unless that decision changes
- [ ] #3 `reports/week-NN/sprint-retrospective.md` gets its structure and rules in `requirements/planning-requirements.md`, and every sprint from `SPRINT-04` on ends with a retrospective that the weekly report links as a supporting artifact
- [ ] #4 The retrospective name and path are checked against the Week 9 project reflection and the Week 10 course retrospective, so no two artifacts share the word ambiguously
- [ ] #5 `guides/planning-and-tracking.md` gains the planning, grooming, estimation, and retrospective method, with its table of contents and `## What You Produce` in step and its links to the new sections
- [ ] #6 `course/syllabus.md` names estimation in the Week 4 entry, where it moved from the Week 3 lecture line, and the sprint retrospective wherever the sprint design requires it
- [ ] #7 The routers stay in step: `AGENTS.md` names the ceremony and retrospective rules in its map and ownership rows and its `reports/week-NN/` shape sentence accounts for the retrospective, and `README.md`, `SKILL.md`, and `course/rules.md` name them where they route to `requirements/planning-requirements.md` and `guides/planning-and-tracking.md`
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
1. Read `tmp/itpd-2025/assignments/assignment-3.md` and `assignment-4.md` for the 2025 planning, grooming, and retrospective checklists, and `lecture-2.1.pdf` for the planning vocabulary.
2. Decide the estimation approach: state it, or leave the unit to teams and record the reason.
3. Write the `**Since: W4**` sections in `requirements/planning-requirements.md` first: sprint planning and grooming, estimation, and the `reports/week-NN/sprint-retrospective.md` structure, citing the Week 3 sprint and issue-field rules.
4. Extend `guides/planning-and-tracking.md` with the ceremony, estimation, and retrospective method, keeping its table of contents and `## What You Produce` in step.
5. Add estimation and the retrospective to the syllabus where the sprint design requires them.
6. Update the routers in the same change, run the Markdown gates, `check:links`, and `backlog doctor`, and record the notes.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Retargeted by TASK-120: the sprint structure landed in Week 3, so this task keeps the Week 4 ceremonies and drops the plan and threshold structures, which the planning requirements own.
TASK-009 registered the path `reports/week-NN/sprint-retrospective.md` and deferred its structure to this task.
Estimation has no source material anywhere in the 2025 decks, so it must be written from scratch; it is the part students will push back on hardest.
The Week 4 assignment cites the new sections and is its own task, as Assignment 3 was.
<!-- SECTION:NOTES:END -->
