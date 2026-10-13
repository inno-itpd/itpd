---
id: TASK-140
title: Require only the MUP milestone and free the further milestone set
status: Done
assignee: []
created_date: '2026-10-13 20:38'
updated_date: '2026-10-13 20:41'
labels: []
dependencies: []
type: docs
ordinal: 111000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
In `requirements/planning-requirements.md`, the `## Milestones` section requires at least two plan milestones: `MLS-03` for the MUP and a second one for the next increment, and its `**Sprints:**` runs must together name every sprint from `SPRINT-03` to `SPRINT-09`, so each sprint belongs to exactly one milestone. That makes a further milestone mandatory and forces the team to invent increments it cannot yet see. Week 3 requires one milestone, `MLS-03`, whose focus is the MUP; further milestones are the choice of the team, written when it defines the increment one delivers, and the runs stay disjoint and consecutive, each ending in the week its milestone is due. A sprint no milestone covers is still planned in its section and scheduled in its own GitHub milestone. Bring the guide, Assignment 3, the handoff, and the TODO note in line.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `requirements/planning-requirements.md` requires one milestone, `MLS-03` (the MUP), leaves further milestones to the team, drops the "runs together name every sprint" and "each sprint belongs to exactly one" wording, and keeps the `**Sprints:**` runs disjoint and consecutive, each ending in the week its milestone is due.
- [x] #2 `guides/planning-and-tracking.md` names `MLS-03` as the one milestone the plan must carry, no longer ties every goal to a milestone, and replaces full sprint coverage with at-most-one coverage.
- [x] #3 `assignments/assignment-3.md` Part 2 item 4, the objectives line, What Good Looks Like, and the checklist require `MLS-03` and leave further milestones to the team.
- [x] #4 `handoff.md` records the revision to D7 and brings the D27 outline and minima in line; the "Only for MUP" TODO note is ticked.
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
1. `requirements/planning-requirements.md`: the `## Milestones` intro and rules 6-7 require one milestone, `MLS-03` (the MUP); further milestones are the choice of the team, and the `**Sprints:**` runs stay disjoint and consecutive, each ending in the due week, without naming every sprint.
2. `guides/planning-and-tracking.md`: Step 2 names `MLS-03` as the required one, drops the every-goal-gets-a-milestone push, and replaces full sprint coverage with at-most-one coverage.
3. `assignments/assignment-3.md`: the objectives line, Part 2 item 4, What Good Looks Like, and the checklist.
4. `handoff.md`: the session log, D7, the D27 outline and minima, and the recent-task list; `TODO.md`: tick the "Only for MUP" note.
5. Gates: `pnpm run format:markdown`, `format:markdown:check`, `lint:markdown`, both vitest suites, `check:lectures`, `check:links`, and `backlog doctor`; then the implementation notes and the final summary.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decisions: Week 3 requires one plan milestone, `MLS-03`, whose focus is delivering the MUP; further milestones are the choice of the team, written when the team defines the increment each delivers and numbered by its due week. The earlier rules are dropped (at least two milestones, the runs together naming `SPRINT-03` to `SPRINT-09`, and each sprint belonging to exactly one milestone); the runs stay disjoint, consecutive, and ending in the due week, and a sprint no run names is still planned and scheduled in its own GitHub milestone. No heading or anchor changed, so the routing and the guide step links stand, and the "active milestone" phrasing stays because a team may still have more than one. Modified files: `requirements/planning-requirements.md`, `guides/planning-and-tracking.md`, `assignments/assignment-3.md`, `handoff.md`, `TODO.md`.
Validation: `pnpm run format:markdown` (no changes needed), `format:markdown:check`, `lint:markdown`, `test:markdown-format` (34 passed), `test:markdown-rules` (34 passed), `check:lectures` (3 decks, Typst 0.15.1), `check:links` (1174 total, 0 errors, 2 excluded, 1 redirect, fragments included), and `backlog doctor` (no duplicates, self-references, or cycles) all pass.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Week 3 now requires one plan milestone, `MLS-03`, the MUP milestone; further milestones are the choice of the team, written when the team defines the increment each delivers, and the `**Sprints:**` runs stay disjoint, consecutive, and ending in the due week, without naming every sprint. Updated `requirements/planning-requirements.md`, `guides/planning-and-tracking.md`, `assignments/assignment-3.md`, the D7 revision and D27 lines in `handoff.md`, and the "Only for MUP" TODO note. Verified with `format:markdown:check`, `lint:markdown`, both vitest suites (34 and 34), `check:lectures` (3 decks), `check:links` (1174 total, 0 errors, fragments included), and `backlog doctor`.
<!-- SECTION:FINAL_SUMMARY:END -->
