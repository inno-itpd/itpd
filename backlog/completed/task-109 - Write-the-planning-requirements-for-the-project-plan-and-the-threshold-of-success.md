---
id: TASK-109
title: >-
  Write the planning requirements for the project plan and the threshold of
  success
status: Done
assignee: []
created_date: '2026-10-12 19:09'
updated_date: '2026-10-12 19:27'
labels: []
dependencies: []
references:
  - course/syllabus.md
  - requirements/assumptions-requirements.md
  - requirements/product-vision-requirements.md
modified_files:
  - requirements/planning-requirements.md
type: docs
ordinal: 105000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Assignment 3 needs a normative home for the project plan and the threshold of success: the old requirements layout left both as a `## Later Weeks` placeholder, and no requirements file owns them, so the assignment has no rules to cite.
This task creates `requirements/planning-requirements.md` for `docs/project-plan.md` (never `docs/work-plan.md`) and `docs/threshold-of-success.md`.
The plan is the sprint, milestone, and release schedule plus progress monitoring: sprints give each submission week a timebox and a release, and milestones give the multi-sprint increments and the path to the threshold of success.
The threshold is the minimal SMART set the project success rests on, and the method that produces it lives in `guides/planning-and-tracking.md`, not in the artifact.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The new file follows every artifact file reading order: where the artifact lives, one section per part, then a compressed full example, with `**Since: W3**` markers and `Required`/`Recommended`/`Example` labels
- [x] #2 `docs/project-plan.md` is two index tables plus a section per unit: `## Sprints` with the columns `Sprint` linked to its section, `Due`, and `Release` linked `#rel-nn`, `## Milestones` with the columns `Milestone` linked and `Due`, and `## Progress Monitoring` last
- [x] #3 Each `### SPRINT-nn` opens with its goal in one sentence and carries the `**Sprint Backlog:**` field, a link to the issue view filtered by the field value (`field.Sprint:SPRINT-03`); a later sprint states a provisional goal, and its nested `#### REL-nn` heading stands alone until the release is published
- [x] #4 Each `### MLS-nn` opens with the fields `**Milestone:**` (the GitHub milestone title `MLS-nn: <focus>` as link text, linked to the milestone), `**Due:**`, `**Done when:**`, `**Sprints:**`, and `**Advances:**`, then a `Required` description whose first sentence states what the increment delivers; the number is the due week, so a week without a milestone leaves a gap
- [x] #5 The milestone rules are stated: a milestone is a multi-week increment due at the end of a week, the team chooses its set, and the Week 3 minimum is `MLS-03` (deliver the MUP) plus one more for the next increment
- [x] #6 Each `## TOS-nn` opens with `**Status:**` (`Open`, `Achieved`, `Missed`, `Dropped`) and carries `**Measure:**`, plus `**Outcome:**`, `**Changed:**`, and `**Dropped:**` per the settled lifecycle; the file recommends 3 to 5 goals, a goal is set `Missed` as soon as that is certain and the verdict is final, and dropping or changing a goal cites the customer `DEC-nnn`
- [x] #7 `## Progress Monitoring` is a `- **Label:** value` list naming the team weekly review cadence (which reviews `docs/threshold-of-success.md` and `docs/risks.md`), who checks, and where progress is visible, and it links `docs/risks.md` once; the plan keeps no contingency section
- [x] #8 The full example is compressed: both tables, a concrete sprint with its tagged release, a later provisional sprint with an untagged release, one milestone, and one or two `TOS-nn`
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
- [ ] #6 `pnpm run check:links` passes
- [x] #7 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Write `requirements/planning-requirements.md` in the artifact-file shape: where the two files live, one section each for sprints, releases, milestones, progress monitoring, and the threshold of success, then a compressed full example.
2. Fix the sprint, milestone, release, and TOS shapes per D5 to D9 and D32 to D34, with the `**Since: W3**` marker and the `Required`, `Recommended`, and `Example` labels.
3. Run the Markdown gates, both vitest suites, the deck check, and the link check, and record the results.
4. Check the acceptance criteria and leave the `check:links` DoD item open until TASK-110 and TASK-112 land.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decided in this session: write the file with its final links to `guides/planning-and-tracking.md` (TASK-112) and `requirements/risks-requirements.md` (TASK-110) and validate the gate later; `check:links` now reports exactly those two files and passes once TASK-110 and TASK-112 land.
The plan rules split into Sprints, Releases, Milestones, and Progress Monitoring, because `REL-nn` nests in its sprint section but has its own lifecycle (D32).
The compressed full example keeps both tables, SPRINT-03 with the tagged REL-03, SPRINT-04 provisional with the bare REL-04 heading, the MLS-03 section, and TOS-01 (Open, with `**Changed:**`) and TOS-02 (Missed, with `**Outcome:**`), plus the Progress Monitoring list; the milestone table shows MLS-03 and MLS-05 so the expected gap is visible.
Validation: `format:markdown` and `format:markdown:check`, `lint:markdown`, both vitest suites (34 and 34), and `check:lectures` (3 decks, Typst 0.15.1) pass. `check:links`: 823 total, 3 errors, all the two forward references; a focused lychee run on the new file: 31 total, 28 OK, 3 errors, the same two files. DoD item 6 stays open until TASK-110 and TASK-112 land.
Side effect: `pnpm run format:markdown` also normalized the working-tree `TODO.md`; its A3 content is unchanged.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Wrote requirements/planning-requirements.md, owning docs/project-plan.md (sprints, releases, milestones, and progress monitoring) and docs/threshold-of-success.md (the TOS-nn lifecycle), with a compressed full example; every gate passes except check:links, which stays open until TASK-110 and TASK-112 land.
<!-- SECTION:FINAL_SUMMARY:END -->
