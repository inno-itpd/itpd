---
id: TASK-159
title: Make the release body content recommended and put its changelog link last
status: Done
assignee: []
created_date: '2026-10-28 19:44'
updated_date: '2026-10-28 19:48'
labels: []
dependencies: []
modified_files:
  - requirements/releases-requirements.md
  - guides/planning-and-tracking.md
  - assignments/assignment-5.md
  - course/decisions/a5.md
priority: medium
type: docs
ordinal: 145000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The W5 release body rule fixed three parts in order and made the `Full changelog` line close a required note, so a team with nothing to report had to write a one-word `None` paragraph and every product fitted one shape. The maintainer settled the revision the other way: the course recommends the content — the opening summary, the limitation, a short paragraph each, and any further customer-facing content — and mandates only the closing `[Full changelog]` line, with no section and no section title required. This reverses the body-shape clauses of `A5-DEC-038` and `A5-DEC-039` and lifts the narrowing that `A5-DEC-038` put on the shape clause of `A5-DEC-027`, so the requirement, its example, the planning guide, Assignment 5 Part 10, and the A5 decision log change together. Assignment 5 keeps the summary and the limitation as the Part 10 minimum.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `requirements/releases-requirements.md#cutting-a-release` mandates only the closing `[Full changelog](<absolute url>)` line, states that no section and no section title is required, and moves the opening, the limitation, the short-paragraph guidance, and the further content into a `**Recommended**` block.
- [x] #2 The same section keeps the whole-body prohibitions and the no-metadata rule over everything the body carries, the recommended content included.
- [x] #3 The release body in the full example ends with the `Full changelog` line after a section the team added, and the prose above it names that shape.
- [x] #4 `guides/planning-and-tracking.md#write-the-release-body` says the opening and the limitation are recommended, that the titles, the paragraph count, and the length are the team choice, and that the link is the last line.
- [x] #5 The Part 10 body bullet and the this-week item in `assignments/assignment-5.md` put the `Full changelog` line last and keep the summary and the limitation as the week minimum.
- [x] #6 `course/decisions/a5.md` gains `A5-DEC-040` with its decision, why, alternatives, and where it lands, and the statuses of `A5-DEC-027`, `A5-DEC-038`, and `A5-DEC-039` name the reversal or the lifted narrowing.
- [x] #7 No requirement, guide, or assignment file states that the body has three fixed parts or that content may follow the `Full changelog` line; the earlier entries in the decision log stay historical.
- [x] #8 All repository gates pass and the link check result is recorded.
- [x] #9 Implementation notes record the decisions made and the validation results.
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
1. Rewrite the W5 block of `requirements/releases-requirements.md#cutting-a-release` into three Required rules (customer-facing body, closing `[Full changelog]` line with nothing after it, whole-body prohibitions and no-metadata) and a `**Recommended**` block (opening summary or `No changes visible to a user`, the limitation or nothing, short paragraphs, further customer-facing content before the link). The limitation is omitted rather than written as `None`.
2. Update the full example body so the link is the last line after a team-chosen section, and the prose above it names that shape.
3. Align `guides/planning-and-tracking.md#write-the-release-body` and the two Part 10 statements in `assignments/assignment-5.md`.
4. Add `A5-DEC-040` and update the statuses of `A5-DEC-027`, `A5-DEC-038`, and `A5-DEC-039`.
5. Run the Markdown, deck, and link gates and record the results.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Implementation decisions: the mandated structure is only the closing `[Full changelog](<absolute url>)` line, so no section and no section title is required and headings, paragraph count, and length are the team's. The content is `**Recommended**`: the opening (or `No changes visible to a user`), the limitation (or nothing), short paragraphs, and any further customer-facing content before the link. A release that does everything it promised says nothing about a limitation, so the body never carries a one-word `None` paragraph; the requirement now says to say nothing rather than naming a placeholder. Assignment 5 keeps the summary and the limitation as the Part 10 minimum (`the limitation when there is one`), which is the week's bar rather than the requirement's. The example body keeps a `---` before the closing link; the rules neither require nor forbid it, and it shows the team's formatting freedom. `A5-DEC-040` reverses the three-part, separate-paragraph, and trailing-content clauses of `A5-DEC-038`/`A5-DEC-039`, and its status edits lift `A5-DEC-027`'s headings narrowing.

Validation: `pnpm run format:markdown` and `pnpm run format:markdown:check` exit 0; `pnpm run lint:markdown` exit 0; `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` 34/34 each; `pnpm run check:lectures` reports 5 decks matching their sources; `pnpm run check:links` reports 2532 total, 2530 OK, 0 errors, 2 excluded, and 1 redirect.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Reworked the W5 release-body rule so the course recommends the content and mandates only the closing changelog link. `requirements/releases-requirements.md#cutting-a-release` now requires the body to be the customer-facing note and to end with `[Full changelog](<absolute url>)` with nothing after it, keeps the whole-body prohibitions and the no-metadata rule, and moves the opening summary, the limitation, the short-paragraph guidance, and any further customer-facing content into a `**Recommended**` block. A release that does everything it promised says nothing about a limitation rather than writing `None`, so no one-word paragraph is left. The full example ends with the link after a team-chosen section, with the prose above it naming that shape; `guides/planning-and-tracking.md#write-the-release-body` and `assignments/assignment-5.md` Part 10 follow. `course/decisions/a5.md` gains `A5-DEC-040`, which reverses the three-part and trailing-content clauses of `A5-DEC-038` and `A5-DEC-039` and lifts the headings narrowing on `A5-DEC-027`. Validation: format:markdown and format:markdown:check exit 0, lint:markdown exit 0, both plugin suites 34/34, check:lectures 5 decks, check:links 2532 total / 2530 OK / 0 errors / 2 excluded / 1 redirect. No risks; the only follow-up is that Assignment 5 Part 10 still asks for the summary and the limitation when there is one, as the week's minimum.
<!-- SECTION:FINAL_SUMMARY:END -->
