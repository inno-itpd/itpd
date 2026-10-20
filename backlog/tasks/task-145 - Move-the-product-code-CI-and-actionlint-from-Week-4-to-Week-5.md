---
id: TASK-145
title: Move the product-code CI and actionlint from Week 4 to Week 5
status: To Do
assignee: []
created_date: '2026-10-20 15:33'
updated_date: '2026-10-20 15:42'
labels: []
dependencies: []
references:
  - course/plans/a5-plan.md
  - course/plans/a4-plan.md
  - course/decisions/a3.md
modified_files:
  - requirements/repository-requirements.md
  - requirements/definition-of-done-requirements.md
  - course/syllabus.md
  - course/decisions/a3.md
  - TODO.md
type: docs
ordinal: 116000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
TASK-134 moved the product-code CI from Week 3 to Week 4, but the A5 plan moves the quality requirement tests, the testing plan, the container, component, and sequence views, and CI to Week 5, because the Week 5 lecture is testing and automation. The CI half moves with it: the product-code CI marker in `requirements/repository-requirements.md`, the Definition of Done item, and `actionlint`, which the A4 plan had put in Week 4. The move also corrects the syllabus, the TODO notes, `A3-DEC-018`'s pointer, and the A5 decision log's surviving-clause entry.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 `requirements/repository-requirements.md`: the product-code CI item is in a `**Since: W5**` block, and that block names `actionlint` and the five checks (linting, formatting, type checking, build, and automated tests) on pull requests and on `main`, with the third-party actions pinned.
- [ ] #2 `requirements/definition-of-done-requirements.md`: the pull request item that names the product-code CI is `**Since: W5**` and names `actionlint` too, and the full example's `## Pull Request` list carries it.
- [ ] #3 `course/syllabus.md`: the Week 4 deliverables lose `actionlint` and the product-code CI, the Week 5 deliverables and Submission 5 row gain them, and the Week 5 heading is `Testing, Verification & Deployment`.
- [ ] #4 `course/decisions/a3.md`: `A3-DEC-018` is `Reversed by A5-DEC-017`, and its `**Where it lands:**` pointer says the product-code CI marker moved from Week 4 to Week 5.
- [ ] #5 `TODO.md`: the product-code CI notes say Week 5 and the `Since: W5` block, and the actionlint item points at Assignment 5.
- [ ] #6 The four Markdown gates, `pnpm run check:links`, and `backlog doctor` pass.
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
- [ ] #6 `pnpm run check:links` passes
- [ ] #7 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->
