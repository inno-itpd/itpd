---
id: TASK-038
title: Make course/rules.md a router and state each requirement once
status: Done
assignee: []
created_date: '2026-10-05 02:09'
updated_date: '2026-10-05 02:12'
labels:
  - docs
dependencies: []
priority: high
ordinal: 38000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
After TASK-037 the three requirements files barely overlap, but course/rules.md still restates about half of requirements/ and has drifted: its public/private table omits rows of Sensitive Information Reference, Identities copies artifact-requirements verbatim, and Accessibility states rules that exist nowhere in requirements/, which AGENTS.md forbids. Inside process-requirements.md, identifier immutability is restated six times, and the meeting-report Decisions row pattern seven times, though artifact Meeting Report owns the Changes column.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 course/rules.md has no public/private table, no Repository Hygiene, and no Identities section; Short Version links Sensitive Information Reference instead
- [x] #2 course/rules.md AI Tools keeps the policy and links AI Usage Report for the file contents
- [x] #3 The Accessibility rules are stated in artifact Visibility Model, and course/rules.md links them
- [x] #4 Identifier immutability is stated in process Identifier Rules and in the AC-nn exception only; ALT, GAP, VP, and US link Identifier Rules
- [x] #5 The MUP record layout in the weekly report is stated in artifact Weekly Public Report, not in process
- [x] #6 repository-requirements states neither the AC-nn PR rule twice nor the moscow label list, and links their owners
- [x] #7 assignment-2 links the MUP verdict rule instead of restating it
- [x] #8 Every anchor linked from another file still resolves
- [x] #9 What a Changes cell names for a priority change, an MUP verdict, and a boundary change is stated in artifact Meeting Report; process sections link it in one clause
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
Follow ~/.claude/plans/pasted-content-id-908d-there-are-concurrent-wall.md: rules.md to a router, move Accessibility rules to artifact Visibility Model, state identifier immutability once, move per-kind Changes content into artifact Meeting Report item 7, move the MUP record layout to artifact Weekly Public Report, small repository-requirements link fixes, assignment-2 link, run the gates, one commit. Process Assumptions keeps its path, per the TASK-037 note.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Process Assumptions keeps its path, per the TASK-037 note. The Week 3 story-verdict row in process Meeting With The Customer stays where it is: the section is marked TODO refine, and the artifact Meeting Report list has no per-bullet Since marker, so AC 5 was narrowed to the Week 2 kinds. Verification: format:markdown:check, lint:markdown, test:markdown-format, test:markdown-rules, check:lectures all exit 0; a scratchpad script resolved 383 relative heading links in tracked Markdown, 0 broken; rg finds immutability only in Identifier Rules 2 and AC 2.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Turned course/rules.md into a router plus summary (115 to 75 lines): dropped the drifted public/private table, Hygiene, and Identities in favour of links, and moved the Accessibility-only rules into artifact Visibility Model. In process-requirements, identifier immutability is now stated once, and the per-kind Changes content for priority, boundary, and MUP verdicts moved into artifact Meeting Report item 7; the MUP record layout moved to artifact Weekly Public Report. repository-requirements and assignment-2 link their owners instead of restating. Verified with all four Markdown gates, check:lectures, and a heading-link resolver (383 links, 0 broken).
<!-- SECTION:FINAL_SUMMARY:END -->
