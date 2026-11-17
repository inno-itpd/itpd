---
id: TASK-173
title: >-
  Make the finding numbering explicit in the usability requirements and
  assignments
status: Done
assignee: []
created_date: '2026-11-17 12:18'
updated_date: '2026-11-17 12:19'
labels: []
dependencies: []
modified_files:
  - assignments/assignment-7.md
  - assignments/assignment-8.md
  - guides/usability-testing.md
  - requirements/usability-testing-requirements.md
priority: low
type: docs
ordinal: 158000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Every usability material showed `### Finding 1` where it meant any finding, so a reader could not tell whether a report carries one finding or many, and `docs/usability-tests/ut-01/results.md#finding-1` read as the anchor every finding shares. The settled rule is that findings are not an identifier family: `results.md` carries one section per finding, numbered `### Finding 1`, `### Finding 2`, and so on, the number is a position rather than a zero-padded identifier, and each finding is cited by its own anchor. The requirement owns the rule and the assignments and the guide restate it.

Files: requirements/usability-testing-requirements.md (The Results And Findings), guides/usability-testing.md (Write The Results And Findings), assignments/assignment-7.md (Part 4 rules), and assignments/assignment-8.md (Objectives, Part 4, What Good Looks Like, checklist).
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 requirements/usability-testing-requirements.md The Results And Findings states one section per finding, numbered `### Finding 1`, `### Finding 2`, and so on, that the number is not zero-padded, and that the number of findings is not fixed
- [x] #2 The Results And Findings cites each finding by its own anchor, showing the second finding as `#finding-2`
- [x] #3 assignments/assignment-8.md shows the numbering in the Objectives, Part 4's rule and steps, What Good Looks Like, and the checklist
- [x] #4 assignments/assignment-7.md and guides/usability-testing.md use the same wording
- [x] #5 The Markdown format check, lint, both plugin fixtures, the lecture check, and the link check pass, and the implementation notes record the decisions and validation results
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
- [x] #6 `pnpm run check:links` passes
- [x] #7 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. State the rule once in `requirements/usability-testing-requirements.md` The Results And Findings: `results.md` carries one section per finding, numbered `### Finding 1`, `### Finding 2`, and so on; the number is a position rather than a zero-padded identifier; the number of findings is not fixed.
2. Change the citation rule to each finding's own anchor, with `#finding-2` as the second finding's example.
3. Carry the same pair into `assignments/assignment-8.md`'s Objectives, Part 4's rule and steps, What Good Looks Like, and the checklist, and use the same wording in `assignments/assignment-7.md` and `guides/usability-testing.md`.
4. Run `pnpm run format:markdown`, `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run test:markdown-format`, `pnpm run test:markdown-rules`, `pnpm run check:lectures`, and `pnpm run check:links`.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Kept the rule in `requirements/usability-testing-requirements.md` and made the assignment and guide restatements identical, so the four files read the same at the point a student meets the rule.

Decisions: state "not zero-padded" once, in the requirement, because students know identifier families are padded and would otherwise write `### Finding 01`; show the concrete pair rather than a `Finding <n>` placeholder, because a placeholder could be taken for a new identifier family; align `assignments/assignment-7.md` as well, because the design week is where students first meet the heading; leave the requirement's full example and the weekly-report example alone, since both already show `Finding 1` and `Finding 2`.

No heading text changed, so `#findings`, `#finding-1`, and `#finding-2` anchors are unchanged and no citation breaks.

Validation: `pnpm run format:markdown` and `pnpm run format:markdown:check` pass; `pnpm run lint:markdown` passes; `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass (34 tests each); `pnpm run check:lectures` passes (8 decks against Typst 0.15.1); `pnpm run check:links` passes (4,083 total, 4,081 OK, 2 excluded, 0 errors, 1 redirect).
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Made the finding numbering explicit across the usability materials. The requirement now says `results.md` carries one section per finding, numbered `### Finding 1`, `### Finding 2`, and so on; the number is a position rather than a zero-padded identifier and the number of findings is not fixed; and each finding is cited by its own anchor, showing the second finding as `#finding-2`. Assignment 8 shows the pair in the Objectives, Part 4's rule and steps, What Good Looks Like, and the checklist, and Assignment 7 and the usability guide use the same wording. Validated with the format check, the lint, both plugin fixtures (34 tests each), the lecture check (8 decks), and the link check (4,083 links, 0 errors). No heading text changed, so no anchor moved.
<!-- SECTION:FINAL_SUMMARY:END -->
