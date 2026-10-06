---
id: TASK-103
title: >-
  Keep a student's agent off the maintainer files when the course is installed
  as a skill
status: Done
assignee: []
created_date: '2026-10-06 21:14'
updated_date: '2026-10-06 21:15'
labels: []
dependencies: []
ordinal: 99000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Installed as a submodule skill, the course repository exposes maintainer files to a student's agent. opencode 1.18.34 attaches every AGENTS.md above a file its read tool opens, so reading a requirements file inside .agents/skills/itpd injects the maintainer AGENTS.md, which forbids creating files under docs/ and reports/. SKILL.md points follow-ups at a root TODO.md, and the skill directory has the maintainers' own TODO.md, which SKILL.md does not list as maintainer-only. And a submodule that was never moved hides the current week's assignment, which SKILL.md tells the agent to read as not published yet.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 AGENTS.md and lectures/AGENTS.md open with a line saying they do not apply when the directory is installed as a skill in another repository, and point at SKILL.md
- [x] #2 SKILL.md lists TODO.md and the other tracked maintainer-only files under Files That Are Not Course Material
- [x] #3 SKILL.md tells the agent to ask for a submodule update when the syllabus's current week has no assignment file, before treating the assignment as unpublished
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
Why: opencode 1.18.34 Instruction.resolve walks from a file its read tool opens up to the project root and attaches each AGENTS.md, CLAUDE.md, or CONTEXT.md it finds as 'Instructions from: <path>', so reading .agents/skills/itpd/requirements/*.md injects the maintainer AGENTS.md. A guard at the top of both AGENTS.md files is what the injected text itself carries; SKILL.md's ignore list alone is read only if the agent opens SKILL.md. The submodule staleness line points at the existing update instructions rather than restating the command. .github/dependabot.yml is already covered by .github/.
Not changed: the opencode-only commit-itpd deny in repository-requirements.md. codex debug prompt-input (codex-cli 0.153.4) in a scratch repository with the submodule at .agents/skills/itpd lists itpd and not commit-itpd, so the nested skill is an opencode issue only. opencode debug skill there lists both, as recorded in TASK-102. Claude Code was not tested.
Validation: format:markdown:check, lint:markdown, test:markdown-format, test:markdown-rules, check:lectures (2 decks match), and check:links (788 OK, 0 errors) pass.
<!-- SECTION:NOTES:END -->
