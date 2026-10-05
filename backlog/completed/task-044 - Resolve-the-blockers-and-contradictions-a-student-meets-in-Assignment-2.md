---
id: TASK-044
title: Resolve the blockers and contradictions a student meets in Assignment 2
status: Done
assignee:
  - '@claude'
created_date: '2026-10-05 07:00'
updated_date: '2026-10-05 07:07'
labels:
  - docs
dependencies: []
references:
  - assignments/assignment-2.md
  - requirements/repository-requirements.md
  - requirements/customer-meetings-requirements.md
  - requirements/user-stories-requirements.md
  - requirements/prototypes-requirements.md
  - course/syllabus.md
priority: medium
ordinal: 44000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
A read-through of assignments/assignment-2.md as a student, following every link, found three blockers (the issue-form PR cannot link to an issue; the new Markdown check fails on Week 1 records that may not be rewritten; the Markdown check has no concrete target), several rules that contradict another file or their own example, and ambiguities in what the week report and Moodle PDF carry. The decisions were settled with the user on 2026-10-05 and land in the live Week 2, announced in the course chat, with a free deviation for teams that already followed the old wording.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Repository requirements add a task issue form and the blank-issue bootstrap for the forms PR, a markdownlint-cli2 example for the Markdown check without the Title Case and broken-link claims, and allow excluding a task tracker's directory from the Markdown check
- [x] #2 General requirements allow formatting-only changes to earlier weeks' records
- [x] #3 Requirements and guides agree: a prototype must change something, kickoff action point outcomes go in a Previous action points meeting report section, the drop-first rule is gone, the story and kickoff examples follow their rules, a Week 2 spike is never merged, a prototype may cite an assumption through its story or gap, and a committed context diagram lives at docs/architecture/
- [x] #4 The syllabus states the Thursday soft and Friday hard deadlines and names the task form
- [x] #5 Assignment 2 points at the changed rules, drops the duplicated README items, covers a refused recording in the Moodle PDF, and every anchor it links resolves
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. requirements: blockers (repository + general). 2. requirements + guides: contradictions, examples, AGENTS map. 3. syllabus deadlines and task form. 4. A2 deltas. Commit per layer.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
The markdownlint-cli2-action pin is v24.2.0 at 21c1be1b93ad9ed58fa840aacc3f279cde2a72ff, the commit behind the annotated tag, resolved with gh api. The Week 11 reflection deadline (Wednesday, Dec 10) is not a weekly submission, so it has no hard deadline. ../itpd-instructors/syllabus.md still says 'strictly due by Thursday'; it is out of scope here.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Repository requirements add a task issue form, the blank-issue start for the forms PR, a pinned markdownlint-cli2 example, and an exclusion for a task tracker's directory. General requirements allow formatting-only changes to earlier weeks. The requirements and guides now agree on: a prototype must change something; kickoff action point outcomes go in a new Previous action points meeting report section; no drop-first story; examples that follow their own rules; Week 2 spikes are never merged; prototypes of an assumption cite the story or gap it rests on; and the context diagram goes at docs/architecture/. The syllabus states the Thursday soft and Friday hard deadlines. Assignment 2 points at all of these. Verified with the four Markdown gates, the deck check, backlog doctor, and a script that resolved all 454 local anchor links.
<!-- SECTION:FINAL_SUMMARY:END -->
