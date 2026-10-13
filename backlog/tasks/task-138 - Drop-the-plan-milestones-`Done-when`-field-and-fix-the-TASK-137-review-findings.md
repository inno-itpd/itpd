---
id: TASK-138
title: >-
  Drop the plan milestone's `Done when` field and fix the TASK-137 review
  findings
status: Done
assignee: []
created_date: '2026-10-13 18:54'
updated_date: '2026-10-13 19:09'
labels: []
dependencies: []
ordinal: 109000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Reviewing TASK-137 found that the plan's milestone lost the record of a failed increment: a sprint's GitHub milestone always closes when its release is cut, so `MLS-nn`'s run-end `**Done when:**` check had no state, no close action, and nowhere to record a failure, while the guide still promised that a slipped step "closes late". The maintainer's decision: drop `**Done when:**`, so a plan milestone is a record of the plan (due date, sprints, advances, and its description) and carries no check and no state. The same change fixes the rest of the review findings: the GitHub Projects label-fallback sentence, the `#issue-fields` section that now owns milestone scheduling, the overloaded word "milestone" in the risks rule and `AGENTS.md`, the guide's claims that plan sections and `**Sprints:**` runs filter issues, the sprint-milestone close missing from Cutting A Release, the milestone-number examples, and the stale handoff lines. Supersedes TASK-137 acceptance criterion 2 (the run-end check).
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `requirements/planning-requirements.md` drops `**Done when:**` from the `### MLS-nn` field list, the description rule, the `**Recommended**` block, and both examples, and the run-end check rule is gone
- [x] #2 `requirements/general-requirements.md` rule 14 says the sprint's GitHub milestone and the release carry their own state and a plan milestone carries none
- [x] #3 `guides/planning-and-tracking.md` drops the exit-check guidance, no longer says a slipped step "closes late", and no longer claims a `**Sprints:**` run or the plan milestone sections filter issues
- [x] #4 `requirements/issue-tracking-requirements.md` splits `## Issue Fields` (the two fields) from `## Scheduling An Issue` (the milestone assignment, the sprint's issue list, the label fallback); every scheduling link points at the new anchor; the project rule says the fallback labels replace the two field columns while grouping stays on `Milestone`
- [x] #5 `requirements/risks-requirements.md` `**Window:**` names a plan milestone, and `AGENTS.md` names the sprint's GitHub milestone in its Scrum paragraph and adds `plan milestone` to Terminology
- [x] #6 `requirements/releases-requirements.md` `## Cutting A Release` names closing the sprint's GitHub milestone after rescheduling open issues, and `requirements/planning-requirements.md` notes that the milestone URL number is GitHub's own
- [x] #7 `handoff.md` records the seventeenth session, revises D6, D7, D15, D24, D33, and D36, and its session count and `TODO.md` line are current
- [x] #8 The Markdown format and lint gates, both plugin suites, `check:lectures`, `check:links`, and `backlog doctor` pass
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
1. Drop `**Done when:**` from the plan milestone in `requirements/planning-requirements.md` (field table, description rule, run-end rule, Recommended block, both examples), and fix the milestone URL note.
2. Rewrite `requirements/general-requirements.md` rule 14: the sprint's GitHub milestone and the release carry state, a plan milestone carries none.
3. Split `requirements/issue-tracking-requirements.md` into `## Issue Fields` and `## Scheduling An Issue`, fix the fallback sentence, and repoint the scheduling links in planning, the guide, and this file.
4. Fix the term-level findings: risks `**Window:**`, `AGENTS.md` terminology and Scrum paragraph.
5. Fix the guide: exit-check guidance, "closes late", the false view claims, and the scheduling link.
6. Add the sprint-milestone close to `requirements/releases-requirements.md` `## Cutting A Release`.
7. Update `handoff.md` (seventeenth session; D6, D7, D15, D24, D33, D36; session count; TODO line) and note the supersession on TASK-137.
8. Run the format, lint, plugin, lecture, link, and backlog gates.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decisions: dropped `**Done when:**` from the plan milestone, so `MLS-nn` is a record of the plan with no check and no state, and rule 14 now says the sprint's GitHub milestone and the release carry their own state and a plan milestone carries none. Gave scheduling its own `## Scheduling An Issue` section in the issue-tracking requirements, so `#issue-fields` owns only the two fields and every scheduling link points at the new anchor. Progress Monitoring, the guide, and Assignment 3 Part 2 now name the project's table view and the sprints' GitHub milestones; the plan's milestone sections are no longer advertised as progress surfaces. Added the sprint-milestone close to `## Cutting A Release` in the release requirements. The plan URL rule notes the milestone number is GitHub's own. `**Window:**`, the AGENTS.md terminology, and its Scrum paragraph now say plan milestone and name the sprint's GitHub milestone.

Validation: `pnpm run format:markdown` (reformatted the changed tracked files), `format:markdown:check`, `lint:markdown`, `test:markdown-format` (34 passed), `test:markdown-rules` (34 passed), `check:lectures` (3 decks match, Typst 0.15.1), `check:links` (1170 total, 1168 OK, 0 errors, 2 excluded, 1 redirect), and `backlog doctor` (no duplicate IDs, self-references, or cycles) all pass. TASK-137 gained a note that TASK-138 supersedes its acceptance criterion 2; `handoff.md` records the seventeenth session and revises D6, D7, D15, D24, D33, and D36.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Dropped the plan milestone's `**Done when:**` field and made it a record of the plan with no check and no state (rule 14 revised), and fixed the TASK-137 review: the issue-tracking requirements split scheduling into `## Scheduling An Issue`, the progress surfaces are the project table view and the sprints' GitHub milestones, the release requirements own the sprint-milestone close, the milestone URL note and the plan-milestone wording are in place, and `handoff.md` and TASK-137 carry the supersession. Verified with the Markdown gates, both plugin suites, check:lectures, check:links (0 errors), and backlog doctor.
<!-- SECTION:FINAL_SUMMARY:END -->
