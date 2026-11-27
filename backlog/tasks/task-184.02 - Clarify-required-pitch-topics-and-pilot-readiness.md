---
id: TASK-184.02
title: Clarify required pitch topics and pilot readiness
status: In Progress
assignee:
  - '@codex'
created_date: '2026-11-27 11:23'
updated_date: '2026-11-27 11:25'
labels: []
dependencies: []
documentation:
  - exam/README.md
modified_files:
  - exam/README.md
parent_task_id: TASK-184
type: docs
ordinal: 178000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The separate required-content heading makes students infer that the other scored pitch topics are optional. Students also need to see how the quality requirement and architectural decision connect the demo to the pilot and prepare them for panel questions.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The exam page explicitly requires every scored pitch topic within seven minutes and presents a flexible sequence for covering them.
- [x] #2 The suggested sequence puts quality and architecture after the demo and ties the chosen requirement, decision, and tradeoff to the pilot, with an example and related Q&A guidance.
- [x] #3 The exam timetable, point values, participation, live demo, and deck submission rules are preserved.
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
1. Combine the pitch requirements into one outline ordered from user problem through pilot request.
2. Connect the demo to pilot readiness with the existing museum example and add Q&A preparation.
3. Review the rendered exam page against the existing policies and run the repository checks.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Consolidated the required pitch topics in a flexible sequence. Placed the quality requirement and architectural decision after the demo, extended the museum example through the test result and proposed pilot, and added sample panel questions and optional backup slides.

Reviewed the Pandoc GFM rendering and checked the dates, session and deck rules, and rubric point values against the original. Markdown format and lint passed, both Markdown fixture suites passed (68 tests), all 10 lecture decks matched their sources, and all four exam-page links and fragments passed. The full repository link check returned HTTP 503 for two existing GitHub URLs in course/plans/a5-plan.md and TODO.md on repeated runs, including with direct network access.
<!-- SECTION:NOTES:END -->
