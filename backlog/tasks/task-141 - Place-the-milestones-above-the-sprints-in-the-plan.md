---
id: TASK-141
title: Place the milestones above the sprints in the plan
status: Done
assignee: []
created_date: '2026-10-13 20:52'
updated_date: '2026-10-13 20:57'
labels: []
dependencies: []
type: docs
ordinal: 112000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
In `docs/project-plan.md`, the plan carries its sprints before its milestones: `requirements/planning-requirements.md` puts `## Sprints` before `## Milestones` in its part list, its section order, its TOC, and its full example, and Assignment 3 and the guide mirror that. The roadmap is the milestones, so the plan should read from the path to the threshold to the weeks that walk it: the parts become milestones, then sprints, then progress monitoring. The A3 "Above sprints, no table" note in `TODO.md` tracks this, and the "no table" half landed in TASK-139. No heading text changes, so the anchors and every cross-file link stay.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `requirements/planning-requirements.md` carries the plan parts as milestones, then sprints, then progress monitoring: the part list, the `## Milestones` and `## Sprints` section order, the TOC, and the full example all match, with every anchor unchanged.
- [x] #2 `guides/planning-and-tracking.md` writes the milestones before the sprints: Step 3 is Write The Milestones and Step 4 is Write The Sprints And Their Releases, with the TOC, the What You Produce line, and both section bodies matching.
- [x] #3 `assignments/assignment-3.md` Part 2 carries the milestones before the sprints in its rule bullets, its this-week items, its method links, and the checklist.
- [x] #4 `handoff.md` D5 carries the new order and the session log records the session; the A3 "Above sprints, no table" note in `TODO.md` is ticked.
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
1. `requirements/planning-requirements.md`: move `## Milestones` above `## Sprints`; reorder the TOC, the part list, the progress monitoring sentence, and the full example; anchors stay unchanged.
2. `guides/planning-and-tracking.md`: swap Steps 3 and 4, so Step 3 is Write The Milestones and Step 4 is Write The Sprints And Their Releases; update the TOC and the What You Produce line.
3. `assignments/assignment-3.md`: the Part 2 order statement and rule bullets, the this-week item order, the method links, and the checklist.
4. `handoff.md`: revise the D5 order list and add the nineteenth-session line; `TODO.md`: tick the A3 "Above sprints, no table" note.
5. Gates: `pnpm run format:markdown`, `format:markdown:check`, `lint:markdown`, both vitest suites, `check:lectures`, `check:links`, and `backlog doctor`; then the implementation notes and the final summary.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decisions: the plan reads milestones, then sprints with their nested `REL-nn`, then progress monitoring, because the roadmap is the path to the threshold and the weeks walk it; the part list, the section order, the TOC, and the full example move together and no heading text changes, so every anchor and cross-file link stays. The guide swaps its steps 3 and 4, so Step 3 is Write The Milestones and Step 4 is Write The Sprints And Their Releases, and Assignment 3 Part 2 carries the same order in its rule bullets, this-week items, method links, and checklist. `handoff.md` D5 is reordered with a nineteenth-session line; the A3 "Above sprints, no table" note is ticked. The coverage-list summaries that state no order (`SKILL.md`, `README.md`, `course/rules.md`, `course/syllabus.md`, the `AGENTS.md` tables) are left as they are. Modified files: `requirements/planning-requirements.md`, `guides/planning-and-tracking.md`, `assignments/assignment-3.md`, `handoff.md`, `TODO.md`.

Validation: `pnpm run format:markdown` (no changes), `format:markdown:check`, `lint:markdown`, `test:markdown-format` (34 passed), `test:markdown-rules` (34 passed), `check:lectures` (3 decks, Typst 0.15.1), `check:links` (1174 total, 0 errors, 2 excluded, 1 redirect, fragments included), and `backlog doctor` (no duplicates, self-references, or cycles) all pass; the first link run hit one transient GitHub 502 on an actions URL in `TODO.md` that answered 200 on a re-run.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Put the milestones above the sprints in the plan: `requirements/planning-requirements.md` carries the parts as milestones, then sprints, then progress monitoring, with the TOC, the part list, and the full example matching; `guides/planning-and-tracking.md` makes Step 3 Write The Milestones and Step 4 Write The Sprints And Their Releases; `assignments/assignment-3.md` Part 2 and its checklist follow; `handoff.md` D5 and `TODO.md` record the change. Verified with both Markdown gates, both vitest suites (34 and 34), `check:lectures` (3 decks), `check:links` (1174 total, 0 errors, fragments included), and `backlog doctor`.
<!-- SECTION:FINAL_SUMMARY:END -->
