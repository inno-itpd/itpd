---
id: TASK-042
title: De-duplicate and re-home rules across the requirements
status: In Progress
assignee: []
created_date: '2026-10-05 02:59'
updated_date: '2026-10-05 03:00'
labels:
  - docs
dependencies: []
references:
  - requirements/
priority: high
ordinal: 42000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
An audit of requirements/ found rules stated in two or more places, rules living in a file that does not own them, and contradictions between files. AGENTS.md requires one owner per rule, with every other mention a link.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Each rule duplicated across or within requirements/ (deviations, submission commit, report and meeting-report paths, decision and action point details, meeting citation, dropped items, Won't Have stories, recording and sanitizing, reachability, .env, PR AC naming, action pinning, the Moodle private list, AI disclosure, the repeated priority example) is stated once by its owner and linked elsewhere
- [ ] #2 Misplaced rules move to their owners: the asynchronous meeting to Every Meeting, the dropped-gap impact to Gap Analysis, deviations None to Declaring Deviations, link-check evidence to the weekly public report, the AI grade rule to the AI usage report, the Since explanation to the general intro, the Week 1 framing to Assignment 1, and the dangling Issue Tracking pointer is fixed
- [ ] #3 Contradictions are resolved: US-nn is exempt from the section-heading rule, copied code is allowed with permission and ATTRIBUTION.md, the diagram recommendation matches the example, the traceability table names what each W2 artifact cites, the story example links its meeting report, the W1 value proposition no longer cites Won't Have, and the customer is not called stakeholder or instructor in artifacts
- [ ] #4 Every inbound link to a moved or removed heading still resolves
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
Group A (duplication), group B (misplacement), group C (contradictions), one commit each, each carrying this task's changes. Plan: ~/.claude/plans/we-have-requirements-any-eager-hanrahan.md
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Group A: each duplicated rule now has one owner. general drops artifact paths and decision/action-point details and links their owners; weekly-report links Declaring Deviations, Permalinks, and Sensitive Information Reference; customer-meetings drops the visibility column, the recording rule, the AI disclosure, and the three scattered 'say so in the weekly report' lines in favour of one item in Where Meeting Artifacts Live; user-stories states the dropped Won't Have story once; visibility, repository drop the repeated .env, reachability, AC-naming and pinning rules.
<!-- SECTION:NOTES:END -->
