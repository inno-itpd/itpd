---
id: TASK-151.01
title: Land the Week 5 quality requirement test and testing plan rules
status: To Do
assignee: []
created_date: '2026-10-27 08:44'
updated_date: '2026-10-27 08:48'
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
- [ ] #1 `requirements/general-requirements.md`: rule 1 names `QRT-nn` as the Week 5 family, a `**Since: W5**` block adds the four identifier rules (two digits and the pair citation, scoping with the rule-5 heading exception, `**Status:**`, dropped form), and `## Traceability Into Later Weeks` gains the test row.
- [ ] #2 `requirements/quality-requirements-requirements.md`: `## Quality Requirement Tests` exists with its ToC entry and owns placement, fields, the four levels, `**Runs at:**`, `**Why Manual:**`, the procedure and pass criterion, the evidence per level, the active-High rule, and the automated-level rule with its manual exception.
- [ ] #3 `requirements/quality-requirements-requirements.md`: the index's testing-plan link is a W5 rule, the `Status` column is never a test's result, and the full example shows `QR-01 QRT-01` at `deployed` and the `QR-02` testability file with a `CI` `QRT-01`.
- [ ] #4 `requirements/planning-requirements.md`: `## Quality Requirement Testing Plan` sits after `## Releases` and before `## Progress Monitoring` with its ToC and parts-list entries, the six columns, and the cell rules; `## Progress Monitoring` and `## Releases` each gain their W5 rule; the full example is after Week 5 with two milestones and two `Passes` rows.
- [ ] #5 `requirements/releases-requirements.md`: the W5 changelog sentence and the W5 release-body claim rule are present, and the full example is `REL-05` with `[0.5.0]` and a claiming release body.
- [ ] #6 `requirements/weekly-report-requirements.md`: W5 rule 15 points at the testing plan and the full example is a Week 05 report; `requirements/customer-meetings-requirements.md`: `## Showing Working Software` gains the W5 deployed-product rule with its VM-unavailable deviation.
- [ ] #7 No other requirements file gains a rule, no guide or router is edited, and no test carries a `**Checked:**`, `**Planned for sprint:**`, or `**Evidence:**` field.
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
- [ ] #6 `pnpm run check:links` passes
- [ ] #7 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->
