---
id: TASK-030
title: Make the minimum usable product candidate prominent and consistent
status: To Do
assignee: []
created_date: '2026-10-04 23:16'
updated_date: '2026-10-04 23:17'
labels: []
dependencies: []
ordinal: 30000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The MUP candidate is defined in one bullet, described as a single story in some places and a subset in others, and its drop-first and decision-row rules are ambiguous. Decisions with the user: keep it in Week 2; a strict non-empty Must Have subset that completes one core task end to end; drop-first is a story inside the candidate; own requirements section, own assignment part, own syllabus deliverable; fix the verdict decision row.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 process-requirements.md has a Since: W2 ## Minimum Usable Product Candidate section with the definition, the core-task subset rule, the drop-first rule, the README location, and the verdict row; User Stories item 9 and Validation link it
- [x] #2 assignment-2.md has its own Part 3 for the candidate, Parts renumbered with anchors fixed, and Objectives, report item, coverage row, meeting verdict row, and checklist agree with the section
- [x] #3 guides/user-stories-and-prototyping.md Step 4 links the rule and gives the core-task-first method
- [x] #4 course/syllabus.md Week 2 lists the candidate as its own deliverable and the Minima agree
- [x] #5 Markdown gates, deck check, link and anchor check pass
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Added ## Minimum Usable Product Candidate (Since: W2) to process-requirements.md: definition, core task, strict Must Have subset completing it end to end, drop-first story inside the candidate, README section, verdict row with Changes as US-nn or None with reason. User Stories item 11 and Validation link it. assignment-2.md gains Part 3 (Parts renumbered 4-8, anchors fixed); Objectives, report item 4, coverage row, meeting verdict row, and checklist now link or match the section. Guide Step 4 links the rule and gives a core-task-first method. Syllabus Week 2 lists the candidate as deliverable 4 and the Minima match. Gates, deck check, and a link/anchor check pass. Lecture deck and untracked backlog.md untouched.
<!-- SECTION:NOTES:END -->
