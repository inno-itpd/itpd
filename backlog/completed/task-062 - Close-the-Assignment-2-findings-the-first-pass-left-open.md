---
id: TASK-062
title: Close the Assignment 2 findings the first pass left open
status: Done
assignee: []
created_date: '2026-10-05 14:58'
updated_date: '2026-10-05 15:13'
labels:
  - docs
dependencies:
  - TASK-061
priority: medium
ordinal: 62000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
TASK-061 fixed the places where assignment-2.md blocked a student, and left these open. B11: Part 4 step 3 lets the verdict drop a US-nn from the candidate without saying whether the story keeps Must Have. The candidate's location is stated three times: the Part 4 rule bullet, Part 4 step 1, and README item 3. Part 1 says twice where an outcome is recorded: rule bullet 4 and step 3. Part 6's Validation bullet repeats Part 5's link. Part 8's This week is a remark, not a requirement. What Good Looks Like asks for three or four Must Have stories next to the candidate's recommended two or three without relating them. The fixes introduced two more: the script now lists the candidate's US-nn, which a student may read against the no-second-list rule in user-stories-requirements.md, and TASK-059 AC #2 still names the Changes column that Part 1 no longer mentions. The Order Of Work section restates each Part's dependencies, so it has to follow any change to them. The heading Assignment Report In The Repository stays, because Assignment 1 shares it.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Part 4 step 3 says what happens to the priority of a story the verdict removes from the candidate
- [x] #2 Assignment 2 states the candidate's location once outside the README list
- [x] #3 Part 1 says once where an action point's outcome is recorded
- [x] #4 Part 5 and Part 6 no longer link Validation for the same point
- [x] #5 Part 8's This week gives a requirement for the week, or is removed
- [x] #6 The Must Have bullet in What Good Looks Like relates its count to the candidate's two or three stories
- [x] #7 Part 6 step 2 says the script lists the candidate's US-nn only, so it is not a second list of stories
- [x] #8 Assignment 2 uses story issue and weekly public report consistently
- [x] #9 TASK-059 AC #2 names the Part 1 catch-up mapping rather than the Changes column
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Proposed fixes: (1) Part 4 step 3: a story removed from the candidate keeps its priority unless the customer also changed it, recorded per MoSCoW rule 6. (2) Drop Part 4 step 1 and renumber. (3) Fold Part 1 step 3's path into step 2. (4) Reword Part 5's Validation bullet to prototyping the least-sure part only. (5) Part 8: say which stories or criteria an AI tool drafted and what changed in them, or delete the line. (6) Add 'of which two or three make up the candidate' to the Must Have bullet. (7) Part 6 step 2: the IDs only; the issues stay the stories' only text. (8) Edit TASK-059 AC #2 with the CLI.

Applied: (1) as proposed. (2) as proposed. (3) Part 1 step 3 deleted instead of folded, because Part 6 step 3 already gives the path and rule bullet 4 the meeting report. (4) as proposed; disposability stays with the Where Prototypes Live bullet and the checklist. (5) This week removed rather than given a requirement. (6) as proposed. (7) as proposed. (8) Objectives and the coverage row say story issues; the Part 3 heading keeps User Stories, because it names the activity. Weekly public report was already consistent. (9) TASK-059 AC #2 rewritten; the assumptions catch-up in Part 3 step 2 is left out of TASK-059. Order Of Work needed no change, because no dependency moved.
<!-- SECTION:NOTES:END -->
