---
id: TASK-021
title: 'Make decisions name what they changed, not the identifier family'
status: Done
assignee: []
created_date: '2026-10-04 18:43'
updated_date: '2026-10-04 18:46'
labels: []
dependencies: []
references:
  - requirements/artifact-requirements.md
  - requirements/process-requirements.md
  - guides/validating-with-the-customer.md
  - assignments/assignment-1.md
  - assignments/assignment-2.md
  - AGENTS.md
priority: high
type: docs
ordinal: 21000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Meeting decisions currently need a `Traces to` value naming the identifier family the week owns, so a decision is only recordable when it changes a `US-nn`/`AC-nn` (or a `GAP-nn`/`VP-nn` in Week 1). Decisions that settle constraints, assumptions, implementation choices, or later requirements have no legal shape, and team decisions outside meetings are required by `artifact-requirements.md` but have no section or columns in the weekly public report. The fix keeps decisions ID-less, renames the column to `Changes`, accepts any artifact effect with a stable link where one exists, allows `TBD` when the effect container is not yet known and `None` with a reason for a kept-as-is decision, and gives non-meeting decisions a `## Decisions` table in the weekly report. Design settled with the instructor: no `DEC-nn`, keep the table and cite `#decisions`, quote the decision sentence when citing, and flag weeks whose decisions are all `None`/`TBD`.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `artifact-requirements.md` defines a decision as settling or changing what you build, allows story/AC, constraint, assumption, maintained doc, implementation, and later requirements as effects, and states that non-meeting decisions go in the weekly report
- [x] #2 Meeting Report `## Decisions` uses `Decision | Made by | Changes`; a row names at least one effect, links it when the artifact has a stable link, says `TBD` when the container is not yet known, and `None` with a reason when nothing changed
- [x] #3 Weekly Public Report defines a conditional `## Decisions` table with the same columns for decisions made outside a meeting
- [x] #4 `process-requirements.md` Validation, Assumptions, Constraints, Identifier Rules, and Meeting With The Customer agree: no decision IDs, a decision is cited by report path plus `#decisions` quoting its sentence, settled assumptions and changed docs are updated, and a technology choice is recorded as a decision
- [x] #5 The meeting report example and the validating guide use `Changes` and show a `None` and a `TBD` case; the guide flags a week whose decisions are all `None`/`TBD`
- [x] #6 Both assignments state their week minima in `Changes` terms and no longer require a `US-nn`/`AC-nn` for every decision
- [x] #7 `AGENTS.md` keeps decisions and action points out of the identifier families and notes that a decision row names what changed
- [x] #8 All four Markdown gates plus `pnpm run check:lectures` pass, and every changed link and fragment resolves
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
1. requirements/artifact-requirements.md: redefine a decision as settling/changing what you build with open-ended effects; rename Meeting Report `Traces to` to `Changes` with link/TBD/None semantics; update the example; add the conditional `## Decisions` table to Weekly Public Report.
2. requirements/process-requirements.md: generalize Validation rule 4 and its four places; require `## Assumptions` and record settled assumptions; state that a technology choice is a decision and where it shows; add decision citation rules to Identifier Rules; update Meeting With The Customer rule 7 and the Traceability note for TBD effects.
3. guides/validating-with-the-customer.md: Step 5 `Changes` wording and quote convention; add an all-`None`/`TBD` Common Mistake.
4. assignments/assignment-1.md and assignment-2.md: week minima in `Changes` terms, no US/AC requirement for every decision.
5. AGENTS.md: keep decisions/action points out of the identifier families; note the row names what changed.
6. Run the four Markdown gates, check:lectures, and an offline link/fragment check.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Applied the approved design: decisions stay ID-less; Meeting Report and weekly report use `Decision | Made by | Changes`; `Changes` links a stable artifact, says `TBD` when the artifact does not exist yet, and `None` with the reason for a kept-as-is decision; non-meeting decisions get a `## Decisions` table in the weekly report; assumptions gain a required `## Assumptions` heading; decisions are cited by path plus `#decisions` with the sentence quoted. Files: requirements/artifact-requirements.md, requirements/process-requirements.md, guides/validating-with-the-customer.md, assignments/assignment-1.md, assignments/assignment-2.md, AGENTS.md. Also fixed pre-existing missing blank lines after two HTML comments in the validating guide, which format:markdown:check flagged at HEAD.

Validation: format:markdown clean, format:markdown:check pass, lint:markdown pass, test:markdown-format 34/34, test:markdown-rules 34/34, check:lectures 2 decks, lychee --offline --include-fragments over README/AGENTS/assignments/guides/requirements/course: 343 OK, 0 errors.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Replaced the identifier-family `Traces to` requirement with a `Changes` column that names and links any artifact a decision changed, allows `TBD` before the artifact exists and `None` with a reason for kept-as-is decisions, and added a `## Decisions` table for non-meeting decisions to the weekly public report. Updated the process rules, both guides, both assignments, and AGENTS.md, and introduced no decision identifier family. Verified with all four Markdown gates, check:lectures, and an offline lychee fragment check.
<!-- SECTION:FINAL_SUMMARY:END -->
