---
id: TASK-131
title: Move the Week 1 pull-request minimums into Assignment 1
status: Done
assignee: []
created_date: '2026-10-13 09:07'
updated_date: '2026-10-13 09:10'
labels: []
dependencies: []
priority: medium
type: docs
ordinal: 127000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The Week 1 pull-request minimums are week-specific minima, and assignments own those, not requirements files.
Remove the Week 1 Minimums section from requirements/pull-requests-requirements.md, state the minimums in Assignment 1, and update the file descriptions and links that name them.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 requirements/pull-requests-requirements.md has no Week 1 Minimums section and no TOC entry for it.
- [x] #2 assignments/assignment-1.md states the Week 1 pull-request minimums itself, including the merged-and-approved pull request linked from the report, and links the new requirements file without the removed anchor.
- [x] #3 README.md, course/rules.md, SKILL.md, and both AGENTS.md descriptions no longer name the Week 1 minimums, and nothing references the removed anchor.
- [x] #4 The Markdown gates, the plugin fixtures, and check:lectures pass; check:links was skipped at the user request because the network was not available.
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
- [ ] #6 `pnpm run check:links` passes
- [x] #7 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Removed the Week 1 Minimums section and its TOC entry from requirements/pull-requests-requirements.md. The minimums now live in Assignment 1, Part 2, item 8, as two sub-bullets: at least one pull request merged into main with another member's approval and linked from the report as evidence, and for every member, at least one commit through a pull request and at least one review and approval of a teammate's pull request (one approval per pull request is enough), with a link to the requirements file for the rules.
README.md, course/rules.md, SKILL.md, and both AGENTS.md tables no longer name the Week 1 minimums; assignment-1's table row now says "review, and the evidence". Nothing references #week-1-minimums anymore.
Validation: format:markdown:check, lint:markdown, both plugin fixtures, and check:lectures pass. The fragment-aware check:links was skipped at the user's request because the network was not available; the change only removes an anchor target and repoints one link to a file whose other anchors the earlier TASK-130 link check already resolved, so DoD item 6 is left unchecked rather than claimed.
<!-- SECTION:NOTES:END -->
