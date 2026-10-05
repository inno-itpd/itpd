---
id: TASK-075
title: Require the context diagram's source committed beside its image
status: Done
assignee: []
created_date: '2026-10-05 20:16'
updated_date: '2026-10-05 20:17'
labels:
  - docs
dependencies: []
ordinal: 71000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
TASK-074 required the embedded image but left the editable source optional. Commit the source beside the image whenever the tool saves one, so the diagram is versioned and an agent can read it as text. The format stays the team's choice.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 product-vision-requirements.md System Context requires the diagram's source committed beside the image with the same name when the tool saves one, updated in the same change as the image
- [x] #2 The same rule says a view-only link does not replace a committed source, and leaves the format to the team
- [x] #3 The parts list, the assignment-2.md coverage row, and the AGENTS.md destination map name the source beside the image
- [x] #4 The Markdown format check and lint pass
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
System Context rule 4 now requires the diagram's source committed beside the image with the same name whenever the tool saves one, updated in the same change, and says a view-only link does not replace it. The parts list, the Assignment 2 coverage row, and the AGENTS.md destination map name the source.
<!-- SECTION:FINAL_SUMMARY:END -->
