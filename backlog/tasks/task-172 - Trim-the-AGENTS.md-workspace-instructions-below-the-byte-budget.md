---
id: TASK-172
title: Trim the AGENTS.md workspace instructions below the byte budget
status: Done
assignee: []
created_date: '2026-11-17 11:44'
updated_date: '2026-11-17 12:04'
due_date: '2026-11-19'
labels: []
dependencies: []
references:
  - AGENTS.md
  - CONTRIBUTING.md
  - lectures/AGENTS.md
modified_files:
  - AGENTS.md
  - eslint.config.ts
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
- [x] #1 AGENTS.md is at most 61,500 bytes, at least 4,096 bytes below the 65,536-byte budget
- [x] #2 The trim removes content that CONTRIBUTING.md, a requirements file, or lectures/AGENTS.md already owns, and it drops no rule and no routing row
- [x] #3 The Repository Map, the layering rules, the docs destination map, the terminology, and the Work Tracking commands still route every maintained file and lifecycle action
- [x] #4 pnpm run format:markdown:check, pnpm run lint:markdown, pnpm run test:markdown-format, pnpm run test:markdown-rules, and pnpm run check:links pass
- [x] #5 The task notes record the before and after byte counts, what was cut or moved, and why the remaining headroom covers Week 9
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
- Measure the sections and tables: the two large tables render as 35,343 B against 15,465 B of cell content, so about 19.9 KB is Prettier column padding.
- Replace the Repository Map's File/Owns table with a flat path list, keeping every row and shortening descriptions that each requirements file already owns. A list cannot re-pad every row when a later row is longer.
- Compress Tooling to the gate commands and a compact file list, deferring prerequisites, setup, and repository settings to CONTRIBUTING.md, and move the four eslint rationale sentences into comments in eslint.config.ts beside the rules.
- Pull the 406-char "one file per artifact group" cell out of the Layering table into prose and shorten the remaining cells; the first column drops from 406 to 44 chars.
- Replace the 16-line identifier restatement in Conventions with a pointer to the Identifier Rules section that already owns it.
- Run the formatter, then the four Markdown gates, fmt:check, the deck check, and the link check.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Before: 64,941 B, leaving 595 B of the 65,536 B budget. After: 35,419 B, leaving 30,117 B, which is 26,021 B above the 4,096 B headroom target. Section deltas: Repository Map 32,953 -> 15,151 B, Layering 15,435 -> 6,493 B, Conventions 4,128 -> 1,350 B, Tooling subsection 7,913 -> 3,774 B. The docs destination map, terminology, authoring checklist, two-location rule, and Do Not are byte-identical.

What was cut or moved: (1) about 19.9 KB of pure table column padding (Repository Map 10,738 B and Layering 9,140 B), by converting the map to a list and lifting the single 406-char cell out of the Layering table. No row or rule was lost: the map still names all 32 requirements files, all 12 guides, and every course file, with the plan files routed by pattern as before. (2) The 16-line identifier family restatement in Conventions, because requirements/general-requirements.md#identifier-rules already owns the families, digits, scope, headings, dropped form, and never-renumber rule. (3) The map's long per-file Owns prose, because each requirements file's intro and the Layering table own the detailed contents. (4) Tooling prose that repeated CONTRIBUTING.md; the four eslint rationale sentences moved to comments in eslint.config.ts beside the rules they explain. (5) The 14 repeated "Explanatory, not normative." guide suffixes, replaced by one sentence above the guide list.

Why 30,117 B covers Week 9: at the task's 200-400 B per routing or destination row, that is roughly 75-150 rows, and the list format means a new row adds only its own bytes instead of widening every existing table row. Validation: format:markdown:check, lint:markdown, test:markdown-format, test:markdown-rules, fmt:check, check:lectures (8 decks), and check:links (4,083 links, 0 errors, 2 excluded, 1 redirect) all pass. The changes are left uncommitted for review.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Trimmed AGENTS.md from 64,941 B to 35,419 B, leaving 30,117 B of headroom under the 65,536 B instruction budget, without dropping a rule or a routing row.

What changed:
- Repository Map: the File/Owns table became a flat list of all maintained paths. This removes 10.7 KB of Prettier column padding and makes future rows additive rather than re-padding every row.
- Layering: the 406-char artifact-group cell moved to prose and the remaining cells were shortened; table padding falls from 9.1 KB to about 1.5 KB and the first column from 406 to 44 chars.
- Conventions: the 16-line identifier restatement became a pointer to requirements/general-requirements.md#identifier-rules, which owns those rules.
- Tooling: 7,913 B to 3,774 B; prerequisites, setup, and repository settings are deferred to CONTRIBUTING.md, and the eslint rule rationale now lives as comments in eslint.config.ts.
- The 14 repeated "Explanatory, not normative." guide suffixes became one sentence. The docs destination map, terminology, authoring checklist, two-location rule, and Do Not are unchanged.

Validation: format:markdown:check, lint:markdown, test:markdown-format, test:markdown-rules, fmt:check, check:lectures (8 decks), and check:links (4,083 links, 0 errors) pass. No follow-up is required; Week 9 has about 30 KB of room for routing and destination rows.
<!-- SECTION:FINAL_SUMMARY:END -->
