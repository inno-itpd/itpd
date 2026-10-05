---
id: TASK-053
title: >-
  Resolve the Week 2 inconsistencies between the meeting, prototype, vision, and
  traceability rules
status: Done
assignee: []
created_date: '2026-10-05 10:02'
updated_date: '2026-10-05 10:03'
labels:
  - docs
dependencies: []
priority: medium
ordinal: 53000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Group B of the assignment 2 review: rules that say slightly different things. The meeting report Metadata offers the script as an alternative to the transcript or notes, the notes row omits the written meeting, a coverage sentence lets notes be refused publication though no rule gives notes a private path, the vision says the diagram is committed in the vision file, a branch name is a way to view a prototype though the branch is disposable, the traceability table omits the story's ASM-nn and lets an ASM-nn alone stand for a prototype, and assignment 2 fixes an agenda order the guide says to set by uncertainty.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The meeting report Metadata links the transcript or the notes, and the meeting script
- [x] #2 The Meeting Notes row of Where Meeting Artifacts Live includes a meeting held in writing
- [x] #3 Permission questions 2 and 3 cover the transcript or notes, notes the customer refused to let you publish are Moodle only, and the A1 and A2 Moodle wrappers list them
- [x] #4 The vision says the context diagram is committed at docs/architecture/context.<ext> or linked view-only
- [x] #5 A prototype is viewed by a screenshot or a view-only link, and a spike branch is not assignment evidence
- [x] #6 The traceability table's story and prototype rows match The Story and Where Prototypes Live
- [x] #7 Assignment 2 and the Every Meeting example put the least-sure of prototype, boundary, and candidate first rather than a fixed order
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
The meeting report Metadata links the transcript or the notes and the script, and the notes row covers a meeting held in writing. Permission questions 2 and 3 now cover notes, notes the customer refused to publish are Moodle only, and the A1 and A2 wrappers list them. The vision places a committed diagram at docs/architecture/context.<ext>. A prototype is viewed by a screenshot or a view-only link, so a spike branch is not evidence. The traceability table's story row names the ASM-nn and its prototype row no longer lets an ASM-nn stand alone. Assignment 2 and the Every Meeting example put the least-sure part first, per the validating guide's Step 4, and A2 adds the kickoff's open questions to the first part. guides/ and lectures/ are unchanged because they already agree.
<!-- SECTION:FINAL_SUMMARY:END -->
