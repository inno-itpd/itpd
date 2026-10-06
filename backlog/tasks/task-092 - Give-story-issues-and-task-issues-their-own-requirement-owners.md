---
id: TASK-092
title: Give story issues and task issues their own requirement owners
status: Done
assignee: []
created_date: '2026-10-06 15:28'
updated_date: '2026-10-06 15:33'
labels: []
dependencies: []
ordinal: 88000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Decided on 2026-10-06.
Problem: after TASK-091 the story-issue rules sit in two files, and the task-issue rules are artifact rules sitting in the platform file.
Decisions:
- Artifact files own their issue forms, fields, and labels: user-stories-requirements.md gains The Issue Form, and a new task-issues-requirements.md owns task issues in the artifact-file shape.
- The task file owns the task-to-pull-request rules, the close states, and the Dependabot exemption.
- repository-requirements.md keeps the shared Issue Tracking rules, branch naming, the PR template prompts, and Tracking Tasks Inside The Repository.
- The task file states that a task has no identifier family and is cited by its issue number.
This reverses the option TASK-091 rejected: a separate task-issues requirements file.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 user-stories-requirements.md has a The Issue Form section after Where Stories Live holding the old Story Issues rules and recommendations, and its links point at it
- [x] #2 task-issues-requirements.md exists with Where Task Issues Live, The Issue Form, Closing A Task, and Full Example, and every old Task Issues rule, recommendation, and example lands in exactly one place
- [x] #3 repository-requirements.md has no Story Issues or Task Issues subsection; Issue Tracking keeps its shared rules and links each kind's form; branch rule 5 and template rule 6 link the task file
- [x] #4 general-requirements.md says the issue forms are covered by the requirements file of the issue each opens
- [x] #5 No link points at repository-requirements.md#story-issues or #task-issues; assignment-2.md, the prototyping guide, and customer-meetings rule 10 point at the new anchors
- [x] #6 course/rules.md, README.md, and AGENTS.md route to the task file and describe the new ownership
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
- [x] #6 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
2026-10-06: The old Story Issues rules 1-3 and both recommendations moved verbatim in meaning to The Issue Form in user-stories-requirements.md, which sits after Where Stories Live and opens by linking Issue Tracking for the shared rules. Its links to Where Stories Live, Acceptance Criteria, and MoSCoW became local, and 'work on a story is done in task issues' links the new file. Where Stories Live rule 1 and its task-list bullet now link The Issue Form, and rule 2's rework link goes to Closing A Task.
The new task-issues-requirements.md has the artifact-file shape. Where Task Issues Live has the definition (the old lead), the parts of a task issue, a new sentence that a task has no identifier family and is cited by its issue number, old rule 7 on action points, and the imperative-title recommendation. The Issue Form has old rules 1 and 2. Closing A Task has old rules 3 to 6, with the Dependabot exemption beside 'every pull request closes exactly one task issue' and linking Pinning Third-Party Actions. Full Example is the #12 example, moved unchanged, so no identifier is allocated.
repository-requirements.md keeps Issue Tracking rules 1-4. Its lead links both forms, and branch rule 5 and template rule 6 link the task file (Where Task Issues Live and Closing A Task). general-requirements.md names the issue forms as the one exception to '.github/ is covered in Repository Requirements'. Assignment 2 Part 1, the prototyping guide, and customer-meetings rule 10 were retargeted with no rule change. course/rules.md, README.md, and both AGENTS.md tables were updated.
Validation: format:markdown:check, lint:markdown, test:markdown-format, test:markdown-rules, and check:lectures pass. rg finds no repository-requirements.md#story-issues or #task-issues. A script that resolves every relative link and heading anchor in the tracked Markdown reports 0 broken.
<!-- SECTION:NOTES:END -->
