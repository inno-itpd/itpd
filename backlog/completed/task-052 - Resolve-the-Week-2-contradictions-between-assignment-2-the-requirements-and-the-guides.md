---
id: TASK-052
title: >-
  Resolve the Week 2 contradictions between assignment 2, the requirements, and
  the guides
status: Done
assignee: []
created_date: '2026-10-05 09:48'
updated_date: '2026-10-05 09:50'
labels:
  - docs
dependencies: []
priority: high
ordinal: 52000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
A review of assignment 2 against requirements/ and guides/ found rules a Week 2 student cannot satisfy together: the story-change comment exemption covers the Week 2 meeting that A2 requires a comment for, the meeting script copies the story list that Where Stories Live forbids, The Story rule 3 and the guide disagree on whether a criterion may name a screen, the US-01 example had one criterion before the meeting, the A2 report lists story issues twice and omits config.yml, a story-only assumption has nothing to put under Supports, and the comparison guide sends an assumption to the customer as a question.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Where Stories Live rule 3 exempts only edits made before the first customer meeting that shows the story, notes and the checklist, and formatting-only changes
- [x] #2 Assignment 2 Part 6 shows the candidate against the issue list filtered by user-story, and the script links that list instead of copying it
- [x] #3 The Story rule 3 limits the ban on team-decided design to the statement, and lets an acceptance criterion name the screen, field, or state an observer checks
- [x] #4 The US-01 full example has two criteria before the meeting, and the meeting adds AC-03
- [x] #5 The Assignment 2 report lists the merged pull request and both green CI runs as repository evidence, with no second list of story issues and no Markdown check coverage row
- [x] #6 The Assignment 2 coverage row for issue forms names config.yml
- [x] #7 An assumption that only a story rests on names that story's VP-nn under Supports
- [x] #8 The comparison guide's ASM-02 sends the payment question to the kickoff report's open questions rather than asking it as an assumption
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
Where Stories Live rule 3 now exempts edits only until the first customer meeting that shows the story, so the Week 2 comment A2 asks for is required. The Story rule 3 limits the design ban to the statement and lets a criterion name what an observer checks. The US-01 example has AC-01 and AC-02 before the meeting, and the meeting adds AC-03. Assignment 2 links the filtered issue list in the meeting rather than copying it, drops the second list of story issues and the Markdown check coverage row, lists both CI runs as repository evidence, and names config.yml. A story-only assumption names its story's VP-nn under Supports, and the comparison guide sends ASM-02's question to the kickoff report's open questions. lectures/ is unchanged because lecture-2 already says the same.
<!-- SECTION:FINAL_SUMMARY:END -->
