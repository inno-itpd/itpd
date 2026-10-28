---
id: TASK-160
title: >-
  Let the release body's content be the team's, with links recommended over
  repeats
status: Done
assignee: []
created_date: '2026-10-28 20:09'
updated_date: '2026-10-28 20:14'
labels: []
dependencies: []
modified_files:
  - requirements/releases-requirements.md
  - guides/planning-and-tracking.md
  - assignments/assignment-5.md
  - course/decisions/a5.md
  - >-
    backlog/tasks/task-160 -
    Let-the-release-bodys-content-be-the-teams-with-links-recommended-over-repeats.md
priority: medium
type: docs
ordinal: 146000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The Week 5 release rule still forbids the release body from citing a `REL-nn`, `QR-nn`, or `QRT-nn`, stating a quality claim or a test result, linking the testing plan or the week's report, recording a production check, restating the title, tag, commit, or date, or repeating a changelog entry. A team obeys that list because the course says so, not because the customer is harmed: the body is the team's note to its customer, and the course can recommend what it should contain without banning the rest. The duplication the prohibitions answered is real, so the guidance moves into the recommendation: a fact another record already carries is better linked than copied, because a copy drifts while the record stays true. The `Full changelog` line stays the body's last line as the one fixed structure, per `A5-DEC-040`. The change reverses the prohibition clauses of `A5-DEC-038`, `A5-DEC-039`, and `A5-DEC-040` across the requirement, the planning guide, Assignment 5 Part 10, and the A5 decision log.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `requirements/releases-requirements.md` bans no content of the release body: no `REL-nn`, `QR-nn`, or `QRT-nn` citation, quality claim, test result, testing-plan or week-report link, production check, metadata restatement, or repeated changelog entry is prohibited
- [x] #2 The release body's content is recommended, and the recommendation says to link a fact another record already carries rather than repeat it, naming the plan's `REL-nn` block, the testing plan, and the changelog as the owners
- [x] #3 The `Full changelog` line remains the body's last line as the only mandated structure
- [x] #4 The full example's release body matches the rules and stays one possible shape
- [x] #5 `guides/planning-and-tracking.md` carries the recommended method and no longer says the body links neither or repeats neither, or that a test result, a claim, or a citation is not allowed
- [x] #6 `assignments/assignment-5.md` Part 10 states no prohibition and still cites the requirement
- [x] #7 `course/decisions/a5.md` gains `A5-DEC-041` with the reversal, the why, the alternatives, and where it lands, and the statuses of `A5-DEC-038`, `A5-DEC-039`, and `A5-DEC-040` name it
- [x] #8 No other file states the prohibition, and `README.md`, `SKILL.md`, `course/rules.md`, and `AGENTS.md` still describe the release body correctly
- [x] #9 `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run test:markdown-format`, `pnpm run test:markdown-rules`, `pnpm run check:links`, and `backlog doctor` pass
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
1. In `requirements/releases-requirements.md#cutting-a-release`, delete Required rule 6 (the whole-body prohibitions and the no-metadata rule). Keep rules 4 and 5 (the customer-facing body in the team's shape; the closing `[Full changelog]` line as the last line). Add one `**Recommended**` bullet: a fact another record already carries is linked rather than copied, naming the plan's `REL-nn` block and the testing plan for the checks and `CHANGELOG.md` for each user-visible change, with the drift reason. Add a second bullet: the release page already shows the title, the tag, the commit, and the date, so the body need not restate them. Leave the full example as one possible shape.
2. In `guides/planning-and-tracking.md#write-the-release-body`, drop the "links neither and repeats neither" sentence, the "not the place for a test result, a claim, or a citation" sentence, and the "The body is not the place for the technical record" lead-in. Say the team writes the body and the course recommends the content, keep the metadata sentence as advice, and give the link-instead-of-repeat method with the three owners.
3. In `assignments/assignment-5.md` Part 10, drop "carries no technical record and no title, tag, commit, or date" from the rules bullet and "in whatever shape" wording in item 3, keeping the summary, the limitation, the team's extra content, and the closing line as the week's minimum, still citing the requirement.
4. In `course/decisions/a5.md`, add `A5-DEC-041` with the decision (the body's content is the team's; the course recommends linking over repeating), why, alternatives, and where it lands. Update the statuses of `A5-DEC-038`, `A5-DEC-039`, and `A5-DEC-040` to name it.
5. Run `pnpm run format:markdown`, then `format:markdown:check`, `lint:markdown`, both plugin suites, `check:lectures`, `check:links`, and `backlog doctor`; record the results in the implementation notes and mark the criteria and DoD items.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Implementation decisions: the release body's content is the team's, and the course forbids none of it. `requirements/releases-requirements.md#cutting-a-release` keeps two W5 Required rules (the customer-facing note in the team's shape; the closing `[Full changelog](<absolute url>)` line as the last line) and moves the prohibitions into the `**Recommended**` block as guidance: link the record rather than copy the fact, because the plan's `REL-nn` block and the testing plan own what the sprint checked and `CHANGELOG.md` owns each user-visible change, and a copy drifts while a link stays true; and spend the body's sentences on the product, because the release page already shows the title, the tag, the commit, and the date. The full example's prose now says the `Full changelog` anchor carries the version and the date, the fact the deleted no-metadata note used to explain. `guides/planning-and-tracking.md#write-the-release-body` says the team writes the body in its own shape, keeps the metadata sentence as advice, gives the link-instead-of-repeat method with its drift reason, and no longer opens the plan's `REL-nn` paragraph with a prohibition. `assignments/assignment-5.md` Part 10's rules bullet reads as the team's shape with the closing line, and this-week item 3 says the team chooses the shape while keeping the summary, the limitation, any team content, and the closing line as the week's minimum. `course/decisions/a5.md` gains `A5-DEC-041`, and the statuses of `A5-DEC-038`, `A5-DEC-039`, and `A5-DEC-040` name it; their Decision text stays historical, per the log's convention. The a5 plan keeps its existing `A5-DEC-038` supersession note, which already points at the requirement as the authoritative release-body model, so no second note is needed.

Validation: `pnpm run format:markdown` and `pnpm run format:markdown:check` exit 0; `pnpm run lint:markdown` exit 0; `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` 34/34 each; `pnpm run check:lectures` reports 5 decks matching their sources; `pnpm run check:links` reports 2545 total, 2543 OK, 0 errors, 2 excluded, and 1 redirect; `backlog doctor` finds no duplicate IDs, self-referential dependencies, or cycles.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
The release body's content is the team's: `requirements/releases-requirements.md#cutting-a-release` forbids nothing and recommends instead. The W5 block keeps two Required rules, the customer-facing note in the team's shape and the closing `[Full changelog](<absolute url>)` line with nothing after it, and the former prohibitions become recommendations: link the record rather than copy the fact (the plan's `REL-nn` block and the testing plan own what the sprint checked, and `CHANGELOG.md` owns each user-visible change), and spend the body's sentences on the product because the release page already shows the title, tag, commit, and date. The example's prose explains that the `Full changelog` anchor carries the version and the date. The planning guide says the team writes the body in its own shape and gives the link-instead-of-repeat method; Assignment 5 Part 10 drops the prohibition and asks for the week's minimum in the team's shape. `A5-DEC-041` reverses the prohibition clauses of `A5-DEC-038`, `A5-DEC-039`, and `A5-DEC-040`, whose statuses name it, while their content recommendation and the last-line link stand. Validation: format:markdown and its check exit 0, lint:markdown exit 0, both plugin suites 34/34, check:lectures 5 decks, check:links 2545 total / 2543 OK / 0 errors / 2 excluded / 1 redirect, and backlog doctor clean.
<!-- SECTION:FINAL_SUMMARY:END -->
