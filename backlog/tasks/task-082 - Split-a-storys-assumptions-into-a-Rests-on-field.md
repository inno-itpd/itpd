---
id: TASK-082
title: Split a story's assumptions into a Rests on field
status: To Do
assignee: []
created_date: '2026-10-06 12:26'
labels: []
dependencies: []
ordinal: 78000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Decided on 2026-10-06.
Problem: a story's `Traces to` held three relations: the VP it supports, its origins (GAP, DEC, action point), and the ASMs it rests on. GAP and VP keep `Rests on` separate, so one relation had two names. Nothing required a story's GAP-nn to be one that its VP-nn `Closes`, so the chain could fork unchecked.
Decisions:
- A story issue carries a separate `Rests on` list, from an optional field in `user-story.yml`, one entry per line.
- `Traces to` keeps exactly one VP-nn plus the origins.
- A cited GAP-nn must be one the story's VP-nn `Closes`.
- Since W2. A team with existing stories moves each ASM-nn from `Traces to` into `Rests on` as a one-time catch-up in Assignment 2 Part 1. That move counts as a formatting-only change and needs no change comment, and general-requirements.md rule 5 names it.
- Also decided: the `moscow:won't` label keeps its name despite the apostrophe, because teams created it this week.
Rejected: the split without the GAP-to-VP rule; the GAP-to-VP rule without the split; one change comment per issue for the move.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 user-stories-requirements.md: a story carries a Rests on list, Traces to holds one VP-nn plus origins, and a cited GAP-nn is one its VP-nn Closes
- [ ] #2 repository-requirements.md Issue Tracking adds an optional Rests on field to user-story.yml, one entry per line
- [ ] #3 assumptions-requirements.md What Rests On It and the general-requirements.md traceability table point at Rests on
- [ ] #4 The US-01 example lists ASM-02 under ### Rests on, and the guide mentions match
- [ ] #5 Assignment 2 Part 1 has the one-time catch-up, and general-requirements.md rule 5 names the move as formatting-only
- [ ] #6 The four Markdown gates pass
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->
