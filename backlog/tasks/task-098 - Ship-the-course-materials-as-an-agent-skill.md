---
id: TASK-098
title: Ship the course materials as an agent skill
status: Done
assignee: []
created_date: '2026-10-06 16:55'
updated_date: '2026-10-06 16:58'
labels: []
dependencies: []
ordinal: 94000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Students ask how to turn this repository into a skill for their coding agent. Ship a SKILL.md at the repository root so a checkout is the skill, and document installing it as a Git submodule, with the submodule mechanics students may not know.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 SKILL.md at the repository root has name itpd and a description, and routes to the layers, the current week, and each kind of work without restating a rule
- [x] #2 SKILL.md names the maintainer files a student's agent must ignore, including AGENTS.md
- [x] #3 requirements/repository-requirements.md has a Recommended section on installing the skill as a submodule: what a submodule is, adding it, cloning with it, pulling a teammate's update, moving to the latest materials, forcing it back, and excluding it from the checks
- [x] #4 The Continuous Integration and Link Checking rules allow the skill's directory to be excluded, by linking the new section
- [x] #5 README.md routes to the new section, and AGENTS.md lists SKILL.md and says to keep its routing table in step
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
1. Write SKILL.md at the root. 2. Add the section to repository-requirements.md and amend the two exclusion rules. 3. Route from README.md, record in AGENTS.md. 4. Run the Markdown gates, the link check, and the deck check; smoke-test the skill in a scratch repository.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decisions: SKILL.md sits at the repository root, so a checkout of the whole repository is the skill and its relative links resolve with no copying; name is itpd, so the install directory must end in itpd. Install is a Git submodule: it pins the version for the team and actions/checkout leaves it out of CI. SKILL.md is a router like README.md and states no rule; it links research honesty, visibility, and the AI usage report, and names the maintainer files to ignore, AGENTS.md first, because its 'do not create docs/ or reports/' would mislead a student's agent. The new section in repository-requirements.md is Since W2, Recommended, and carries the submodule mechanics (what one is, add, clone, init, pull with recursion, update --remote, force back) as Example blocks rather than a new guide. CI item 5 and Link Checking item 2 now allow the course directory to be excluded by linking that section. Validation: format:markdown:check, lint:markdown, test:markdown-format, test:markdown-rules, check:lectures, and check:links all pass (753 OK, 0 errors). Smoke test: a scratch repository with the materials as a submodule at .claude/skills/itpd; headless claude listed the itpd skill and routed a Week 2 product-vision question to assignment-2.md and product-vision-requirements.md.
<!-- SECTION:NOTES:END -->
