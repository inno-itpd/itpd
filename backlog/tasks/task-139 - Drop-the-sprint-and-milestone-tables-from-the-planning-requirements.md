---
id: TASK-139
title: Drop the sprint and milestone tables from the planning requirements
status: Done
assignee: []
created_date: '2026-10-13 20:11'
updated_date: '2026-10-13 20:13'
labels: []
dependencies: []
modified_files:
  - requirements/planning-requirements.md
  - assignments/assignment-3.md
  - guides/planning-and-tracking.md
type: docs
ordinal: 110000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
`docs/project-plan.md` requires two index tables in `requirements/planning-requirements.md`: `## Sprints` with the columns `Sprint`, `Due`, and `Release`, and `## Milestones` with the columns `Milestone` and `Due`. The tables restate what the sections already carry (the milestone `**Due:**` field and the nested `#### REL-nn` release) or what GitHub carries (each sprint is a GitHub milestone with its due date), so the plan reads as an index instead of as sections. Remove both table requirements, move the sprint due date into each `### SPRINT-nn` section as a `**Due:**` field, and bring the part list, the full example, the assignment, and the guide in line; the threshold statements table stays.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `requirements/planning-requirements.md` requires no `## Sprints` or `## Milestones` table: each `### SPRINT-nn` section carries `**Due:**` and `**Sprint Backlog:**`, each `### MLS-nn` section keeps `**Due:**`, `**Sprints:**`, and `**Advances:**`, and the part list and the full example match.
- [x] #2 `assignments/assignment-3.md` and `guides/planning-and-tracking.md` no longer refer to a plan table and name the sprint `**Due:**` field where they describe the sections.
- [x] #3 The threshold of success, its field table, and its statements table are unchanged.
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
1. In `requirements/planning-requirements.md`, drop the `## Sprints` and `## Milestones` table rules, make `**Due:**` and `**Sprint Backlog:**` the `### SPRINT-nn` fields, and update the part list, the sprints example, and the full example.
2. In `assignments/assignment-3.md` and `guides/planning-and-tracking.md`, replace the table descriptions with the section shape and name the sprint `**Due:**` field.
3. Run `pnpm run format:markdown`, `format:markdown:check`, `lint:markdown`, both vitest suites, `check:lectures`, `check:links`, and `backlog doctor`.
4. Verify the acceptance criteria, record implementation notes, and close the task.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decisions: the sprint and milestone index tables are removed rather than made optional; the sprint due date moves into each `### SPRINT-nn` section as `**Due:**`, before `**Sprint Backlog:**`, so the plan loses no information; the milestone table was a pure index, because each `### MLS-nn` section already carries `**Due:**`, `**Sprints:**`, and `**Advances:**`. The threshold field table and statements table are untouched. Follow-up references updated in `assignments/assignment-3.md` (rules list and checklist) and `guides/planning-and-tracking.md` (What You Produce and Step 4).
Validation: `format:markdown` (normalized the new field table and TODO.md), `format:markdown:check`, `lint:markdown`, both vitest suites (34 and 34), `check:lectures` (3 decks), `check:links` (1170 total, 0 errors, 2 excluded, 1 redirect, fragments included), and `backlog doctor` all pass.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Removed the `## Sprints` and `## Milestones` index-table rules from `requirements/planning-requirements.md`; each `### SPRINT-nn` section now carries `**Due:**` and `**Sprint Backlog:**`, each `### MLS-nn` section keeps its fields, and the part list, the sprints example, and the full example match. `assignments/assignment-3.md` and `guides/planning-and-tracking.md` no longer mention a plan table and name the sprint `**Due:**` field. The threshold of success is unchanged. Verified with `format:markdown:check`, `lint:markdown`, both vitest suites (34 and 34), `check:lectures` (3 decks), `check:links` (1170 total, 0 errors, fragments included), and `backlog doctor`.
<!-- SECTION:FINAL_SUMMARY:END -->
