---
id: TASK-032
title: Require a meeting agenda and questions that serve the target
status: Done
assignee: []
created_date: '2026-10-04 23:45'
updated_date: '2026-10-04 23:47'
labels:
  - docs
dependencies: []
modified_files:
  - requirements/artifact-requirements.md
  - requirements/process-requirements.md
  - guides/customer-kickoff-meeting.md
  - guides/validating-with-the-customer.md
  - assignments/assignment-1.md
  - assignments/assignment-2.md
type: docs
ordinal: 32000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The meeting script had no place to plan what is shown and discussed in which order, and only a guide said questions must serve the meeting's target. Decided: a Required ## Agenda section from W1 for every meeting, a Required rule that every question serves the target (kickoff keeps its five-area floor), plus updates to the example, both meeting guides, both assignments, and the two open TODO comments in guides/validating-with-the-customer.md.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Meeting Script in artifact-requirements.md has a Required ## Agenda section between ## Context and ## Questions: ordered items, each with a timebox, what is shown, and its question numbers
- [x] #2 Meeting Script requires every question to serve the target in ## Context and to sit in exactly one agenda item, including at the kickoff
- [x] #3 The kickoff example script has an ## Agenda and a one-sentence target
- [x] #4 Meeting With The Customer in process-requirements.md links the agenda and target rules rather than restating them
- [x] #5 Both meeting guides have a step on ordering the meeting, and their What You Produce blocks name the agenda
- [x] #6 Both TODO comments in guides/validating-with-the-customer.md are resolved and removed
- [x] #7 assignment-1.md and assignment-2.md name the week's agenda content in the meeting-script item and checklist
- [x] #8 All Markdown gates pass, and no file is created under docs/ or reports/
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
See ~/.claude/plans/do-we-instruct-that-eager-blum.md: 1. Meeting Script rules, table, example. 2. Meeting With The Customer links. 3-4. Order-the-meeting step in both guides; resolve TODOs. 5. Assignment items and checklists. 6. Gates.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Meeting Script items 6-8 are new (target alignment, agenda coverage, what is shown); old 6-7 renumbered to 9-10, and the async item now says the agenda has no timeboxes. Kickoff example agenda sums to 30 minutes. Guide steps renumbered: kickoff Step 4 Order The Meeting (Record -> 5, Roles -> 6); validating Step 4 Order The Meeting (Run -> 5, Trace -> 6); only TOC links pointed at the renumbered anchors. Validation: format:markdown:check, lint:markdown, test:markdown-format, test:markdown-rules, check:lectures all pass.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Meeting scripts now require a ## Agenda (ordered parts, timebox, what is shown, question numbers) and every question to serve the one-sentence target, kickoff included. Example, both meeting guides, both assignments, and process requirements updated; the two TODOs in validating-with-the-customer.md resolved. All Markdown gates and the deck check pass.
<!-- SECTION:FINAL_SUMMARY:END -->
