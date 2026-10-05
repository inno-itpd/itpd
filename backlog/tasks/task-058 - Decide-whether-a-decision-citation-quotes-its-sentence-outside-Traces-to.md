---
id: TASK-058
title: Decide whether a decision citation quotes its sentence outside Traces to
status: To Do
assignee: []
created_date: '2026-10-05 11:28'
labels:
  - docs
dependencies: []
priority: low
ordinal: 58000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
`requirements/general-requirements.md#identifier-rules` rule 8 and `guides/validating-with-the-customer.md` Step 6 cite a decision by path, the `#decisions` anchor, and its sentence quoted. The examples and one rule only link: the issue comment in the `requirements/user-stories-requirements.md` Full Example, the `ASM-02` `**Outcome:**` in `requirements/assumptions-requirements.md`, boundary rule 3 and its examples and the VPS constraint row in `requirements/product-vision-requirements.md`. Postponed by the maintainer during TASK-057.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 One rule says where a decision citation quotes the decision's sentence and where a link to #decisions is enough
- [ ] #2 Every example and rule that cites a decision follows that rule
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->
