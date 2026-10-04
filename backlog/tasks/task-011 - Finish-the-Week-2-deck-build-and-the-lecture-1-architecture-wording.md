---
id: TASK-011
title: Finish the Week 2 deck build and the lecture-1 architecture wording
status: To Do
assignee: []
created_date: '2026-10-02 07:07'
updated_date: '2026-10-03 20:23'
labels: []
dependencies: []
references:
  - >-
    backlog/tasks/task-008 -
    Swap-Week-2-and-Week-3-requirements-and-prototyping-before-planning.md
  - lectures/AGENTS.md
  - lectures/lecture-2.typ
modified_files:
  - lectures/lecture-1.typ
  - lectures/lecture-1.pdf
  - lectures/lecture-2.typ
  - lectures/lecture-2.pdf
ordinal: 11000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Task-008 closes with acceptance criteria 16 and 19 unchecked.
`lectures/lecture-2.typ` was edited after its last build: 38 slide call sites in five sections became 32 in four, so two sections now have a Quiz with no Key Takeaways closer and the `Why planning moved to Week 3` argument is gone.
The committed `lectures/lecture-2.pdf` is 127949 bytes and the current source builds 115282, so `pnpm run check:lectures` fails.
`lectures/lecture-1.typ:103` reads `Not about architecture - you'll have a course next semester`, with the replacement kept as a commented TODO; Week 4 requires an architectural draft, so the sentence has to change before the course runs.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 The 32-slide four-section deck is either confirmed as intended or restored with the removed planning argument and the two missing section closers, and the choice is recorded
- [ ] #2 `lectures/lecture-2.pdf` is rebuilt and committed with its source so the deck check passes
- [ ] #3 `lectures/lecture-1.typ:103` no longer says architecture is out of scope, the TODO comment is removed, and the new sentence names Week 4 as the architecture week
- [ ] #4 `pnpm run check:lectures` passes on the final tree
- [ ] #5 `lectures/AGENTS.md` rules are followed, including file-header provenance for borrowed material
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
1. Read `lectures/AGENTS.md` for the layout contract, the build, and the provenance rules.
2. Render the four-section deck and judge whether the removals made it tighter or lost the argument for the reorder.
3. Fix `lectures/lecture-1.typ:103` and remove the commented TODO.
4. Rebuild with `pnpm run build:lectures`, compare page counts to slide call sites, and run `pnpm run check:lectures`.
5. Commit each deck with its source so CI is not red on a mismatched pair.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Inherited from task-008: the committed `lectures/lecture-2.pdf` is 127949 bytes and the current source builds 115282, so `pnpm run check:lectures` fails until the deck is rebuilt.

The deck went from 38 slide call sites in five sections to 32 in four: the `Why planning moved to Week 3` slide is gone, the `How to decide, not how to do` section divider and its `The stance` slide are gone, and the two Key Takeaways closers that went with them are gone, so two of the five sections now have a Quiz with no closer.

Four rendering-only defects were found in task-008, not by compiling but by rendering pages: three slides had a stray `)` where a `]` closed the block, and `#slide` is positional so a broken delimiter swallows the rest of the file; two slides ran consecutive `#term` lines together because Typst treats consecutive lines as one paragraph; two produced a double colon because `term` already appends one; and a bare `>` is not a Typst blockquote, so the worked story pair needed a `quoted()` callout. Whether those survived the later revision is not asserted.

`lectures/lecture-1.typ` line 103 was reverted to `Not about architecture - you'll have a course next semester`, with the replacement sentence kept as a comment under `// TODO consider clarifying`. That is a review decision to reconsider the wording; Week 4 does require an architectural draft, so the sentence still has to change.

This task owns task-008 acceptance criteria 16 and 19. TASK-009 records `check:lectures` as inherited-red and does not regress it.

TASK-014 rebuilt `lectures/lecture-2.pdf` in its tree to clear a one-byte font-subset difference: the committed PDF was 106768 bytes and the pinned Typst 0.15.1 environment builds 106769, with no content change. TASK-011 still owns the deck content decisions and the lecture-1 wording; this note records only the rebuild overlap.
<!-- SECTION:NOTES:END -->
