---
id: TASK-097
title: Link the repository's Lychee setup as the link-check example
status: Done
assignee: []
created_date: '2026-10-06 16:46'
updated_date: '2026-10-06 16:46'
labels: []
dependencies: []
ordinal: 93000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The Link Checking example in requirements/repository-requirements.md inlined a Lychee workflow that had drifted from this repository's own and advised .lycheeignore. Link the real files instead and recommend lychee.toml.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Link Checking links .github/workflows/lychee.yml and lychee.toml instead of inlining a workflow and a .lycheeignore
- [x] #2 Link Checking recommends lychee.toml for Lychee's settings and exclusions
- [x] #3 assignment-1.md names lychee.toml in the tree and no longer requires .lycheeignore
- [x] #4 AGENTS.md says the two files are the students' link-check example
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

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decisions: the Example now links ../.github/workflows/lychee.yml and ../lychee.toml with relative links, so it cannot drift from the running check; the inline copy still passed --max-concurrency 2 and --accept in args, which lychee.toml now holds. lychee.toml is Recommended rather than Required, so the assignment-1 checklist asks for every exclusion to be justified where it is made instead of naming a file, and a team with .lycheeignore stays compliant. The Dependabot and Markdown-check examples stay inline: this repository's markdown.yml uses a different toolchain from the example. Validation: format:markdown:check, lint:markdown, test:markdown-format, test:markdown-rules, check:lectures pass; check:links passes 717 OK 0 errors (a first run hit one transient connection failure to conventionalcommits.org, which passed on rerun); rg finds no .lycheeignore outside backlog.
<!-- SECTION:NOTES:END -->
