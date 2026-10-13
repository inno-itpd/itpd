---
id: TASK-127
title: Require a public GitHub project with a table view
status: Done
assignee: []
created_date: '2026-10-13 07:37'
updated_date: '2026-10-13 07:40'
labels: []
dependencies:
  - TASK-114
references:
  - requirements/repository-requirements.md
  - requirements/planning-requirements.md
  - guides/planning-and-tracking.md
  - course/syllabus.md
  - AGENTS.md
modified_files:
  - requirements/repository-requirements.md
  - requirements/planning-requirements.md
  - guides/planning-and-tracking.md
  - course/syllabus.md
  - AGENTS.md
type: docs
ordinal: 123000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The team's `Sprint`, `Responsible`, and `Accountable` values live on issues and only become visible to a reader outside the repository through a public GitHub project, which shows the public issue fields as columns. The 2025 course required a project and the maintainer's TODO carries it, and Week 3's assignment (TASK-119) is still unwritten, so the rule and its landings come first.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `requirements/repository-requirements.md` gains a `### GitHub Projects` subsection under Issue Tracking, marked `**Since: W3**` and listed in the TOC: one public organization project per team, titled after the product or the repository and described with a link to the repository; holding every open issue and kept current; with at least one table view whose columns include the `Sprint`, `Responsible`, and `Accountable` issue fields, grouped or sorted by `Sprint`; and the label fallback per Issue Fields.
- [x] #2 `## Contributing` requires `CONTRIBUTING.md` to state which views the team uses and why, and to link the project.
- [x] #3 `requirements/planning-requirements.md` Progress Monitoring names the public project's table view, in the rule and in the full example.
- [x] #4 `guides/planning-and-tracking.md` names the project's table view where the method says how progress is visible.
- [x] #5 `course/syllabus.md` names the public GitHub project in the Week 3 deliverable list and in the Submission 3 row.
- [x] #6 TASK-119 carries the setup step and the week minimum, and `AGENTS.md` Terminology gains `GitHub project`.
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
1. Add the `### GitHub Projects` subsection under Issue Tracking in `requirements/repository-requirements.md`, with its TOC row and the new `## Contributing` rule. 2. Name the project's table view in `requirements/planning-requirements.md` Progress Monitoring, in the rule and in the full example. 3. Name it in `guides/planning-and-tracking.md` where the method says how progress is visible. 4. Add the deliverable to `course/syllabus.md` and to the Submission 3 row. 5. Add `GitHub project` to `AGENTS.md` Terminology, and extend TASK-119's acceptance criteria to carry the setup step and the minimum. 6. Run the gates and `backlog doctor`; record the decision as D36 in `handoff.md`; then check the criteria and finish.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decisions: the requirement lives in `requirements/repository-requirements.md` as `### GitHub Projects` under Issue Tracking (`Since: W3`), with the TOC row and the Contributing rule; one public organization project per team, titled after the product or the repository, holding every open issue, with a table view whose columns include the `Sprint`, `Responsible`, and `Accountable` issue fields, grouped or sorted by `Sprint`, and the label fallback shows the labels. The sprint backlog stays the filtered issue list (D33); only Progress Monitoring and CONTRIBUTING name the project. Prose writes `GitHub project` for one and `GitHub Projects` for the feature. The course organization must enable 'Allow members to change project visibilities' before Week 3: instructor-side, no repository change. TASK-119's acceptance criteria now carry the setup step and the week minimum, and TASK-119 depends on TASK-127.
Validation: format:markdown rewrote only `course/syllabus.md` (the assessment table re-aligned around the longer Submission 3 row); format:markdown:check, lint:markdown, test:markdown-format (34 passed), test:markdown-rules (34 passed), check:lectures (3 decks match), check:links (1007 total, 1005 OK, 0 errors, 2 excluded, 1 redirect, run with --include-fragments so the new `#github-projects` citations resolve), and backlog doctor (no duplicates, self-references, or cycles) all pass.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Required a public GitHub project for every team: the `### GitHub Projects` rule under Issue Tracking in `requirements/repository-requirements.md`, with its TOC row and the Contributing rule; the project's table view named in `requirements/planning-requirements.md` Progress Monitoring and its full example; `guides/planning-and-tracking.md` updated; the GitHub Project deliverable added to the Week 3 syllabus list and Submission 3 row; `GitHub project` added to the AGENTS.md terminology; and TASK-119 extended to carry the setup step and week minimum, now depending on TASK-127. Verified with the four Markdown gates, check:lectures, check:links with fragments (0 errors), and backlog doctor.
<!-- SECTION:FINAL_SUMMARY:END -->
