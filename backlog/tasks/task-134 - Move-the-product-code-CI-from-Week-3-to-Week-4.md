---
id: TASK-134
title: Move the product-code CI from Week 3 to Week 4
status: Done
assignee: []
created_date: '2026-10-13 11:57'
updated_date: '2026-10-13 12:09'
labels: []
dependencies: []
type: docs
ordinal: 105000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Week 3 must deliver the working slice and the first release without product-code CI: the Week 4 quality and verification lecture introduces automatic checks, and Assignment 4 will cite the block. The materials move together so no layer contradicts another: Assignment 3, `requirements/repository-requirements.md`, `requirements/definition-of-done-requirements.md`, the syllabus Week 3 and Week 4 entries, and the planning docs. This revives the CI half of the dropped D30 plan; the changelog and the first release stay in Week 3. The decision is recorded as D37 in `handoff.md`.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Assignment 3 no longer requires the product-code CI: the Part 5 rule with its TODO comment, the Part 5 build item, the coverage-table row, the repository-evidence mention, and the checklist item are gone
- [x] #2 Part 5 of Assignment 3 no longer cites Pinning Third-Party Actions
- [x] #3 The Continuous Integration block in `requirements/repository-requirements.md` carries a `**Since: W4**` marker
- [x] #4 `requirements/definition-of-done-requirements.md`: the Week 3 pull-request list and full example name only the link check and the Markdown check, and a `**Since: W4**` item adds the product-code CI among the checks that must be green
- [x] #5 `course/syllabus.md`: the Week 3 deliverable list and Submission 3 row no longer name the product-code CI, and the Week 4 deliverable list and Submission 4 row do
- [x] #6 `handoff.md` records the move (D37, the revisions to D1, D13, D18, D24, and D27, the scope table, and Open Items) and `TODO.md` records the Week 4 follow-ups
- [x] #7 The four Markdown gates and `backlog doctor` pass; the link check is skipped at the maintainer direction
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
- [ ] #6 `pnpm run check:links` passes
- [x] #7 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Assignment 3: remove the CI rule, its TODO comment, the Part 5 pinning rule, the build item, the coverage-table row, the evidence mention, and the checklist item
2. requirements/repository-requirements.md: the CI block becomes Since: W4
3. requirements/definition-of-done-requirements.md: the W3 list and example drop the CI, and a Since: W4 item adds it back
4. course/syllabus.md: move the deliverable from Week 3 to Week 4 in the lists and the submission rows
5. TODO.md and handoff.md: record the move and the Week 4 follow-ups
6. Run the gates: format:markdown, format:markdown:check, lint:markdown, the two plugin fixtures, check:links, backlog doctor
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
All moved. Assignment 3 Part 5: removed the product-code CI rule, its TODO comment, the Pinning Third-Party Actions rule, and the workflow build item; removed the coverage-table row, the repository-evidence mention, and the checklist item. The CI block in requirements/repository-requirements.md is now Since: W4. The Definition of Done Week 3 list and full example name the link check and the Markdown check, and a Since: W4 item adds the product-code CI among the checks that must be green. The syllabus moved the deliverable from the Week 3 list and Submission 3 row to the Week 4 list and Submission 4 row. handoff.md records D37 with revisions to D1, D13, D18, D24, and D27, and TODO.md records the Week 4 follow-ups.

Validation: format:markdown (reformatted the assignment and syllabus tables), format:markdown:check, lint:markdown, test:markdown-format (34 pass), test:markdown-rules (34 pass), check:lectures (3 decks match), and backlog doctor all pass. check:links was skipped at the maintainer direction, so DoD item 6 stays unchecked; no existing URL changed, the only added target is the existing #continuous-integration anchor, and the repository lychee workflow will check links in CI.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Moved the product-code CI from Week 3 to Week 4 across assignments/assignment-3.md, requirements/repository-requirements.md, requirements/definition-of-done-requirements.md, course/syllabus.md, TODO.md, and handoff.md (D37). Verified with the four Markdown gates, check:lectures, and backlog doctor; check:links was skipped at the maintainer direction.
<!-- SECTION:FINAL_SUMMARY:END -->
