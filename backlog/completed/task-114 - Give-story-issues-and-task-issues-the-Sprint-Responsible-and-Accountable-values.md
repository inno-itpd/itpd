---
id: TASK-114
title: >-
  Give story issues and task issues the Sprint, Responsible, and Accountable
  values
status: Done
assignee:
  - '@opencode'
created_date: '2026-10-12 19:09'
updated_date: '2026-10-12 20:55'
labels: []
dependencies:
  - TASK-109
  - TASK-113
references:
  - requirements/repository-requirements.md
modified_files:
  - requirements/task-issues-requirements.md
  - requirements/user-stories-requirements.md
type: docs
ordinal: 110000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The `Sprint`, `Responsible`, and `Accountable` fields are created by the repository requirements, and the issue requirements must say what the values mean on a task and on a story.
This task edits `requirements/task-issues-requirements.md` and `requirements/user-stories-requirements.md`; no issue-form change is needed, so teams need no catch-up pull request.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Both files require the three values to be set together when the team schedules an issue into a sprint: `Sprint` names the sprint the team plans to finish it in, and `Responsible` and `Accountable` name two different members
- [x] #2 On a task, the responsible member does the work and the accountable member verifies it, ticks the acceptance criteria before merge, and approves the pull request
- [x] #3 On a story, the responsible member maintains the story and its criteria, and the accountable member verifies that it is ready to be shown, with its criteria runnable and its links resolving
- [x] #4 A reschedule or a change of hands updates the values; an open issue the team has not scheduled carries none, and closed issues keep none
- [x] #5 Neither file asks for an issue-form change; both point at `requirements/repository-requirements.md` for the fields themselves
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
1. Fix the section position in each file and add its table-of-contents entry: the task file gains the section between Acceptance Criteria and Closing A Task, the story file between MoSCoW Prioritization and Full Example.

2. Write one `**Since: W3**` section per file, titled `## The Sprint, Responsible, And Accountable Values`: the three values set together when the issue is scheduled, the responsible and accountable roles for that kind of issue, the maintenance rule, and the pointer to `requirements/repository-requirements.md#issue-fields` for the fields themselves.

3. Update both header sentences to name the section, then run the gates and record the results.

4. Check the acceptance criteria and the Definition of Done.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decisions: both files gained one section, The Sprint, Responsible, And Accountable Values (Since: W3), placed in the reading order of each file: the task file between Acceptance Criteria and Closing A Task, the story file between MoSCoW Prioritization and Full Example. The header sentence and the table of contents of each file name the section.
- task-issues: the section states that the team sets the three values together when it schedules a task into a sprint, that the responsible member does the work and the accountable member verifies it, ticks each acceptance criterion before the pull request merges, and approves the pull request (linking Closing A Task for those mechanics), and that a reschedule or a change of hands updates the values while an unscheduled open task and a closed task carry none.
- user-stories: the same scheduling and maintenance rules, with the responsible member maintaining the story and its acceptance criteria and the accountable member verifying that it is ready to be shown, with every criterion runnable and every link on the issue resolving (linking the story items of the Definition of Done).
- Both files say the values are set on the issue after it is created, so no issue form change is needed, and both point at `requirements/repository-requirements.md#issue-fields` for the fields themselves.
Validation: format:markdown and format:markdown:check, lint:markdown, test:markdown-format (34 passed), test:markdown-rules (34 passed), check:lectures (3 decks, Typst 0.15.1), and check:links (949 total, 0 errors, 2 excluded; the two new anchors, `#issue-fields` and `definition-of-done-requirements.md#the-story`, resolve) pass.
The working tree also carries the maintainer in-progress edits in TODO.md, planning-requirements.md, and risks-requirements.md; this change does not include them.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Gave story issues and task issues the Sprint, Responsible, and Accountable values: each file carries one Since: W3 section that says how the three values are set together when an issue is scheduled, what the responsible and accountable members do on that kind of issue, how the values stay current, and where the fields themselves live, with no issue-form change. All gates pass, including check:links.
<!-- SECTION:FINAL_SUMMARY:END -->
