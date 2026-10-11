---
id: TASK-108
title: Run actionlint in CI on pull requests
status: To Do
assignee: []
created_date: '2026-10-11 14:06'
labels: []
dependencies: []
ordinal: 104000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
TASK-107 adds actionlint and shellcheck to the dev shell and documents running `pnpm run lint:actions` by hand, with CI deliberately left out. A hand-run check does not stop a workflow edit from merging, so this task adds the CI enforcement. Decide between a dedicated workflow that uses Nix, as the lectures job does, and a pinned third-party action, and pin it per Pinning Third-Party Actions.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 actionlint runs in CI on every pull request and every push to main, with shellcheck available for `run:` scripts
- [ ] #2 Any third-party action the job uses is pinned to a commit SHA per Pinning Third-Party Actions
- [ ] #3 `AGENTS.md` Tooling lists the actionlint job among the gates CI enforces
- [ ] #4 A workflow with a deliberate actionlint error fails the job, and the current workflows pass
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
