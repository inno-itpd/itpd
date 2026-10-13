---
id: TASK-124
title: Let the failure and success statements table grow and never rewrite it
status: Done
assignee:
  - '@opencode'
created_date: '2026-10-13 05:49'
updated_date: '2026-10-13 05:51'
labels: []
dependencies: []
references:
  - requirements/planning-requirements.md
  - guides/planning-and-tracking.md
modified_files:
  - requirements/planning-requirements.md
  - guides/planning-and-tracking.md
type: docs
ordinal: 120000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The threshold table update policy was revisited: teams can add goals or statements after Week 3, so the table must be able to grow. The chosen policy is growth only: statement cells are never rewritten, rows and links are only added, a dropped goal keeps its rows, and a goal added later records the customer agreement as its first `**Changed:**` bullet citing the `DEC-nnn`. This task lands the policy in the planning requirements, the guide, and the handoff.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `requirements/planning-requirements.md` rule 3 says a goal added later is a bar move whose first `**Changed:**` bullet cites the `DEC-nnn` of the customer agreement, and rule 6 lists each goal chosen for the statement in the `Goal` cell and groups rows by their first goal
- [x] #2 Rule 9 is the growth policy: the statement cells are never rewritten; new rows arrive with a later goal or statement; a later goal that covers a listed row adds its link and an uncovered row moves into the group of that goal; `Goal` links are never removed; a dropped goal keeps its rows; and a meaning-preserving correction is not an update
- [x] #3 The guide sentence says the table is never rewritten and grows when a goal or statement arrives later
- [x] #4 `handoff.md` D35 reflects the growth policy, including the added-goal `**Changed:**` bullet and the multi-link `Goal` cell
- [x] #5 The gates pass: `format:markdown:check`, `lint:markdown`, both test suites, `check:lectures`, `check:links`, and `backlog doctor`
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
1. Land the growth policy in requirements/planning-requirements.md rules 3, 6, and 9.
2. Update the guide sentence.
3. Revise handoff.md D35.
4. Run the gates and finalize this task.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decisions: the table follows growth only. Rule 3 says a goal added later is a bar move whose first `**Changed:**` bullet cites the `DEC-nnn` of the customer agreement; rule 6 lists each goal chosen for the statement in the `Goal` cell in `TOS-nn` order and groups rows by their first goal; rule 9 says the statement cells are never rewritten, new rows arrive with a later goal or statement, a later goal covering a listed row adds its link, a `Goal` link is never removed so a dropped goal keeps its rows, and a meaning-preserving correction is not an update. The guide sentence now says the table is never rewritten and only grows, and handoff D35 carries the growth policy and the rationale for choosing it over a kept-current table and over a table frozen at the first session. Validation: format:markdown (reformatted requirements/planning-requirements.md), format:markdown:check, lint:markdown, test:markdown-format 34 passed, test:markdown-rules 34 passed, check:lectures (3 decks, Typst 0.15.1), check:links (988 total, 986 OK, 0 errors, 2 excluded), backlog doctor clean.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Settled the table update policy as growth only: statement cells are never rewritten, new rows and links are only added, a later goal covering a listed row gains its link, a dropped goal keeps its rows, and a goal added later records the customer agreement as a `**Changed:**` bullet citing the `DEC-nnn`. The planning requirements, the guide, and handoff D35 now match.
<!-- SECTION:FINAL_SUMMARY:END -->
