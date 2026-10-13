---
id: TASK-100
title: Document the maintainer prerequisites in CONTRIBUTING.md
status: Done
assignee: []
created_date: '2026-10-06 18:35'
updated_date: '2026-10-06 19:06'
labels: []
dependencies: []
ordinal: 96000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The repository has no human-facing developer documentation: README.md is for students only, and AGENTS.md is written for agents. The cleanup workflow also needs repository settings that are written down nowhere.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 CONTRIBUTING.md states the prerequisites, the setup, the checks to run before a pull request, and the repository settings the workflows need
- [x] #2 AGENTS.md and SKILL.md route to it, and it does not restate what AGENTS.md owns
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

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Added CONTRIBUTING.md at the root, the conventional file GitHub surfaces for contributors, since README.md is students only. It covers the prerequisites, the setup, the checks before a pull request, work tracking, and repository settings. Decisions, confirmed with the user: Nix only, with no manual install path, because check:lectures depends on the pinned font; the settings cover only what backlog-cleanup.yml needs (Actions may create pull requests, and the optional BACKLOG_CLEANUP_TOKEN), not branch protection. It links AGENTS.md#tooling and #work-tracking rather than restating them. AGENTS.md has a Tooling row and one sentence routing a human maintainer to it, and SKILL.md lists it among files that are not course material. Validation: format:markdown:check, lint:markdown, test:markdown-format, test:markdown-rules, check:lectures (2 decks), and check:links (764 OK, 0 errors) pass.

Follow-up: Repository Settings now orders the Actions setting organization first, then repository, because an organization that disables it greys out the repository checkbox. It also requires read-only default workflow permissions at both levels, because every workflow declares its own permissions and a declared permission can grant write above the default. The organization owner sets it, the repository admin follows, and the cleanup workflow needs it only when it falls back to GITHUB_TOKEN. Applied on inno-itpd/itpd: default read, create and approve pull requests allowed, BACKLOG_CLEANUP_TOKEN set. Validation: format:markdown:check, lint:markdown, test:markdown-format, test:markdown-rules, check:lectures, and check:links (764 OK, 0 errors) pass.
<!-- SECTION:NOTES:END -->
