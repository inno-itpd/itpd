---
id: TASK-121
title: State the reason for the one-fallback rule in the risk requirements
status: Done
assignee: []
created_date: '2026-10-12 21:58'
updated_date: '2026-10-13 05:44'
labels: []
dependencies: []
references:
  - requirements/risks-requirements.md
  - guides/planning-and-tracking.md
modified_files:
  - requirements/risks-requirements.md
type: docs
ordinal: 117000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The working tree carried a maintainer TODO above the `## Response` required list in `requirements/risks-requirements.md`: `<!-- TODO why "Several contingency options are several risks"? -->`. The rule stands, but the file states it without its reason; the reason lives in `guides/planning-and-tracking.md`, in the fallback step and the "A risk with two fallbacks" Common Mistake. The decision was to give the rule its reason inline, because the requirements file is what a student or grader reads for the rule, and short reason clauses are the house pattern for non-obvious rules. The TODO quoted the D10 wording, so the rewritten rule keeps the "Several options are several risks" phrase. Scope is this TODO only: no other file changes.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Rule 5 of the `## Response` section keeps the "Several options are several risks" phrase, keeps one `**Contingency:**` per `RISK-nn` and two possible fallbacks becoming two entries, and states the reason: a fallback with a choice in it is a decision the team has not made
- [x] #2 The maintainer TODO comment is deleted from `requirements/risks-requirements.md`, and `## Response` is otherwise unchanged
- [x] #3 No other file changes: the change is limited to `requirements/risks-requirements.md`
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
Closed with no new diff: commit 7ead60c already applies the change to `requirements/risks-requirements.md`, keeping the "Several options are several risks" phrase and stating the reason, and the TODO comment is gone. The original scope clause counted TODO comments in `requirements/planning-requirements.md`; TASK-123 resolved the last of those, so the clause now keeps the scope on the risks file. Gates run with TASK-123: format:markdown:check, lint:markdown, both vitest suites (34 and 34), check:lectures (3 decks), check:links (988 total, 0 errors, 2 excluded), and backlog doctor.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
The one-fallback rule already carried its reason in commit 7ead60c when the task was reviewed, so the task closes with its criteria checked and no new diff.
<!-- SECTION:FINAL_SUMMARY:END -->
