---
id: TASK-094
title: >-
  Address the review comments in ca7d7aa: task acceptance criteria, the Value
  proposition field, and issue lists
status: Done
assignee: []
created_date: '2026-10-06 16:15'
updated_date: '2026-10-06 16:17'
labels: []
dependencies: []
ordinal: 90000
---

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Every task issue carries its own acceptance criteria as a required checklist of AC-nn scoped to the task, which the reviewer ticks before approving
- [x] #2 A task's Story field is a bullet list naming each story with the story AC-nn it works toward, such as - #42 (AC-01, AC-02)
- [x] #3 A story lists its tasks as a plain bullet list without checkboxes
- [x] #4 A story names its one VP-nn in a required Value proposition field, and Traces to holds only its origins
- [x] #5 Acceptance criteria in examples start with a plain AC-nn, and stories are created from Week 2 onward
- [x] #6 general-requirements, repository-requirements, assignment-2, the user stories guide, and AGENTS.md agree with the new rules, and no ca7d7aa TODO remains
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
- [ ] #6 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decisions, settled with the user: a task carries its own required acceptance criteria, which may be lower-level than the story's, numbered AC-nn within the task issue, written as a checklist the reviewer ticks before approving, at least one, same observable pass/fail bar as a story's, edited freely without a comment. The task's Story field names each story with its AC-nn in parentheses, such as - #42 (AC-01, AC-02). A story lists its tasks as a plain bullet list. A story's VP-nn moved into a required single-line Value proposition field, and Traces to keeps its name for the origins only. Story criteria stay a numbered list. AC-01: is written plain in examples. Stories are created from Week 2 onward. All rules stay Since: W2, and Assignment 2 gets no catch-up step, only rewording where it contradicted the new rules plus a pointer to the task's Acceptance Criteria. The task full example gains a non-story task. general-requirements identifier rules 1 and 7, the traceability table, the PR template rule, the user stories guide, and AGENTS.md conventions follow. Validation: format:markdown:check, lint:markdown, test:markdown-format, test:markdown-rules, check:lectures, and backlog doctor pass; no ca7d7aa TODO remains.
<!-- SECTION:NOTES:END -->
