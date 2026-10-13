---
id: TASK-102
title: >-
  Rename the maintainer commit skill to commit-itpd and tell opencode teams to
  deny it
status: Done
assignee: []
created_date: '2026-10-06 20:55'
updated_date: '2026-10-06 21:06'
labels: []
dependencies: []
ordinal: 98000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
opencode loads every skills/**/SKILL.md inside a skills directory, so a team that installs the course as .agents/skills/itpd also gets the maintainers' commit skill, and a team commit skill collides with it by name.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The skill lives at .agents/skills/commit-itpd/ and its frontmatter name is commit-itpd
- [x] #2 .opencode/command/commit.md and CONTRIBUTING.md point at commit-itpd
- [x] #3 requirements/repository-requirements.md recommends denying commit-itpd in opencode.json, with an example
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
Why: opencode 1.18.34 globs skills/**/SKILL.md under each skills directory and has no exclude setting; .ignore and .gitignore files do not affect it. With two skills named commit it logs 'duplicate skill name' and keeps one nondeterministically (6 runs per location: .agents 4/2, .opencode 1/5, .claude 6/0 for the course's copy). Renaming removes the collision; permission.skill deny filters the skill out of the agent's available list. The deny is recommended for student repositories only, since denying it here would stop maintainers using it. /commit keeps its name, because commands are read only from this repository's .opencode/.
Validation: opencode debug skill here lists commit-itpd and no commit. In a scratch repository with the nested commit-itpd and a team .agents/skills/commit, 6 runs listed both with no duplicate warning; with the opencode.json deny, opencode debug agent build shows skill/commit-itpd/deny. format:markdown:check, lint:markdown and check:links pass; git grep 'skills/commit/' finds nothing.

Follow-up: the deny is per agent only. The TUI /skills menu lists every skill (InstanceHttpApi.skill returns Skill.all() unfiltered), and every skill is also a slash command whose template is the skill body, run without the skill permission check. So a denied commit-itpd still shows in /skills and still runs as /commit-itpd. The deny stays, because it is what stops the agent from loading commit-itpd when a student asks for a commit; repository-requirements.md now tells students not to run it by hand.
<!-- SECTION:NOTES:END -->
