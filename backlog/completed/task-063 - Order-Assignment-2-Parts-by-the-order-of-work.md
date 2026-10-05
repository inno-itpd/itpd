---
id: TASK-063
title: Order Assignment 2 Parts by the order of work
status: Done
assignee: []
created_date: '2026-10-05 15:17'
updated_date: '2026-10-05 15:19'
labels:
  - docs
dependencies: []
ordinal: 63000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
assignment-2.md grouped its Parts by artifact, so an Order Of Work section had to send the reader between Parts. Ordering the Parts as the work happens, and splitting the Parts that mixed two jobs, lets the file read top to bottom without that section.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The Parts of assignment-2.md follow the order the work is done in
- [x] #2 assignment-2.md has no Order Of Work section, and every dependency it stated is stated in the Part it concerns
- [x] #3 Every internal link in assignment-2.md resolves to a heading
- [x] #4 The checklist follows the order of the Parts
- [x] #5 TASK-059 names the Part that now holds the decisions catch-up
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
Reordered assignment-2.md so its eleven Parts follow the work: issue forms and the PR template, the decisions catch-up, the assumptions catch-up, the Markdown check, the vision, the stories, the candidate, the prototype, the kickoff action points, the meeting, and AI usage. Old Part 1 split into the decisions catch-up (Part 2) and the action points (Part 9); old Part 3 split into issue tracking (Part 1), the assumptions catch-up (Part 3), and the stories (Part 6). The Order Of Work section is gone; its two dependencies not stated elsewhere moved into Part 3 (merge both logs before a story links them) and Part 9 (before the meeting). The checklist follows the Parts, and TASK-059 now names Part 2. Verified with the four Markdown gates, check:lectures, and an anchor check.
<!-- SECTION:FINAL_SUMMARY:END -->
