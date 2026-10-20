---
id: TASK-066
title: Hand technology choices from the decisions log to ADRs
status: To Do
assignee: []
created_date: '2026-10-05 16:47'
updated_date: '2026-10-18 15:40'
labels: []
dependencies: []
ordinal: 66000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Decided on 2026-10-05: a DEC-nnn entry does not record the options it turned down. Technology choices will move to ADRs, introduced together with the functional and quality requirements, and the ADR owns the considered options. A field in docs/decisions.md now would give that rule two owners or be withdrawn mid-term, and "alternative" is already the course term for a competing product (ALT-nn).
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 The ADR owns the considered options: `## Considered Options` names each option turned down and why it lost, and "alternative" stays reserved for `ALT-nn`
- [ ] #2 In `requirements/decisions-requirements.md`, the "it is a technology choice" trigger of `## The Decision` links to the ADR rule instead of requiring a `DEC-nnn` entry, states that an architectural, technology, or functional-behavior decision is an `ADR-nnn` or an `FR-nnn`, and keeps customer, scope, priority, and story-change decisions as `DEC-nnn`
- [ ] #3 Existing `DEC-nnn` entries are not migrated, so `DEC-004` and `DEC-005` stay in the full example; each is linked by `**Links:**` from the ADR that now answers it, and the product-vision `CON-nn` and customer-meetings example that cite `DEC-004` keep resolving
- [ ] #4 The four Markdown gates pass
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
- [ ] #6 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
2026-10-06: TASK-081 rewords Constraint rule 4. A team's technology choice is a decision, not a constraint. A customer's mandate is a customer-given `CON-nn` that cites the DEC-nnn recording it. The DEC-004 VPS mandate becomes a CON section that cites DEC-004. When ADRs take over technology choices, the CON `Decision` field and AC #3 here must cite the ADR or the DEC consistently.

Superseded by the Assignment 4 design review: see `plan.md` decision D3 and `course/decisions/a4.md` entry 8. The routing is now: architecture, technology, and functional behavior go to an ADR or an FR; customer, scope, priority, and story change stay `DEC-nnn`; existing entries are not migrated. This retires the earlier AC #3 plan to move `DEC-004` and `DEC-005`.
<!-- SECTION:NOTES:END -->
