---
id: TASK-110
title: Write the risk register requirements
status: Done
assignee: []
created_date: '2026-10-12 19:09'
updated_date: '2026-10-12 19:43'
labels: []
dependencies: []
references:
  - requirements/assumptions-requirements.md
  - requirements/decisions-requirements.md
modified_files:
  - requirements/risks-requirements.md
type: docs
ordinal: 106000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Assignment 3 adds the risk register, and no requirements file owns it.
The lecture maps risk work to contingency planning: identify risks, define alternative solutions, and know when each window closes.
This task creates `requirements/risks-requirements.md` with the summary table, the `## RISK-nn` fields, the status lifecycle, and the citation rules.
Contingency planning has this one home, and a point of no return is a `DEC-nnn` entry, not a risk field.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The new file follows the usual reading order, is marked `**Since: W3**`, and carries a small full example
- [x] #2 The summary table has the columns `ID` (linked to the section), `Risk` (quoting the first line), `Impact`, `Likelihood`, and `Status`; `Open` risks come first sorted by `Impact` then `Likelihood`, settled risks follow in identifier order, and the sections stay in `RISK-nn` order
- [x] #3 The section fields are, in order: `**Status:**` (`Open`, `Mitigated`, `Realized`, `Dropped`), `**Impact:**`, `**Likelihood:**`, `**Trigger:**`, `**Window:**`, `**Mitigation:**`, and `**Contingency:**`, with `**Outcome:**` added on `Mitigated` or `Realized` (what was done or happened, linking evidence and any `DEC-nnn`) and `**Dropped:**` only on `Dropped` (date and reason)
- [x] #4 Each risk first line states the risk in one sentence as a cause, the event it may trigger, and that event impact; `**Impact:**` and `**Likelihood:**` carry the rating word with the reason on indented lines, one colon per bullet
- [x] #5 The file states that a risk becomes `Dropped` when it can no longer materialize, such as its window closing without the trigger; that contingency planning lives only here, with several options meaning several risks; and that a point of no return is a `DEC-nnn`
- [x] #6 The full example is one or two risks, so it defines the shape rather than duplicating a register
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
- [ ] #6 `pnpm run check:links` passes
- [x] #7 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Write `requirements/risks-requirements.md` in the artifact-file reading order: where the register lives, the risk, its rating and response, its settling, then a small full example.
2. Follow D10 to D12 for the summary table, the field order, the status lifecycle, and the citation rules, and link the guide, the identifier rules, and the plan's progress monitoring.
3. Run the Markdown gates, both vitest suites, the deck check, and the link check, and record the results.
4. Leave the `check:links` DoD item open until TASK-112 lands.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decided in this session: the file follows D10 to D12. The register opens with the `ID`/`Risk`/`Impact`/`Likelihood`/`Status` table sorted open-first by rating, while the `## RISK-nn` sections stay in identifier order; the entry states the risk in one sentence of cause, event, and impact; the rating word sits on the bullet and the reason on indented lines, so the bullet carries one colon; contingency planning has its only home here, one fallback per risk, with points of no return as `DEC-nnn`; and the lifecycle adds `**Outcome:**` on `Mitigated` and `Realized` and keeps the general `**Dropped:**` field for the risks that can no longer materialize.
The full example carries two risks, RISK-02 `Open` and RISK-01 `Mitigated`, so the table's open-first order is visible against the sections' fixed identifier order, and the `Dropped` example beside the rule shows a window closing without its trigger, with its other fields left out.
The file links the identifier rules, where artifacts live, the plan's `## Progress Monitoring` for the review cadence and the no-contingency-section rule, and the decision trigger for a point of no return; its guide link is a forward reference until TASK-112 lands.
Validation: `pnpm run format:markdown` (which normalized only `requirements/planning-requirements.md`; the new file was already formatted by the same Prettier config and plugin), `format:markdown:check`, `lint:markdown`, both vitest suites (34 and 34), and `check:lectures` (3 decks, Typst 0.15.1) pass. `check:links`: 838 total, 833 OK, 3 errors, all of them the `../guides/planning-and-tracking.md` forward reference (two in planning-requirements.md, one in risks-requirements.md). DoD item 6 stays open until TASK-112 lands.
Side effect: `format:markdown` also normalized the maintainer's working-tree `requirements/planning-requirements.md` (two table paddings left by the deadline wording fix, and the blank line around the uncommitted TODO comment); the content is unchanged and the file was not staged or committed.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Wrote `requirements/risks-requirements.md`: the `docs/risks.md` register with its summary table and ordering, the `## RISK-nn` entry fields and first-line format, the rating and response rules, and the status lifecycle, followed by a two-risk full example; every gate passes except `check:links`, which reports only the planning-and-tracking guide forward reference until TASK-112 lands.
<!-- SECTION:FINAL_SUMMARY:END -->
