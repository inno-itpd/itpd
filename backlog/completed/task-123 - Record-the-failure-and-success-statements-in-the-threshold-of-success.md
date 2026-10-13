---
id: TASK-123
title: Record the failure and success statements in the threshold of success
status: Done
assignee:
  - '@opencode'
created_date: '2026-10-13 05:39'
updated_date: '2026-10-13 05:44'
labels: []
dependencies: []
references:
  - requirements/planning-requirements.md
  - guides/planning-and-tracking.md
  - AGENTS.md
modified_files:
  - requirements/planning-requirements.md
  - guides/planning-and-tracking.md
  - AGENTS.md
type: docs
ordinal: 119000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The threshold artifact keeps only the kept set today, and the guide calls the failure statements working notes that do not go into the file. The maintainer TODO in the planning requirements asks to keep the failure and success statements below the goals for traceability, so every goal shows the failure it answers and the minimal set stays visible as a choice. This task lands that: the table as a Required part of `docs/threshold-of-success.md`, the guide rewritten to match, and the routing and handoff updated.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 requirements/planning-requirements.md drops the TODO, rewrites the file-holds sentence, and adds the Required rules for the `## Failure And Success Statements` table: the columns `Goal | Success statement | Failure statement`, one row per failure statement with its conversion, rows grouped by goal in `TOS-nn` order with the rows no goal covers last, every `TOS-nn` tracing to at least one row, and the table written once and never edited or removed.
- [x] #2 Its rule 2 of `## Where The Plan And The Threshold Live` names the table beside the `TOS-nn` sections, and the Full Example shows the table with a merged goal and an uncovered row.
- [x] #3 guides/planning-and-tracking.md: Step 5 keeps the minimal set without deleting the statements, the working-notes sentence records them instead, and the intro, What You Produce, and the example name the table.
- [x] #4 AGENTS.md describes the planning file as the goals and the statements they came from in the repository map and the layering table, and the Terminology list gains `failure statement` and `success statement`.
- [x] #5 handoff.md records the ninth session, revises D9, and adds D35; the TASK-121 clause about other TODO comments in the planning requirements is corrected.
- [x] #6 The gates pass: `format:markdown`, `format:markdown:check`, `lint:markdown`, both test suites, `check:links`, and `backlog doctor`.
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
1. Land the table rules and the Full Example in requirements/planning-requirements.md.
2. Flip the guide: Step 5, the file sentence, the intro, What You Produce, and the example.
3. Update AGENTS.md rows and terminology.
4. Record the ninth session, revise D9, and add D35 in handoff.md; correct TASK-121.
5. Run the gates and finalize this task.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decisions: the threshold file keeps the failure and success statements the set came from, in a Required `## Failure And Success Statements` table below the goals, with the columns `Goal | Success statement | Failure statement`; rows are grouped by goal in `TOS-nn` order with the uncovered rows last, one row per failure statement, every `TOS-nn` tracing to at least one row, and the table written once as the session wrote it. The Full Example in the requirements shows a merged goal and an uncovered row; the guide now records the statements in Step 5, the file sentence, the Step 1 intro, the What You Produce line, and the example; and AGENTS.md describes the planning file as the goals and the statements they came from and lists `failure statement` and `success statement` in the terminology. handoff.md records the ninth session, revises D9, and adds D35. TASK-121 was found already satisfied by commit 7ead60c and is closed with its scope clause reworded. Validation: format:markdown (reformatted AGENTS.md), format:markdown:check, lint:markdown, test:markdown-format 34 passed, test:markdown-rules 34 passed, check:lectures (3 decks, Typst 0.15.1), check:links (988 total, 986 OK, 0 errors, 2 excluded), and backlog doctor clean.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Recorded the failure and success statements in the threshold: a Required table below the goals with the columns Goal | Success statement | Failure statement, rows grouped by goal with the uncovered rows last and written once; the Full Example, the planning guide, the AGENTS.md routing rows, and the terminology now match, and handoff.md carries the ninth session, the revised D9, and D35.
<!-- SECTION:FINAL_SUMMARY:END -->
