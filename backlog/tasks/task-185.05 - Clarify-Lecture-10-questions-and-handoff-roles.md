---
id: TASK-185.05
title: Clarify Lecture 10 questions and handoff roles
status: Done
assignee:
  - '@codex'
created_date: '2026-11-27 12:18'
updated_date: '2026-11-27 12:21'
labels: []
dependencies: []
documentation:
  - assignments/assignment-10.md
modified_files:
  - lectures/lecture-10.typ
  - lectures/lecture-10.pdf
parent_task_id: TASK-185
type: docs
ordinal: 180000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Students need to know whose perspective to take in the recap questions and who acts in each scenario. In the handoff discussion, the phrase “receiving team” leaves the customer and future maintainers undefined.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Discussion and quiz prompts use conversational wording and focus on course concepts, with concrete examples where they help students reason through a decision.
- [x] #2 Prompts identify the student’s role and any person they are asked to question or advise. The handoff section identifies the customer as the decision-maker and explains who will maintain the product.
- [x] #3 The rebuilt Lecture 10 PDF matches its source and renders all 36 slides.
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
1. Review the discussion, quiz, and worked-example questions for wording, concept focus, and audience.
2. Check the handoff roles against the course materials.
3. Rebuild the PDF and verify the slides and repository checks.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Reviewed all ten rendered discussion and quiz slides for conversational phrasing, concept focus, and the perspective students should take. The handoff now identifies the customer as the decision-maker, the student team as responsible for preparing the release and recording the outcome, and the people the customer chooses to run and maintain the product as the recipients of deployment instructions and access.
The PDF renders 36 slides and the pinned deck check reproduces all ten PDFs. Markdown lint and both Markdown fixture suites passed. The repository format check reported only the pre-existing unstaged TODO.md edit, and the formatter verified the indexed TODO.md. The offline link check found zero errors.

The full link check reported three HTTP 403 responses for UserTesting links in course/plans/a7-plan.md and one timeout for mkdocs.org in requirements/repository-requirements.md. Both files are outside this change. The rebuilt Lecture 10 PDF has the same link annotations as the version in HEAD.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Made Lecture 10 questions conversational and concept-focused, and clarified who decides, prepares, and takes over the product at handoff. Reviewed all ten question slides and verified the reproducible 36-slide PDF. Markdown lint, both fixture suites, and local links passed. The full link check reported failures in unrelated course material.
<!-- SECTION:FINAL_SUMMARY:END -->
