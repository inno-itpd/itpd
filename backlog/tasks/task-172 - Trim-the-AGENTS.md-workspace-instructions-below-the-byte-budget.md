---
id: TASK-172
title: Trim the AGENTS.md workspace instructions below the byte budget
status: To Do
assignee: []
created_date: '2026-11-17 11:44'
due_date: '2026-11-19'
labels: []
dependencies: []
references:
  - AGENTS.md
  - CONTRIBUTING.md
  - lectures/AGENTS.md
priority: medium
type: chore
ordinal: 157000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
AGENTS.md is 64,941 bytes against the 65,536-byte workspace-instruction budget, leaving 595 bytes. Week 9's routing rows and destination-map rows will overflow it, and DSH omits or truncates instruction files over the budget with a marker, so an agent silently loses rules. The file also duplicates material other files own: Tooling repeats CONTRIBUTING.md, and the Layering ownership table repeats the Repository Map and each requirements file's own tables. Trim the duplicated prose and the least-used reference detail, keep every routing row, and target at least 4 KB of headroom. Moving the ownership table into CONTRIBUTING.md is the fallback only if trimming cannot reach the target without losing routing.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 AGENTS.md is at most 61,500 bytes, at least 4,096 bytes below the 65,536-byte budget
- [ ] #2 The trim removes content that CONTRIBUTING.md, a requirements file, or lectures/AGENTS.md already owns, and it drops no rule and no routing row
- [ ] #3 The Repository Map, the layering rules, the docs destination map, the terminology, and the Work Tracking commands still route every maintained file and lifecycle action
- [ ] #4 pnpm run format:markdown:check, pnpm run lint:markdown, pnpm run test:markdown-format, pnpm run test:markdown-rules, and pnpm run check:links pass
- [ ] #5 The task notes record the before and after byte counts, what was cut or moved, and why the remaining headroom covers Week 9
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
