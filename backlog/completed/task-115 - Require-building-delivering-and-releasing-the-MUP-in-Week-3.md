---
id: TASK-115
title: 'Require building, delivering, and releasing the MUP in Week 3'
status: Done
assignee:
  - '@opencode'
created_date: '2026-10-12 19:09'
updated_date: '2026-10-12 21:06'
labels: []
dependencies:
  - TASK-109
  - TASK-113
references:
  - requirements/customer-meetings-requirements.md
  - requirements/user-stories-requirements.md
  - requirements/task-issues-requirements.md
modified_files:
  - requirements/minimum-usable-product-requirements.md
type: docs
ordinal: 111000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
`requirements/minimum-usable-product-requirements.md` owns only the Week 2 candidate; it has no rule for building it.
Week 3 ships the candidate stories as one working slice on `main` through task issues and pull requests, shows them to the customer, and releases the state as `REL-03`.
This task adds that `**Since: W3**` section, citing the existing rules rather than restating them.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 A `**Since: W3**` section requires building the candidate stories into one working slice merged into `main` through task issues and one pull request per task, none left on a branch or partially merged, and merged before the customer meeting
- [x] #2 It defines working: a clean checkout completes the core task end to end by following `docs/setup.md`, which the root README links
- [x] #3 It fixes the release: `REL-03` is cut on the product state after the customer meeting and any same-week rework; the tag is pushed first, then the changelog released section, the plan `REL-03` line, and the week report merge, so every link resolves; deployment is Week 5 and not required
- [x] #4 It requires showing each finished story against its acceptance criteria, one `AC-nn` at a time; each verdict is a `DEC-nnn` naming the `US-nn`; an accepted story closes and a rejected one stays open with rework tasks
- [x] #5 Moving a candidate story out needs the customer decision in the Week 3 meeting or the same week written exchange, recorded as a `DEC-nnn` naming the story; when the remaining stories no longer complete the core task end to end, the same decision edits the first sentence of the active milestone description, the reason lands on the story issue, and the Week 3 report names what shipped and what moved out
- [x] #6 The build scope is exactly the candidate stories; a `Must Have` story outside the candidate is not owed in Week 3
- [x] #7 The section cites `customer-meetings-requirements.md#showing-working-software`, `user-stories-requirements.md#where-stories-live`, and `task-issues-requirements.md#closing-a-task` instead of restating them
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
1. Add the Week 3 section to requirements/minimum-usable-product-requirements.md after The Candidate: build scope, the one working slice on main through task issues and one pull request per task, and the docs/setup.md definition of working.
2. Add the delivery rules: showing each finished story against its acceptance criteria one AC-nn at a time, the verdict's close-or-rework, and the customer-decided move-out with the milestone re-scope, the story-issue reason, and the Week 3 report.
3. Fix the release: REL-03 cut after the customer meeting and any same-week rework, the tag-then-documents order, and the Week 5 deployment exclusion, citing Releases, Milestones, and Setup And Run Instructions.
4. Update the file intro and table of contents, run the Markdown gates and the deck and link checks, and record the notes.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decisions: the Week 3 rules landed as one section, 'Building, Delivering, And Releasing The Candidate', after The Candidate and before the full example; the file intro and the table of contents name it.
- Rule 1 fixes the week's build scope to the candidate's stories, so a Must Have story outside it is not owed in Week 3.
- Rules 2-3 send the slice to main through task issues and one pull request per task, each merged before the customer meeting, and define working by docs/setup.md and the root README, per Setup And Run Instructions.
- Rule 4 cites Showing Working Software for the one-AC-nn-at-a-time showing and pairs it with Where Stories Live and Closing A Task for the verdict's DEC-nnn and the close-or-rework.
- Rule 5 makes a move-out the customer's DEC-nnn, re-scopes the core task in the active milestone's first description sentence per Milestones, lands the reason on the story issue, and names what shipped and what moved out in the Week 3 report.
- Rule 6 fixes REL-03 cut after the customer meeting and any same-week rework, with the tag pushed first and the changelog, plan, and report merging after it, per Releases; rule 7 excludes deployment until Week 5.
Validation: format:markdown (the changed file needed no reformatting; the working-tree TODO.md was reformatted, as TASK-109 recorded), format:markdown:check, lint:markdown, test:markdown-format (34 passed), test:markdown-rules (34 passed), check:lectures (3 decks, Typst 0.15.1), check:links (958 total, 0 errors, 2 excluded), and backlog doctor (clean).
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Added the Week 3 'Building, Delivering, And Releasing The Candidate' section to requirements/minimum-usable-product-requirements.md: the build scope, the one working slice merged into main through task pull requests, the docs/setup.md definition of working, the customer meeting's showing and verdict, the customer-decided move-out with the milestone re-scope, the REL-03 release with its tag-then-documents order, and the Week 5 deployment exclusion, each citing the rule that owns it. Verified with the Markdown gates, both vitest suites (34 and 34), check:lectures, check:links (958 total, 0 errors, 2 excluded), and backlog doctor.
<!-- SECTION:FINAL_SUMMARY:END -->
