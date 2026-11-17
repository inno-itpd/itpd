---
id: TASK-171
title: 'Design Assignment 8: the usability results and the configuration review'
status: Done
assignee: []
created_date: '2026-11-16 20:21'
updated_date: '2026-11-17 11:51'
labels: []
dependencies: []
references:
  - course/plans/a8-plan.md
type: docs
ordinal: 156000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Week 8's materials need the Assignment 8 design written from `course/plans/a8-plan.md`, and they currently contradict each other: the syllabus's Class 8 line describes a lecture that is not taught, its Week 8 deliverables demand a configuration-management implementation the maintainer does not want and a separate improvement plan the students do not need, the weekly-report example pairs the evaluation with that improvement plan while the maintainer wants a maintained configuration plan in `docs/`, and the 2025 self-review rates an attribute grid the 2026 deck does not teach. Week 8 is also the `UT-01` run week, whose results rules are already `**Since: W8**` in the usability requirements but are not yet assigned to anyone.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `requirements/configuration-management-requirements.md` owns the configuration plan, its five groups, its fields, the connections field, the goal-based evaluation with its tradeoffs and its first change, the public review, and the full example
- [x] #2 `requirements/general-requirements.md`, `weekly-report-requirements.md`, `agent-instructions-requirements.md`, `usability-testing-requirements.md`, and the planning example in `planning-requirements.md` carry the `**Since: W8**` additions the plan lists, with `visibility-requirements.md` and `repository-requirements.md` unchanged
- [x] #3 assignments/assignment-8.md carries the thirteen parts in the order the plan gives, as a delta against requirements/, in assignment-7.md's shape
- [x] #4 `guides/configuration-management.md` exists in the guide shape, and the planning and deployment guides point at it
- [x] #5 `course/decisions/a8.md` records every decision, and `A7-DEC-022` is marked `Reversed by A8-DEC-009`
- [x] #6 `course/syllabus.md`, `README.md`, `SKILL.md`, `course/rules.md`, `AGENTS.md`, and `TODO.md` follow the week, with the configuration plan in the `docs/` destination map and the `CFG-nn` convention recorded
- [x] #7 The two stale comments in `lectures/lecture-8.typ` are corrected and the deck check is green
- [x] #8 `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run check:links`, `pnpm run test:markdown-format`, and `pnpm run test:markdown-rules` pass
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
1. Create the new requirements file `requirements/configuration-management-requirements.md` from `course/plans/a8-plan.md`: where the plan and the review live, the `CFG-nn` items and the five groups, the connections, the goal-based evaluation, the recommendation, the public review, and the full example.
2. Apply the `**Since: W8**` changes to `general-requirements.md` (the configuration terms, `CFG-nn` in rule 1, the identifier block, the three traceability rows), `weekly-report-requirements.md` (rule 23, the `## Configuration management` section and coverage rows in the Week 08 example), `agent-instructions-requirements.md` (the `AGENTS.md` link rule), and `usability-testing-requirements.md` (significant = `Critical` or `Major`); update the planning example with the review, `REL-08`'s note, and `SPRINT-09`.
3. Write `guides/configuration-management.md` in the guide shape and point the planning and deployment guides at it.
4. Write `assignments/assignment-8.md` with the thirteen parts, the report section, the wrapper, and the checklist.
5. Write `course/decisions/a8.md`, mark `A7-DEC-022` `Reversed by A8-DEC-009`, and add the `a7-plan.md` forward note.
6. Apply the syllabus Week 8 edits, the router edits (`README.md`, `SKILL.md`, `course/rules.md`, `AGENTS.md`), the `TODO.md` ticks, and the two `lecture-8.typ` comment corrections.
7. Run the audits in the plan's Tests And Validation and the six gates.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Followed `course/plans/a8-plan.md` end to end. The configuration plan's fields, the five groups, the eight-item minimum, the goal-first evaluation, and the public-review rule are in the new requirements file; the assignment is a delta against it.

The plan's Edited Files list was incomplete: it now names the new requirements file, the new guide, the existing requirements files the design changes, and the planning example. The weekly-report example also gained a `## Week 9 handoff` section inside a listed file, so it is not a file-list departure.

The evaluation example cites only `CFG-01` to `CFG-09` and names the artifacts the plan does not carry in words, which is the rule the requirements file states; no out-of-range identifier appears.

Reopened after the Assignment 8 review. Corrected: the `**Sprint Backlog:**` link now points at the sprint's GitHub milestone; the optional change updates the configuration plan only when the change alters what it records; `**Dropped:**` moved after the other `CFG-nn` fields to follow general rule 11; the evaluation stays at `reports/week-08/` for the week the review is held; the example's first change now says what it keeps, and the Method excludes the results of the passing quality tests rather than the tests; the Week 9 traceability rows cite the configuration plan once; the weekly-report example restores the transcript fallback; the plan's Edited Files, Week 9 enactment, requirements-change count, `not prescribed` wording, six `stay`/`stays` corrections, `artefact` spelling, `Dropped` field list, `must meet` wording, and duplicate `**Since: W8**` marker are fixed; the syllabus-objective criterion is relaxed because the students reflect and do not implement a change. `AGENTS.md` remains at 64941 bytes against the 65536 budget; TASK-172 trims it before Week 9. `GOALS.md` is left untracked by decision.

Gates: `format:markdown:check`, `lint:markdown`, `test:markdown-format` (34), `test:markdown-rules` (34), `check:lectures` (8 decks match, PDF unchanged after the comment edits), and `check:links` (4083 links, 0 errors) all pass.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Implemented `course/plans/a8-plan.md` as the Assignment 8 design.

What changed:

- **New:** `requirements/configuration-management-requirements.md` — `docs/configuration-plan.md` and `reports/week-NN/cm-evaluation.md`, the `CFG-nn` items with their five groups and fields, the connections and their kinds, the goal-first evaluation with its tradeoffs and first change, the recommendation, the public review, and the full example.
- **New:** `guides/configuration-management.md` — eight steps and the common mistakes, in the usability guide's shape.
- **New:** `assignments/assignment-8.md` — thirteen parts with the usability results first and the configuration review second, the report section, the Moodle wrapper, the submission procedure, and the checklist.
- **New:** `course/decisions/a8.md` — eighteen `A8-DEC` entries.
- **Requirements deltas:** the configuration terms and `CFG-nn` rules plus three traceability rows in `general-requirements.md`; rule 23 and the Week 08 example (configuration section, handoff section, corrected coverage and contribution tables) in `weekly-report-requirements.md`; the `AGENTS.md` link rule in `agent-instructions-requirements.md`; "significant" defined in `usability-testing-requirements.md`; the planning example gains the review, the `REL-08` note, and `SPRINT-09`.
- **Reversal:** `A7-DEC-022` is `Reversed by A8-DEC-009`, and `a7-plan.md` carries the forward note.
- **Routers and schedule:** the syllabus's Week 8 class line, focus row, objectives, deliverables, catalog row, and Week 9 reflection citation; `README.md`, `SKILL.md`, `course/rules.md`, and `AGENTS.md` link the plan, the requirements, and the guide; `TODO.md`'s A8 lines are ticked; both stale `lecture-8.typ` comments are corrected with the PDF unchanged.

Validation: `format:markdown:check`, `lint:markdown`, both plugin suites, `check:lectures`, `check:links` (4083 links, 0 errors), and `lint:actions` pass. The plan's contradiction, reversal, routing, cross-reference, depth, visibility, week, example, and identifier audits were walked by hand.

Reviewed after the Assignment 8 review and reopened; the corrections are in the implementation notes, and TASK-172 tracks the AGENTS.md trim.
<!-- SECTION:FINAL_SUMMARY:END -->
