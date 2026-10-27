---
id: TASK-151
title: Implement Assignment 5 per course/plans/a5-plan.md
status: Done
assignee: []
created_date: '2026-10-27 08:43'
updated_date: '2026-10-27 13:16'
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
- [x] #1 The four new files exist: `assignments/assignment-5.md`, `course/decisions/a5.md` with `A5-DEC-001` to `A5-DEC-033`, `guides/quality-requirement-tests.md`, and `guides/deployment-and-environments.md`.
- [x] #2 The requirements files carry every `**Since: W5**` rule the plan lists, each with one owner, and the quality requirements full example shows one `deployed` and one `CI` test.
- [x] #3 The syllabus, the routers, `AGENTS.md`, and `TODO.md` are updated in step with the week's artifacts, guides, environments, milestones, two stories, and the move of the in-class presentations to Week 7.
- [x] #4 `A3-DEC-018` is marked reversed by `A5-DEC-013`, `A4-DEC-001` and `A4-DEC-024` name `A5-DEC-009` and the new Week 5 heading, and TASK-145 is repointed.
- [x] #5 `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run test:markdown-format`, `pnpm run test:markdown-rules`, and `pnpm run check:links` pass.
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
Implemented Assignment 5 in full from `course/plans/a5-plan.md`, through the seven subtasks TASK-151.01–TASK-151.07, and closed the tree after the final validation.

**What landed**
- TASK-151.01: the `QRT-nn` rules in `requirements/quality-requirements-requirements.md`; the Week 5 identifier rules in `requirements/general-requirements.md`; the `## Quality Requirement Testing Plan`, the multiple-release rule, and the `Since: W5` progress rule in `requirements/planning-requirements.md`; the release claim and the user-visible-only changelog in `requirements/releases-requirements.md`; and the weekly-report pointer in `requirements/weekly-report-requirements.md`.
- TASK-151.02: the `Since: W5` CI block (rules 8–12) and the `## Environments And Deployment` section in `requirements/repository-requirements.md`; the Moodle-only address row and paragraph in `requirements/visibility-requirements.md`; and the Week 5 Definition of Done item in `requirements/definition-of-done-requirements.md`.
- TASK-151.03: `guides/quality-requirement-tests.md` and `guides/deployment-and-environments.md`, plus `## Step 8: Document The Features` in `guides/quality-and-architecture.md` and the milestone note in `guides/planning-and-tracking.md`.
- TASK-151.04: `assignments/assignment-5.md`, twelve parts in `A5-DEC-033`'s order, with the objectives, What Good Looks Like, report, Moodle wrapper, and checklist.
- TASK-151.05: `course/decisions/a5.md` with `A5-DEC-001`–`A5-DEC-033`, and the reversed `A3-DEC-018`, `A4-DEC-001`, `A4-DEC-033`, and `A4-DEC-024` records.
- TASK-151.06: `course/syllabus.md`, `README.md`, `SKILL.md`, `course/rules.md`, `AGENTS.md`, and `TODO.md`, in step with the week's artifacts, guides, environments, milestones, stories, codebase design exercise, and the move of the in-class presentations to Week 7.
- TASK-151.07: the final validation and the backlog settlement.

**Final validation**
All 20 audits in `course/plans/a5-plan.md`'s `## Tests And Validation` were run: scope, contradiction, routing, cross-reference, decision-log, move, level, QRT, testing-plan, environment, milestone, story, codebase-design, check, trace, full-example, CI, release, removal, and deck. Two findings were fixed in the files that own them: `requirements/planning-requirements.md`'s full example gained `MLS-06` and `SPRINT-06` so it shows the two-milestone minimum, and `README.md` stopped calling `REL-05` the "fifth release". `requirements/architecture-requirements.md` was verified rather than changed: its `### Container View` is still the last required view and has no Week 5 forward reference.

**Validation results**
`format:markdown`, `format:markdown:check`, `lint:markdown`, `test:markdown-format` (34 tests), `test:markdown-rules` (34 tests), and `check:lectures` (5 decks, Typst 0.15.1) pass. `check:links` passed with 0 errors twice today on this tree's URL set (2428 links, 2426 OK, 2 excluded); later runs time out only on the external `https://iso25000.com/en/iso-25000-standards/iso-25010` in `course/plans/a4-plan.md`, `course/plans/a5-plan.md`, and `requirements/quality-requirements-requirements.md`, none of which this work edits, and the maintainer accepted that timeout. `lychee --offline --include-fragments .` reports 0 errors over every local link and anchor. `lint:actions` was not run because no workflow changed. `backlog doctor` reports no duplicate IDs, self-referential dependencies, or cycles.

**Backlog**
`A3-DEC-018` reads `Reversed by [A5-DEC-013]`; `A4-DEC-001` and `A4-DEC-033` name `A5-DEC-009` in their statuses, and `A4-DEC-024`'s `**Where it lands:**` names the new Week 5 heading. TASK-145 was repointed from `A5-DEC-017` to `A5-DEC-013`, its description now says the component and sequence views are not required, and it is Done. TASK-151.02 and TASK-151.05 had their Definition of Done #6 checked now that `check:links` has a green run. The task text and `course/plans/a5-plan.md` expected `backlog` 1.45 with no `doctor` command; the installed CLI is 1.52.0, where `doctor` exists and `sequence` does not, so `backlog sequence list --plain` could not be run and the tree was verified with `backlog task list`, `backlog task view`, and `backlog doctor`. No A5 breakdown was added to `TODO.md`; the tree under this task is the breakdown.

**Boundaries**
No file was created under `docs/` or `reports/`, no pitch deck was edited, and no feature index or `FEAT-nn` family was added. No user-staged changes existed; the working tree carries only the validation edits and the Backlog updates.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
## Summary

Implemented the whole Assignment 5 design from `course/plans/a5-plan.md` in the `itpd` course materials, and closed the work after the final validation.

## Changes

- Requirements: the `QRT-nn` rules and the `deployed` level; the Week 5 identifier rules and traceability row; the `## Quality Requirement Testing Plan` and its progress rule; the release claim and user-visible-only changelog; the weekly-report pointer; the `Since: W5` CI block and the `## Environments And Deployment` section; the Moodle-only deployment addresses; and the Week 5 Definition of Done item.
- Guides: `guides/quality-requirement-tests.md`, `guides/deployment-and-environments.md`, the codebase-design step in `guides/quality-and-architecture.md`, and the milestone note in `guides/planning-and-tracking.md`.
- Artifacts and routing: `assignments/assignment-5.md`, `course/decisions/a5.md` with 33 `A5-DEC` entries and the reversed `A3`/`A4` records, and the syllabus, `README.md`, `SKILL.md`, `course/rules.md`, `AGENTS.md`, and `TODO.md`.
- Validation: all 20 plan audits; the planning full example gained `MLS-06` and `SPRINT-06`; the README stopped calling `REL-05` the "fifth release"; TASK-145 was repointed and set Done.

## Validation

`format:markdown:check`, `lint:markdown`, `test:markdown-format` (34 tests), `test:markdown-rules` (34 tests), `check:lectures` (5 decks), and `backlog doctor` pass. `check:links` passed with 0 errors twice on this tree's URL set and later times out only on the external `iso25000.com` URL in files this work does not edit, which the maintainer accepted; `lychee --offline --include-fragments .` reports 0 errors over every local link and anchor.

## Notes

The installed `backlog` is 1.52.0, which has `doctor` but no `sequence` command, so the tree was verified with `backlog task list`, `backlog task view`, and `backlog doctor`.
<!-- SECTION:FINAL_SUMMARY:END -->
