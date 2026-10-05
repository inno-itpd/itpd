---
id: TASK-027
title: 'Introduce epics: decomposition and superseding'
status: To Do
assignee: []
created_date: '2026-10-04 22:33'
labels:
  - docs
dependencies: []
priority: medium
type: docs
ordinal: 27000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
TASK-026 removed superseding and split parents from Week 2, because W2 is about creating stories, not manipulating them. Epics will arrive later as user stories decomposed into smaller user stories, and the old W2 wording had two problems that the reintroduction must avoid: every split closed the parent as superseded, which excluded decomposition that keeps the parent, and 'superseded' was defined only through a split. The children's criteria were also not required to cover the parent's, so a parent criterion could silently disappear.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 The week that introduces epics defines a superseded story as one whose whole need is now carried by other stories, distinct from removed (need dropped) and won't have (need excluded), and distinct from an in-place edit when the need is unchanged
- [ ] #2 Decomposition may keep the parent open when it still has criteria only it can verify, and the parent is then the epic
- [ ] #3 When a parent is superseded, every parent criterion is covered by some child's criterion, and the closing comment names the superseding stories
- [ ] #4 The parent US-nn becomes a Traces to origin again, introduced with a Since marker for that week
- [ ] #5 All four Markdown gates pass
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->
