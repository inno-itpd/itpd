---
id: TASK-184.03
title: Connect the final exam demo and quality requirement to the pilot request
status: Done
assignee:
  - '@codex'
created_date: '2026-11-27 15:55'
updated_date: '2026-11-27 16:03'
labels: []
dependencies: []
documentation:
  - exam/README.md
  - lectures/lecture-10.typ
modified_files:
  - exam/README.md
  - lectures/lecture-10.typ
  - lectures/lecture-10.pdf
parent_task_id: TASK-184
type: docs
ordinal: 183000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Teams preparing the final exam pitch need to see how the workflow they demonstrate, the quality risks users face in the pilot, and the action they ask of the panel fit together.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The exam brief and rubric ask teams to demo a workflow that pilot users would perform and connect its outcome to a specific action the panel can take.
- [x] #2 Teams explain one measurable quality requirement for the demonstrated workflow under realistic pilot conditions and the architectural decision and tradeoff that address it. The pitch guidance allows the quality test result to be presented separately from the demo.
- [x] #3 The exam brief and rebuilt Lecture 10 illustrate the same connection using their existing museum and booking examples.
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
1. Tie the demo, quality requirement, architectural tradeoff, and panel request together in the exam brief and rubric. Extend the museum example.
2. Carry the booking example through the same sequence in Lecture 10 and rebuild its PDF.
3. Check the rendered examples, slide pagination, Markdown, decks, and links. Record the results.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
The exam brief and rubric connect the demonstrated workflow to a condition that can put the user outcome at risk, the measurable quality requirement and architectural tradeoff, and the action requested of the panel. The museum example presents the offline test separately from the live demo. Lecture 10 connects the same steps using the booking example.

Reviewed the rendered exam brief and the two revised lecture slides. The deck still has 37 pages, with text changes on pages 33 and 34 only. All 10 PDFs match their Typst sources. The exam brief matches the repository formatter, Markdown lint passed, and both Markdown fixture suites passed (102 tests). The full format check flags only pre-existing whitespace in the restored TODO.md. All four exam-page links and fragments passed. The first full link check returned HTTP 503 on two existing GitHub destinations, both of which returned HTTP 200 when checked directly.

The unrestricted full link-check retry returned the same HTTP 503 responses. The full link-check item remains open.

The Lecture 10 goal slide now names its role. The pitch structure comes before the booking example, which shows how the demo, quality requirement, architectural decision, and pilot request connect. Visually checked slides 33 and 34, confirmed the 37-page count, and verified that all 10 PDFs match their sources.

The full link check passed on the latest run after revising the slide order.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Aligned the exam brief, rubric, and Lecture 10 on how the demo, pilot quality requirement, architectural decision, and panel request connect. Lecture 10 presents the pitch structure before the booking example. Verified the rendered slides, the lecture build, Markdown lint and fixture suites, exam brief formatting, and the full link check.
<!-- SECTION:FINAL_SUMMARY:END -->
