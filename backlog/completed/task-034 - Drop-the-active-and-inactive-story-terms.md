---
id: TASK-034
title: Drop the active and inactive story terms
status: Done
assignee: []
created_date: '2026-10-05 00:43'
updated_date: '2026-10-05 00:43'
labels:
  - docs
dependencies: []
modified_files:
  - requirements/process-requirements.md
  - requirements/artifact-requirements.md
  - requirements/repository-requirements.md
  - assignments/assignment-2.md
  - guides/user-stories-and-prototyping.md
  - course/syllabus.md
type: docs
ordinal: 34000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The story rules used "active" and "inactive", which read like open and closed but were not: a delivered story is closed as completed and still counted as active. "Inactive" was the same as `Won't Have`, which the `moscow:won't` label and the "closed as not planned" reason already record, and "active" meant every other story. Decided: drop both terms, name `Won't Have` directly, keep both the label and the close reason, and state the story lifecycle once in process-requirements.md.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 No student-facing Markdown file uses "active" or "inactive" for a story; the remaining hits in course/syllabus.md are about analytics, attendance, and repository updates
- [x] #2 User Stories And Acceptance Criteria in process-requirements.md states the lifecycle once: a `Won't Have` story carries `moscow:won't` and is closed as not planned with a reason, and every other story stays open until delivered, then closes as completed
- [x] #3 The story minimum, the two-criteria floor, the one-week size rule, and the goal-tracing rule are stated in terms of `Won't Have` stories
- [x] #4 artifact-requirements.md and repository-requirements.md link the lifecycle rule rather than restating it
- [x] #5 assignment-2.md, guides/user-stories-and-prototyping.md, and the Week 2 story lines in course/syllabus.md use the same wording
- [x] #6 No rule refers to another by its list item number
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
See ~/.claude/plans/we-have-active-inactive-terms-cached-pearl.md: replace "inactive story" with "`Won't Have` story", restate each "active" rule around `Won't Have`, state the lifecycle once in process-requirements item 10, link it from artifact and repository requirements, align assignment-2, the stories guide, and the syllabus, then run the gates.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
The `Won't Have` MoSCoW bullet dropped its cross-reference ("per item 10"), because item 10 is a few lines below in the same list and an item number goes stale on renumbering. Example captions in artifact-requirements.md now read "a `Must Have` story" and "a `Won't Have` story". swp_26/ still uses "active stories" and was left alone, because its conventions are not ported. Validation: format:markdown:check, lint:markdown, test:markdown-format, test:markdown-rules, and check:lectures all pass; rg for active/inactive leaves only the non-story syllabus hits.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Removed "active" and "inactive" from the story rules: they meant `Won't Have` and everything else, not closed and open. The lifecycle (`moscow:won't` + closed as not planned, otherwise open until delivered and closed as completed) is stated once in process-requirements.md and linked from the other two requirements files; assignment-2, the stories guide, and the syllabus use the same wording. All Markdown gates and the deck check pass.
<!-- SECTION:FINAL_SUMMARY:END -->
