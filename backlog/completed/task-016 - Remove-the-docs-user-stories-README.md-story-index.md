---
id: TASK-016
title: Remove the docs/user-stories/README.md story index
status: Done
assignee: []
created_date: '2026-10-04 13:03'
updated_date: '2026-10-04 13:09'
labels: []
dependencies: []
modified_files:
  - AGENTS.md
  - assignments/assignment-2.md
  - course/syllabus.md
  - guides/user-stories-and-prototyping.md
  - requirements/artifact-requirements.md
  - requirements/process-requirements.md
  - requirements/repository-requirements.md
priority: high
type: docs
ordinal: 16000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The repository-side story index duplicates what the issues already track: the full list is the `user-story` label filtered issue list, inactive stories carry their reason in the closing comment and their date in the close, and the MUP candidate can live in the Week 2 report. Keeping the index also conflicts with the one-index-per-week rule. Decisions made with the user: delete the `docs/user-stories/` path, make the label filtered issue list the registry, move the minimum usable product candidate and the drop-first choice into `reports/week-02/README.md`, drop the `MUP candidate` milestone, leave the adjacent TODO comments for a later task, and reword the instructor copy in `course/syllabus.md`.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 requirements/artifact-requirements.md and requirements/process-requirements.md make the `user-story` label filtered issue list the registry, keep the issue shape, and no longer require `docs/user-stories/README.md` or its three sections
- [x] #2 requirements/repository-requirements.md opens one issue per story without linking a README file and no longer requires a `MUP candidate` milestone
- [x] #3 assignments/assignment-2.md records the minimum usable product candidate and the drop-first choice in `reports/week-02/README.md`, removes the index from Part 2, the coverage table, and the checklist, and links the `label:user-story` issue list from the vision
- [x] #4 course/syllabus.md Week 2 names the issue list as the registry and the Week 2 report as the MUP home, with no README index or milestone mention
- [x] #5 guides/user-stories-and-prototyping.md and AGENTS.md name the issue list and the Week 2 report instead of `docs/user-stories/README.md`
- [x] #6 A stale-reference sweep finds no `docs/user-stories/README.md`, `us/US-`, `MUP candidate` milestone, or "index and the registry of identifiers" instruction outside the backlog records
- [x] #7 All Markdown gates pass (`format:markdown:check`, `lint:markdown`, `test:markdown-format`, `test:markdown-rules`) and `check:lectures` passes
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Record findings: the index is required in artifact-requirements.md, process-requirements.md, repository-requirements.md, assignment-2.md, course/syllabus.md, guides/user-stories-and-prototyping.md, and AGENTS.md; the MUP candidate lives in the README and the MUP candidate milestone.
2. Edit the two requirements files: make the user-story label filtered issue list the registry, keep the issue shape, and reword inactive reason and date to the closing comment and close date.
3. Edit repository-requirements.md: drop the README link and the milestone, renumber, and reword the Markdown CI rationale.
4. Edit assignment-2.md: link the label filtered issue list from the vision, drop the README step, move the MUP candidate and drop-first choice to reports/week-02/README.md, and update the coverage table and checklist.
5. Edit course/syllabus.md Week 2 deliverables and minima; edit the guide tree and Step 4; edit the AGENTS.md W2 destination map row.
6. Run the stale-reference sweep and the five Markdown and lecture gates; verify links and anchors.
7. Check the acceptance criteria with evidence, record notes, and finalize the task.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Applied the decisions: `docs/user-stories/README.md` and the `docs/user-stories/` path are gone from the materials; the registry is the issue list filtered by the `user-story` label; the MUP candidate and drop-first choice live in `reports/week-02/README.md`; the `MUP candidate` milestone is no longer required. Adjacent TODO comments (issue type, epic vs split parent, meeting-report comment links, backlog.md recommendation, planning-section notes) were left as committed, per the decision.

Two incidental fixes during formatting: `AGENTS.md` at HEAD already failed `format:markdown:check` (introduced by 5f49d79, which put a TODO comment between the destination-map rows without re-running the formatter), and the formatter canonical form splits the map at that comment into two source tables. `requirements/repository-requirements.md` renumbered the W3 project-plan item from 10 to 9 after the milestone item was removed.

Validation: `format:markdown:check`, `lint:markdown`, `test:markdown-format` (34/34), `test:markdown-rules` (34/34), and `check:lectures` (2 decks match, Typst 0.15.1) all pass. A link and heading-anchor checker over every tracked Markdown file outside `backlog/` reports all relative links and anchors resolve. The stale-reference sweep (`docs/user-stories`, `us/US-`, `MUP candidate`, `index and the registry of identifiers`, `linked from that index`, `user-story directory`) matches nothing tracked; the only hits remain in the untracked `backlog.md` and this task file. No commit was made.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Removed the repo-side story index from the Week 2 materials. The `user-story`-label issue list is now the registry, inactive state lives on the closed issues, and the MUP candidate and drop-first choice moved to `reports/week-02/README.md`, dropping the `MUP candidate` milestone. Updated the three requirements files, assignment 2, the guide, the syllabus, and the AGENTS.md destination map. Verified with the five Markdown and lecture gates, a full relative-link and anchor check, and a stale-reference sweep; no tracked references to the old index or milestone remain.
<!-- SECTION:FINAL_SUMMARY:END -->
