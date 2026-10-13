---
id: TASK-074
title: Require the context diagram to render inline in the product vision
status: Done
assignee: []
created_date: '2026-10-05 20:11'
updated_date: '2026-10-05 20:13'
labels:
  - docs
dependencies: []
ordinal: 70000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The product vision let the system context diagram be linked view-only in any format. A link is not in the submitted commit and can change after it, and a source-only file does not render on GitHub, so the reviewer cannot check the diagram against the boundary. Require a committed image embedded in docs/product-vision.md that renders correctly on GitHub, and keep the tool and format the team's choice.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 product-vision-requirements.md requires the diagram committed at docs/architecture/context.<ext> as an image GitHub renders and embedded in docs/product-vision.md, with no view-only alternative
- [x] #2 The same rule requires the embedded diagram to render correctly on GitHub, legible in both light and dark themes, checked on the rendered permalink
- [x] #3 The rule leaves the tool and format to the team and allows an editable source to be linked in addition to the image
- [x] #4 assignment-2.md and the AGENTS.md destination map no longer offer a view-only link or a conditional context diagram
- [x] #5 The Markdown format check and lint pass
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
System Context now requires the diagram committed at docs/architecture/context.<ext> as an image GitHub renders and embedded in docs/product-vision.md, legible in both themes and checked on the rendered permalink. A view-only link no longer substitutes for it, and the tool and format stay the team's choice. Assignment 2's coverage row and the AGENTS.md destination map follow.
<!-- SECTION:FINAL_SUMMARY:END -->
