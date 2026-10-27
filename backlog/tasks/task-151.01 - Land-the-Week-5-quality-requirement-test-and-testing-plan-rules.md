---
id: TASK-151.01
title: Land the Week 5 quality requirement test and testing plan rules
status: Done
assignee: []
created_date: '2026-10-27 08:44'
updated_date: '2026-10-27 09:46'
labels: []
dependencies: []
references:
  - course/plans/a5-plan.md
  - requirements/general-requirements.md
  - requirements/quality-requirements-requirements.md
  - requirements/planning-requirements.md
  - requirements/releases-requirements.md
  - requirements/weekly-report-requirements.md
  - requirements/customer-meetings-requirements.md
documentation:
  - course/plans/a5-plan.md
modified_files:
  - requirements/general-requirements.md
  - requirements/quality-requirements-requirements.md
  - requirements/planning-requirements.md
  - requirements/releases-requirements.md
  - requirements/weekly-report-requirements.md
  - requirements/customer-meetings-requirements.md
parent_task_id: TASK-151
priority: high
ordinal: 131000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Land the Week 5 test-and-verification rules in the existing requirements files, per `course/plans/a5-plan.md`.

Read the plan's `## Design Decisions` (the QRT, the test's shape, the test's status, the levels, every High business-importance QR, the testing plan, the plan's statuses, evidence follows the level, progress, releases claim only verified quality, the identifier family) and its `## Changes To The Requirements` for `general-requirements.md`, `quality-requirements-requirements.md`, `planning-requirements.md`, `releases-requirements.md`, `weekly-report-requirements.md`, and `customer-meetings-requirements.md`.

No requirements file is added, no rule gets a second owner, every new rule is `**Since: W5**`, and the rules are numbered continuously within their section. Follow the repository conventions in `AGENTS.md`: one sentence per line, Title Case headings, `Required` / `Recommended` / `Example` labels, relative links with anchors.

Required outcome:
- `QRT-nn` is the Week 5 identifier family: two digits, scoped to its `QR-nn` so its identifier is the pair `QR-01 QRT-02`, its heading is `## QRT-nn` and its anchor `#qrt-nn` (an exception to rule 5), with `**Status:** Active` or `Dropped` and the dropped form, following rules 10 and 11. The traceability table gains the test row.
- `quality-requirements-requirements.md` gains `## Quality Requirement Tests` with its ToC entry, owning the test's placement and fields, the four levels `CI`, `scripted`, `deployed`, and `manual`, `**Runs at:**`, `**Why Manual:**`, the numbered procedure and one `**Pass when:**`, the evidence each level requires, "every active High business-importance QR has at least one QRT", and "a High business-importance QR has a CI, scripted, or deployed test, or the documented manual exception".
- The check result lives in the testing plan, never on the test; the priority matrix links the testing plan once (moved out of the W4 rule into a W5 block) and its `Status` column is never a test's result.
- `planning-requirements.md` owns `## Quality Requirement Testing Plan` with the six columns `QR`, `QRT`, `Status`, `Checked`, `Planned for sprint`, `Evidence`, its row order and result values, and the rules for each cell; `## Progress Monitoring` gains the W5 review rule; `## Releases` gains the W5 multiple-release rule.
- `releases-requirements.md` gains the W5 changelog/user-visible separation and the W5 release-body claim rule.
- `weekly-report-requirements.md` gains W5 rule 15 pointing at the testing plan; `customer-meetings-requirements.md` gains the W5 rule that the Sprint Review shows the deployed production instance and the implemented tests' results.
- The full examples move as the plan says: the quality example shows a `deployed` test on `QR-01` and adds the testability `QR-02` file with its `CI` test; the planning example becomes a plan after Week 5 with two milestones and two `Passes` rows; the release example is `REL-05` with a `[0.5.0]` section and a body claiming `QR-01` and `QR-02`; the weekly-report example is a Week 05 report carrying the pointer.

Do not edit `assignments/`, `guides/`, the routers, or any decision log here; later tasks own them. Do not link the new guides from the requirements preambles.

When done, record implementation notes and set the task to Done.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `requirements/general-requirements.md`: rule 1 names `QRT-nn` as the Week 5 family, a `**Since: W5**` block adds the four identifier rules (two digits and the pair citation, scoping with the rule-5 heading exception, `**Status:**`, dropped form), and `## Traceability Into Later Weeks` gains the test row.
- [x] #2 `requirements/quality-requirements-requirements.md`: `## Quality Requirement Tests` exists with its ToC entry and owns placement, fields, the four levels, `**Runs at:**`, `**Why Manual:**`, the procedure and pass criterion, the evidence per level, the active-High rule, and the automated-level rule with its manual exception.
- [x] #3 `requirements/quality-requirements-requirements.md`: the index's testing-plan link is a W5 rule, the `Status` column is never a test's result, and the full example shows `QR-01 QRT-01` at `deployed` and the `QR-02` testability file with a `CI` `QRT-01`.
- [x] #4 `requirements/planning-requirements.md`: `## Quality Requirement Testing Plan` sits after `## Releases` and before `## Progress Monitoring` with its ToC and parts-list entries, the six columns, and the cell rules; `## Progress Monitoring` and `## Releases` each gain their W5 rule; the full example is after Week 5 with two milestones and two `Passes` rows.
- [x] #5 `requirements/releases-requirements.md`: the W5 changelog sentence and the W5 release-body claim rule are present, and the full example is `REL-05` with `[0.5.0]` and a claiming release body.
- [x] #6 `requirements/weekly-report-requirements.md`: W5 rule 15 points at the testing plan and the full example is a Week 05 report; `requirements/customer-meetings-requirements.md`: `## Showing Working Software` gains the W5 deployed-product rule with its VM-unavailable deviation.
- [x] #7 No other requirements file gains a rule, no guide or router is edited, and no test carries a `**Checked:**`, `**Planned for sprint:**`, or `**Evidence:**` field.
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
Implement `course/plans/a5-plan.md` for the six requirements files this task owns. Every new rule is `**Since: W5**`, numbered continuously in its section, with one owner each, and no guide, assignment, router, or decision log is touched.

1. `requirements/general-requirements.md`: name `QRT-nn` as the Week 5 two-digit family in rule 1; add the `**Since: W5**` identifier block (rules 15–18: two digits and the pair citation, the bare-number heading and rule-5 exception with rule 2 applied to the pair, `**Status:**` `Active`/`Dropped`, and the dropped form) after rule 14; add the test row to `## Traceability Into Later Weeks`.
2. `requirements/quality-requirements-requirements.md`: add `## Quality Requirement Tests` (ToC entry; placement, fields, the four levels, `**Runs at:**`, `**Why Manual:**`, the procedure and `**Pass when:**`, evidence per level, the active-High rule, and the automated-level rule with its manual exception); move the index's testing-plan rule from the W4 block to a W5 block and add the W5 rule that the `Status` column is never a test's result; extend the full example with `QR-01 QRT-01` at `deployed`, the `QR-02` testability file with a `CI` `QRT-01`, and the index's one testing-plan link.
3. `requirements/planning-requirements.md`: add `## Quality Requirement Testing Plan` after `## Releases` and before `## Progress Monitoring`, with its ToC and parts-list entries, the six columns, and the cell rules; add the W5 multiple-release rule to `## Releases` and the W5 review rule to `## Progress Monitoring`; move the full example to after Week 5 with two milestones and two `Passes` rows.
4. `requirements/releases-requirements.md`: add the W5 changelog/user-visible separation and the W5 release-body claim rule; make the full example `REL-05` with a `[0.5.0]` section and a claiming body.
5. `requirements/weekly-report-requirements.md`: add W5 rule 15 pointing at the testing plan; make the full example a Week 05 report.
6. `requirements/customer-meetings-requirements.md`: add the W5 deployed-production rule with the VM-unavailable deviation to `## Showing Working Software`.
7. Run `format:markdown`, `format:markdown:check`, `lint:markdown`, both Markdown fixture tests, `check:lectures`, and `check:links`; record the validation in the task, check the criteria and Definition of Done, and set Done.

Out of scope and left to the later subtasks: `assignments/`, `guides/`, the routers, decision logs, `repository-requirements.md`, `visibility-requirements.md`, `definition-of-done-requirements.md`, `architecture-requirements.md`, `adr-requirements.md`, and `TODO.md`.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Implemented the six files TASK-151.01 owns, per `course/plans/a5-plan.md`.

**Changes**
- `requirements/general-requirements.md`: `QRT-nn` added to rule 1 as the Week 5 two-digit family; a `**Since: W5**` identifier block (rules 15–18) after rule 14 for the pair citation, the `## QRT-nn`/`#qrt-nn` rule-5 exception, `**Status:**` `Active`/`Dropped`, and the dropped form; the Week 5 test row added to `## Traceability Into Later Weeks`.
- `requirements/quality-requirements-requirements.md`: new `## Quality Requirement Tests` section with its ToC entry, owning placement, fields (`**Status:**`, `**Level:**`, `**Runs at:**`, `**Why Manual:**`, `**Dropped:**`), the four levels and the environments they run in, `**Runs at:**` and the address-placeholder rule, the procedure and `**Pass when:**`, the active-High rule, the automated-level rule with the documented manual exception, and the evidence each level requires; the index's testing-plan rule moved from the W4 block into a W5 block (rule 8) and the index `Status` rule (rule 9) says the column is never a test's result; the full example gains `QR-01 QRT-01` at `deployed`, the testability `QR-02` file with a `CI` `QRT-01`, and one testing-plan link in the index; the preamble names `QRT-nn`.
- `requirements/planning-requirements.md`: `## Quality Requirement Testing Plan` added after `## Releases` and before `## Progress Monitoring`, with its ToC and parts-list entries, the six columns, and the rules for row order, `Status` values, `Checked`, `Planned for sprint`, `Evidence`, rows that are not `Passes`, no result on a test, and inherited priority; `## Releases` rule 6 is the W5 multiple-release rule; `## Progress Monitoring` rule 7 is the W5 review rule; the full example is after Week 5 with `MLS-03` and `MLS-05`, `SPRINT-03` to `SPRINT-05`, and two `Passes` rows checked in `SPRINT-05`.
- `requirements/releases-requirements.md`: W5 rule 4 in `## The Changelog` makes the changelog user-visible only; W5 rule 4 in `## Cutting A Release` is the release-body claim rule; the full example is `REL-05` with a `[0.5.0]` section and a body claiming `QR-01` and `QR-02`.
- `requirements/weekly-report-requirements.md`: W5 rule 15 points the summary at the testing plan; the full example is a Week 05 report with the pointer, a `## Quality requirement tests` evidence section, and the Week 5 coverage rows.
- `requirements/customer-meetings-requirements.md`: W5 rule 4 in `## Showing Working Software` shows the deployed production instance and each implemented `QRT-nn`'s result, with the VM-unavailable deviation.

**Boundaries kept**
- No requirements file is added and no other requirements file gains a rule; `assignments/`, `guides/`, the routers, and the decision logs are untouched; the new guides are not linked from any preamble.
- Every new rule is `Since: W5` and numbered within its section, with one owner each: the test's definition and evidence in the quality file, the result and plan cells in `planning-requirements.md`, the claim in `releases-requirements.md`, the pointer in `weekly-report-requirements.md`, and the review duty and Sprint Review display in their files.
- No test carries `**Checked:**`, `**Planned for sprint:**`, or `**Evidence:**`; those are the testing plan's cells. The result vocabulary (`Passes`, `Fails`, `Not verified`, `Dropped`) is stated only in `planning-requirements.md`.

**Validation**
- `pnpm run format:markdown` then `pnpm run format:markdown:check`: pass.
- `pnpm run lint:markdown`: pass.
- `pnpm run test:markdown-format` and `pnpm run test:markdown-rules`: 34 tests each, pass.
- `pnpm run check:lectures`: 5 decks match their sources (Typst 0.15.1), pass.
- `pnpm run check:links`: 2000 links, 0 errors (494 unique, 2 excluded, 1 redirect), pass. The link check and deck check were run with the direnv/flake tools.
<!-- SECTION:NOTES:END -->
