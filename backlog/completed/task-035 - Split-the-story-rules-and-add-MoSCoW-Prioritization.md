---
id: TASK-035
title: Split the story rules and add MoSCoW Prioritization
status: Done
assignee: []
created_date: '2026-10-05 00:59'
updated_date: '2026-10-05 01:10'
labels:
  - docs
dependencies: []
priority: high
ordinal: 35000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
process-requirements.md had a TODO for a MoSCoW section, and one section held stories, criteria, priority, and the Won't Have lifecycle. The lecture teaches that every label is justified and that Won't Have outlines the boundary, which no requirement stated.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 process-requirements.md has ## User Stories, ## Acceptance Criteria, and ## MoSCoW Prioritization in that order, each Since: W2, and no rule appears in two of them
- [x] #2 MoSCoW Prioritization requires one label and a priority reason per story, at least one story you intend to build below Must Have, the Won't Have lifecycle, no contradiction with the boundary, recorded priority changes, and links the MUP candidate
- [x] #3 No link to #user-stories-and-acceptance-criteria remains outside backlog/
- [x] #4 The issue form spec and both story issue examples carry a Priority reason field
- [x] #5 assignment-2.md states the priority reason and the below-Must rule as a delta and in its checklist
- [x] #6 The guide's Step 4 TODO is gone and it links the MoSCoW section
- [x] #7 The Markdown format check and lint pass
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
Follow ~/.claude/plans/let-s-work-on-todo-foamy-magpie.md: split the section in three, add the MoSCoW rules, retarget anchors, add the Priority reason field, update assignment-2 and the guide, run the gates.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Resolved the in-section TODO by naming each value's moscow:* label next to its definition. All five definition-of-done gates pass, including check:lectures.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Split User Stories And Acceptance Criteria in process-requirements.md into ## User Stories, ## Acceptance Criteria, and ## MoSCoW Prioritization. The new section requires one label and a Priority reason per story, at least one story you intend to build below Must Have, the Won't Have lifecycle, no contradiction with the boundary, recorded priority changes (customer changes in ## Decisions), and links the MUP candidate. Added the required Priority reason form field to repository-requirements and both issue examples in artifact-requirements, retargeted every old anchor, added the delta and checklist line to assignment-2, and replaced the guide's Step 4 TODO with the link and method for writing a reason. Not edited: course/syllabus.md W2 minima and the lecture-2 MoSCoW slide.
<!-- SECTION:FINAL_SUMMARY:END -->
