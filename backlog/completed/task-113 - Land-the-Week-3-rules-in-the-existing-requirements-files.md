---
id: TASK-113
title: Land the Week 3 rules in the existing requirements files
status: Done
assignee:
  - '@opencode'
created_date: '2026-10-12 19:09'
updated_date: '2026-10-12 20:40'
labels: []
dependencies:
  - TASK-109
  - TASK-110
references:
  - course/syllabus.md
modified_files:
  - requirements/general-requirements.md
  - requirements/decisions-requirements.md
  - requirements/product-vision-requirements.md
  - requirements/repository-requirements.md
type: docs
ordinal: 109000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Week 3 introduces five identifier families and rules that belong in files that already exist: the identifier rules and traceability in `requirements/general-requirements.md`, the point-of-no-return trigger in `requirements/decisions-requirements.md`, the goal link to the threshold of success in `requirements/product-vision-requirements.md`, and GitHub Pages, the dependency-bump policy, the setup page, and the issue fields in `requirements/repository-requirements.md`.
This task edits all four in one change, so the routing and the assignment can cite them.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `general-requirements.md` identifier rule 1 lists `RISK-nn`, `TOS-nn`, `SPRINT-nn`, `MLS-nn`, and `REL-nn` as two-digit, zero-padded, case-sensitive, never renumbered or reused, and `UP-nn` appears nowhere
- [x] #2 `general-requirements.md` marks `TOS-nn` and `RISK-nn` as ordinary sectioned identifiers, and `SPRINT-nn`, `MLS-nn`, and `REL-nn` as `**Status:**` exceptions, with `MLS-nn` and `REL-nn` also first-line exceptions (a milestone opens with its fields, a release carries its released-as line)
- [x] #3 `general-requirements.md` traceability table gains the Week 3 rows, including citing `REL-nn` by a link to its plan section (`project-plan.md#rel-03`)
- [x] #4 `decisions-requirements.md` adds passing a point of no return as a trigger for a decision entry, so risks and the plan cite one owner
- [x] #5 `product-vision-requirements.md` requires `## Goal` to link `docs/threshold-of-success.md` as the SMART refinement of the goal; the threshold does not link back, and the milestone `**Advances:**` field stays the plan link into it
- [x] #6 `repository-requirements.md` requires the GitHub Pages site published from `docs/` by an Actions workflow with pinned third-party actions and linked from the root README; any generator is allowed, with mdBook, Zensical, and MkDocs as the examples in that order; the default page says what the product is and navigates to the other pages and resources; the site does not link weekly reports; and a page linking outside `docs/` uses the file GitHub URL
- [x] #7 `repository-requirements.md` states the dependency-bump policy under Contributing: once the stack is chosen, its package ecosystem joins `github-actions` in `.github/dependabot.yml`; a Dependabot pull request is reviewed like any other, with one approval from another member; any member may merge it; and it closes no task issue
- [x] #8 `repository-requirements.md` turns the root README `**Since: W3**` rule into a link to `docs/setup.md`, and gives `docs/setup.md` a content minimum: prerequisites, install, configuration pointing at `.env.example`, how to run the product, and how to run the checks and tests, enough that a clean checkout can complete the core task by following it; the rule names coverage, not a fixed sequence
- [x] #9 `repository-requirements.md` states the three issue fields: single-select and `Public`; `Responsible` and `Accountable` offer the team GitHub usernames; `Sprint` offers `SPRINT-03` to `SPRINT-09` only; pinned to the issue types used for stories and tasks (or `Issues without a type`); values set together when an issue is scheduled; unscheduled or closed issues carry none; and a team whose organization cannot create fields declares a deviation and carries the values as labels `responsible:<username>`, `accountable:<username>`, and `sprint:<SPRINT-nn>`
- [x] #10 The Continuous Integration and the Changelog and Releases blocks keep their `**Since: W3**` markers, and nothing moves to Week 4
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
1. Edit requirements/general-requirements.md: add RISK-nn, TOS-nn, SPRINT-nn, MLS-nn, and REL-nn to identifier rule 1, mark TOS/RISK as ordinary sectioned identifiers and SPRINT/MLS/REL as the Status and first-line exceptions, and add the Week 3 traceability rows.
2. Edit requirements/decisions-requirements.md: add passing a point of no return to the decision triggers.
3. Edit requirements/product-vision-requirements.md: require the goal to link docs/threshold-of-success.md, and show it in the example.
4. Edit requirements/repository-requirements.md: the Documentation Site section, the Setup And Run Instructions subsection, the root README link, the dependency-bump policy under Contributing, and the Issue Fields subsection.
5. Run the gates: format:markdown, format:markdown:check, lint:markdown, both vitest suites, check:lectures, check:links, and backlog doctor.
6. Check the acceptance criteria with the validation evidence and record the notes.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decisions: the four files landed in one change.
- general-requirements: identifier rule 1 now names the Week 3 families (`RISK-nn`, `TOS-nn`, `SPRINT-nn`, `MLS-nn`, `REL-nn`) and says 'Every family is zero-padded and case-sensitive' so the sentence covers them; a `**Since: W3**` block adds rule 13 (TOS/RISK are ordinary sectioned identifiers, values owned by the two family files) and rule 14 (SPRINT/MLS/REL are exceptions to rule 10's Status field, MLS/REL also to rule 5's first line). The traceability table gains four rows: the plan's TOS/SPRINT fields, the threshold's DEC behind a change or drop, the risks' DEC behind settlement or a passed point of no return, and every weekly report from Week 3 citing its REL-nn linked to its plan section, such as `project-plan.md#rel-03`. `UP-nn` appears nowhere in requirements/.
- decisions: passing a point of no return is a fourth trigger bullet in The Decision, so the risk register and the plan cite one owner.
- product-vision: Goal gains a `**Since: W3**` rule 4 requiring the link to `docs/threshold-of-success.md`, with no back-link and the milestone Advances field kept as the plan's link; the full example's goal gains a Threshold line.
- repository: a new Documentation Site section (Pages from docs/ via an Actions workflow with pinned actions; any generator with mdBook, Zensical, and MkDocs as the examples; a landing default page; no weekly-report links; GitHub URLs for pages linking outside docs/); a Setup And Run Instructions subsection under Repository Setup with the content minimum; the root README `**Since: W3**` rule now links docs/setup.md; the dependency-bump policy as Contributing rules 5-6; and an Issue Fields subsection under Issue Tracking with the three single-select Public fields, their options, scheduling, and the labels fallback for organizations that cannot create them. The Continuous Integration and Changelog And Releases blocks are untouched and keep `**Since: W3**`; routing and the syllabus stay with TASK-117 and TASK-118.
Validation: format:markdown, format:markdown:check, lint:markdown, test:markdown-format (34 passed), test:markdown-rules (34 passed), check:lectures (3 decks, Typst 0.15.1), check:links (943 total, 0 errors, 2 excluded), backlog doctor (clean).
The working tree also carries the maintainer's in-progress edits in TODO.md, planning-requirements.md, and risks-requirements.md; format:markdown rebuilt rows in risks-requirements.md. This change does not include those three files' content.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Landed the Week 3 rules in the four existing requirements files: general-requirements gained the five identifier families, the ordinary/excepted section shapes, and the Week 3 traceability rows; decisions-requirements gained the point-of-no-return trigger; product-vision-requirements' goal now links the threshold of success; and repository-requirements gained the Documentation Site rules, the setup page content minimum with the root README link, the dependency-bump policy, and the three issue fields. Verified with format:markdown, format:markdown:check, lint:markdown, both vitest suites (34 and 34), check:lectures (3 decks, Typst 0.15.1), check:links (943 total, 0 errors, 2 excluded), and backlog doctor (clean).
<!-- SECTION:FINAL_SUMMARY:END -->
