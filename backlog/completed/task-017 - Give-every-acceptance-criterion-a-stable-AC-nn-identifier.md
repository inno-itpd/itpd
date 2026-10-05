---
id: TASK-017
title: Give every acceptance criterion a stable AC-nn identifier
status: Done
assignee: []
created_date: '2026-10-04 14:13'
updated_date: '2026-10-04 14:18'
labels: []
dependencies: []
modified_files:
  - requirements/process-requirements.md
  - requirements/artifact-requirements.md
  - requirements/repository-requirements.md
  - guides/user-stories-and-prototyping.md
  - guides/validating-with-the-customer.md
  - assignments/assignment-2.md
  - AGENTS.md
priority: high
type: docs
ordinal: 17000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The project notes carry an open item: each acceptance criterion needs a stable identifier so it can be referenced from other artifacts. Story issues are the source of truth since TASK-015, and criteria live in the issue body with no ID, so meeting decisions, pull-request checks, prototypes, and later verification cannot point at a specific criterion. This adds an `AC-nn` family scoped to its story issue, stable within that issue, with a free citation form that always pairs the ID with its issue.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 process-requirements.md defines the per-issue `AC-nn` scheme: zero-padded from `AC-01` in each story, stable, never renumbered or reused within its issue, a removed criterion retires its ID, a later criterion takes the next free number, and citations pair the ID with its story issue in any clear form
- [x] #2 Identifier Rules lists `AC-nn` as a Week 2 family, scopes its uniqueness to the story issue, exempts it from the removed-item tombstone rule, and states that the ID appears at the start of its criterion
- [x] #3 artifact-requirements.md story shape, split rule, change-comment rule, and example carry `AC-nn`, and the meeting report `Traces to` column and `prototypes.md` cite a changed or tested criterion by `AC-nn` with its issue
- [x] #4 repository-requirements.md names the criterion IDs in the issue form field, the pre-merge check, and the pull request template prompt
- [x] #5 Both Week 2 guides show assigning an `AC-nn` and citing it from elsewhere without fixing the notation
- [x] #6 assignment-2.md objectives, Part 2, the validation change rule, and the checklist require `AC-nn`
- [x] #7 AGENTS.md identifier conventions record the scoped `AC-nn` family and its reference form
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
1. process-requirements.md: story rule 6, split rule 7, Validation item 4, Identifier Rules items 1/2/4/5, example.
2. artifact-requirements.md: User Stories items 1/3/4, example, Meeting Report `Traces to`, Prototypes item 2.
3. repository-requirements.md: Planning items 1 and 7, PR template prompt.
4. guides/user-stories-and-prototyping.md Step 2 split and Step 3; guides/validating-with-the-customer.md decisions line.
5. assignment-2.md objectives, Part 2, Part 5, checklist.
6. AGENTS.md conventions.
7. Run the four Markdown gates, check:lectures, and a link/anchor sweep.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
AC-nn is scoped per story issue, zero-padded from AC-01, stable within the issue: an edit keeps its ID, a removed criterion retires it, a later criterion takes the next free number. The citation form is not fixed; a reference pairs the ID with its story issue (link or US-nn).

process-requirements.md carries the scheme in the story rule and in Identifier Rules (family, scope, tombstone exception, placement, reference). artifact-requirements.md carries the issue shape, split rule, change comment, both examples, the meeting report `Traces to` column, and prototypes. repository-requirements.md carries the issue form, the pre-merge check, and the PR-template prompt. Both Week 2 guides show assigning and citing. assignment-2.md objectives, Part 2, the validation four-places list, and the checklist carry it. AGENTS.md records the scoped family.

Verification: `format:markdown` applied; `format:markdown:check`, `lint:markdown`, `test:markdown-format` (34/34), `test:markdown-rules` (34/34), and `check:lectures` (2 decks, Typst 0.15.1) pass. A link and heading-anchor sweep over 21 tracked Markdown files reports all relative links and anchors resolve. No commit was made.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Added the per-story `AC-nn` acceptance-criterion family and wired references to it across requirements, both Week 2 guides, assignment-2, and AGENTS.md. Verified with the four Markdown gates, the lecture check, and a link and anchor sweep; all pass. No commit was made.
<!-- SECTION:FINAL_SUMMARY:END -->
