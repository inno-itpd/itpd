---
id: TASK-039
title: Regroup process and artifact requirements by artifact between terms
status: To Do
assignee: []
created_date: '2026-10-05 02:09'
labels:
  - docs
dependencies: []
priority: medium
ordinal: 39000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
process-requirements.md and artifact-requirements.md split rules by kind (what the work must say vs where it lives and its fields), which is an authoring axis. Students work one artifact at a time, so one story issue means reading five sections across three files, and a customer meeting four or five plus a guide. Regrouping by artifact (research, product vision, user stories, customer meetings, weekly report and submission, visibility) removes most cross-file hops while keeping one owner per rule. Deferred because Week 2 is live and assignments and guides hold about 140 anchors into these files. repository-requirements.md stays separate, since platform setup is a distinct configure-once concern.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 Each artifact has one section that states what it must say and where it lives, with Required, Recommended, and Example labels
- [ ] #2 repository-requirements.md keeps platform mechanics and is not merged
- [ ] #3 Every inbound anchor from assignments, guides, course, README, and lectures is migrated and resolves
- [ ] #4 AGENTS.md repository map, layering, and ownership table describe the new structure
- [ ] #5 The change lands between terms, not during a live week
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->
