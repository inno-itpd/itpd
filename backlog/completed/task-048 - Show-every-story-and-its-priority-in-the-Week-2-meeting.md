---
id: TASK-048
title: Show every story and its priority in the Week 2 meeting
status: Done
assignee: []
created_date: '2026-10-05 07:59'
updated_date: '2026-10-05 08:05'
labels:
  - docs
dependencies: []
references:
  - assignments/assignment-2.md
priority: medium
ordinal: 48000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Assignment 2, Part 6, item 1, reviews the remaining user stories only if time allows. The customer then sees only the stories inside the minimum usable product candidate, so they cannot promote a Should Have they never saw or demote a Must Have outside the candidate, which defeats the rule that the customer decides the scope (requirements/customer-meetings-requirements.md#every-meeting). Walking every story through its acceptance criteria does not fit in 30 minutes beside the prototype and the boundary, so that review stays optional.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Part 6, item 1, of assignments/assignment-2.md keeps the meeting's target and has the candidate shown against a list of every story with its US-nn, title, and MoSCoW priority, so the customer can move a story into or out of the candidate or change its priority
- [x] #2 Part 6, item 1, keeps a walk through each story's acceptance criteria as optional, only if time allows, and keeps 'do not re-run the kickoff'
- [x] #3 Part 6, item 2, has the minimum usable product candidate part of ## Agenda show that list
- [x] #4 requirements/ and guides/ are unchanged, because the scope rule and the dated-comment rule for a priority change already exist
- [x] #5 The 'What the second meeting asks' slide in lectures/lecture-2.typ says the same, and lectures/lecture-2.pdf is rebuilt from it
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
Part 6 items 1 and 2 of assignments/assignment-2.md now have the candidate shown against every story with its US-nn, title, and MoSCoW priority; the acceptance-criteria walk-through stays optional. requirements/ and guides/ unchanged.

The lecture-2 'What the second meeting asks' slide now shows the candidate next to every story and its priority, with the acceptance-criteria walk-through if time allows; lecture-2.pdf rebuilt.
<!-- SECTION:NOTES:END -->
