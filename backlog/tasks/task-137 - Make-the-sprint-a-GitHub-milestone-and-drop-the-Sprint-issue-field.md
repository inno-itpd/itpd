---
id: TASK-137
title: Make the sprint a GitHub milestone and drop the Sprint issue field
status: Done
assignee: []
created_date: '2026-10-13 18:14'
updated_date: '2026-10-13 19:04'
labels: []
dependencies: []
ordinal: 108000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The `Sprint` issue field duplicates what a GitHub milestone already carries, and it makes scheduling a three-field act with a label fallback. The model switches to the platform's own mechanism: each sprint is a GitHub milestone (`SPRINT-nn: <focus>`, due on the week's hard deadline, all seven created when the plan is written, closed when the sprint's release is cut), and an issue is scheduled into its sprint by being assigned to that milestone. The plan's `MLS-nn` increments stay in `docs/project-plan.md` as plan-only sections whose only links are to their sprints; they have no GitHub counterpart and no close action. `Responsible` and `Accountable` stay as the two issue fields, and the assignees rule is unchanged. This revises handoff decisions D2, D5, D6, D7, D14, D33, and D36.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `requirements/issue-tracking-requirements.md` defines two issue fields (`Responsible` and `Accountable`), makes scheduling the act that sets the two values, the two assignees, and the issue into its sprint's GitHub milestone, drops `sprint:*` from the label fallback, and shows the project table view with the built-in `Milestone`, grouped or sorted by it.
- [x] #2 `requirements/planning-requirements.md` makes each sprint a GitHub milestone titled `SPRINT-nn: <focus>` with the week's hard deadline as its due date, created for `SPRINT-03` to `SPRINT-09` when the plan is written and closed when the sprint's release is cut; `**Sprint Backlog:**` links that milestone; the `### MLS-nn` sections drop `**Milestone:**`, have no GitHub counterpart, and complete through the run-end `**Done when:**` check; the full example matches.
- [x] #3 The story and task requirement files carry a `## The Responsible And Accountable Values` section: the two values set when the issue is scheduled, the same act assigning it to its sprint's milestone, and the reschedule rule; their intro sentences and tables of contents follow, and no link points at the old heading anchor.
- [x] #4 `requirements/general-requirements.md` rule 14 names the sprint's GitHub milestone as the carrier of `SPRINT-nn` state, keeps `MLS-nn` out of the `**Status:**` rule with its run of sprints as the record, and leaves `REL-nn` unchanged.
- [x] #5 `guides/planning-and-tracking.md`, `assignments/assignment-3.md`, `course/syllabus.md`, `README.md`, `course/rules.md`, `SKILL.md`, and `AGENTS.md` describe the new model, with no remaining `Sprint` field, `field.Sprint` filter, or three-field wording.
- [x] #6 Open TASK-010 no longer says sprint planning sets the `Sprint` value; it assigns issues to the sprint's GitHub milestone and sets `Responsible` and `Accountable` with the matching assignees.
- [x] #7 `handoff.md` records the new session and revises D2, D5, D6, D7, D14, D33, and D36, including the week minima and the sources note about the `field.Sprint` filter.
- [x] #8 The Markdown format and lint gates, both plugin suites, `check:lectures`, `check:links`, and `backlog doctor` pass.
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
1. Rewrite the requirements files: `issue-tracking` (two fields, scheduling by milestone, fallback, project view), `planning` (sprint as a GitHub milestone, backlog link, plan-only MLS sections, full example), the story and task values sections, and general rule 14.
2. Update the guide and the student-facing files: `guides/planning-and-tracking.md`, `assignments/assignment-3.md`, `course/syllabus.md`, and the routing blurbs in `README.md`, `course/rules.md`, `SKILL.md`, and `AGENTS.md`.
3. Update open TASK-010 and record the session and the decision revisions in `handoff.md`.
4. Run the format, lint, plugin, lecture, link, and backlog gates; record notes and finalize.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Implemented the switch: `SPRINT-nn` is a GitHub milestone (`SPRINT-nn: <focus>`, due on the week's hard deadline, all seven created in Week 3, closed when its release is cut after rescheduling anything open), the `Sprint` issue field is dropped and `Responsible`/`Accountable` stay, scheduling is the milestone assignment plus the two values and assignees, the label fallback carries only the two role labels, the plan's `### MLS-nn` sections are documentation only (fields `Due`, `Done when`, `Sprints`, `Advances`; completion is the run-end `Done when` check), the `**Sprint Backlog:**` field links the milestone page, and the project table view groups by the built-in `Milestone`.
Also updated: the planning guide, Assignment 3, the syllabus, the routers, general rule 14, TASK-010, and `handoff.md` (sixteenth session; D2, D5, D6, D7, D14, D33, and D36 revised).
Validation: `format:markdown` (reformatted the changed files), `format:markdown:check`, `lint:markdown`, `test:markdown-format` (34 passed), `test:markdown-rules` (34 passed), `check:lectures` (3 decks match, Typst 0.15.1), `check:links` (1166 total, 1164 OK, 0 errors, 2 excluded, 1 redirect), and `backlog doctor` (no duplicates, self-references, or cycles).

Superseded in part by TASK-138: the plan milestone's run-end `**Done when:**` check (acceptance criterion 2) is dropped, because a sprint's milestone always closes with its release, so the check had no state and no record of a slip.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Made the sprint a GitHub milestone and dropped the Sprint issue field across the planning, issue-tracking, story, and task requirements, the planning guide, Assignment 3, the syllabus, and the routers; the plan's milestones are documentation only and link to their sprints. Updated TASK-010 and recorded the sixteenth session in handoff.md (D2, D5, D6, D7, D14, D33, and D36 revised). Verified with the Markdown gates, both plugin suites, check:lectures, check:links (0 errors), and backlog doctor.
<!-- SECTION:FINAL_SUMMARY:END -->
