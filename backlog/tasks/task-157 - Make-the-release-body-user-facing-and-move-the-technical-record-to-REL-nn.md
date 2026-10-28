---
id: TASK-157
title: Make the release body user-facing and move the technical record to REL-nn
status: Done
assignee: []
created_date: '2026-10-28 17:46'
updated_date: '2026-10-28 18:59'
labels: []
dependencies: []
references:
  - requirements/releases-requirements.md
  - requirements/planning-requirements.md
  - requirements/repository-requirements.md
  - assignments/assignment-5.md
  - guides/planning-and-tracking.md
  - guides/deployment-and-environments.md
  - course/syllabus.md
  - course/decisions/a5.md
  - course/rules.md
  - AGENTS.md
  - TODO.md
  - requirements/general-requirements.md
  - requirements/weekly-report-requirements.md
  - guides/quality-requirement-tests.md
  - course/plans/a5-plan.md
  - README.md
  - SKILL.md
modified_files:
  - requirements/releases-requirements.md
  - requirements/planning-requirements.md
  - requirements/general-requirements.md
  - requirements/weekly-report-requirements.md
  - assignments/assignment-5.md
  - guides/planning-and-tracking.md
  - guides/deployment-and-environments.md
  - guides/quality-requirement-tests.md
  - course/syllabus.md
  - course/rules.md
  - course/decisions/a5.md
  - course/plans/a5-plan.md
  - AGENTS.md
  - README.md
  - SKILL.md
  - TODO.md
priority: medium
type: docs
ordinal: 143000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The GitHub release body currently carries the release's technical record: the sprint, the claimed `QR-nn`/`QRT-nn` pairs, the testing-plan and week-report links, and the production check, first from `A5-DEC-027` and then from `A5-DEC-037`. That duplicates the testing plan on a public page and makes the customer-facing note a second copy of the evidence.

The settled model is the reverse. The release body is the customer-facing note for every release from `REL-05`: three parts, the summary (or `No changes visible to a user`), the limitation (or `None`), and a `Full changelog` link to the changelog's released section. The summary and the limitation are separate paragraphs. The technical record is the sprint's `REL-nn` block in `docs/project-plan.md`: a bullet list with `Released` and `Checked QRs`.

`Checked QRs` is an index, not a quality claim: every `QR-nn` with at least one test checked in the sprint, each linked, with one link to the testing plan. The testing plan's rows carry each test's result and show full or partial verification, so the block does not repeat that distinction. The old claim condition is retired, including the recheck-before-claim gate; `Checked UATs` is the field the UAT work will add. Only the sprint's `REL-nn` release carries the block; an earlier release in the sprint or a hotfix carries none. `REL-03` and `REL-04` keep their released-as line; the block starts at `REL-05`.

The production verification is deferred until the UAT work. The release body and the `REL-nn` block do not carry it; during the deferral the week report records the checked core task, per `A5-DEC-025`, while `repository-requirements.md` rule 7 and Assignment 5's Part 3 item stay as written. `TODO.md` records the deferral and the future `Checked UATs` field. The task reverses `A5-DEC-037` in full, the release-body clause of `A5-DEC-027`, and `A5-DEC-008` in full.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `requirements/releases-requirements.md#cutting-a-release` has the W5 body rules: three parts (the summary or `No changes visible to a user`, the limitation or `None`, the `Full changelog` link), no `REL-nn`/`QR-nn`/`QRT-nn` citation, quality claim, test result, testing-plan or week-report link, production check, or metadata; the full example matches.
- [x] #2 `requirements/planning-requirements.md#releases` has the W5 block: `Released` and `Checked QRs`, the latter listing every `QR-nn` with at least one test checked in the sprint, each linked, with one testing-plan link; only the sprint's `REL-nn` carries it; an earlier release or hotfix carries none; the block is an index and the plan shows full/partial; `REL-03`/`REL-04` keep the line.
- [x] #3 The plan full example's `REL-05` has `Released` and `Checked QRs`, no production check and no `Verified`/`Partially verified` labels; its testing plan adds `QR-03` with one `Passes` and one `Not verified` row, so the partially verified case is visible.
- [x] #4 The releases full example body has three parts: the summary, the limitation, and the `[Full changelog](...)` line; it has no `REL-05`, claim, test result, `QRT-nn` pair, week-report link, or production check.
- [x] #5 `assignments/assignment-5.md`'s objectives, Part 9 rules/items, Part 10 rules/items, What Good Looks Like, report coverage row, and checklist require the user-facing body and the plan's `REL-05` block; they no longer require the body's claim, evidence links, recheck-before-claim, or production check.
- [x] #6 `guides/planning-and-tracking.md#write-the-release-body` describes the user-facing body and the plan's `REL-nn` block with `Released`/`Checked QRs`; it removes the claim index, week-report link, campus machine, and from-where production line; the `### Releases` order names the plan's `REL-nn` section, and `What You Produce` names the sections and the testing plan.
- [x] #7 `guides/deployment-and-environments.md`, `course/syllabus.md`, `course/rules.md`, `AGENTS.md`, `README.md`, and `SKILL.md` no longer say the release body records the verification or claim; the deployment guide records the production verification in the week report, and the routers name the user-facing body and the plan block.
- [x] #8 `guides/quality-requirement-tests.md` replaces its claim language and `Cutting A Release` claim links with the plan's `Checked QRs` index; no sentence says a release claims a requirement.
- [x] #9 `requirements/general-requirements.md` rule 14 says `REL-03`/`REL-04` carry the released-as line and `REL-05` onward carries `Released` and `Checked QRs`; no stale released-as-line sentence remains.
- [x] #10 `requirements/weekly-report-requirements.md`'s `REL-05` coverage row links `docs/project-plan.md#rel-05`, not the release tag.
- [x] #11 `course/decisions/a5.md` has `A5-DEC-038` with the decision, why, alternatives, and it reverses `A5-DEC-037` in full, `A5-DEC-027`'s body clause, `A5-DEC-008` in full, and the release-claim clauses of `A5-DEC-004` and `A5-DEC-025`; the reversed entries' statuses are updated, and `A5-DEC-032`'s standing tag-to-deploy tie is noted while its stale Why sentence is marked historical.
- [x] #12 `course/plans/a5-plan.md` carries a supersession note naming `A5-DEC-038`; its historical design text stays.
- [x] #13 `TODO.md`'s A7 item records the deferral, the week-report home during the deferral, the future `Checked UATs` field, and the open question about `repository-requirements.md` rule 7; rule 7 and Assignment 5's Part 3 item are unchanged.
- [x] #14 The Markdown gates pass: `format:markdown`, `format:markdown:check`, `lint:markdown`, `test:markdown-format`, `test:markdown-rules`, `check:lectures`, `check:links`, and `backlog doctor`.
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
1. Update the task record to the settled model.
2. `requirements/releases-requirements.md`: replace W5 rules 4-7 with the three-part user-facing body and the `Full changelog` link; update the full example.
3. `requirements/planning-requirements.md`: add the W5 `REL-nn` block (`Released`, `Checked QRs`); retire the claim; update the full example and add `QR-03` partial rows.
4. `requirements/general-requirements.md` rule 14 and `requirements/weekly-report-requirements.md`'s `REL-05` row.
5. `guides/planning-and-tracking.md`, `guides/deployment-and-environments.md`, `guides/quality-requirement-tests.md`.
6. `assignments/assignment-5.md`, `course/syllabus.md`, `course/rules.md`, `AGENTS.md`, `README.md`, `SKILL.md`.
7. `course/decisions/a5.md` (`A5-DEC-038` and statuses), `course/plans/a5-plan.md` note, `TODO.md` A7 item.
8. Run the gates, fix findings, and record implementation notes.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Settled model with the maintainer: `Checked QRs` is an index, not a claim. It lists every QR with at least one test checked in the sprint; the testing plan's rows carry each test's result and show full or partial verification. The old claim condition is retired, including the recheck-before-claim gate; `Checked UATs` is the field the UAT work will add. The body is three parts, with the summary and the limitation as separate paragraphs, and a `Full changelog` line to the changelog's released section. The scope stays W5: `REL-03`/`REL-04` keep the released-as line.

Decisions: the production core-task verification stays with `repository-requirements.md` rule 7 and Assignment 5's Part 3 item (answer 4a); during the deferral the week report records it, per `A5-DEC-025`, and `TODO.md` A7 carries the future `Checked UATs` field. The Weekly Report example's `REL-05` row now links the plan block. `course/plans/a5-plan.md` carries a one-line supersession note and keeps its historical text. `course/decisions/a5.md` gains `A5-DEC-038`, reversing `A5-DEC-037` in full, `A5-DEC-027`'s release-body clause, `A5-DEC-008` in full, and the release-claim clauses of `A5-DEC-004` and `A5-DEC-025`; those entries' statuses are updated, and `A5-DEC-032`'s tag-to-deploy tie stands while its stale Why sentence is marked historical.

Review pass after the first implementation: made the general `REL-nn` wording say `section` where `REL-03`/`REL-04` carry a line and the W5 block is not in play (`releases-requirements.md` intro and `Cutting A Release` intro, `planning-requirements.md` intro, and the planning guide's `### Releases` order and `What You Produce`); clarified the body's no-metadata rule as `as text`, because the `Full changelog` URL carries the section anchor; let a release nickname head the body so it stays a heading rather than a fourth part; merged the duplicate `REL-05` block bullet in Assignment 5 Part 10 and clarified that a failing test keeps its result; added the no-metadata/heading sentence that `A5-DEC-038` says it restates.

Validation on the final tree: `format:markdown` exit 0; `format:markdown:check` exit 0; `lint:markdown` exit 0; both plugin suites 34/34; `check:lectures` 5 decks match Typst 0.15.1; `check:links` 2512 total, 2510 OK, 0 errors, 2 excluded, 1 redirect; `backlog doctor` clean. The first post-edit link-check run failed on a transient TLS handshake to `https://aistudio.google.com/` in `course/tooling.md`; curl returned 302 and the re-run passed. No new tasks created; follow-up stays in `TODO.md` A7.

Second review pass: clarified that the body rule covers every release cut from Week 5 on, including an earlier release in a sprint and a hotfix; glossed the hotfix as a release cut after the sprint's `REL-nn` to repair what it released; made the no-metadata rule apply to the prose and allow the `Full changelog` URL's heading anchor; made the `Checked QRs` `None` case keep the testing-plan sentence; named the testing plan's `Checked` column as the sprint of each test's last check; fixed the changelog rule to say the sprint's checked requirements; added `Fails` to the quality-requirement-tests mistake; and corrected the `A5-DEC-027` and `A5-DEC-032` statuses while extending `A5-DEC-038`'s landings to the quality-requirement-tests and deployment guides. Validation on the final tree: `format:markdown` and `format:markdown:check` exit 0; `lint:markdown` exit 0; both plugin suites 34/34; `check:lectures` 5 decks; `check:links` 2514 total, 2512 OK, 0 errors, 2 excluded, 1 redirect; `backlog doctor` clean.

Final touch: the `course/plans/a5-plan.md` supersession note now links `A5-DEC-038`; the link check re-run reports 2515 total, 2513 OK, 0 errors, 2 excluded, 1 redirect.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Reworked the release record to the settled user-facing model. The GitHub release body is the customer-facing note for every release cut from Week 5 on: the summary (or `No changes visible to a user`), the limitation (or `None`) as a separate paragraph, and a `Full changelog` line to the changelog's released section; it carries no `REL-nn`, `QR-nn`, or `QRT-nn` citation, quality claim, test result, testing-plan or week-report link, or production check, and no title, tag, commit, or date in its prose (the `Full changelog` anchor may carry the version and the date). The technical record moved to the plan's `REL-nn` block: `Released` and `Checked QRs`, an index of every `QR-nn` with at least one test checked in the sprint, each linked, with one testing-plan link; a sprint with no checked requirement says `None` and keeps the testing-plan sentence. Only the sprint's `REL-nn` carries the block; an earlier release in the sprint and a hotfix carry none, and `REL-03`/`REL-04` keep the released-as line. The old claim condition and recheck-before-claim gate are retired, and the example shows `QR-03` partially verified. The production verification stays with `repository-requirements.md` rule 7 and Assignment 5's Part 3 item, with the week report as its home during the deferral; `TODO.md` A7 records the future `Checked UATs` field. Aligned the planning, deployment, and quality-requirement-tests guides, the syllabus, the routers, the weekly-report example, and the a5-plan note; `A5-DEC-038` records the reversal with statuses for `A5-DEC-004`, `A5-DEC-008`, `A5-DEC-025`, `A5-DEC-027`, and `A5-DEC-037`, and marks `A5-DEC-032`'s stale Why sentence historical. Validation: `format:markdown` and `format:markdown:check` exit 0, `lint:markdown` exit 0, both plugin suites 34/34, `check:lectures` 5 decks, `check:links` 2514 total / 2512 OK / 0 errors / 2 excluded / 1 redirect, and `backlog doctor` clean. Follow-up: the UAT work adds `Checked UATs` and settles rule 7's status, per `TODO.md` A7.
<!-- SECTION:FINAL_SUMMARY:END -->
