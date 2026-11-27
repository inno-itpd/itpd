---
id: TASK-184
title: Document the final exam pitch and rubric
status: Done
assignee: []
created_date: '2026-11-27 08:00'
updated_date: '2026-11-27 08:00'
labels: []
dependencies: []
references:
  - lectures/lecture-9.typ
modified_files:
  - exam/README.md
  - course/syllabus.md
type: docs
ordinal: 172000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Teams need a single reference for preparing and submitting their final exam pitch and understanding how the panel will grade it.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The exam page and syllabus agree on the seven-minute pitch with a live demo and five minutes of Q&A. The exam page requires every team member to speak during the pitch and leaves the Q&A questions to the panel during the session.
- [x] #2 The exam page gives a suggested structure and example panel roles for a simulated pilot, and requires one pilot-relevant quality requirement and the architectural decision that addresses it.
- [x] #3 The exam page requires the exact Moodle-submitted deck on exam day, prohibits revisions after submission, and gives a 20-point rubric with 17 points for the pitch and demo and 3 for Q&A.
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
Write the student-facing exam instructions, align the syllabus format, and verify the wording, rubric totals, and repository checks.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
The exam uses a simulated pilot with a role chosen to fit the request. The seven-minute pitch includes the live demo, participation from every member, and one quality requirement linked to an architectural decision. The panel chooses its questions during five minutes of Q&A. The submitted deck is the exam-day deck. Verified the 17 + 3 point split and the matching syllabus format. Markdown formatting and lint passed, both Markdown fixture suites passed (68 tests), all nine lecture decks matched their sources, and the full link check reported zero errors.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Documented the final exam format, pitch guidance, deck submission rules, and grading rubric. Aligned the syllabus and verified the rubric and repository gates.
<!-- SECTION:FINAL_SUMMARY:END -->
