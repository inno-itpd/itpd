---
id: TASK-078
title: Write field-style entries as bulleted lists
status: Done
assignee: []
created_date: '2026-10-06 11:26'
updated_date: '2026-10-06 11:29'
labels: []
dependencies: []
ordinal: 74000
---

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 general-requirements.md Identifier Rules requires an identifier section's fields as a bulleted list, Since W2
- [x] #2 customer-meetings-requirements.md requires the meeting report Metadata and the transcript header as bulleted lists, Since W2
- [x] #3 Every field-style example in requirements/ and guides/ uses the list form
- [x] #4 Assignment 2 asks for one formatting-only pull request that converts docs/research/ to the list form and leaves reports/week-01/ as it is
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Identifier Rules rule 9 (Since W2) writes an identifier section's fields as a bulleted list, with multi-sentence values and nested lists inside their bullet. The meeting report Metadata and the transcript header follow it (Since W2). Every field-style example in requirements/ and guides/ is in list form. Assignment 2 Part 4 converts docs/research/ in the heading catch-up pull request and leaves reports/week-01/ as it is.
<!-- SECTION:FINAL_SUMMARY:END -->
