# Plan: Assignment 5 — Testing, Verification, Deployment, And The Fifth Release

This plan designs Assignment 5 in full, as [`a4-plan.md`](a4-plan.md) designs Assignment 4: the quality requirement tests and the testing plan, the CI checks and the unit tests, the university VM and its environments, the deployment, `MLS-05` and the stories that carry it, the feature documentation, `REL-05`, the Sprint Review, the retrospective, and the AI usage report.
It states the week's scope and identifies the contradictions the wider scope exposes, with the resolution each one takes, in [Scope And Contradictions](#scope-and-contradictions).
It leaves one thing out: the 7-minute pitch deck.
The syllabus expects the deck as a Moodle presentation, it has no repository artifact, and its submission channel is still marked for revision, so this plan designs none of it; the assignment's Moodle wrapper names it as a Moodle-only item.

Assignment 4 delivered the functional requirements, the quality requirements, the architectural decision records, the architecture document's container view, drivers and ADR index, and the Week 4 process work — sprint planning and estimates, the ceremonies, the glossary, the team's `AGENTS.md`, `REL-04`, and the deadlines; [`a4-plan.md`](a4-plan.md) designs that and [`assignment-4.md`](../../assignments/assignment-4.md) is the design.
The rules this plan adds are `**Since: W5**`.
The requirements files they land in are the ones Assignment 4 creates or edits, so this plan adds sections to existing files and adds no new requirements file: the environments and the deployment are platform rules that belong to `repository-requirements.md`, and the feature documentation is a report question the assignment owns.
It removes no rule, because the architecture document's Week 5 forward reference to the component and sequence views is already gone from the Week 4 work, per `A5-DEC-009`; [Scope And Contradictions](#scope-and-contradictions) records that finding.

**Scope change since this plan was written:** the plan now designs the whole week outside the pitch deck, not only the three groups it started with, and [Scope And Contradictions](#scope-and-contradictions) records the contradictions that follow from the wider scope.
The container view, its responsibilities, and the diagram conventions are Assignment 4's now, per [`A4-DEC-033`](../decisions/a4.md#a4-dec-033-the-container-view-is-week-4s-and-its-responsibilities-live-with-it).
The component and sequence views are removed from the course rather than deferred again, per `A5-DEC-009`, so the architecture's C4 views are the context and the container, and where this plan once described the container view or a `## Views` section as Week 5's, that scope is Assignment 4's or gone.

## Goal And Success Criteria

Write the whole design of Assignment 5 and everything it depends on, so Week 5 can be written and handed in from one account rather than from a plan, a syllabus row, and a set of rules that disagree.

Done means:

- Every rule has exactly one owner, and no rule that left `a4-plan.md` is lost: the tests in `quality-requirements-requirements.md`, the testing plan and `MLS-05` in `planning-requirements.md`, and the CI checks, the unit tests, the environments, and the deployment in `repository-requirements.md` and `definition-of-done-requirements.md`.
- `assignments/assignment-5.md` carries the parts in [The Parts Assignment 5 Carries](#the-parts-assignment-5-carries), written as a delta against `requirements/`, in the shape `assignment-4.md` uses.
- [Scope And Contradictions](#scope-and-contradictions) resolves every contradiction it names, and each resolution is applied by the file changes this plan lists in [Changes To The Requirements](#changes-to-the-requirements) and under [Edited Files Outside `requirements/`](#edited-files-outside-requirements).
- `quality-requirements-requirements.md` gains the `QRT-nn` rules with a `**Since: W5**` marker: the test's level, `**Runs at:**`, `**Why Manual:**`, the procedure and pass criterion, the evidence each level requires, the `deployed` level and its evidence, and the rule that a `High` QR has a `CI`, `scripted`, or `deployed` test.
- The quality requirements index links the testing plan once, and the two `deployed` tests cover two different `High` business-importance QRs, or the next rows by the matrix's sort with a declared deviation.
- `planning-requirements.md` owns `## Quality Requirement Testing Plan`, with the columns `QR`, `QRT`, `Status`, `Checked`, `Planned for sprint`, and `Evidence`, and `## Progress Monitoring` reads the rows that are not `Passes`.
- `planning-requirements.md`'s `## Milestones` requires `MLS-05`, due at the end of Week 5 over `SPRINT-04` and `SPRINT-05`, and the guide's milestone step agrees.
- `user-stories-requirements.md` and `sprint-ceremonies-requirements.md` change nothing: the assignment's two new stories use the existing rules, and the count is the week's minimum.
- `repository-requirements.md` spells out the `**Since: W5**` CI block — `actionlint` and the five product-code checks — and carries the `**Since: W5**` `## Environments And Deployment` section: the four environments, the university VM, staging and production, `docs/deployment.md`, the deployment sequence, and the `deployed` test's reach.
- The unit test suite covers the critical modules the testability `QR-nn` names, and the product-code CI runs it; `definition-of-done-requirements.md`'s W5 item names `actionlint` and the product-code CI.
- `releases-requirements.md` lets a release claim a `QR-nn` only through tests that are `Passes` and `Checked` in the release's sprint, in the release body rather than the changelog.
- `weekly-report-requirements.md` points at the testing plan, and `glossary-requirements.md` recommends the feature names as terms; `customer-meetings-requirements.md` shows the deployed product at the Sprint Review.
- `general-requirements.md` adds a `**Since: W5**` block with `QRT-nn` as the Week 5 identifier family, scoped to its QR, with its status exception and dropped form.
- `adr-requirements.md` gains a `**Since: W5**` sentence that an ADR cites no `QRT-nn`, and the plan's part and decision log carry it.
- `guides/quality-requirement-tests.md` and `guides/deployment-and-environments.md` exist and carry the method, and `guides/quality-and-architecture.md` and `guides/planning-and-tracking.md` are updated for the feature names and `MLS-05`.
- `docs/deployment.md` and the optional `docs/features.md` are in the `docs/` destination map, and the routing names both guides and both paths.
- `course/decisions/a5.md` records every decision as an `A5-DEC-nnn` entry, including reversing [`A3-DEC-018`](../decisions/a3.md#a3-dec-018-the-vocabulary-and-the-deferrals-follow-the-week-that-teaches-them) in full because its product-code CI clause moves to Week 5, `A5-DEC-017` restates the clauses that survive, `A5-DEC-018` records that an ADR cites no `QRT-nn`, and `A5-DEC-009` records that the two views leave the course; `course/decisions/a3.md` marks that entry reversed and moves its pointer.
- `course/syllabus.md`, `README.md`, `SKILL.md`, `course/rules.md`, `AGENTS.md`, and `TODO.md` are updated in step with the new guides, the new Week 5 artifacts, the environments, `MLS-05`, the two stories, and the feature documentation.
- `pnpm run format:markdown:check`, `pnpm run lint:markdown`, and `pnpm run check:links` pass.

## Scope And Contradictions

Assignment 5's scope is wider than the three groups this plan started with, and the wider scope touches rules that already exist.
Each row is a contradiction the materials carry now, and the resolution the implementation applies; the `A5-DEC` entry named in the row records it in `course/decisions/a5.md`.

| #   | Contradiction                                                                                                                                                         | Resolution                                                                                                                                                                                                                                                                                |
| --- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1   | This plan is a scope plan for three groups, not the whole assignment.                                                                                                 | The plan designs the whole week outside the pitch deck: the intro, the goal, the parts, and the success criteria are rewritten, and the three groups stay as sections while the week's other parts join them. `A5-DEC-001`.                                                               |
| 2   | `planning-requirements.md` rule 6 leaves every milestone after `MLS-03` to the team.                                                                                  | A `**Since: W5**` sentence in rule 6 requires `MLS-05` and leaves every milestone after it to the team; `A5-DEC-019`.                                                                                                                                                                     |
| 3   | `repository-requirements.md`'s W5 CI item names four checks and says "formatting or type checking".                                                                   | The W5 block spells out five checks — linting, formatting, type checking, build, and automated tests — and drops "or"; `A5-DEC-024`.                                                                                                                                                      |
| 4   | The QRT levels are `CI`, `scripted`, and `manual`, and none of them describes a test run on the VM.                                                                   | A fourth level, `deployed`, is added: an automated check run by a person against the staging deployment on the VM; `A5-DEC-003` and `A5-DEC-022`.                                                                                                                                         |
| 5   | The testability `QR-nn` must be `High`, and the Week 4 assignment says not every requirement is `High`, while the two `deployed` tests need two different `High` QRs. | The testability requirement's `High` is normally a `CI` test and does not count; a team with fewer than two other `High` QRs covers the next rows by the matrix's sort and declares the deviation; `A5-DEC-022`.                                                                          |
| 6   | `weekly-report-requirements.md` has no feature-documentation section, and the report's rules are the only owner of a report section.                                  | The feature documentation is the assignment's required report section, not a rule: the report's summary rule and coverage-table rule are untouched, and no `**Since: W5**` rule is added; `A5-DEC-021`.                                                                                   |
| 7   | `user-stories-requirements.md` rule 1 requires 8 or more stories, and the assignment asks for two more.                                                               | There is no contradiction: the rules own the story's form, the two new stories use them, and the count is the assignment's week-specific minimum; no rule changes; `A5-DEC-020`.                                                                                                          |
| 8   | `releases-requirements.md` says `CHANGELOG.md` is the user-facing record, and the release must also record a `QRT-nn` and claim a `QR-nn`.                            | The changelog stays user-visible; the release body carries the technical verification, the tests the release adds, and the `QR-nn`s it claims; `A5-DEC-027`.                                                                                                                              |
| 9   | The VM is reachable at an IPv4 address from the university network only, and the product CI and the link check run outside that network.                              | The deployment address is excluded from the student's link check with the report's justification, the evidence links a repository file, and `docs/deployment.md` carries the address; `A5-DEC-028`.                                                                                       |
| 10  | The syllabus's Week 5 heading and deliverables are "Testing Environments, Deployment Automation & Next Product Release".                                              | The Week 5 heading becomes "Testing, Verification & Deployment"; its objectives and deliverables gain the QRTs, the testing plan, the deployment, the feature documentation, and `REL-05`, and the deck stays a Moodle deliverable; `A5-DEC-016`.                                         |
| 11  | `TODO.md` says the team should define "at least two more milestones" and cover "one or two" QRTs on the VM.                                                           | The plan requires one more milestone, `MLS-05`, and two `deployed` tests; a team may define more of either, and the TODO item is corrected; `A5-DEC-019` and `A5-DEC-022`.                                                                                                                |
| 12  | `architecture-requirements.md` is described as still carrying the Week 5 forward reference to the component and sequence views.                                       | The Week 4 work already removed it: `## Container View` says it is the last view the document gains. The implementation verifies the removal and changes no numbered rule there; the testing plan's link is owned by `quality-requirements-requirements.md`, not this file; `A5-DEC-009`. |
| 13  | The QRT citation is `QR-01 QRT-02`, while `TODO.md` proposes `QR-01-QRT-01`.                                                                                          | The space-separated pair stays, consistent with `FR-012 AC-02`; the TODO's hyphenated form is not adopted; `A5-DEC-030`.                                                                                                                                                                  |
| 14  | `TODO.md` keeps a feature issue type deferred.                                                                                                                        | There is no feature issue type: the report section explains the team's choice, `docs/features.md` is a recommended index, and a feature name that is a term lives in the glossary; `A5-DEC-021`.                                                                                          |
| 15  | The plan says the Week 4 deliverables lose the tests, the testing plan, and the CI checks, while the syllabus's Week 4 deliverables already carry none of them.       | The implementation verifies that the Week 4 deliverables carry none; no edit is needed, and this plan adds the three to Week 5; `A5-DEC-016`.                                                                                                                                             |

The contradictions that follow from the VM's timing, the release, and the students' repository are in [Edge Cases And Failure Modes](#edge-cases-and-failure-modes).

## What Moved, And Where It Lands

[Assignment 4's plan](a4-plan.md) designed these groups and now leaves them out.
This plan takes them over, with the week marker they carry, and adds the parts the wider scope owns.

| Group                  | What Assignment 4 planned                                                                                                                                                | Where it lands here                                                                                              |
| ---------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------- |
| QRT                    | `## QRT-nn` sections inside the QR file, with `**Level:**`, `**Runs at:**`, and `**Why Manual:**`, and the rule that a `High` QR has a `CI` or `scripted` test           | `quality-requirements-requirements.md`'s test section, `**Since: W5**`                                           |
| QRT progress           | `## Quality Requirement Testing Plan` in `docs/project-plan.md`, with status, last check, planned sprint, and evidence; the release claim; and the weekly-report pointer | `planning-requirements.md`, `releases-requirements.md`, and `weekly-report-requirements.md`, `**Since: W5**`     |
| CI                     | `actionlint` over `.github/workflows/`, the product-code CI rule, and the Definition of Done's pull request item                                                         | `repository-requirements.md` and `definition-of-done-requirements.md`, `**Since: W5**`                           |
| Unit tests             | The product-code CI's automated tests, with no minimum                                                                                                                   | `repository-requirements.md`'s W5 CI block and the testability `QR-nn`'s `QRT`, `**Since: W5**`                  |
| Environments           | Nothing: the production deployment was a syllabus deliverable with no rule.                                                                                              | `repository-requirements.md`'s `## Environments And Deployment`, `**Since: W5**`                                 |
| Deployment             | The production deployment in Week 5, with no artifact.                                                                                                                   | `repository-requirements.md`'s `## Environments And Deployment` and `docs/deployment.md`, `**Since: W5**`        |
| `MLS-05`               | Nothing: Week 3 required only `MLS-03`, and further milestones were the team's choice.                                                                                   | `planning-requirements.md`'s `## Milestones`, `**Since: W5**`                                                    |
| The two new stories    | None: the Week 2 and Week 4 rules own the story form.                                                                                                                    | `assignments/assignment-5.md` only; the story rules already cover the form, and no rule changes                  |
| Feature documentation  | None.                                                                                                                                                                    | `assignments/assignment-5.md`'s report section and `glossary-requirements.md`'s `**Recommended**` bullet         |
| Release, review, retro | None: the release rule, the Sprint Review, the retrospective, and the AI usage report already exist.                                                                     | `releases-requirements.md`, `customer-meetings-requirements.md`, the existing ceremony rules, and the assignment |

One rule is new rather than moved: `adr-requirements.md` gains the `**Since: W5**` sentence that an ADR cites no `QRT-nn`.
The two deployed tests, the milestone, and the stories are the assignment's week-specific minima rather than new obligations in a requirements file.

The component and sequence views do not move: `A5-DEC-009` removes them from the course, so Assignment 4's container view is the last view the architecture document carries and this plan writes none.
The architecture document keeps the diagram conventions Assignment 4 wrote, because the context and container views still use them.

The boundary between the two plans:

- Assignment 4 keeps the architecture document: `docs/architecture/README.md` links the drivers, holds the container view with its responsibilities and the diagram conventions, holds the ADR index, and links the product vision for the scope it serves, and the links themselves are the chain, so no document restates it.
- Assignment 4 introduces `**Containers:**` on the FR and ADR records, naming the C4 containers from its container view; no later view refines that set, so the fields are checked against it and against nothing else.
- The context diagram stays where Week 2 put it, under `## System Context` in `docs/product-vision.md`.
  It is the architecture's first C4 view, and its rules are the Week 2 rules, which did not move.
- Assignment 4's drivers section and ADR index point at where the chain's facts are recorded, per [Traceability Into Later Weeks](../../requirements/general-requirements.md#traceability-into-later-weeks).
  This plan adds the one link to the testing plan in the quality requirements index, so the architecture document never restates when a test passes.
- Assignment 4's quality requirements have no tests.
  The rule that every `QR-nn` has at least one `QRT-nn` is `**Since: W5**`, so a Week 4 QR is finished when its scenario is written.
- Assignment 5 owns the tests, the testing plan, the environments and the deployment, the unit tests and the CI, `MLS-05` and the two new stories, the feature documentation, `REL-05`, the Sprint Review, the retrospective, and the AI usage report.
- The pitch deck is the syllabus's Moodle presentation: the assignment's Moodle wrapper names it, and no repository artifact or requirement is designed for it.

## Design Decisions

The tests live inside the requirement they prove, their state lives in one plan table, and CI is where the tests and the workflow checks run.
The week then puts the product in its staging and production environments, adds the two new stories and the milestone that carry the increment, and makes the feature documentation the report's answer to where a reader finds a feature.

- **Scope.**
  Assignment 5 is the whole week outside the pitch deck: the QRTs, the testing plan, the CI checks and the unit tests, the environments and the deployment to the university VM, `MLS-05` and the two new stories, the feature documentation, `REL-05`, the Sprint Review, the retrospective, and the AI usage report.
  The deck is a Moodle presentation with no repository artifact, and its channel is still under revision, so the plan designs none of it and the assignment's Moodle wrapper names it as a Moodle-only item.
- **QRT.**
  A quality requirement test is a `## QRT-nn` section inside its `QR-nn` file, numbered within that QR from `QRT-01` upward and never globally unique.
  Cite it as `QR-01 QRT-02`, and link it as `QR-01.md#qrt-02`.
  It is not a file of its own, so `quality-requirements-requirements.md` owns the requirement and its tests together, as `user-stories-requirements.md` owns a story and its acceptance criteria.
  The test sections follow the QR's `## Scenario`.
- **The test's shape.**
  Its first line below the heading is the test in one sentence.
  It carries `**Level:**`, `**Runs at:**`, `**Why Manual:**` only on a manual test, and `**Dropped:**` only on a dropped test, in that order.
  Its body is a numbered procedure and one `**Pass when:**` criterion, which restates the QR's response measure in a form a stranger can run.
- **The levels.**
  `**Level:**` is `CI`, `scripted`, `deployed`, or `manual`.
  `CI` runs in the product CI workflow, in the integration environment; `scripted` is a script or command a person runs in the development environment; `deployed` is an automated check run by a person against the staging deployment on the university VM, because the product CI cannot reach the university network; `manual` is a person's inspection.
  `**Runs at:**` says what runs the test in one line: the workflow and step for `CI`, the script path or the command for `scripted`, the staging address and the command or tool for `deployed`, and the inspection step for `manual`.
  A `High` business-importance QR must have at least one `CI`, `scripted`, or `deployed` test, so a command checks the requirement rather than a person.
  A lower-importance QR may have a `manual` test, which carries its `**Why Manual:**` reason in one sentence.
  A `deployed` test is automated: a manual inspection of the deployment is `manual`, carries `**Why Manual:**`, and does not count toward the two `deployed` tests.
- **No state on the test.**
  A test carries no `**Status:**`, no `**Checked:**`, no `**Planned for sprint:**`, and no `**Evidence:**`: the testing plan carries all four, and `planning-requirements.md` owns its columns and statuses.
- **The testing plan.**
  `docs/project-plan.md` gains `## Quality Requirement Testing Plan` after `## Releases` and before `## Progress Monitoring`.
  It is one table with the columns `QR`, `QRT`, `Status`, `Checked`, `Planned for sprint`, and `Evidence`, one row per `QRT-nn`, ordered by the quality requirements index and then by `QRT-nn`, with the `QR` and `QRT` cells linking the requirement and the test's section.
  The quality requirements index links this section once.
- **The statuses.**
  `Status` is the test's state at its last check: `Passes`, `Fails`, `Not verified`, or `Dropped`, where `Not verified` means no check is recorded.
  `Checked` is the `SPRINT-nn` of that check, and `None` on a `Not verified` or `Dropped` row.
  `Planned for sprint` is exactly one `SPRINT-nn`, linked through the plan, and `None` on a `Dropped` row.
  `Evidence` is required for `Passes` and `Fails`, says `None` on a `Not verified` or `Dropped` row, and links the proof the test's level requires, per `quality-requirements-requirements.md`'s evidence rule.
  A row that is not `Passes` keeps its `Status` and its planned sprint; a `Fails` row keeps its `Checked` and `Evidence`, and a `Not verified` or `Dropped` row carries neither.
- **Evidence follows the level.**
  The quality requirements own what evidence each `CI`, `scripted`, `deployed`, and `manual` test must produce.
  A `CI` test links its run on `main`.
  A `scripted` test records the command and its output in a dated section of `reports/week-NN/README.md` or in a week-local supporting file the report links.
  A `deployed` test records the command or tool, the staging environment and address, the output, and the measured value in the same place, with a screenshot when the result is visual.
  A `manual` test records what was inspected, by whom, and what was observed in the same place, with a screenshot when the evidence is visual.
  The testing plan's `Evidence` cell links that evidence; it never holds the output itself.
- **Tests inherit the priority.**
  A test is not prioritized separately: it inherits its QR's priority, the testing plan's rows follow the order of the quality requirements index, and `Planned for sprint` is the only schedule.
- **Progress.**
  `## Progress Monitoring` gains a sentence that the weekly review reads the testing plan's rows that are not `Passes`.
  The weekly report's summary points at the testing plan rather than copying its rows, and the plan remains the one place the rows live.
- **Two deployed tests.**
  The assignment requires at least two `deployed` tests, on two different `QR-nn` whose `**Business importance:**` is `High`.
  The testability requirement's `High` is normally a `CI` test and does not count, because its response measure is about a clean checkout and the product CI rather than the deployment.
  A team whose matrix has fewer than two other `High` QRs covers the next rows by the matrix's sort and declares the deviation; the assignment's minimum is a week-specific bar, not a requirement rule.
- **Releases claim only verified quality.**
  A release body records the `QRT-nn` it adds at any status and claims a `QR-nn` only when every non-dropped test for it is `Passes` and `Checked` in the release's sprint, with evidence from the released state: the `CI` run on the released commit, the `deployed` run against the staging deployment of that commit, or the `manual` inspection of it.
  The release body links the tests' sections, and a `QR-nn` name alone is no longer a quality claim.
  The changelog stays the user-facing record: a test, a workflow, or a deployment is not a changelog entry, and the release body carries the technical verification.
- **No further views.**
  The architecture document's views end at Assignment 4's container view: the component view and the sequence view are removed, so this week adds no diagram, no view source, and no diagram rule, and the conventions stay Assignment 4's under `## Diagrams And Legends`.
  Nothing in Week 5 cites a view, so the architecture record and the testing plan never name each other's artifacts.
- **Continuous integration.**
  `actionlint` checks `.github/workflows/` on pull requests and on `main`, pinned like any other tool.
  The product-code CI is five checks — linting, formatting, type checking, build, and automated tests — on pull requests and on `main`, pinned like any other tool.
  The automated tests include the suite the testability `QR-nn` measures: at least one test for each critical module that requirement names, run from a clean checkout, so a broken payment change fails the check.
  Both `actionlint` and the product-code CI join the Definition of Done's pull request list, and both land in Week 5, the week the syllabus gives to testing and CI/CD.
- **The identifier family.**
  `QRT-nn` is a Week 5 family: two digits, scoped to its `QR-nn`, not globally unique, and never renumbered or reused within its QR.
  A dropped test keeps its section and its `**Dropped:**` with the date and the reason, per [Identifier Rules](../../requirements/general-requirements.md#identifier-rules).
- **The guides.**
  The method is a new `guides/quality-requirement-tests.md`, because writing and checking the tests is the practice this week adds, and a new `guides/deployment-and-environments.md`, because the environments and the VM are the week's other new practice.
  `guides/quality-and-architecture.md` gains a short `### Name The Features` subsection, and `guides/planning-and-tracking.md`'s milestone step gains `MLS-05`.
- **The milestone.**
  `MLS-05` is required: due at Week 5's hard deadline, `2026-10-31`; `**Sprints:**` `SPRINT-04` and `SPRINT-05`; `**Advances:**` at least one `TOS-nn`; and a description whose first sentence states the increment: the product runs in its staging and production deployments on the university VM, and its high-priority quality requirements are verified there.
  A team whose plan already carries a milestone due in Week 5 keeps it and gives it this shape, and every milestone after `MLS-05` stays the team's choice.
  The rule is a `**Since: W5**` sentence in `planning-requirements.md` rule 6, and `A5-DEC-019` records that it narrows TASK-140's "further milestones are the team's choice" for this one milestone.
- **The new stories.**
  The assignment asks for at least two new `US-nn` for the `MLS-05` increment, each in the Week 4 shape: the `User Story` type, a `MoSCoW` value, `Story Points`, `### Specified by`, checkbox `AC-nn`, and the `Traces to` and `Rests on` lists when they apply.
  At least one is scheduled in `SPRINT-05`, built, and shown at the Sprint Review; the other is refined for `SPRINT-06` and stays in the product backlog with no milestone.
  A story is a user's need and not a feature name: the two stories say what the increment's users need, and the feature documentation maps the features to the stories and requirements that document them.
  No requirements rule changes, because the Week 2 and Week 4 rules already own the story's form; the count is the assignment's week-specific minimum.
- **The feature documentation.**
  The report carries a required `## Feature Documentation` section: the team says which of its user stories, `FR-nnn` files, `ADR-nnn` records, and glossary terms document a feature and why, gives one line per feature with the link that documents it and the link that fixes its name, and links the feature index when it keeps one.
  `docs/features.md` is the recommended home for a feature index: one row per feature, with the feature's name, the story issues, the `FR-nnn`, and the `ADR-nnn` that document it, each linked; it is an index and not a second source of truth, so it never restates a story, a requirement, or a decision.
  A feature name that is a word the project uses in its own sense is a `docs/glossary.md` term, with `**Defined by:**` linking its functional requirement or the feature index; a plain-language feature label needs no entry.
  The section is the assignment's, so `weekly-report-requirements.md` changes only for the testing-plan pointer; there is no feature issue type and no new identifier family.
- **The environments.**
  Four environments, from lecture 5: development, the team's local machines, where the `scripted` tests run; integration, the product CI on GitHub Actions, where the `CI` tests run; staging, the VM's production-like deployment, where the two `deployed` quality requirement tests run; and production, the VM's live deployment, where the customer uses the product.
  The university provides one VM per team; the team reaches it over SSH, the customer reaches production from the university network at its IPv4 address, and there is no domain name.
  Staging and production are separate deployments on the VM, with separate configuration and secrets, and staging represents production well enough that a passing test there is the confidence the requirement holds in production, as lecture 5 says.
  `docs/deployment.md` records the environments, the addresses, the access, the configuration, the deploy, the verification, and the rollback.
- **The deployment.**
  Deploy the release candidate to staging, run the two `deployed` `QRT-nn`s, deploy the same commit to production, verify the core task, then cut `REL-05` on that commit and update the changelog, the plan's `REL-05` line, and the report.
  The production deployment is what the customer uses at the Sprint Review; the staging evidence is what the testing plan records.
  No secret, key, or `.env` is committed; `.env.example` carries the shape, and the VM's configuration is installed outside the repository.
  The deployment address is reachable only from the university network, so the product CI cannot reach or check it: the report excludes it from the link check with its reason, and the evidence links the repository file rather than the live address.
- **The unit tests.**
  The product's automated test suite covers the critical modules the testability `QR-nn` names, with at least one test for each, and it runs in the product CI.
  The testability requirement's `QRT` is a `CI` test that runs the suite from a clean checkout, and a broken payment change fails it.
  The suite is not a `QRT` family of its own: it is the product's tests, and the quality requirement that demands it is the testability one.
- **The VM is late.**
  When the VM is not available, the two `deployed` tests stay `Not verified` with `Planned for sprint: SPRINT-05` and the report declares the deviation; a `CI` test supplies the week's required `Passes` row; the two QRs the deployed tests cover are not claimed by `REL-05`; the deployment work moves to `SPRINT-06`'s GitHub milestone while `MLS-05` keeps its number and due week; and the Sprint Review shows the local product and declares the deviation.
- **The release body and the changelog.**
  The changelog records user-visible changes, per the existing rule; the release body records the technical verification, including the tests the release adds and the `QR-nn`s it claims, per the release rule.
  This answers the TODO's changelog question without making the changelog a technical log.
- **The QRT citation.**
  Cite a test as `QR-01 QRT-02`, and link it as `QR-01.md#qrt-02`, consistent with `FR-012 AC-02`.
  The TODO's hyphenated `QR-01-QRT-01` is not adopted, because the acceptance criterion's existing form is the space-separated pair.
- **The link check.**
  The deployment address is excluded from the student's link check with a justification in the report, per the weekly report's rule; the evidence links a repository file, and `docs/deployment.md` carries the address.
  The course's own `lychee.toml` is unchanged.

## Changes To The Requirements

These are changes to files Assignment 4 creates or edits: additions, and one confirmation that a removal is already made.
No requirements file is added here.

### `quality-requirements-requirements.md`

- The test's placement and numbering as a `## QRT-nn` section inside its QR's file, its fields, its levels, its `**Runs at:**`, its `**Why Manual:**`, its procedure and pass criterion, the evidence each level requires, its dropped form, and the rule that every `QR-nn` has at least one `QRT-nn`, all `**Since: W5**`.
- The evidence rule: what a `CI`, `scripted`, `deployed`, or `manual` test must produce, so the testing plan's `Evidence` cell links it rather than restating it.
- The `deployed` level: the staging deployment on the university VM, the command or tool in `**Runs at:**`, the product CI's inability to reach the university network, and the rule that a manual inspection of the deployment is `manual` rather than `deployed`.
- The `High` business-importance rule: at least one `CI`, `scripted`, or `deployed` test, and a manual test is a deviation when it is the only possible one.
- The one new clause on the priority matrix's `Status` rule: it is never a test's status; a test's status and last check are in the testing plan only.
  The base rule stays in Assignment 4.
- The quality requirements index gains a `**Since: W5**` rule that it links `docs/project-plan.md#quality-requirement-testing-plan` once, so the index is where the testing plan is reached and no test's status lives outside it.
- The full example gains the `QRT-nn` sections for its one QR, with a `CI` test, a `deployed` test, and a `manual` test, and its index links the testing plan.

### `general-requirements.md`

- A new `**Since: W5**` block after rule 14, with four new numbered rules: `QRT-nn` is the Week 5 family and takes two digits; it is an exception to rule 10, because the testing plan carries its state and a dropped test carries `**Dropped:**`; a dropped test keeps its heading, its first line, and its procedure, with the date and the reason in `**Dropped:**`; and it is scoped to its `QR-nn` and is not globally unique.
- [Traceability Into Later Weeks](../../requirements/general-requirements.md#traceability-into-later-weeks) gains the test row: a `QRT-nn` traces to its `QR-nn`, and the testing plan carries its state.
  The row sits in the table, not under an earlier week's rule.

### `planning-requirements.md`

- `## Quality Requirement Testing Plan` after `## Releases` and before `## Progress Monitoring`, with its `**Since: W5**` marker, and the ToC and the parts list updated to milestones, sprints, releases, the testing plan, and progress.
- This file owns the table: its columns, its order, its statuses, and its rules for `Checked`, `Planned for sprint`, and the `Evidence` cell.
  The content that cell links is `quality-requirements-requirements.md`'s.
- `## Progress Monitoring` gains the sentence that the weekly review reads the rows that are not `Passes`, and keeps its place as the last part.
- `## Milestones`: rule 6 gains a `**Since: W5**` sentence requiring `MLS-05`, due at Week 5's hard deadline, with `SPRINT-04` and `SPRINT-05` as its run and at least one `TOS-nn` in `**Advances:**`; every milestone after `MLS-05` stays the team's choice, and a team that already carries a milestone due in Week 5 keeps it and gives it this shape.
- The full example becomes a plan after Week 5, with `MLS-05`, the testing plan's rows — a `Passes` row checked in `SPRINT-05`, a `deployed` `Passes` row, and a `Not verified` row — and the later sprint sections and dates that go with it.

### `releases-requirements.md`

- [The Changelog](../../requirements/releases-requirements.md#the-changelog) gains a `**Since: W5**` sentence that the changelog is user-visible only: a test, a workflow, or a deployment is recorded in the release body, not in the changelog.
- [Cutting A Release](../../requirements/releases-requirements.md#cutting-a-release) gains the `**Since: W5**` claim rule: the release body records the `QRT-nn` the release adds at any status and claims a `QR-nn` only when every non-dropped test for it is `Passes` and `Checked` in the release's sprint, with evidence from the released state, and it links the tests' sections.
- The full example becomes the release after the fifth sprint, `REL-05`: a `[0.3.0]` section for the user-visible changes and a release body that records a test it adds and a `QR-nn` it claims.

### `weekly-report-requirements.md`

- A new `**Since: W5**` rule 15, after rule 14: the report's summary points at `docs/project-plan.md#quality-requirement-testing-plan` for the tests that are not `Passes`, and copies none of the rows.
- The full example, which Assignment 4 sets in Week 04, becomes a Week 05 report: its summary carries the pointer, and its coverage table lists the Week 5 deliverables, including the testing-plan row, the deployment, the unit tests and the CI, `MLS-05` and the new stories, and `REL-05`.
- No rule carries the feature-documentation section: it is the assignment's `## Feature Documentation` section, and the report's summary rule and coverage-table rule stay as they are.

### `architecture-requirements.md`

- No rule is removed: the Week 4 work already removed the Week 5 forward reference to `## Component View` and `## Sequence View`, and `## Container View` already says it is the last view the document gains.
  The implementation verifies that removal in [Tests And Validation](#tests-and-validation) and changes no numbered rule.
- [Diagrams And Legends](../../requirements/architecture-requirements.md#diagrams-and-legends) already names the container view as the view its tool recommendation serves, so no edit is needed.
- The full example is unchanged, because it carries no view this work removes.

### `repository-requirements.md`

- The `**Since: W5**` CI block gains `actionlint` over `.github/workflows/` and the five product-code checks spelled out: linting, formatting, type checking, build, and automated tests, on pull requests and on `main`.
  It replaces the "formatting or type checking" wording with the two separate checks.
- The block keeps its place in [Continuous Integration](../../requirements/repository-requirements.md#continuous-integration), after the Markdown check, and pins its third-party actions per [Pinning Third-Party Actions](../../requirements/repository-requirements.md#pinning-third-party-actions).
- The automated tests include the testability `QR-nn`'s critical modules: at least one test for each module that requirement names, run from a clean checkout, so a broken payment change fails the check.
- A new `## Environments And Deployment` section, `**Since: W5**`, after `## Continuous Integration`, owns the four environments, the university VM, the SSH access and the customer's IPv4 access, the staging and production separation, `docs/deployment.md` and its sections, the deployment sequence, the secrets rule, and the `deployed` tests' reach.
- [Link Checking](../../requirements/repository-requirements.md#link-checking) gains a `**Since: W5**` sentence: a deployment address reachable only from the university network may be excluded from the check, and the weekly report justifies the exclusion.

### `definition-of-done-requirements.md`

- The `**Since: W5**` pull request item names `actionlint` and the product-code CI's five checks among the checks that must be green.
- The full example's `## Pull Request` list gains the item.

### `adr-requirements.md`

- A `**Since: W5**` sentence beside the `**Addresses:**` rule: the record cites no `QRT-nn`, because a test proves a requirement and the decision reaches the test through the requirement it addresses.

### `glossary-requirements.md`

- [The Term](../../requirements/glossary-requirements.md#the-term) gains a `**Since: W5**` `**Recommended**` bullet: a feature's name that the project uses in its own sense is a term, and its `**Defined by:**` line links the functional requirement or the feature index; a plain-language feature label needs no entry.
- The full example is unchanged; a feature name may be added to it when the feature documentation is written, if it is a term the example uses.

### `customer-meetings-requirements.md`

- [Showing Working Software](../../requirements/customer-meetings-requirements.md#showing-working-software) gains a `**Since: W5**` sentence: the product shown is the deployed production instance, reached at its address from the university network, and the two `deployed` `QRT-nn`s' results are shown with it; when the VM is unavailable, the team shows the local product and declares the deviation.

### No Change

- `user-stories-requirements.md` and `sprint-ceremonies-requirements.md` change nothing.
  The two new stories use the Week 2 and Week 4 rules, the planning and the retrospective use the existing ceremony rules, and the count is the assignment's week-specific minimum.
- `issue-tracking-requirements.md` changes nothing: the two new stories carry the existing fields, the `SPRINT-05` GitHub milestone already exists, and `MLS-05` is a plan milestone.
- `minimum-usable-product-requirements.md` changes nothing: its rule 7 already says the production deployment arrives in Week 5, and this plan makes that deployment the week's.

## New And Edited Guides

`guides/quality-requirement-tests.md` follows the shape of `guides/planning-and-tracking.md`: a short preamble, `## What You Produce`, numbered `## Step N:` sections with their `###` sub-sections, and `## Common Mistakes`.
The steps:

1. **Make the requirement testable.**
   The response measure a stranger can run, the pass condition, and the difference between a test and a restatement of the requirement.
2. **Write the test.**
   The `QRT-nn` section inside the QR's file, its `**Level:**` and `**Runs at:**`, its `**Why Manual:**` when no command can run it, its numbered procedure, and its `**Pass when:**` criterion.
3. **Pick the environment the test needs.**
   The four levels, the development, integration, staging, and production environments, the two `deployed` tests on the VM, and why a `deployed` test is not a manual inspection.
4. **Record the progress.**
   The testing plan's row, its status, its last check, its planned sprint, and the evidence its level requires; what the weekly report points at; and what the test itself must not carry.

`## Common Mistakes` covers a test that restates the requirement, a manual test with no reason, a `deployed` test that is really an inspection, a status on the test instead of the plan, output pasted into the `Evidence` cell, a deployed test run against production, an ADR that cites a `QRT-nn`, and a release that claims a quality requirement its tests have not verified.

`guides/deployment-and-environments.md` follows the same shape.
The steps:

1. **Map the four environments.**
   Development, integration, staging, and production, what each runs, and which environment each `QRT-nn` level runs in.
2. **Prepare the VM.**
   The university-provided host, the SSH access, the IPv4 address, the ports, and the customer's access from the university network.
3. **Configure the deployment.**
   The `.env.example`, the secrets outside the repository, the build, and the deployment directory or service.
4. **Deploy to staging and run the deployed tests.**
   The two `deployed` `QRT-nn`s, the command or tool, the target, and the evidence.
5. **Deploy to production and verify.**
   The same commit, the core-task smoke check, the rollback, and the release tag.
6. **Document it in `docs/deployment.md`.**
   The environment table, the address and access, the configuration, the deploy, the verification, and the rollback.

`## Common Mistakes` covers a committed secret, staging that does not represent production, a test run against production, a deployment nobody else can repeat, an assumed domain name, a link check pointed at the private address, and a deployment document that stops at the first successful run.

`guides/quality-and-architecture.md` gains a `### Name The Features` subsection under [Step 7](../../guides/quality-and-architecture.md#step-7-index-the-architectural-decision-records): a feature is a capability rather than an artifact; its need is a story, its behavior a functional requirement, its decision an ADR, and its name a story title, an FR title, a glossary term, or a row in `docs/features.md`; the feature index is an index and not a source.

`guides/planning-and-tracking.md`'s [Step 2](../../guides/planning-and-tracking.md#step-2-choose-the-roadmaps-zoom-level) changes `MLS-03` from the one milestone the plan must carry to the first of two: from Week 5 the plan carries `MLS-05` as well, per [Milestones](../../requirements/planning-requirements.md#milestones), and every milestone after it is the team's choice.

## The Parts Assignment 5 Carries

`assignments/assignment-5.md` is written as a delta against `requirements/`, in the shape `assignment-4.md` uses: the header, `## Objectives`, the numbered parts, `## What Good Looks Like`, the repository report with its coverage table, the Moodle wrapper, the submission procedure, and the checklist.
The header carries Week 5's hard deadline, Saturday 31 October 2026 at 23:59, with no soft deadline.

The parts, in the order the assignment carries them:

- **Part 1: Plan The Sprint, Define `MLS-05`, And Add The Stories.**
  `SPRINT-05`'s goal, `**Due:**` `2026-10-31`, `**Sprint Backlog:**` link, and `**Planned Velocity:**`; `MLS-05` with its `**Due:**`, `**Sprints:**`, `**Advances:**`, and description; at least two new `US-nn` in the Week 4 shape, at least one scheduled in `SPRINT-05` and one refined for `SPRINT-06` with no milestone.
- **Part 2: Write The Quality Requirement Tests.**
  At least one `QRT-nn` inside each QR's file, with its `**Level:**`, its `**Runs at:**`, and its `**Why Manual:**` when it is `manual`; every `High` QR has a `CI`, `scripted`, or `deployed` test; and the two `deployed` tests on two different `High` business-importance QRs, with the deviation when the matrix has fewer than two.
- **Part 3: Record The Testing Plan.**
  `docs/project-plan.md`'s `## Quality Requirement Testing Plan` with one row per test, its status, its last check, its planned sprint, and the evidence its level requires, linked from the plan's `Evidence` cell, and at least one `Passes` row whose `Checked` is `SPRINT-05` this week.
  Every row that is not `Passes` keeps its status and its planned sprint.
- **Part 4: Add The Unit Tests And The CI Checks.**
  `actionlint` over `.github/workflows/` and the five product-code checks on pull requests and on `main`, each third-party action pinned; the automated test suite covering the critical modules of the testability requirement; the Definition of Done's pull request list updated; and the latest `main` run green.
- **Part 5: Deploy To The VM And Document The Environments.**
  `docs/deployment.md` with its four environments, the VM's address and access, the configuration, the staging and production deployments, the deploy and verification steps, and the rollback; the release candidate deployed to staging, the two `deployed` tests run there, the same commit deployed to production, and the core task verified.
- **Part 6: Document The Features.**
  The report's `## Feature Documentation` section: the team answers which of its user stories, `FR-nnn` files, `ADR-nnn` records, and glossary terms document a feature, and where its name lives; one line per feature with its documentation and its name link; and the optional `docs/features.md` index and glossary terms when the team keeps them.
- **Part 7: Link The Testing Plan And The Quality Claim.**
  The quality requirements index links `docs/project-plan.md#quality-requirement-testing-plan` once; the release body claims a `QR-nn` only through its passing, checked tests; the week's report's summary points at the testing plan; and no ADR cites a `QRT-nn`.
- **Part 8: Carry Out The Week 4 Action Points And Open Questions.**
  Each Week 4 action point due in Week 5 carried out or explained, its outcome carried into the artifact it changed, and each Week 4 open question answered or carried forward, per [Meeting Report](../../requirements/customer-meetings-requirements.md#meeting-report).
- **Part 9: Validate With The Customer.**
  The Sprint Review on the production deployment, reached at its IPv4 address from the university network; the testing plan's rows and the two `deployed` tests shown with the working software; the meeting script and report; each story's verdict as a `DEC-nnn`; and the action points due in Week 6.
- **Part 10: Cut The `REL-05` Release.**
  The tag on the commit deployed to production, the changelog's `[0.3.0]` section, the release body with the tests and the claimed `QR-nn`s, the plan's `REL-05` line, and the sprint milestone closed after any open issue is rescheduled.
- **Part 11: Close The Sprint And Hold The Retrospective.**
  `**Actual Velocity:**` in `### SPRINT-05`, and `reports/week-05/sprint-retrospective.md` with its four sections and the actions carried from Week 4.
- **Part 12: Report On Your AI Usage.**
  `reports/week-05/ai-usage.md`, per [AI Usage Report](../../requirements/weekly-report-requirements.md#ai-usage-report).

The assignment ends with the repository report, the Moodle wrapper, the submission procedure, and the checklist, in `assignment-4.md`'s shape.
The report's summary carries the deployment, `MLS-05`, `REL-05`, and what moved out of the sprint; its `## Feature Documentation` section is Part 6; its coverage table carries the testing plan, the QRTs, the deployment, the unit tests and the CI, `MLS-05` and the two new stories, and `REL-05`; its repository evidence links a merged pull request and the latest green product-code CI, `actionlint`, and Markdown runs on `main`; and its deviations declare a VM that was unavailable, a feature index kept elsewhere, or a `deployed` test that could not be automated.
The Moodle wrapper carries the project and the team number, the member table, the permalink to `reports/week-05/README.md`, the production address with the note that the customer reaches it from the university network, the meeting transcript when the customer refused publication or the meeting was held in writing, the pitch deck as a Moodle-only attachment, and the privacy line.
The submission procedure merges the report and every file it links into `main`, takes the permalink and the snapshot from that commit, and submits the PDF and the snapshot through Moodle.

### What Good Looks Like

- a testing plan that says what is verified, in which environment, when it was last checked, when the rest arrives, and what evidence proves it;
- a test level that matches how the test runs, a `**Why Manual:**` a reviewer accepts, and evidence that follows the level;
- two `deployed` tests whose measurements a reader could repeat against the staging address, with the command, the target, and the result in the report;
- a deployment document a stranger could redeploy from: the four environments, the VM, the access, the configuration, the deploy, the check, and the rollback;
- a unit test suite that covers the critical modules the testability requirement names and fails when one of them breaks;
- a CI check that is pinned, runs on pull requests and `main`, appears in the Definition of Done, and passes on the latest `main`;
- a feature answer that leaves one place to find a feature's name and one place to find its documentation, without a second list of stories or requirements;
- a milestone and two stories that make the increment visible: the deployed, verified product, and the needs it serves;
- a release that claims only the quality requirements its tests have verified.

The rest of Week 5 — the pitch deck — is not designed here.
It stays a Moodle presentation, and the assignment's Moodle wrapper names it as a Moodle-only item.

## New Maintainer Decision Log `course/decisions/a5.md`

The file follows the format of `course/decisions/a3.md`: a header paragraph, then `A5-DEC-nnn` entries with `**Status:**`, `**Decision:**`, `**Why:**`, `**Alternatives considered:**`, `**Where it lands:**`, and `**Reverses:**` on the entries that reverse an `A3-DEC` or an `A4-DEC`.

The entries:

1. Week 5 is the whole week outside the pitch deck: the QRTs, the testing plan, the CI checks and the unit tests, the environments and the deployment, `MLS-05` and the two new stories, the feature documentation, `REL-05`, the Sprint Review, the retrospective, and the AI usage report; the deck is a Moodle-only presentation and is not designed.
2. A quality requirement test is a `## QRT-nn` section inside its QR's file, numbered within the QR and owned by `quality-requirements-requirements.md` with the requirement; no separate tests file is added.
3. A test's `**Level:**` is `CI`, `scripted`, `deployed`, or `manual`, `**Runs at:**` says where it runs, and a manual test carries `**Why Manual:**`; the test carries no state, and the testing plan carries its status, last check, planned sprint, and `Evidence` cell.
4. A `High` QR must have a `CI`, `scripted`, or `deployed` test; a `High` QR whose only possible test is manual is a deviation, and the reason is recorded.
5. The testing plan lives in `docs/project-plan.md`'s `## Quality Requirement Testing Plan`, keeps its rows in the order of the quality requirements index, and `planning-requirements.md` owns its rules.
6. Tests inherit their QR's priority; there is no separate test priority, and `Planned for sprint` is the only schedule.
7. The evidence the testing plan records for a test follows its level: a `CI` test links its run, a `scripted` test records the command and its output, a `deployed` test records the command or tool, the staging address, the output, and the measured value, and a `manual` test records the inspection.
8. A release body records the tests it adds at any status and claims a `QR-nn` only when every non-dropped test for it is `Passes` and `Checked` in the release's sprint, with evidence from the released state; the changelog stays user-visible.
9. The architecture's views are the context and the container, and no week adds a third: the context view stays in the product vision, the container view arrives in Week 4, and the component and sequence views are removed from the course, which reverses `A4-DEC-033`'s clause that Week 5 keeps them and leaves the rest of that entry standing.
10. The container view is the only view that names containers, so the `**Containers:**` fields on the FR and ADR records are checked against the set it lists and no later view can introduce a container the view does not show.
11. The diagram conventions are `A4-DEC-033`'s and stay there: they live under `## Diagrams And Legends`, they serve the context and container views, and no later week adds or restates a diagram rule.
12. Continuous integration is `actionlint` over `.github/workflows/` plus five product-code checks — linting, formatting, type checking, build, and automated tests — on pull requests and on `main`, pinned, with its Definition of Done item, and it arrives in Week 5.
13. [`A3-DEC-018`](../decisions/a3.md#a3-dec-018-the-vocabulary-and-the-deferrals-follow-the-week-that-teaches-them) is reversed in full, because its product-code CI clause moves from Week 4 to Week 5 and a reversal cannot be partial; entry 17 restates the plan's name, the "next product release" wording, the `MVP` vocabulary, and the deployment in Week 5.
14. `QRT-nn` is the Week 5 identifier family, scoped to its QR and not globally unique, and the general identifier rules gain its section exception and dropped form.
15. The new guides are `guides/quality-requirement-tests.md` and `guides/deployment-and-environments.md`, and the existing quality and planning guides gain the feature-name and `MLS-05` notes.
16. The syllabus's Week 5 heading becomes "Testing, Verification & Deployment"; its objectives and deliverables gain the tests, the testing plan, the deployment and the environments, the feature documentation, and the two new stories; its Submission 5 row becomes a "Verification & Deployment" summary; the Week 4 deliverables carry none of the tests, the testing plan, or the CI checks; and neither week gains a view.
17. The surviving `A3-DEC-018` clauses: the syllabus keeps the project plan's name, the "next product release" wording, `MVP` as vocabulary, and the production deployment in Week 5; only the product-code CI clause moves, to Week 5, and the entry's `**Where it lands:**` pointer names the Week 5 CI block in `repository-requirements.md`.
18. An ADR cites no `QRT-nn`: a test proves a requirement, and the decision reaches the test through the `QR-nn` it addresses.
19. `MLS-05` is the second required plan milestone: due at Week 5's hard deadline, over `SPRINT-04` and `SPRINT-05`, advancing a `TOS-nn`, and describing the deployed, verified increment; a team that already carries a milestone due in Week 5 keeps it and gives it this shape, and later milestones stay the team's choice, which narrows TASK-140 for this one milestone.
20. The assignment asks for at least two new stories for the `MLS-05` increment, one scheduled in `SPRINT-05` and one refined for `SPRINT-06`; the story's form is the existing Week 2 and Week 4 rules, and the count is the week's minimum, so no requirements rule changes.
21. The feature documentation is the report's required `## Feature Documentation` section: the team says which of its user stories, `FR-nnn` files, `ADR-nnn` records, and glossary terms document a feature and where a feature's name lives; `docs/features.md` is a recommended index, there is no feature issue type, and no new identifier family is added.
22. The university VM hosts the staging and production deployments: development is the team's local machine, integration is the product CI on GitHub Actions, staging is where the `deployed` tests run, and production is where the customer uses the product; the team reaches the VM over SSH, the customer reaches production from the university network at its IPv4 address, and there is no domain name.
23. The two `deployed` tests cover two different `High` business-importance QRs; the testability requirement's `High` is normally a `CI` test and does not count; a team with fewer than two other `High` QRs covers the next rows by the matrix's sort and declares the deviation.
24. The W5 CI block spells out the five product-code checks and drops "formatting or type checking"; the unit test suite covers the critical modules of the testability requirement, and `definition-of-done-requirements.md`'s W5 item names `actionlint` and the product-code CI.
25. When the VM is not available, the two `deployed` tests stay `Not verified` with their planned sprint, the report declares the deviation, a `CI` test supplies the required `Passes` row, `REL-05` claims no QR through the unverified tests, and the deployment work moves to `SPRINT-06`'s milestone while `MLS-05` keeps its due week.
26. `docs/deployment.md` is the deployment's maintained artifact: the four environments, the addresses and access, the configuration, the deploy, the verification, and the rollback; it is deployed to staging, tested there, deployed to production, verified, and then released.
27. The changelog stays the user-facing record; the release body carries the technical verification, the tests the release adds, and the `QR-nn`s it claims, which answers the TODO's changelog question.
28. A deployment address reachable only from the university network is excluded from the student's link check with the report's justification; the evidence links a repository file, and `docs/deployment.md` carries the address.
29. The Week 5 deadline stays Saturday 31 October 2026 at 23:59, and the pitch deck is a Moodle-only presentation whose channel the syllabus still marks for revision.
30. A quality requirement test is cited as `QR-01 QRT-02` and linked as `QR-01.md#qrt-02`, consistent with `FR-012 AC-02`; the TODO's hyphenated `QR-01-QRT-01` is not adopted.

## Edited Files Outside `requirements/`

- **`course/syllabus.md`**: The Week 5 heading becomes `Testing, Verification & Deployment`.
  Its objectives gain the quality requirement tests and the testing plan, the environments and the deployment to the university VM, the unit tests and the CI checks, the feature documentation, and the two new stories.
  The Week 5 deliverables gain those, and the existing "Test Suite & CI/CD" deliverable gains `actionlint` and the five product-code checks rather than a second CI line; the "Production Instance" deliverable names the VM, the staging and production deployments, and `docs/deployment.md`.
  The Submission 5 row is a `Verification & Deployment` summary: the quality requirement tests and testing plan, the unit tests, the CI/CD checks, the deployment and the VM, the feature documentation, the two new stories, `REL-05`, and the pitch deck.
  No week's objectives or deliverables gain the component or sequence views, and the Week 4 deliverables keep the container view and carry none of the tests, the testing plan, or the CI checks; the Week 4 edit is already made, and this plan adds them to Week 5.
  Week 5's hard deadline stays Saturday 31 October 2026 at 23:59, as Assignment 4's schedule change sets it.
- **`README.md`**: The guide rows for `guides/quality-requirement-tests.md` and `guides/deployment-and-environments.md`, the Assignment 5 row, and no new requirements file row.
  The repository requirements row names the environments and the deployment.
- **`SKILL.md`**: The routing rows for the two guides and the Week 5 artifacts, with each guide beside its requirements link; the rows for `docs/deployment.md`, `docs/features.md`, the testing plan, and the QRTs; the front-matter `description` gains the tests, the deployment, and the environments.
- **`course/rules.md`**: The two new guides in its guide list, and the Week 5 artifacts, including the deployment and the environments, in the routing.
- **`AGENTS.md`**: The Repository Map and the `requirements/` table gain `guides/quality-requirement-tests.md` and `guides/deployment-and-environments.md`; the `docs/` Destination Map's Week 5 row gains `docs/deployment.md`, the optional `docs/features.md`, the testing plan in `docs/project-plan.md`, and the `QRT-nn` sections inside the QR files; the identifier conventions gain `QRT-nn` and the sentence that it is scoped to its QR; the terminology list gains `quality requirement test`, `quality requirement testing plan`, `evidence`, `development environment`, `integration environment`, `staging environment`, `production environment`, `university VM`, `deployed test`, and `feature index`; the assignment checklist stays unchanged.
- **`TODO.md`**: The A5 items this work closes are ticked: where to track progress on a QRT, how to prioritize QRTs, the product-code CI, `actionlint`, the VM QRTs, the second milestone, the new stories, and the feature documentation.
  The sequence-diagrams item is recorded as dropped rather than ticked, because no view is written; the feature issue type stays deferred with a note that the feature documentation answers the need without one; and the "Changelog - not only changes visible to a user, technical too?" item is answered by the release body's technical record.
- **`course/decisions/a3.md`**: `A3-DEC-018` gets `**Status:** Reversed by A5-DEC-017`, linked to that entry once `course/decisions/a5.md` exists, and keeps its statement and fields; its `**Where it lands:**` pointer says the product-code CI marker moved from Week 4 to Week 5 and cites `A5-DEC-017`; `A5-DEC-017` restates the clauses that still hold.
- **`course/decisions/a4.md`**: `A4-DEC-033`'s clause that Week 5 keeps `## Component View` and `## Sequence View` is reversed by `A5-DEC-009`, which names that clause and restates the container-view clauses that stand; the entry keeps its statement and its fields, and its `**Reverses:**` field keeps naming `A4-DEC-001`'s container clause; its `**Status:**` reads `Accepted, with the Week 5 views clause reversed`, pointing at this plan, and is re-pointed at the entry in `course/decisions/a5.md` once that file exists.
  `A4-DEC-024`'s "Week 4 adds no CI check" is now delivered by this plan's Week 5 CI block, and its `**Where it lands:**` points here.
- **`course/plans/a4-plan.md`**: It is updated in the same change for the scope boundary, the `actionlint` move, the removal of the two views, and the example week; it links this plan, and the rules it hands over are not repeated there.
- **`guides/quality-and-architecture.md`**: The `### Name The Features` subsection under Step 7, with the feature index and the glossary names.
- **`guides/planning-and-tracking.md`**: Step 2's milestone paragraph names `MLS-05` as the second milestone the plan carries from Week 5.

## Edge Cases And Failure Modes

- **The VM is not available this week:** The two `deployed` tests stay `Not verified` with `Planned for sprint: SPRINT-05`; the report declares the deviation; a `CI` test supplies the week's required `Passes` row; the two QRs the deployed tests cover are not claimed by `REL-05`; the deployment work moves to `SPRINT-06`'s milestone; and the Sprint Review shows the local product.
- **A team has fewer than two other `High` QRs:** The two `deployed` tests cover the next rows by the matrix's sort, and the report declares the deviation; the testability requirement's `High` stays a `CI` test.
- **A `deployed` test cannot be automated:** It is `manual` with `**Why Manual:**`, it does not count toward the two `deployed` tests, and the team declares the deviation.
- **The customer cannot reach the VM:** The team verifies the access before the meeting; when the customer cannot reach it, the meeting shows the local product and the deployment evidence, and the report records why.
- **Staging and production share the VM:** They are separate deployments with separate configuration and secrets; a staging test never writes production data, and a production deploy never runs the staging configuration.
- **A link check tries to reach the deployment address:** The address is excluded with the report's justification; the evidence links the repository file, and `docs/deployment.md` carries the address; the course's `lychee.toml` is unchanged.
- **A test that is not `Passes` this week:** It stays in the testing plan with its status and its planned sprint; a `Fails` row keeps its `Checked` and `Evidence`, a `Not verified` or `Dropped` row carries neither, and the release body claims no `QR-nn` through it.
- **A `Passes` test the team has not re-checked:** It keeps its `Checked` sprint; a release that wants to claim its `QR-nn` re-checks it first, and a release that does not claim it leaves the row as it is.
- **A `deployed` test dropped after it was planned:** It keeps its section and its `**Dropped:**`, and its testing-plan row says `Dropped`, with `None` for `Checked`, `Planned for sprint`, and `Evidence`.
- **A team with a milestone due in Week 5 already:** It keeps that number and gives it `MLS-05`'s shape; no two milestones cover the same sprint.
- **A team whose plan has no room for the two new stories in `SPRINT-05`:** At least one is scheduled in `SPRINT-05` and the other is refined for `SPRINT-06`; a story larger than `13` points is split before it is scheduled.
- **A feature no story or requirement covers:** It is a gap, not a feature; the report names it under its open questions, or the team writes the story that covers it.
- **A feature index that becomes a second list:** It is an index: it links the story, the FR, and the ADR and restates none of them; a reader who needs the content follows the link.
- **A feature name that is plain language:** It needs no glossary entry; the glossary carries only the words the project uses in its own sense.
- **A repository that already draws a component or sequence view:** It is left as it is: no rule asks for one, no artifact cites one, and the architecture document's required views are the container view and the vision's context diagram.
- **One rule in two places:** The testing-plan rule, the evidence content, the `Evidence` cell rule, the release-claim rule, the test-priority rule, the environment and deployment rules, and the identifier rules each have exactly one owner, and every other file links to it.

## Tests And Validation

- `pnpm run format:markdown`, then `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run test:markdown-format`, and `pnpm run test:markdown-rules`.
- `pnpm run check:links`, which checks every heading anchor the new files and the edited files cite.
- `pnpm run lint:actions` only if a workflow in this repository changes; the CI checks this plan adds are the students' rules, not this repository's workflows. `pnpm run check:lectures` only if a deck changes.
- A scope audit: every success criterion has a part or a rule, and every part and coverage row has a rule.
- A contradiction audit: every row in [Scope And Contradictions](#scope-and-contradictions) has its resolution applied, and the files named in the row carry it; in particular, the W5 CI block says five checks, the weekly-report pointer is rule 15, the release body carries the claim, and the architecture's forward reference is confirmed gone.
- A routing audit: the two new guides appear in `README.md`, `SKILL.md`, `course/rules.md`, and both of `AGENTS.md`'s tables; `docs/deployment.md` and `docs/features.md` appear in the destination map.
- A cross-reference audit: every `**Since: W5**` rule has an Assignment 5 part, including the weekly-report pointer, the ADR rule, the environment rules, and the milestone, and every part and coverage row has a rule.
- A move audit: no rule that left `a4-plan.md` is stated twice, and every rule has one owner; the CI group's checks and its Definition of Done item are separate rules; the unit tests and the deployment are separate rules.
- A level audit: every `manual` test carries `**Why Manual:**`, every `CI` test names a workflow step, every `scripted` test names its script or command, every `deployed` test names the staging address and the command or tool, and every testing-plan `Evidence` cell matches its test's level.
- An environment audit: the four environments are named, the VM's SSH access and IPv4 are recorded, staging and production are separate deployments, `docs/deployment.md` has its sections, and the customer's access is verified.
- A milestone audit: `MLS-05` is due `2026-10-31`, its run is `SPRINT-04` and `SPRINT-05`, it advances a `TOS-nn`, its description leads with the deployed, verified increment, and the planning guide's `MLS-05` line agrees.
- A story audit: the two new stories carry the `User Story` type, `MoSCoW`, `Story Points`, `### Specified by`, checkbox `AC-nn`, and the one scheduled in `SPRINT-05` carries its `Responsible` and `Accountable` values and both assignees.
- A feature audit: the report has its `## Feature Documentation` section, every feature has one documentation link and one name link, the optional `docs/features.md` is an index, and no feature issue type or `FEAT-nn` family exists.
- A check audit: every `Passes` or `Fails` row carries a `Checked` sprint and an `Evidence` link, a `Not verified` or `Dropped` row carries neither, and every claimed `QR-nn` has all its non-dropped tests `Passes` and `Checked` in the release's sprint.
- A trace audit: the testing plan is linked once from the quality requirements index, the week's report points at it, and no test's status appears outside the testing plan.
- A full-example audit: every edited example carries its new field or section, every example is set in the week its new rule belongs to, and the tests example has a `CI`, a `deployed`, and a `manual` test.
- A CI audit: `actionlint` and the five checks are in the W5 block, pinned, on pull requests and on `main`, and the Definition of Done's W5 item names them.
- A removal audit: no file this plan edits still promises a component or sequence view, and every C4 reference in the requirements, the guides, and the routers names the context view or the container view.
- `backlog doctor`, after the task changes.

## Assumptions

- This work lands in the `itpd` course repository only, and no file is created under `docs/` or `reports/`, since those belong to student repositories.
- Assignment 5 is Week 5, and Week 5's due date is Saturday 31 October 2026 at 23:59, set by Assignment 4's schedule change.
- Assignment 4 lands first: the quality requirements, the functional requirements, the ADRs, the architecture document with its container view, drivers and ADR index, and the priority matrix exist before this work adds to them.
- The requirements files this plan edits are Assignment 4's; no new requirements file is added, because the tests stay inside the QR file, the testing plan stays inside the project plan, and the environments and the deployment stay in `repository-requirements.md`.
- The university provides one VM per team, reachable by SSH, and its production deployment is reachable from the university network at an IPv4 address with no domain name.
- The VM hosts the staging and production deployments as separate deployments, and the team can deploy the same commit to both.
- The customer can reach the production address from the university network, and the team can verify that access before the Sprint Review.
- The product CI cannot reach the university network, so a `deployed` test is run by a person from a machine on that network or over SSH, and its evidence is recorded in the report.
- The VM is available in Week 5, or the team declares the deviation in [Edge Cases And Failure Modes](#edge-cases-and-failure-modes).
- The context diagram and its Week 2 rules stay with `## System Context` in the product vision, and the container view is the architecture document's last view: this work adds no sibling view, no view source, and no diagram rule.
- The examples are set in the week their rule belongs to: the planning example after Week 5, the changelog and the release body after `REL-05`, and the weekly report a Week 05 report.
- The meeting-booking example is the example for every full example, as it is in Assignment 4's files.
- The release this week is `REL-05`, the first release was `REL-03`, and the fifth release's example is `0.3.0`.
- The pitch deck is a Moodle-only presentation, its submission channel is unresolved, and this plan designs no repository artifact for it.
- The two review files are local notes and are not committed.

## Sources

### The Course Materials This Plan Changes

- [`course/plans/a4-plan.md`](a4-plan.md), especially its [Design Decisions](a4-plan.md#design-decisions) and [edited requirements files](a4-plan.md#2-edited-requirements-files): the scope this plan takes over and the shape it follows.
- [`course/syllabus.md`](../syllabus.md), especially Week 5 and the Submission 5 row: the week's other deliverables and the deadline Assignment 4 sets.
- [`lectures/lecture-5.typ`](../../lectures/lecture-5.typ), especially its Environments slide: the development, integration, staging, and production definitions and the continuous-integration, delivery, and deployment terms.
- [`lectures/lecture-4.typ`](../../lectures/lecture-4.typ): ISO 25010, the six-part scenario and its worked test, the drivers, the ADR, and the priority matrix.
- [`assignment-4.md`](../../assignments/assignment-4.md): the shape Assignment 5 follows.
- [`course/decisions/a3.md`](../decisions/a3.md), especially `A3-DEC-018` (the product-code CI deferred to Week 4, which this plan reverses to Week 5) and `A3-DEC-022` (the one-way chain).
- [`course/decisions/a4.md`](../decisions/a4.md), especially `A4-DEC-033` (the container view and the two views it expected Week 5 to keep) and `A4-DEC-034` (refinement leaves the item in the product backlog).

### The Requirements This Plan Extends

- [General Requirements](../../requirements/general-requirements.md), [Planning Requirements](../../requirements/planning-requirements.md), [Releases](../../requirements/releases-requirements.md), [Weekly Report](../../requirements/weekly-report-requirements.md), [Repository Requirements](../../requirements/repository-requirements.md), [Definition Of Done](../../requirements/definition-of-done-requirements.md), [Customer Meeting Requirements](../../requirements/customer-meetings-requirements.md), [Glossary Requirements](../../requirements/glossary-requirements.md), plus `requirements/quality-requirements-requirements.md` and `requirements/adr-requirements.md`, which this plan edits, and `requirements/user-stories-requirements.md`, whose rules the two new stories use without a change.

### The Format Reference

- The `timeful` checkout at `/home/eyjafjallajokull/Desktop/gh/timeful`: `docs/requirements/quality/README.md` with `qr/QR-nnn.md`, and `adr/TEMPLATE.md`.
- [MADR 4](https://adr.github.io/madr/), [ISO/IEC 25010:2023](https://iso25000.com/en/iso-25000-standards/iso-25010), the [C4 model](https://c4model.com/), the [Scrum Guide](https://scrumguides.org/scrum-guide.html), and [Keep a Changelog](https://keepachangelog.com/).

### The Architecture Examples The User Named

- [`EventTicketSystem/Design/Architecture.md`](https://github.com/otrebmuh/EventTicketSystem/blob/2a928d226d43704457ad5be46b1e6b80f5bca8cb/Design/Architecture.md), [`HotelPricingSystem/Design/Architecture.md`](https://github.com/otrebmuh/HotelPricingSystem/blob/433e061f712a8748fdf04a6f767752e12be2f4b9/Design/Architecture.md), and [The Guide](https://github.com/inno-se/the-guide), consulted while this plan carried the two views.
  Their container views and legends remain the reference for the view Assignment 4 owns.

### The Prior Iterations Consulted

- `tmp/itpd-2025/assignments/assignment-4.md`, for the quality requirement evidence it expected and the testing plan.
- `tmp/swp-2026/assignments/Assignment_04.md`, for the range of quality requirement evidence it expected.
- `tmp/swp-2026/labs/lab-1.txt`, for the "university VM" the course refers to.
- The backlog tasks this plan changes: TASK-134 records the Week 3 to Week 4 move, TASK-140 records the milestone set this plan narrows, and TASK-145 records the Week 4 to Week 5 move.
