---
id: TASK-022
title: 'Make the weekly report the decision index, linking meeting decisions'
status: Done
assignee: []
created_date: '2026-10-04 19:18'
updated_date: '2026-10-04 19:20'
labels:
  - docs
dependencies: []
priority: high
type: docs
ordinal: 22000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Meeting decisions live in `meeting-report.md#decisions` and decisions made outside a meeting live in the weekly `README.md#decisions`, but nothing makes all of a week's decisions reachable from one page, and the rules never say whether the weekly report links or restates the meeting report table. Design settled with the instructor: decisions stay at the source that recorded them, no `DEC-nn` and no new `reports/week-NN/decisions.md`; the weekly public report links the meeting report's `## Decisions` and carries its own table only for decisions made outside meetings; both are cited by path plus `#decisions` with the sentence quoted.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Weekly Public Report in `requirements/artifact-requirements.md` defines `## Decisions` as the week's decision index: it links `meeting-report.md#decisions` when the week held a meeting, carries the same-columns table only for decisions made outside a meeting, and never copies meeting rows
- [x] #2 `requirements/artifact-requirements.md` Artifact Concepts item 9 names both sources and the `#decisions` citation, and the Week 01 weekly report example shows the link-only case
- [x] #3 `requirements/process-requirements.md` Validation step 4 says the weekly public report names what changed and links the meeting report, and Identifier Rules item 7 gives one citation form for meeting and team decisions
- [x] #4 `guides/validating-with-the-customer.md` What You Produce, Step 5, and the four-places table carry the link-not-copy rule
- [x] #5 `assignments/assignment-1.md` and `assignments/assignment-2.md` require the decision link in their week report content and checklists without restating the rule
- [x] #6 `AGENTS.md` notes that a team decision cites the weekly report's `#decisions` and the weekly report links a meeting report's `## Decisions` rather than copying it
- [x] #7 The four Markdown gates pass, and every added `#decisions` link resolves to an existing heading
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
1. Rewrite Weekly Public Report item 5 and Artifact Concepts item 9 in requirements/artifact-requirements.md, and add the link-only case to the Week 01 example.
2. Align requirements/process-requirements.md Validation step 4 and Identifier Rules item 7 with the single citation form.
3. Update guides/validating-with-the-customer.md: What You Produce, Step 5, and the four-places table.
4. Update assignments/assignment-1.md and assignments/assignment-2.md week-report wording and checklists.
5. Update AGENTS.md terminology, then run the four Markdown gates and verify every added #decisions anchor.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Implemented the settled design: the weekly public report links the meeting report decisions and keeps its own table only for decisions made outside meetings; citations stay path plus #decisions with the sentence quoted. Files: requirements/artifact-requirements.md, requirements/process-requirements.md, guides/validating-with-the-customer.md, assignments/assignment-1.md, assignments/assignment-2.md, AGENTS.md. Verification: pnpm run format:markdown, format:markdown:check, lint:markdown, test:markdown-format, test:markdown-rules, and check:lectures all pass; lychee --offline --include-fragments on the six changed files reports 217 OK, 0 errors, so every added #decisions link resolves.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Made the weekly report the week decision index: its ## Decisions section links each meeting report decisions table and carries its own table only for decisions made outside a meeting, cited by path plus #decisions with the sentence quoted. Updated the artifact and process requirements, the validating guide, both assignment checklists, and AGENTS.md terminology. Verified with the four Markdown gates, check:lectures, and an offline fragment-aware lychee run (217 OK, 0 errors).
<!-- SECTION:FINAL_SUMMARY:END -->
