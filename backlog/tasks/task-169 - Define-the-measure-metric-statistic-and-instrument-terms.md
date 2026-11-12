---
id: TASK-169
title: 'Define the measure, metric, statistic, and instrument terms'
status: Done
assignee:
  - '@dsh'
created_date: '2026-11-12 06:48'
updated_date: '2026-11-12 06:48'
labels: []
dependencies: []
references:
  - requirements/general-requirements.md
  - requirements/quality-requirements-requirements.md
  - requirements/usability-testing-requirements.md
  - guides/usability-testing.md
  - assignments/assignment-7.md
  - course/decisions/a7.md
  - course/plans/a7-plan.md
  - AGENTS.md
  - lectures/lecture-7.typ
  - lectures/lecture-7.pdf
modified_files:
  - requirements/general-requirements.md
  - requirements/quality-requirements-requirements.md
  - requirements/usability-testing-requirements.md
  - guides/usability-testing.md
  - assignments/assignment-7.md
  - course/decisions/a7.md
  - course/plans/a7-plan.md
  - AGENTS.md
  - lectures/lecture-7.typ
  - lectures/lecture-7.pdf
type: docs
ordinal: 154000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The Assignment 7 review found the four recorded usability measures — the task completion and assistance, the time on task, the SEQ, and the SUS — called "instruments" in the assignment, the quality requirement, and the guide. The course reserves `metric` for the product-analytics number and `statistic` for the summary the analysis reports, and no file defined the three terms together. That gap let the "four instruments" wording from `A7-DEC-031` spread into the rule, the guide, the plan, and the assignment; the Week 7 deck's process outline still said "metrics".

The change gives the terms one owner, a `## Measurement Terminology` section in `requirements/general-requirements.md`, and makes the other files link it: the quality and usability requirements, the guide, Assignment 7, the A7 decision log, the A7 plan, `AGENTS.md`, and the Week 7 glossary list. It also changes the lecture deck's process outline to "measures" and rebuilds its PDF.

This is a terminology change, not a rule change: the four measures, the statistics the analysis reports, the `Response Measure` criterion, and the product-analytics metric keep the same obligations. The assignment stays a delta and links the definitions rather than restating them.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `requirements/general-requirements.md` carries a `## Measurement Terminology` section, marked `**Since: W7**`, defining measure, statistic, instrument, metric, and the `Response Measure` criterion, with links to the rules that own each
- [x] #2 `requirements/quality-requirements-requirements.md`, `requirements/usability-testing-requirements.md`, and `guides/usability-testing.md` call the four recorded quantities measures, and no sentence calls the four instruments
- [x] #3 `assignments/assignment-7.md` links the definitions, uses one noun for the four, and its Part 8 glossary list includes `measure`, `metric`, and `statistic`
- [x] #4 `course/decisions/a7.md` and `course/plans/a7-plan.md` use the same nouns as the requirements, without reversing a decision
- [x] #5 `AGENTS.md` lists `measure`, `statistic`, and `instrument` in the Terminology section, points at the definitions, and its two `general-requirements.md` rows say the file owns artifact and measurement terms
- [x] #6 `lectures/lecture-7.typ` says "measures" in the usability test process outline, its header records that wording deviation, and `lectures/lecture-7.pdf` is rebuilt from it with the same 32-page, 720 × 405 pt layout
- [x] #7 `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run test:markdown-format`, `pnpm run test:markdown-rules`, `pnpm run check:lectures`, and `pnpm run check:links` pass
- [x] #8 The implementation notes record the terminology decisions and the validation results, and the final summary names the evidence
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
1. Add `## Measurement Terminology` to `requirements/general-requirements.md` and its table of contents.
2. Patch the usability and quality requirements and the guide to call the four recorded quantities measures and link the definitions.
3. Patch Assignment 7 to link the definitions and add `measure`, `metric`, and `statistic` to the Part 8 glossary terms.
4. Align the A7 decision entries and the A7 plan with the new nouns.
5. Update `AGENTS.md`: the Terminology list and the two general-requirements rows.
6. Change the Week 7 deck's process outline to measures, record the deviation in its header, rebuild `lectures/lecture-7.pdf`, and render the changed slide to check the layout.
7. Run the six gates and record the results in the notes.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decisions:
- The terms are defined once in `requirements/general-requirements.md` rather than in a new glossary file, because that file already owns the course's terminology and is routed as such by `course/rules.md`, `README.md`, and `SKILL.md`; a new root file would collide with the student glossary `docs/glossary.md`.
- The four recorded quantities are measures; the survey and the session's recording sheet are the instruments.
- `metric` stays the product-analytics term; `statistic` is the summary the analysis reports; `Response Measure` is the requirement's criterion.
- The assignment links the definitions instead of restating them, and the deck uses "measures" without restating the rule.
- The A7 decision wording was updated as a clarification, so no decision was reversed.

Validation:
- Deck rebuilt with Typst 0.15.1; 32 pages at 720 x 405 pt; the changed slide (page 7) rendered and checked for overflow.
- Six gates passed: Markdown format check, Markdown lint, both plugin fixtures, lecture check, link check (3652 OK, 0 errors).
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Defined measure, statistic, instrument, metric, and Response Measure in `requirements/general-requirements.md`; linked the definitions from the quality and usability requirements, the guide, and Assignment 7; aligned the A7 decisions and plan; added the terms to the Week 7 glossary list; changed the Week 7 deck's process outline to "measures" and rebuilt its PDF. Verified with the six repository gates and a render of the changed slide.
<!-- SECTION:FINAL_SUMMARY:END -->
