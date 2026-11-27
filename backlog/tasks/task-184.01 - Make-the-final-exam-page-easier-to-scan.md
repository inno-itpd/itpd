---
id: TASK-184.01
title: Make the final exam page easier to scan
status: Done
assignee:
  - '@codex'
created_date: '2026-11-27 08:19'
updated_date: '2026-11-27 08:22'
labels: []
dependencies: []
documentation:
  - exam/README.md
  - course/syllabus.md#week-11-dec-4--dec-10-final-exam
modified_files:
  - exam/README.md
parent_task_id: TASK-184
type: docs
ordinal: 173000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Students use the rendered exam page to prepare and submit their pitch. The format opens with timings and point values that students have to match to activities in the following sentences. Students also have to open the syllabus to find the exam date and deck deadline, and the mandatory quality and architecture explanation blends into the suggested pitch outline.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The top of the exam page shows Friday 4 December 2026 as the exam date and Thursday 3 December 2026 at 23:59 as the deadline for the separate Moodle deck submission, matching Week 11 of the syllabus.
- [x] #2 The format names both parts of the session in order and pairs each with its duration and score: product pitch and live demo (7 minutes, 17 points), then panel Q&A (5 minutes, 3 points).
- [x] #3 In rendered Markdown, students can distinguish the required quality requirement and architectural decision explanation from the suggested pitch sequence and rehearsal advice.
- [x] #4 The audience guidance makes clear that teams choose whom the panel represents in the simulated pilot, and the example roles are easy to scan.
- [x] #5 The format, pitch guidance, and rubric use consistent names for the live demo, panel Q&A, and the pilot request while preserving the existing scoring, participation, demo, and deck submission rules.
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
1. Surface both verified syllabus dates at the top and label the two session parts with their duration and score.
2. Clarify the panel role and make the required pitch content easy to find alongside the guidance. Align labels in the rubric and preserve the existing exam and submission rules.
3. Review the rendered page, confirm the dates, links and points, and run the repository checks.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Placed the syllabus dates at the top and linked the Moodle deadline to the deck instructions. Named both session parts and aligned the rubric labels. Moved the required quality and architecture explanation ahead of the suggested pitch structure and formatted the panel-role examples as a list.

Reviewed the Pandoc GFM rendering and verified the dates against Week 11, the required instructions, and the 17 + 3 point split. Markdown format and lint passed, both Markdown fixture suites passed (68 tests), all nine lecture decks matched their sources, and the repository link check reported zero errors.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Clarified the exam dates, session format, pitch requirements, and grading labels. Verified the rendered page, rubric, and repository checks.
<!-- SECTION:FINAL_SUMMARY:END -->
