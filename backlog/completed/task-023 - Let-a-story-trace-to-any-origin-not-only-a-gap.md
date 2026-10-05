---
id: TASK-023
title: 'Let a story trace to any origin, not only a gap'
status: Done
assignee: []
created_date: '2026-10-04 19:56'
updated_date: '2026-10-04 20:04'
labels: []
dependencies: []
references:
  - lectures/AGENTS.md
modified_files:
  - requirements/process-requirements.md
  - requirements/artifact-requirements.md
  - requirements/repository-requirements.md
  - assignments/assignment-2.md
  - guides/user-stories-and-prototyping.md
  - lectures/lecture-2.typ
  - lectures/lecture-2.pdf
  - AGENTS.md
priority: high
type: docs
ordinal: 23000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Week 2 story rule currently forces every user story to name the GAP-nn it closes and the VP-nn it supports, with a free-text sources field for anything else. A story can also come from a customer or team decision, an action point, or a split of a larger story. The rule becomes a single required Traces to list: exactly one VP-nn plus any origins (a GAP-nn, a decision in a meeting or weekly report, an action point, or the parent US-nn). A story with no GAP-nn and no split parent says in one line why no existing gap covers it; a split child carries the parent VP-nn/GAP-nn. No epic layer. The lecture-2 chain slide teaches the additional origins and its PDF is rebuilt. Decisions settled with the instructor in review; overlaps TASK-011 on lecture-2.typ and must not touch its open structure or lecture-1 criteria.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 process-requirements.md story item 4 defines the single required Traces to list: exactly one VP-nn plus any origins (a GAP-nn, a customer or team decision, an action point, or a parent US-nn), the no-gap line, and the decision/action-point citation form
- [x] #2 process-requirements.md split item, traceability table, and traceability origin item reflect parent citation, inherited VP-nn/GAP-nn, and the list
- [x] #3 artifact-requirements.md story fields, split rule, and both examples carry the Traces to list; the decomposed-epic TODO is resolved with no epic artifact introduced
- [x] #4 repository-requirements.md form spec names the required Traces to list and no longer names GAP-nn, VP-nn, or sources as separate fields
- [x] #5 assignment-2.md objective, Part 2 items, Part 5, Part 6, and checklist state the list, the no-gap line, inheritance, and the action-point citation; both TODOs are gone
- [x] #6 guides/user-stories-and-prototyping.md Step 2 and Common Mistakes explain non-gap origins and inheritance, and every heading anchor still resolves
- [x] #7 lectures/lecture-2.typ teaches the additional origins on the chain slide and in a quiz; lecture-2.pdf is rebuilt, the rendered page count is unchanged at 27, and check:lectures passes
- [x] #8 Root AGENTS.md terminology lists traces to; a stale sweep finds no sources field reference, no mandatory GAP-nn plus VP-nn pairing, and no leftover TODO
- [x] #9 All four Markdown gates and check:lectures pass, and every touched relative link and heading anchor resolves
- [x] #10 No file is created under docs/ or reports/
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
Design settled with the instructor in review. A story now carries one required Traces to list: exactly one VP-nn plus any origins (a GAP-nn, a customer decision in a meeting report, a team decision in the weekly report, an action point, or the parent US-nn). A story with no GAP-nn and no split parent says in one line why no existing gap covers it. A split child names the parent and carries the parent's VP-nn and GAP-nn. No epic artifact: decomposition is by splitting. Decisions and action points are cited by report path plus #decisions/#action-points with the sentence or action quoted, per the TASK-021 convention. The separate VP-nn, GAP-nn, and sources fields are gone from the Issue Form spec; Traces to subsumes them. lecture-2.typ gained one chain-slide bullet and one quiz prompt, and its PDF was rebuilt. TASK-011's remaining structure and lecture-1 criteria were left alone; this task rebuilt lecture-2.pdf from the current source, which check:lectures already accepted.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Implemented the flexible story traceability: process, artifact, and repository requirements define the required Traces to list (exactly one VP-nn plus any origins, no-gap line, split inheritance, decision/action-point citation), assignment-2 and the guide teach it, both stale TODOs are resolved, and the lecture-2 chain slide reflects the additional origins with a rebuilt PDF. Gates: format:markdown:check, lint:markdown, test:markdown-format (34/34), test:markdown-rules (34/34), and check:lectures (2 decks match, Typst 0.15.1) all pass. Rendered the changed slide (page 8) to confirm no overflow; deck stays 27 pages. New and touched relative links and heading anchors resolve. No file under docs/ or reports/ was created.
<!-- SECTION:FINAL_SUMMARY:END -->
