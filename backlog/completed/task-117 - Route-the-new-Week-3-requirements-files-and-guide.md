---
id: TASK-117
title: Route the new Week 3 requirements files and guide
status: Done
assignee: []
created_date: '2026-10-12 19:09'
updated_date: '2026-10-12 21:32'
labels: []
dependencies:
  - TASK-109
  - TASK-110
  - TASK-111
  - TASK-112
  - TASK-116
references:
  - AGENTS.md
  - SKILL.md
modified_files:
  - AGENTS.md
  - README.md
  - SKILL.md
  - course/rules.md
type: docs
ordinal: 113000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
When a requirements file or guide is added, the routing moves with it: `AGENTS.md`, `README.md`, `SKILL.md`, and `course/rules.md` are how students and their agents find the rules.
This task updates all four so the new files are reachable, and records the Week 3 row in the `docs/` destination map.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `AGENTS.md` repository map table gains the three new requirements files and the guide; the requirement-ownership table gains their rows; the conventions list gains `RISK-nn`, `TOS-nn`, `SPRINT-nn`, `MLS-nn`, and `REL-nn`; the terminology section gains sprint, sprint backlog, release, milestone, project plan, and risk register, and retires work plan; the Scrum paragraph says the sprint structure starts in Week 3 and the ceremonies arrive in Week 4; the other files in `course/` sentence accounts for `course/tooling.md`; and the `docs/` destination map gains the Week 3 row (`docs/project-plan.md`, `docs/threshold-of-success.md`, `docs/risks.md`, `docs/definition-of-done.md`, and `docs/setup.md`)
- [x] #2 `README.md` rules table gains the three new requirements rows and the guides table gains the planning and tracking row
- [x] #3 `SKILL.md` routing gains rows for the new work kinds (project plan, threshold of success, risks, and Definition of Done), the layer table accounts for `course/tooling.md`, and the frontmatter description names planning, threshold-of-success, risk, sprint, and Definition of Done work
- [x] #4 `course/rules.md` Where The Rules Live table gains the three new rows and the Guides row enumeration gains planning and tracking
- [x] #5 `SKILL.md` and `README.md` stay in step, and every new link resolves
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
Decisions: the three requirements files sit between Prototype and Customer Meeting in every router, and the guide last among the guides, matching the course order rather than the order the files were written; the requirement-ownership table gained one dedicated row per new requirements file rather than an extension of the artifact-group row, because each file's citation links differ (the issue-field and changelog mechanics and the risk register; the plan's review and the decision log; task issues, the pull request rules, and the tracker's own list); `work plan` appears nowhere in AGENTS.md today, so retiring it means the terminology gains `project plan` and never gains `work plan`; the router labels follow the new files' headings, so `Risk Requirements` is singular and `Definition Of Done Requirements` keeps `Of`; the SKILL routing gained four rows and attaches the planning guide to the plan, the threshold, and the risks, while `docs/definition-of-done.md` gets no guide because the planning-and-tracking guide does not cover it; the frontmatter description names planning and sprint as `project plan with its sprints and releases`; the Scrum paragraph now says the sprint structure lands in Week 3 and the ceremonies arrive in Week 4, so `later in the course` became `from Week 3 on`.
Validation: `pnpm run format:markdown` rewrote the four edited files only, with no side effects on the working-tree `TODO.md` or requirements files this time; `format:markdown:check`, `lint:markdown`, both vitest suites (34 and 34), `check:lectures` (3 decks, Typst 0.15.1), `check:links` (980 total, 978 OK, 0 errors, 2 excluded, 1 redirect, with `--include-fragments`, so every new anchor resolves), and `backlog doctor` pass.
Modified files: AGENTS.md, README.md, SKILL.md, course/rules.md.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Routed the Week 3 files through all four routers: the three new requirements files and guides/planning-and-tracking.md are in the AGENTS.md map and ownership tables, the README and course/rules.md rule and guide tables, and the SKILL.md routing table; AGENTS.md gained the five new identifier families, the planning vocabulary, the Week 3 sprint-structure paragraph, course/tooling.md, and the W3 destination-map row; SKILL.md gained the tooling layer row and the new frontmatter description. All Markdown gates, both plugin suites, the deck check, the link check, and backlog doctor pass.
<!-- SECTION:FINAL_SUMMARY:END -->
