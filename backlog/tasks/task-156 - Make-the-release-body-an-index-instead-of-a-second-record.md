---
id: TASK-156
title: Make the release body an index instead of a second record
status: Done
assignee: []
created_date: '2026-10-27 19:21'
updated_date: '2026-10-27 19:26'
labels: []
dependencies: []
references:
  - requirements/releases-requirements.md
  - requirements/planning-requirements.md
  - requirements/repository-requirements.md
  - assignments/assignment-5.md
  - guides/planning-and-tracking.md
  - guides/deployment-and-environments.md
  - course/decisions/a5.md
priority: medium
type: docs
ordinal: 142000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The release-body rule and its full example ask for each test's result, sprint, commit, and evidence in the GitHub release body. Those facts already have owners: the testing plan row carries Status, Checked, and Evidence; the QRT section carries the definition; the weekly report carries what was observed; and the release page itself shows the title, tag, commit, and date. The body therefore duplicates three owners, omits the production verification that repository-requirements.md requires ("record what you checked with the release"), and gives the customer who opens the public page nothing to use.

The body should index the release rather than restate it: a customer-language summary plus what the release does not do yet, the sprint the claim rests on, each claimed QR linked once as the QR/QRT pair, one link each to the testing plan and the week's report, and the production verification. It must repeat no metadata the release page already shows.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Cutting A Release in requirements/releases-requirements.md requires the body's content: the customer summary and limitation, the sprint, each claimed QR listed once with its tests linked as the pair, one link each to the testing plan and the week's report, and the production verification.
- [x] #2 Cutting A Release states that the body repeats no title, tag, commit, or date, and that the team's headings and order remain free.
- [x] #3 The full example's release body matches the new rules and contains no version heading, commit hash, or per-test result prose.
- [x] #4 requirements/planning-requirements.md no longer recommends the release body's pointers, so the release rule is the single owner.
- [x] #5 assignments/assignment-5.md cites the new rule and no longer instructs students to write the body "in your own shape" or to list each test's run.
- [x] #6 guides/planning-and-tracking.md carries a Write The Release Body method subsection with its table-of-contents entry, and guides/deployment-and-environments.md no longer says the body records the commit or the deployment details.
- [x] #7 course/decisions/a5.md carries A5-DEC-037 with the decision, why, alternatives, and where it lands, and it names A5-DEC-027 as the entry it extends.
- [x] #8 AGENTS.md's map and layering rows and course/rules.md's router row name the release body.
- [x] #9 pnpm run format:markdown:check, pnpm run lint:markdown, pnpm run test:markdown-format, pnpm run test:markdown-rules, and pnpm run check:links pass.
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
1. Rewrite `## Cutting A Release` in `requirements/releases-requirements.md`: keep the title, changelog-section, and milestone rules; narrow rule 4 to the claim; add the body rules (customer summary and limitation, sprint plus claimed pairs plus two links plus production verification, no title/tag/commit/date); replace the full example's body; reword the changelog rule at line 41.
2. Remove the release-body `**Recommended**` bullet from `requirements/planning-requirements.md#releases`, so the release rule owns the body once.
3. Add `### Write The Release Body` to `guides/planning-and-tracking.md` under Step 4, with its table-of-contents entry, and correct the two lines in `guides/deployment-and-environments.md` that put the commit or the deployment details in the body.
4. Align `assignments/assignment-5.md`: the `REL-05` deliverable line, the Part 10 rules, and Part 10 item 3.
5. Add `A5-DEC-037` to `course/decisions/a5.md`, extending `A5-DEC-027`.
6. Name the release body in `AGENTS.md`'s map and layering rows and in `course/rules.md`'s router row.
7. Run `pnpm run format:markdown`, then the format check, the lint, both plugin fixtures, and `pnpm run check:links`; record the validation in this task.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
## What changed

- `requirements/releases-requirements.md`: `## Cutting A Release` keeps rules 1-3, narrows rule 4 to the claim, and adds rules 5-7: the customer summary and limitation, the sprint plus the claimed pairs plus the two evidence links plus the production verification, and the no-metadata rule with free headings. The `## The Changelog` rule 4 now says a test, a workflow, or a deployment is not a changelog entry rather than assigning it to the body. The full example's release body is rewritten to the new shape.
- `requirements/planning-requirements.md`: the `**Recommended**` release-body bullet is deleted, so the release rule is the single owner.
- `guides/planning-and-tracking.md`: new `### Write The Release Body` under Step 4, with its table-of-contents entry.
- `guides/deployment-and-environments.md`: the body no longer records the deployment details or the commit; it records the verification, and the tag is the commit.
- `assignments/assignment-5.md`: the `REL-05` deliverable, the Part 10 rule bullets, and Part 10 item 3 now cite the new rule.
- `course/decisions/a5.md`: `A5-DEC-037` records the decision and names `A5-DEC-027`, which it extends rather than reverses.
- `AGENTS.md` and `course/rules.md`: both release rows name the release body.

## Decisions

- The body repeats no title, tag, commit, or date; the page shows all four, and a hand-typed hash can disagree with the tag.
- Each claimed `QR-nn` is listed once with the pair as the link text, because the `QRT-nn` section lives in the `QR-nn` file, so the identifier is already in the link target.
- The customer summary and the limitation are required; the access route was deliberately left out of the body by the user's choice, because the weekly report already points at the Moodle submission for the address.
- The rule fixes content, not headings: the old "the body's shape is the team's" sentence survives as rule 7's second sentence.

## Validation

- `pnpm run format:markdown` — clean.
- `pnpm run format:markdown:check` — pass.
- `pnpm run lint:markdown` — pass.
- `pnpm run test:markdown-format` — 34 tests pass.
- `pnpm run test:markdown-rules` — 34 tests pass.
- `pnpm run check:lectures` — 5 decks match their sources, Typst 0.15.1.
- `pnpm run check:links` — 2488 total, 2486 OK, 0 errors, 2 excluded, 1 redirect.
- `backlog doctor` — no duplicate IDs, self-referential dependencies, or dependency cycles.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Rewrote the release-body contract so the GitHub release body is an index of the release instead of a second copy of the testing plan.

`requirements/releases-requirements.md` keeps the title, changelog-section, and milestone rules and the `QR-nn` claim condition, and adds three rules: the body opens with a customer-language summary and what the release does not do yet (or `None`); its verification part names the sprint, lists each claimed `QR-nn` once with its tests as the pair, links the testing plan and the week's report once, and records the production verification; and it repeats no title, tag, commit, or date, with headings and order left to the team. The full example's body now shows that shape, and the changelog rule says technical changes are simply not changelog entries.

The other owners were aligned: `planning-requirements.md` no longer recommends release-body pointers, `guides/planning-and-tracking.md` gained a `Write The Release Body` method subsection with its TOC entry, `guides/deployment-and-environments.md` no longer says the body records the commit or the deployment details, `assignments/assignment-5.md` cites the new rule, `A5-DEC-037` records the decision and its alternatives while extending `A5-DEC-027`, and `AGENTS.md` and `course/rules.md` name the release body.

Scope is `Since: W5`, so `REL-03` and `REL-04` are unaffected.

Validation: `format:markdown` clean, `format:markdown:check` and `lint:markdown` pass, both plugin fixtures pass 34 tests each, `check:lectures` reports 5 decks matching, `check:links` reports 2486 OK and 0 errors with fragments included, and `backlog doctor` is clean. No lectures, workflows, or student `docs/` artifacts were touched.
<!-- SECTION:FINAL_SUMMARY:END -->
