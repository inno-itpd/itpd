---
id: TASK-183.01
title: Delete private usability data by Submission 10
status: Done
assignee:
  - '@codex'
created_date: '2026-11-26 13:08'
updated_date: '2026-11-26 13:12'
labels: []
dependencies: []
parent_task_id: TASK-183
type: docs
ordinal: 169000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Reduce exposure of private usability-test data now that instructors can grade from the sanitized public record.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Submission 10 requires deletion of all private usability-test data under team and instructor control by the submission deadline and dated confirmation of team-controlled deletion in Moodle.
- [x] #2 The participant consent promises deletion by the end of the semester.
- [x] #3 The final public repository can replace retired private links in earlier reports and maintained documentation, and the handoff points to sanitized results.
- [x] #4 Requirements, assignments, examples, guides, and the decision log agree on the new policy.
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
1. Put the deadline, ownership, and link cleanup in the visibility requirements and link them from the final submission rules.
2. Update consent, handoff, report and Moodle examples, assignment deltas, and guidance. Record the reversal in the decision log.
3. Check the Markdown, anchors, examples, and course gates.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
A9-DEC-019 sets the Submission 10 cutoff for all copies each party controls. The consent gives the end-of-semester promise. Reviewed the full closeout sequence and the Week 7 consent, Week 9 plan, Week 10 wrapper and handoff examples against the requirements. The link cleanup applies on final main, and earlier submitted snapshots can retain retired links. Format and lint passed, both Markdown fixture suites passed (68 tests), all nine lecture decks matched their PDFs, and the full network link check with fragments found no errors.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Moved private usability-data deletion to Submission 10 and aligned consent, link cleanup, handoff, and Moodle evidence. Verified with the full repository gates and a cross-document policy audit.
<!-- SECTION:FINAL_SUMMARY:END -->
