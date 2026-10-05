---
id: TASK-050
title: 'Give assumptions their own file, requirements, and ASM-nn identifiers'
status: Done
assignee: []
created_date: '2026-10-05 09:14'
updated_date: '2026-10-05 09:19'
labels:
  - docs
dependencies: []
priority: medium
ordinal: 50000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Assumptions were one table at the end of docs/research/value-proposition.md with no identifiers, so a story issue, a prototype, or a meeting report could only link the whole #assumptions table, and the table could not record that a story rests on an assumption. Decisions with the user: docs/assumptions.md from Week 1, one ASM-nn section each; rules owned by a new requirements/assumptions-requirements.md; links point upward as US-nn to VP-nn already does, so an entry names only the GAP-nn or VP-nn it supports and a story lists each ASM-nn it rests on in Traces to; track an assumption only if something would break if it were false. Week 1 of this term is already submitted, so Assignment 2 carries a one-time move.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 requirements/assumptions-requirements.md owns where assumptions live, what one is, what it supports, how it is checked and settled, and a full example, with Since markers
- [x] #2 research-requirements.md no longer has an Assumptions section, and no file links research-requirements.md#assumptions or value-proposition.md#assumptions
- [x] #3 general-requirements.md lists ASM-nn among the Week 1 identifier families
- [x] #4 user-stories-requirements.md allows the ASM-nn a story rests on in Traces to, and its examples cite an ASM-nn
- [x] #5 prototypes-, customer-meetings-, and product-vision-requirements.md cite assumptions by ASM-nn or link the new file
- [x] #6 The guides show ASM-nn sections in docs/assumptions.md instead of a table
- [x] #7 assignment-1.md asks for docs/assumptions.md, and assignment-2.md has the one-time move, the story-level assumptions, a coverage row, and a checklist item
- [x] #8 README.md, course/rules.md, and AGENTS.md route to the new file and record docs/assumptions.md and ASM-nn
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
1. Write requirements/assumptions-requirements.md.
2. Remove the Assumptions section from research-requirements.md and repoint every link to it.
3. Add ASM-nn to the identifier rules and to the story Traces to rule and examples.
4. Update prototypes-, customer-meetings-, and product-vision-requirements.md.
5. Update the comparison, user-stories, and validating guides.
6. Update assignment-1.md and assignment-2.md.
7. Update README.md, course/rules.md, and AGENTS.md.
8. Format, lint, and grep for stale links.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
The Week 2 move step lives in Assignment 2 Part 3, before the first story cites an assumption; TASK-051 removes it after this term. The W1 example coverage table in weekly-report-requirements.md gained an Assumptions row. Statuses are Open, Confirmed, Refuted, and Dropped. The guide example no longer has the web-page-vs-bot row, because a belief only the customer decides is a customer question, not an assumption.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Assumptions now live in docs/assumptions.md as ASM-nn sections, owned by requirements/assumptions-requirements.md. Each entry names the GAP-nn or VP-nn it supports, and stories cite the ASM-nn they rest on in Traces to. Research, general, story, prototype, meeting, vision, and weekly-report requirements, three guides, both assignments, README.md, course/rules.md, and AGENTS.md were updated. Verified with format:markdown:check, lint:markdown, both fixture suites, check:lectures, backlog doctor, and a grep showing no links left to the old #assumptions anchors.
<!-- SECTION:FINAL_SUMMARY:END -->
