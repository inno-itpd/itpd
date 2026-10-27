# Plan: Assignment 5 — Testing, Verification, Deployment, And The Week 5 Release

This plan designs Assignment 5 in full, as [`a4-plan.md`](a4-plan.md) designs Assignment 4: the quality requirement tests and the testing plan, the unit tests and the CI checks, the university VM and its environments, the deployment, at least two plan milestones and the stories that carry the increment, the codebase design exercise, `REL-05`, the Sprint Review, the retrospective, and the AI usage report.
It states the week's scope and identifies the contradictions the wider scope exposes, with the resolution each one takes, in [Scope And Contradictions](#scope-and-contradictions).
Week 5 has no pitch deck.
The deck is Week 6's; the in-class presentations move from the Week 6 class to the Week 7 class, so teams bring a near-final deck to the Week 7 class on 6 November and submit the final one through Moodle on 7 November, and this plan designs no deck artifact and no Week 5 Moodle item.

Assignment 4 delivered the functional requirements, the quality requirements, the architectural decision records, the architecture document's container view, drivers and ADR index, and the Week 4 process work — sprint planning and estimates, the ceremonies, the glossary, the team's `AGENTS.md`, `REL-04`, and the deadlines; [`a4-plan.md`](a4-plan.md) designs that and [`assignment-4.md`](../../assignments/assignment-4.md) is the design.
The rules this plan adds are `**Since: W5**`.
The requirements files they land in are existing files, so this plan adds sections to them and adds no new requirements file: the environments and the deployment are platform rules that belong to `repository-requirements.md`, the addresses are private-only per `visibility-requirements.md`, and the codebase design exercise is the assignment's, not a report rule.
It removes no numbered rule, because the architecture document's Week 5 forward reference to the component and sequence views is already gone from the Week 4 work, per `A5-DEC-009`; [Scope And Contradictions](#scope-and-contradictions) records that finding.

**Scope change since this plan was written:** the plan now designs the whole week outside the pitch deck, not only the three groups it started with, and [Scope And Contradictions](#scope-and-contradictions) records the contradictions that follow from the wider scope.
The container view, its responsibilities, and the diagram conventions are Assignment 4's now, per [`A4-DEC-033`](../decisions/a4.md#a4-dec-033-the-container-view-is-week-4s-and-its-responsibilities-live-with-it).
The required C4 views are the context diagram and the container view; no week requires a component or sequence view, and a team that draws one is not asked for it and cites it nowhere, per `A5-DEC-009`.

## Goal And Success Criteria

Write the whole design of Assignment 5 and everything it depends on, so Week 5 can be written and handed in from one account rather than from a plan, a syllabus row, and a set of rules that disagree.

Done means:

- Every rule has exactly one owner, and no rule that left `a4-plan.md` is lost: the tests in `quality-requirements-requirements.md`, the testing plan in `planning-requirements.md`, and the CI checks, the unit tests, the environments, and the deployment in `repository-requirements.md` and `definition-of-done-requirements.md`.
- `assignments/assignment-5.md` carries the parts in [The Parts Assignment 5 Carries](#the-parts-assignment-5-carries), written as a delta against `requirements/`, in the shape `assignment-4.md` uses, in the order the work succeeds in.
- [Scope And Contradictions](#scope-and-contradictions) resolves every contradiction it names, and each resolution is applied by the file changes this plan lists in [Changes To The Requirements](#changes-to-the-requirements) and under [Edited Files Outside `requirements/`](#edited-files-outside-requirements).
- `quality-requirements-requirements.md` gains the `QRT-nn` rules with a `**Since: W5**` marker: the test's placement, its `**Status:**`, `**Level:**`, `**Runs at:**`, `**Why Manual:**`, the procedure and pass criterion, the evidence each level requires, the `deployed` level and its evidence, the rule that every active `High` business-importance `QR-nn` has a `QRT-nn`, and the rule that a `High` QR has a `CI`, `scripted`, or `deployed` test, with the documented manual exception that replaces it when no automated form is possible.
- Every active `High` business-importance quality requirement has a defined test; the mandated testability requirement's test is a `CI` test that runs the suite from a clean checkout; Week 5 implements that test and at least one other active `QR-nn`'s test at `scripted` or `deployed`, using `deployed` when staging is available; the other test is on a `High` QR other than the testability requirement when the matrix has one, and on the next active row by the matrix's sort with a declared deviation when it does not.
- `planning-requirements.md` owns `## Quality Requirement Testing Plan`, with the columns `QR`, `QRT`, `Status`, `Checked`, `Planned for sprint`, and `Evidence`, and `## Progress Monitoring` reads the rows that are not `Passes`; the quality requirements index's testing-plan rule moves from `**Since: W4**` to `**Since: W5**` rather than gaining a second rule.
- `planning-requirements.md`'s `## Milestones` changes no rule: Assignment 5 asks for at least two plan milestones besides `MLS-03`, due in `SPRINT-05` through `SPRINT-09`, and a run may cover one or two sprints.
- `user-stories-requirements.md` and `sprint-ceremonies-requirements.md` change nothing: the assignment's two new stories use the existing rules, and the count is the week's minimum.
- `repository-requirements.md` spells out the `**Since: W5**` CI block — `actionlint` and every applicable product-code check among linting, formatting, type checking, build, and automated tests, with no deployment job — and carries the `**Since: W5**` `## Environments And Deployment` section: the four environments, the university VM and its portal, staging and production, `docs/deployment.md` and its difference from `docs/setup.md`, the manual deploy, verification, and rollback steps, and the rule that no real address is committed.
- `visibility-requirements.md` sends the staging and production addresses to Moodle only, so no public file carries them.
- The unit test suite covers the critical modules the testability `QR-nn` names, and the product-code CI runs it; `definition-of-done-requirements.md`'s W5 item names `actionlint` and the applicable product-code CI checks.
- `releases-requirements.md` lets a release claim an active `QR-nn` only when it has at least one non-dropped test and every non-dropped test for it is `Passes` and `Checked` in the release's sprint, in the release body rather than the changelog, leaves the body's shape to the team, and owns the rule that a team may cut more than one release in a sprint and `REL-nn` names the last one.
- `weekly-report-requirements.md` points at the testing plan, and `customer-meetings-requirements.md` shows the deployed product at the Sprint Review; `glossary-requirements.md` changes nothing.
- `general-requirements.md` adds `QRT-nn` to the identifier family list as the Week 5 family and adds a `**Since: W5**` block for its scoping, `**Status:**` `Active` or `Dropped`, and dropped form.
- `adr-requirements.md` needs no edit: its `**Addresses:**` rule already lists only `FR-nnn` and `QR-nn`, so an ADR cites no `QRT-nn`, and `A5-DEC-018` records the reading.
- `guides/quality-requirement-tests.md` and `guides/deployment-and-environments.md` exist and carry the method; `guides/quality-and-architecture.md` gains the codebase-design method, and `guides/planning-and-tracking.md` notes the assignment's two further milestones.
- `docs/deployment.md` is in the `docs/` destination map, the file carries no real address, and the routing names both guides and that path; no `docs/features.md` path is added.
- `course/decisions/a5.md` records every decision as an `A5-DEC-nnn` entry, including `A5-DEC-013` reversing [`A3-DEC-018`](../decisions/a3.md#a3-dec-018-the-vocabulary-and-the-deferrals-follow-the-week-that-teaches-them) in full because automated product checks become necessary in Week 5, `A5-DEC-017` restating the clauses that survive, `A5-DEC-018` recording that an ADR cites no `QRT-nn`, and `A5-DEC-009` recording that the two views are not required; `course/decisions/a3.md` marks A3-DEC-018 reversed and moves its pointer.
- `course/syllabus.md`, `README.md`, `SKILL.md`, `course/rules.md`, `AGENTS.md`, and `TODO.md` are updated in step with the new guides, the Week 5 artifacts, the environments, the milestones, the two stories, the codebase design exercise, the removal of the Week 5 deck, and the move of the in-class presentations to Week 7, where the near-final Week 6 deck is shown and the final one is submitted on 7 November.
- `pnpm run format:markdown:check`, `pnpm run lint:markdown`, and `pnpm run check:links` pass.

## Scope And Contradictions

Assignment 5's scope is wider than the three groups this plan started with, and the wider scope touches rules that already exist.
Each row is a contradiction or scope decision the materials carry now, and the resolution the implementation applies; the `A5-DEC` entry named in the row records it in `course/decisions/a5.md`.

| #   | Contradiction                                                                                                                                                                                | Resolution                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| --- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| 1   | This plan was a scope plan for three groups, not the whole assignment.                                                                                                                       | The plan designs the whole week outside the pitch deck: the intro, the goal, the parts, and the success criteria are rewritten, and the three groups stay as sections while the week's other parts join them. `A5-DEC-001`.                                                                                                                                                                                                                                                                      |
| 2   | `planning-requirements.md` rule 6 leaves every milestone after `MLS-03` to the team, and the plan made a fifth-week milestone a rule.                                                        | No rule changes: Assignment 5 asks for at least two milestones besides `MLS-03`, due in `SPRINT-05` through `SPRINT-09`; a run may cover two sprints, and the team chooses the due weeks. `A5-DEC-019`.                                                                                                                                                                                                                                                                                          |
| 3   | A fixed `MLS-05` over `SPRINT-04` and `SPRINT-05` can conflict with a team's existing `MLS-04` over `SPRINT-04`, and a sprint belongs to at most one milestone.                              | No fixed milestone number or sprint run: the assignment's milestones are due in `SPRINT-05` through `SPRINT-09`; a milestone may cover two sprints; an existing milestone due in that range counts; the rule that a sprint belongs to one milestone stands. `A5-DEC-019`.                                                                                                                                                                                                                        |
| 4   | `repository-requirements.md`'s W5 CI item names four checks and says "formatting or type checking".                                                                                          | The W5 block names the five check types — linting, formatting, type checking, build, and automated tests — and requires every one that applies to the product's stack; it drops "or"; the workflow stops at the build and the tests, with no deployment job. `A5-DEC-024`.                                                                                                                                                                                                                       |
| 5   | The QRT levels are `CI`, `scripted`, and `manual`, and none of them describes a test run on the VM.                                                                                          | A fourth level, `deployed`, is added: an automated check run by a person against the staging deployment on the VM. `A5-DEC-003`.                                                                                                                                                                                                                                                                                                                                                                 |
| 6   | The testability `QR-nn` must be `High`, and the plan first required two `deployed` tests on two different `High` QRs while the full example's matrix has only one other `High` QR.           | The assignment requires the testability `CI` test and one other active QR's test at `scripted` or `deployed`, using `deployed` when staging is available; the other test is on a `High` business-importance QR other than testability when one exists, and on the next active row by the matrix's sort with a declared deviation when none does; an additional deployed test or a second High QR is optional. `A5-DEC-022`.                                                                      |
| 7   | `weekly-report-requirements.md` has no feature-documentation section, and the report's rules are the only owner of a report section.                                                         | The codebase design exercise is the assignment's, not a report rule: the team answers it where it documents features, the report's coverage table links that answer, and no `**Since: W5**` report rule or fixed path is added. `A5-DEC-021`.                                                                                                                                                                                                                                                    |
| 8   | `user-stories-requirements.md` rule 1 requires 8 or more stories, and the assignment asks for two more.                                                                                      | There is no contradiction: the rules own the story's form, the two new stories use them, and the count is the assignment's week-specific minimum; no rule changes. `A5-DEC-020`.                                                                                                                                                                                                                                                                                                                 |
| 9   | `releases-requirements.md` says `CHANGELOG.md` is the user-facing record, and the release must also record a `QRT-nn` and claim a `QR-nn`.                                                   | The changelog stays user-visible; the release body carries the technical verification, the tests the release adds or relies on, and the `QR-nn`s it claims, in a shape the team chooses. `A5-DEC-027`.                                                                                                                                                                                                                                                                                           |
| 10  | The VM is reachable at an IPv4 address from the university network only, the product CI runs outside that network, and a public file with the address would publish it.                      | No real address is committed: `visibility-requirements.md` sends the staging and production addresses to Moodle only, `docs/deployment.md` uses placeholders, the QRT's `**Runs at:**` names the staging deployment and the command with a placeholder for the address, and no link is excluded. `A5-DEC-028`.                                                                                                                                                                                   |
| 11  | The syllabus's Week 5 heading and deliverables are "Testing Environments, Deployment Automation & Next Product Release", its objectives promise CI/CD deployment, and it lists a pitch deck. | The heading becomes "Testing, Verification & Deployment"; the objectives and deliverables name the QRTs, the testing plan, the CI-only checks, the manual deployment, the VM environments, the codebase design exercise, the milestones and two stories, and `REL-05`; the deck leaves Week 5, Week 6 keeps its own deck deliverable, and the in-class presentations move to the Week 7 class, where a near-final deck is shown before the 7 November submission. `A5-DEC-016` and `A5-DEC-029`. |
| 12  | `TODO.md` says "Define your integration environment", and the plan treated the VM as the integration environment.                                                                            | Integration is the product CI on GitHub Actions; the VM hosts staging and production. The TODO item is answered in the plan and ticked with that answer. `A5-DEC-023` and `A5-DEC-024`.                                                                                                                                                                                                                                                                                                          |
| 13  | `architecture-requirements.md` is described as still carrying the Week 5 forward reference to the component and sequence views.                                                              | The Week 4 work already removed it: `## Container View` says it is the last required view. The implementation verifies the removal and changes no numbered rule there. `A5-DEC-009`.                                                                                                                                                                                                                                                                                                             |
| 14  | The QRT citation is `QR-01 QRT-02`, while `TODO.md` proposes `QR-01-QRT-01`.                                                                                                                 | The space-separated pair stays, consistent with `FR-012 AC-02`; the TODO's hyphenated form is not adopted. `A5-DEC-030`.                                                                                                                                                                                                                                                                                                                                                                         |
| 15  | `A3-DEC-018` is said to be reversed by `A5-DEC-017`, while entry 13 calls it a full reversal, and the Week 3 "without an automated product check" clause would be lost.                      | `A5-DEC-013` is the reversal; `A5-DEC-017` restates the clauses that survive, including that Week 3 shipped without an automated product check and that automated product checks are required from Week 5. `A5-DEC-013` and `A5-DEC-017`.                                                                                                                                                                                                                                                        |
| 16  | `A4-DEC-001` says the component and sequence views are Assignment 5's, and `A4-DEC-033` says Week 5 keeps them.                                                                              | `A5-DEC-009` reverses both clauses; the decision records keep their statements, and their `**Status:**` fields name the reversal. No rule, assignment, guide, or router requires a view. `A5-DEC-009`.                                                                                                                                                                                                                                                                                           |
| 17  | The quality requirements index already has the rule that the index links the testing plan once, marked `**Since: W4**`.                                                                      | The rule moves to `**Since: W5**` rather than gaining a second rule, because the testing plan does not exist until Week 5. `A5-DEC-005`.                                                                                                                                                                                                                                                                                                                                                         |
| 18  | `TODO.md` keeps a feature issue type deferred, and the plan made a feature index a recommended artifact.                                                                                     | There is no feature issue type and no required feature index: the assignment's codebase design exercise asks where the team documents features, and a feature name in the glossary follows the glossary's existing `**Defined by:**` rule. `A5-DEC-021`.                                                                                                                                                                                                                                         |
| 19  | The plan called `REL-05` the fifth release and fixed its example at `0.3.0`, while `REL-03` was the first and the weekly report's `REL-04` example is `v0.4.0`.                              | `REL-05` is the release at the end of Week 5 and carries no ordinal; `releases-requirements.md` owns the rule that a team may cut more than one release in a sprint and `REL-nn` names the last one; the version is the team's choice, and the example uses `v0.5.0`. `A5-DEC-031`.                                                                                                                                                                                                              |
| 20  | The plan's release sequence deployed and released before the Sprint Review and same-week rework, so the released commit could differ from the tested one.                                    | The release is cut after the Sprint Review and any same-week rework; if rework changes the commit, it is redeployed, retested, and redeployed to production before the tag, and only the final production deploy counts. `A5-DEC-032`.                                                                                                                                                                                                                                                           |
| 21  | The assignment's parts wrote tests before the CI and the environments existed, recorded `Passes` before the tests ran, and checked a release claim before the release.                       | The parts are ordered by the work: plan, CI and unit tests, VM and deployment, tests, testing plan, codebase design, action points, review, rework and redeploy, release, retrospective, AI usage. `A5-DEC-033`.                                                                                                                                                                                                                                                                                 |
| 22  | A dropped QRT would have no `**Status:**`, contradicting identifier rules 10 and 11.                                                                                                         | A QRT carries `**Status:**` `Active` or `Dropped`, follows rules 10 and 11, and a dropped test keeps its first line and fields and adds `**Dropped:**`; its testing-plan row becomes `Dropped`, with no evidence. `A5-DEC-014`.                                                                                                                                                                                                                                                                  |
| 23  | The rule "every QR has a QRT" includes dropped QRs, and the full example's testability QR had no exemplar.                                                                                   | The rule is "every active high-priority QR has at least one QRT"; a lower-importance QR may have one, a dropped QR needs none, and the full example shows one test for each of its two active High QRs, including the testability requirement's `CI` test. `A5-DEC-014`.                                                                                                                                                                                                                         |
| 24  | The testing plan says every non-`Passes` row keeps its planned sprint, while a `Dropped` row has `Planned for sprint: None`.                                                                 | A `Fails` row keeps its `Checked` and `Evidence`, a `Not verified` row keeps its planned sprint, and a dropped QRT's row says `Dropped` with `None` for `Checked`, `Planned for sprint`, and `Evidence`. `A5-DEC-005`.                                                                                                                                                                                                                                                                           |
| 25  | `A5-DEC-029` recorded the deadline and the deck rather than a design decision.                                                                                                               | `A5-DEC-029` records that Week 5 has no pitch deck and that the in-class presentations are in the Week 7 class, where a near-final Week 6 deck is shown before the 7 November submission; the deadline stays in the syllabus and is not a decision.                                                                                                                                                                                                                                              |
| 26  | The plan assumed "two review files" that nothing explained.                                                                                                                                  | The assumption is removed; the plan carries no review files.                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| 27  | The plan's sources cite `A3-DEC-022`, which `A4-DEC-028` already reversed.                                                                                                                   | The source cites `A4-DEC-028` in `a4.md` as the surviving entry for the one-way chain.                                                                                                                                                                                                                                                                                                                                                                                                           |
| 28  | The glossary's `**Defined by:**` was to link a feature index, while the glossary rule says it links the artifact that defines the term.                                                      | The glossary rule is unchanged: a team that names a feature in the glossary links whatever artifact defines it. There is no feature-index rule. `A5-DEC-021`.                                                                                                                                                                                                                                                                                                                                    |

The contradictions that follow from the VM's timing, the release, and the students' repository are in [Edge Cases And Failure Modes](#edge-cases-and-failure-modes).

## What Moved, And Where It Lands

[Assignment 4's plan](a4-plan.md) designed these groups and now leaves them out.
This plan takes them over, with the week marker they carry, and adds the parts the wider scope owns.

| Group                  | What Assignment 4 planned                                                                                                                                                                                         | Where it lands here                                                                                              |
| ---------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| QRT                    | `## QRT-nn` sections inside the QR file, with `**Level:**`, `**Runs at:**`, and `**Why Manual:**`, and the rule that a `High` QR has a `CI`, `scripted`, or `deployed` test, with its documented manual exception | `quality-requirements-requirements.md`'s test section, `**Since: W5**`                                           |
| QRT progress           | `## Quality Requirement Testing Plan` in `docs/project-plan.md`, with status, last check, planned sprint, and evidence; the release claim; and the weekly-report pointer                                          | `planning-requirements.md`, `releases-requirements.md`, and `weekly-report-requirements.md`, `**Since: W5**`     |
| CI                     | `actionlint` over `.github/workflows/`, the product-code CI rule, and the Definition of Done's pull request item                                                                                                  | `repository-requirements.md` and `definition-of-done-requirements.md`, `**Since: W5**`                           |
| Unit tests             | The product-code CI's automated tests, with no minimum                                                                                                                                                            | `repository-requirements.md`'s W5 CI block and the testability `QR-nn`'s `QRT`, `**Since: W5**`                  |
| Environments           | Nothing: the production deployment was a syllabus deliverable with no rule.                                                                                                                                       | `repository-requirements.md`'s `## Environments And Deployment`, `**Since: W5**`                                 |
| Deployment             | The production deployment in Week 5, with no artifact.                                                                                                                                                            | `repository-requirements.md`'s `## Environments And Deployment` and `docs/deployment.md`, `**Since: W5**`        |
| Milestones             | Nothing: Week 3 required only `MLS-03`, and further milestones were the team's choice.                                                                                                                            | `assignments/assignment-5.md` only; `planning-requirements.md` changes no rule                                   |
| The two new stories    | None: the Week 2 and Week 4 rules own the story form.                                                                                                                                                             | `assignments/assignment-5.md` only; the story rules already cover the form, and no rule changes                  |
| Codebase design        | None.                                                                                                                                                                                                             | `assignments/assignment-5.md`'s exercise and the team's chosen place to document features                        |
| Release, review, retro | None: the release rule, the Sprint Review, the retrospective, and the AI usage report already exist.                                                                                                              | `releases-requirements.md`, `customer-meetings-requirements.md`, the existing ceremony rules, and the assignment |

No rule is new: the plan only reads the existing `adr-requirements.md` `**Addresses:**` list as excluding `QRT-nn`, and `A5-DEC-018` records that reading.
The milestone minimum, the two new stories, and the codebase design exercise are the assignment's week-specific minima rather than new obligations in a requirements file.

The component and sequence views do not move: no week requires them, so the architecture document's required views are the context diagram and the container view, and this plan writes none.
The architecture document keeps the diagram conventions Assignment 4 wrote, because the context and container views still use them.

The boundary between the two plans:

- Assignment 4 keeps the architecture document: `docs/architecture/README.md` links the drivers, holds the container view with its responsibilities and the diagram conventions, holds the ADR index, and links the product vision for the scope it serves, and the links themselves are the chain, so no document restates it.
- Assignment 4 introduces `**Containers:**` on the FR and ADR records, naming the C4 containers from its container view; no later view refines that set, so the fields are checked against it and against nothing else.
- The context diagram stays where Week 2 put it, under `## System Context` in `docs/product-vision.md`.
  It is the architecture's first C4 view, and its rules are the Week 2 rules, which did not move.
- Assignment 4's drivers section and ADR index point at where the chain's facts are recorded, per [Traceability Into Later Weeks](../../requirements/general-requirements.md#traceability-into-later-weeks).
  This plan adds the one link to the testing plan in the quality requirements index, so the architecture document never restates when a test passes.
- Assignment 4's quality requirements have no tests.
  The rule that every active high-priority `QR-nn` has at least one `QRT-nn` is `**Since: W5**`, so a Week 4 QR is finished when its scenario is written.
- Assignment 5 owns the tests, the testing plan, the environments and the deployment, the unit tests and the CI, the milestones and the two new stories, the codebase design exercise, `REL-05`, the Sprint Review, the retrospective, and the AI usage report.
- Week 5 has no pitch deck: the deck is Week 6's, the in-class presentations are in the Week 7 class, where a near-final Week 6 deck is shown before the final one is submitted on 7 November, and no repository artifact or requirement is designed for the deck here.

## Design Decisions

The tests live inside the requirement they prove, their status lives in one plan table, and CI is where the tests and the workflow checks run.
The week then puts the product in its staging and production environments, adds the milestones and stories that carry the increment, asks the team how it documents features and names interface elements, and makes the release claim only what its tests verified.

- **Scope.**
  Assignment 5 is the whole week outside the pitch deck: the QRTs, the testing plan, the CI checks and the unit tests, the environments and the manual deployment to the university VM, at least two plan milestones and two new stories, the codebase design exercise, `REL-05`, the Sprint Review, the retrospective, and the AI usage report.
  Week 5 has no pitch deck, so there is no Week 5 Moodle presentation and no deck artifact; the Week 6 deck stays Week 6's, a near-final version is presented in the Week 7 class, and the final one is submitted on 7 November.
- **QRT.**
  A quality requirement test is a `## QRT-nn` section inside its `QR-nn` file, after the QR's `## Scenario`, numbered within that QR from `QRT-01` upward and never globally unique.
  Its heading is `## QRT-nn` and its anchor is `#qrt-nn`, and the QR file supplies the scope, so its identifier is the pair `QR-01 QRT-02`; cite it as that pair, and link it by its repository-relative path, such as `docs/quality-requirements/qr/QR-01.md#qrt-02`.
  It is not a file of its own, so `quality-requirements-requirements.md` owns the requirement and its tests together, as `user-stories-requirements.md` owns a story and its acceptance criteria.
- **The test's shape.**
  Its first line below the heading is the test in one sentence.
  It carries `**Status:**` first, then `**Level:**`, `**Runs at:**`, `**Why Manual:**` only on a manual test, and `**Dropped:**` only on a dropped test, in that order.
  Its body is a numbered procedure and one `**Pass when:**` criterion, which restates the QR's response measure in a form a stranger can run.
- **The test's status.**
  `**Status:**` is the test's own state, `Active` or `Dropped`, so it follows the identifier rules rather than being an exception to them.
  It is not the test's result: `Passes`, `Fails`, and `Not verified` are the testing plan's `Status` column, and `Dropped` in that column means the QRT itself is dropped rather than a check result; the test itself carries no `**Checked:**`, `**Planned for sprint:**`, or `**Evidence:**`.
  A dropped test keeps its heading, its first line, its level, its `**Runs at:**`, its `**Why Manual:**` when it is manual, its procedure, and its pass criterion, sets `**Status:**` to `Dropped`, adds `**Dropped:**` with the date and reason, and has a testing-plan row that says `Dropped` with no evidence.
- **The levels.**
  `**Level:**` is `CI`, `scripted`, `deployed`, or `manual`.
  `CI` runs in the product CI workflow, in the integration environment; `scripted` is a script or command a person runs in the development environment; `deployed` is an automated check run by a person against the staging deployment on the university VM, because the product CI cannot reach the university network; `manual` is a person's inspection, with no environment of its own.
  `**Runs at:**` says what runs the test in one line: the workflow and step for `CI`, the script path or the command for `scripted`, the staging environment and the command or tool for `deployed`, and the inspection step for `manual`.
  The staging address is not written in the public file: `**Runs at:**` names the staging deployment on the university VM, any address in the command is a placeholder or an environment variable such as `$STAGING_URL`, and the Moodle submission records the real address.
  A `High` business-importance QR must have at least one `CI`, `scripted`, or `deployed` test, so a command checks the requirement rather than a person.
  When no automated form is possible, a `manual` test is the documented exception: it carries `**Why Manual:**`, the team declares the deviation naming the requirement, and the testing plan and the release treat it like any other test.
  A lower-importance QR may have a `manual` test, which carries its `**Why Manual:**` reason in one sentence.
  A manual inspection of the deployment is `manual`, carries `**Why Manual:**`, and does not count as a `deployed` test.
- **Every high-priority QR.**
  Every active `High` business-importance `QR-nn` has at least one `QRT-nn`; a lower-importance `QR-nn` may have one, and a dropped `QR-nn` needs none, because its requirement is no longer met or tested.
  The mandated testability `QR-nn` has a `CI` test that runs the suite from a clean checkout, and a broken module the requirement names fails it.
- **The testing plan.**
  `docs/project-plan.md` gains `## Quality Requirement Testing Plan` after `## Releases` and before `## Progress Monitoring`.
  It is one table with the columns `QR`, `QRT`, `Status`, `Checked`, `Planned for sprint`, and `Evidence`, one row per `QRT-nn`, ordered by the quality requirements index and then by `QRT-nn`, with the `QR` and `QRT` cells linking the requirement and the test's section.
  The quality requirements index links this section once, and its rule for that link moves from `**Since: W4**` to `**Since: W5**` rather than gaining a second rule.
- **The plan's statuses.**
  The testing plan's `Status` is the test's result at its last check: `Passes`, `Fails`, or `Not verified`, where `Not verified` means no check is recorded; `Dropped` means the QRT itself is dropped.
  `Checked` is the `SPRINT-nn` of that check, and `None` on a `Not verified` or `Dropped` row.
  `Planned for sprint` is exactly one `SPRINT-nn`, linked through the plan, and `None` on a `Dropped` row.
  `Evidence` is required for `Passes` and `Fails`, says `None` on a `Not verified` or `Dropped` row, and links the proof the test's level requires, per `quality-requirements-requirements.md`'s evidence rule.
  A row that is not `Passes` keeps its result; a `Fails` row keeps its `Checked` and `Evidence`, a `Not verified` row keeps its planned sprint, and a `Dropped` row has `None` for `Checked`, `Planned for sprint`, and `Evidence`.
- **Evidence follows the level.**
  The quality requirements own what evidence each `CI`, `scripted`, `deployed`, and `manual` test must produce.
  A `CI` test links its run on `main`.
  A `scripted` test records the command and its output in a dated section of `reports/week-NN/README.md` or in a week-local supporting file the report links.
  A `deployed` test records the command or tool, the staging environment, the output, the measured value, and the commit it ran against in the same place, with a screenshot when the result is visual; it does not name a real address, and its command uses a placeholder or an environment variable for the address.
  A `manual` test records what was inspected, by whom, and what was observed in the same place, with a screenshot when the evidence is visual.
  The testing plan's `Evidence` cell links that evidence; it never holds the output itself.
- **Tests inherit the priority.**
  A test is not prioritized separately: it inherits its QR's priority, the testing plan's rows follow the order of the quality requirements index, and `Planned for sprint` is the only schedule.
- **Progress.**
  `## Progress Monitoring` gains a sentence that the weekly review reads the testing plan's rows that are not `Passes`.
  The weekly report's summary points at the testing plan rather than copying its rows, and the plan remains the one place the rows live.
- **The implemented tests.**
  The assignment defines a `QRT-nn` for every active `High` QR, and implements at least two this week: the testability `QR-nn`'s `CI` test and one other active `QR-nn`'s test.
  The other test is on a `High` business-importance QR other than the testability requirement when the matrix has one, and on the next active row by the matrix's sort with a declared deviation when it does not.
  It is `scripted` or `deployed`: use `deployed` when staging is available, and `scripted` when it is not; the testability requirement's `CI` test does not count as the other test.
  An additional implemented test or a second `High` QR is optional, and the assignment's minimum is a week-specific bar, not a requirement rule.
- **Releases claim only verified quality.**
  A release body links the `QRT-nn` it adds or relies on and claims an active `QR-nn` only when that requirement has at least one non-dropped test and every non-dropped test for it is `Passes` and `Checked` in the release's sprint, with evidence from the released state: the `CI` run on the released commit, the `scripted` command and its output on it, the `deployed` run against the staging deployment of that commit, or the `manual` inspection of it.
  The release body links the tests' sections, and a `QR-nn` name alone is no longer a quality claim.
  The body's shape is the team's choice; the rule fixes what it must contain, not its headings or order.
  The changelog stays the user-facing record: a test, a workflow, or a deployment is not a changelog entry, and the release body carries the technical verification.
- **No further views.**
  The architecture document's required views end at Assignment 4's container view: no week requires a component view or a sequence view, so this week adds no diagram, no view source, and no diagram rule, and the conventions stay Assignment 4's under `## Diagrams And Legends`.
  A team may draw a further view for itself, but no rule asks for it and no artifact cites it.
  `A5-DEC-009` reverses `A4-DEC-033`'s Week 5 clause and `A4-DEC-001`'s clause that the views are Assignment 5's; the decision records keep their statements, and their `**Status:**` fields name the reversal.
- **Continuous integration.**
  `actionlint` checks `.github/workflows/` on pull requests and on `main`, pinned like any other tool.
  The product-code CI runs every applicable check among linting, formatting, type checking, build, and automated tests, on pull requests and on `main`, pinned like any other tool; a check that does not apply to the product's stack is recorded as not applicable rather than silently skipped.
  The automated tests include the suite the testability `QR-nn` measures: at least one test for each critical module that requirement names, run from a clean checkout, so a broken payment change fails the check.
  The workflow stops at the build and the tests: there is no deployment job, because the product CI cannot reach the university network, and the deployment is manual.
  Both `actionlint` and the product-code CI join the Definition of Done's pull request list, and both land in Week 5, the week the syllabus gives to testing and deployment.
- **The identifier family.**
  `QRT-nn` is a Week 5 family: two digits, scoped to its `QR-nn`, and its identifier is the pair `QR-01 QRT-02`, so the bare number is unique only within its QR.
  It follows rules 10 and 11, so every test carries `**Status:**`, and a dropped test keeps its fields and adds `**Dropped:**`, per [Identifier Rules](../../requirements/general-requirements.md#identifier-rules).
- **The milestones.**
  Assignment 5 asks for at least two plan milestones besides `MLS-03`, due in `SPRINT-05` through `SPRINT-09`.
  A milestone's `**Sprints:**` run may cover one or two sprints, and a run may begin at `SPRINT-04` and end at `SPRINT-05`; no milestone need cover `SPRINT-05`.
  The team chooses the due weeks, and a number follows its due week; a team that already has two milestones due in that range keeps them.
  Each milestone describes the increment its whole run delivers, so a run that extends past `SPRINT-05` does not describe only the Week 5 release.
  `planning-requirements.md` rule 6 keeps the milestone set the team's choice, and this plan adds no `**Since: W5**` sentence there.
- **The new stories.**
  The assignment asks for at least two new `US-nn`: at least one for the `SPRINT-05` increment, each in the Week 4 shape: the `User Story` type, a `MoSCoW` value, `Story Points`, `### Specified by`, checkbox `AC-nn`, and the `Traces to` and `Rests on` lists when they apply.
  The story for `SPRINT-05` is scheduled, built, and shown at the Sprint Review; the other is refined for `SPRINT-06` and stays in the product backlog with no milestone.
  A story is a user's need and not a feature name: the two stories say what the increment's users need.
  No requirements rule changes, because the Week 2 and Week 4 rules already own the story's form; the count is the assignment's week-specific minimum.
- **The codebase design exercise.**
  The assignment carries an exercise, not a report rule: the team answers, in the place where it documents features, how it documents features for users and for developers, where and why there, how the documentation connects to the stories, the `FR-nnn` files, the `ADR-nnn` records, and the glossary, and how it would update the documentation when a feature changes.
  It also asks how the team would tell a coding agent to fix one element on one screen, such as capitalizing the first letter in the word "login" on the sign-in page, and which naming scheme it would use to give each element a precise name.
  The team records its answer wherever it documents features, and the weekly report's coverage table links it.
  There is no fixed path, no `docs/features.md` requirement, no report section, no new identifier family, and no feature issue type; `docs/features.md` is one possible place, not a required one.
  A feature name that the project uses in its own sense may be a `docs/glossary.md` term, and the existing `**Defined by:**` rule links whatever artifact defines it.
- **The environments.**
  Four environments, from lecture 5: development, the team's local machines, where the `scripted` tests run; integration, the product CI on GitHub Actions, where the `CI` tests run; staging, the VM's production-like deployment, where the `deployed` test runs; and production, the VM's live deployment, where the customer uses the product.
  The mapping is not one-to-one: the three automated levels run in development, integration, and staging, `manual` has no environment of its own, and production is where the customer works with the product rather than where an automated `QRT-nn` runs.
  The university provides one VM per team; the team gets it from the university portal, recreates it, sets its own password, and connects over SSH; the customer, who is the instructor, can reach it on the university network.
  Production is reached from the university network at its IPv4 address, and there is no domain name; that is what "live accessible" means for this course.
  Staging and production are separate deployments on the VM, with separate configuration and secrets, and staging represents production well enough that a passing test there is the confidence the requirement holds in production.
  The VM's availability is announced in the group chat; when it is not available, the deployment is postponed to when it is, the report declares the postponement, and the other implemented test is `scripted` rather than `deployed`.
- **`docs/deployment.md` is not `docs/setup.md`.**
  `docs/setup.md` is the clean-checkout guide a developer follows to install, configure, run, and test the product locally, per [Setup And Run Instructions](../../requirements/repository-requirements.md#setup-and-run-instructions).
  `docs/deployment.md` is the deployment runbook: the four environments, the VM and its access, the staging and production configuration, the deploy, the verification, and the rollback.
  It links `docs/setup.md` for the build and the run and repeats none of it, and it carries no real IPv4 address, host name, password, token, or secret; it uses placeholders such as `<university-vm-ipv4>`, the deploy command reads the host from an environment variable, and the real address is private-only and goes in the Moodle submission.
- **The deployment.**
  Deploy the release candidate to staging, run the other implemented `QRT-nn` at its level, deploy the same commit to production, and verify the core task.
  Show the production deployment at the Sprint Review.
  After the review, merge any same-week rework, redeploy it to staging, rerun the other implemented test at its level, redeploy the same final commit to production, and verify it; only that final production deploy counts as the released state's evidence.
  When the rework is not finished before the deadline, it is deferred to `SPRINT-06`, and the reviewed, tested commit is the release commit.
  Cut `REL-05` on the final production commit after the review and the rework, and update the changelog, the plan's `REL-05` line, and the report.
  No secret, key, or `.env` is committed; `.env.example` carries the shape, and the VM's configuration is installed outside the repository.
- **The QA evidence does not name the address.**
  The staging and production addresses are private-only and recorded in the Moodle submission, not in a public file: `docs/deployment.md` uses placeholders, the deploy command reads the host from an environment variable, and the QRT's `**Runs at:**` names the staging environment and the command or tool.
  The public report says the deployment is reached from the university network and points at the Moodle submission for the address.
  No link is excluded from the link check, no real address is committed, and the weekly report's rule 8 remains the only rule for an exclusion a team nevertheless needs.
- **The unit tests.**
  The product's automated test suite covers the critical modules the testability `QR-nn` names, with at least one test for each, and it runs in the product CI.
  The testability requirement's `QRT` is a `CI` test that runs the suite from a clean checkout, and a broken payment change fails it.
  The suite is not a `QRT` family of its own: it is the product's tests, and the quality requirement that demands it is the testability one.
- **The VM is late.**
  When the VM is not available, the deployment is postponed to the date the group chat announces, the report declares the postponement, and the other implemented test is `scripted` with its command and output.
  The rest of the week proceeds, the Sprint Review shows the local product and the deployment plan, `REL-05` may claim the other QR through the `scripted` test, and the row is upgraded to `deployed` with staging evidence when the VM becomes available in the same sprint.
  The deployment itself stays `Not verified` with `Planned for sprint: SPRINT-05` until the VM is available, and the release claims no QR through the deployment alone.
- **The release body and the changelog.**
  The changelog records user-visible changes, per the existing rule; the release body records the technical verification, including the tests the release adds or relies on and the `QR-nn`s it claims, in the team's shape.
  This keeps the changelog user-facing without making it a technical log.
- **The QRT citation.**
  Cite a test as `QR-01 QRT-02`, and link it as `QR-01.md#qrt-02`, consistent with `FR-012 AC-02`.
  The TODO's hyphenated `QR-01-QRT-01` is not adopted, because the acceptance criterion's existing form is the space-separated pair.
- **The release number and version.**
  `REL-05` is the release at the end of Week 5, numbered after its sprint; the first was `REL-03`, and the number counts sprints rather than a fixed release sequence.
  `releases-requirements.md` owns the rule that a team may cut more than one release in a sprint, and `REL-nn` names the last one that sprint.
  The version is the team's choice under Semantic Versioning; the full example uses `v0.5.0` to continue the meeting-booking example, not as a scheme the course fixes.
- **The guides.**
  The method is a new `guides/quality-requirement-tests.md`, because writing and checking the tests is the practice this week adds, and a new `guides/deployment-and-environments.md`, because the environments and the VM are the week's other new practice.
  `guides/quality-and-architecture.md` gains a short `## Step 8: Document The Features` section before `## Common Mistakes`, and `guides/planning-and-tracking.md`'s milestone step notes the assignment's two further milestones.

## Changes To The Requirements

These are changes to files Assignment 4 creates or edits: additions, and one confirmation that a removal is already made.
No requirements file is added here.

### `quality-requirements-requirements.md`

- A new `## Quality Requirement Tests` section, `**Since: W5**`, after `## The Quality Attribute Scenario` and before `## The Allowed Pairs`, with its ToC entry.
- The test's placement and numbering as a `## QRT-nn` section inside its QR's file, its fields, its levels, its `**Runs at:**`, its `**Why Manual:**`, its procedure and pass criterion, the evidence each level requires, its dropped form, and the rule that every active `High` business-importance `QR-nn` has at least one `QRT-nn`.
- The test's `**Status:**` and `**Dropped:**` follow the identifier rules rather than being restated here, and the sentence that the check result lives in the testing plan, not on the test.
- The evidence rule: what a `CI`, `scripted`, `deployed`, or `manual` test must produce, so the testing plan's `Evidence` cell links it rather than restating it.
- The `deployed` level: the staging deployment on the university VM, the command or tool in `**Runs at:**`, the product CI's inability to reach the university network, the address in the Moodle submission, and the rule that a manual inspection of the deployment is `manual` rather than `deployed`.
- The `High` business-importance rule: at least one `CI`, `scripted`, or `deployed` test; when no automated form is possible, a `manual` test is the documented exception, carrying `**Why Manual:**` and a declared deviation naming the requirement, and the release may claim the requirement through a passing test of any level.
- The one new clause on the priority matrix's `Status` rule: it is never a test's result; a test's result and last check are in the testing plan only.
- The quality requirements index's rule 8 moves from the `**Since: W4**` block to a `**Since: W5**` block: it links `docs/project-plan.md#quality-requirement-testing-plan` once, so the index is where the testing plan is reached and the plan is where a test's status is maintained.
- The full example gains a `QRT-nn` for each of its two active High QRs: `QR-01` with one `deployed` test (`scripted` when staging is unavailable), and `QR-02` with the testability `CI` test; `QR-03` stays `Dropped` and has none.
  The full example shows the `QR-02` file and its test, and its index links the testing plan once.

### `general-requirements.md`

- Rule 1 gains `QRT-nn` as the Week 5 family, so the identifier family list is complete.
- A new `**Since: W5**` block after rule 14, with four new numbered rules: `QRT-nn` takes two digits; it is scoped to its `QR-nn`, so its identifier is the pair `QR-01 QRT-02`, its heading is `## QRT-nn` and its anchor is `#qrt-nn`, and rule 2 applies to the pair rather than the bare number; it follows rule 10, so it carries `**Status:**` `Active` or `Dropped`; and it follows rule 11, so a dropped test keeps its heading, first line, and other fields, and adds `**Dropped:**` with the date and reason.
- [Traceability Into Later Weeks](../../requirements/general-requirements.md#traceability-into-later-weeks) gains the test row: a `QRT-nn` traces to its `QR-nn`, and the testing plan carries its result.
  The row sits in the table, not under an earlier week's rule.

### `planning-requirements.md`

- `## Quality Requirement Testing Plan` after `## Releases` and before `## Progress Monitoring`, with its `**Since: W5**` marker; the ToC gains the testing plan entry, and the parts list gains the testing plan between the sprints and progress.
- This file owns the table: its columns, its order, its result values, and its rules for `Checked`, `Planned for sprint`, and the `Evidence` cell.
  The content that cell links is `quality-requirements-requirements.md`'s.
- `## Progress Monitoring` gains the sentence that the weekly review reads the rows that are not `Passes`, and keeps its place as the last part.
- `## Milestones` changes no rule: rule 6 keeps the milestone set the team's choice, and the assignment's at-least-two-milestones minimum is not written here.
- The full example becomes a plan after Week 5, with the two further milestones besides `MLS-03`, due in `SPRINT-05` through `SPRINT-09`, the testing plan's two `Passes` rows checked in `SPRINT-05` — the testability `CI` test and the other High QR's `deployed` test, or its `scripted` fallback — and the later sprint sections and dates that go with it.

### `releases-requirements.md`

- [The Changelog](../../requirements/releases-requirements.md#the-changelog) gains a `**Since: W5**` sentence that the changelog is user-visible only: a test, a workflow, or a deployment is recorded in the release body, not in the changelog.
- [Cutting A Release](../../requirements/releases-requirements.md#cutting-a-release) gains the `**Since: W5**` claim rule: the release body links the `QRT-nn` the release adds or relies on and claims an active `QR-nn` only when that requirement has at least one non-dropped test and every non-dropped test for it is `Passes` and `Checked` in the release's sprint, with evidence from the released state.
  The body's shape is the team's choice.
- [Cutting A Release](../../requirements/releases-requirements.md#cutting-a-release) also gains the `**Since: W5**` multiple-release rule: a team may cut more than one release in a sprint; the sprint's `REL-nn` is the last release cut in that sprint, and earlier releases in the same sprint are not numbered `REL-nn`.
- The full example becomes the release after the fifth sprint, `REL-05`: a `[0.5.0]` section, the example version, for the user-visible changes and a release body that records a test it adds and a `QR-nn` it claims, in one possible shape.

### `weekly-report-requirements.md`

- A new `**Since: W5**` rule 15, after rule 14: the report's summary points at `docs/project-plan.md#quality-requirement-testing-plan` for the tests that are not `Passes`, and copies none of the rows.
- The full example, which Assignment 4 sets in Week 04, becomes a Week 05 report: its summary carries the pointer, and its coverage table lists the Week 5 deliverables, including the testing plan, the deployment, the unit tests and the CI, the milestones and the new stories, the codebase design exercise, and `REL-05`.
- No rule carries a feature-documentation section: the exercise is the assignment's, and the report's summary rule and coverage-table rule stay as they are.

### `architecture-requirements.md`

- No rule is removed: the Week 4 work already removed the Week 5 forward reference to `## Component View` and `## Sequence View`, and `## Container View` already says it is the last required view.
  The implementation verifies that removal in [Tests And Validation](#tests-and-validation) and changes no numbered rule.
- [Diagrams And Legends](../../requirements/architecture-requirements.md#diagrams-and-legends) already names the container view as the view its tool recommendation serves, so no edit is needed.
- The full example is unchanged, because it carries no view this work removes.

### `repository-requirements.md`

- The `**Since: W5**` CI block gains `actionlint` over `.github/workflows/` and the applicable product-code checks spelled out: linting, formatting, type checking, build, and automated tests, on pull requests and on `main`, each required when it applies to the product's stack.
  It replaces the "formatting or type checking" wording with the separately named checks.
- The block says the workflow stops at the build and the tests: the deployment is manual, because the product CI cannot reach the university network.
- The block keeps its place in [Continuous Integration](../../requirements/repository-requirements.md#continuous-integration), after the Markdown check, and pins its third-party actions per [Pinning Third-Party Actions](../../requirements/repository-requirements.md#pinning-third-party-actions).
- The automated tests include the testability `QR-nn`'s critical modules: at least one test for each module that requirement names, run from a clean checkout, so a broken payment change fails the check.
- A new `## Environments And Deployment` section, `**Since: W5**`, after `## Continuous Integration` and with its ToC entry, owns the four environments, the university VM and its portal, the SSH access and the customer's IPv4 access on the university network, the staging and production separation, `docs/deployment.md` and its difference from `docs/setup.md`, the manual deploy, verification, and rollback steps, the secrets rule, and the rule that no real address is committed.
  It links [Sensitive Information Reference](../../requirements/visibility-requirements.md#sensitive-information-reference) for where the addresses go.
- No link-checking rule changes: the address is not a public link, so there is nothing to exclude, and the weekly report's existing rule covers an exclusion a team nevertheless needs.

### `visibility-requirements.md`

- [Sensitive Information Reference](../../requirements/visibility-requirements.md#sensitive-information-reference) gains a `**Since: W5**` row: the staging and production deployment addresses are Moodle only.
  `docs/deployment.md`, the QRT's `**Runs at:**`, and the public report carry no real address, and the Moodle wrapper carries it.

### `definition-of-done-requirements.md`

- The `**Since: W5**` pull request item names `actionlint` and the applicable product-code CI checks among the checks that must be green.
- The full example's `## Pull Request` list gains the item.

### `customer-meetings-requirements.md`

- [Showing Working Software](../../requirements/customer-meetings-requirements.md#showing-working-software) gains a `**Since: W5**` sentence: the product shown is the deployed production instance on the university VM, reached from the university network, and the other implemented `QRT-nn`'s result is shown with it at its `deployed` or `scripted` level; when the VM is unavailable, the team shows the local product and declares the deviation.

### No Change

- `adr-requirements.md` changes nothing: its `**Addresses:**` rule already lists only `FR-nnn` and `QR-nn`, so the record cites no `QRT-nn` and reaches a test through the `QR-nn` it addresses; `A5-DEC-018` records the reading.
- `user-stories-requirements.md` and `sprint-ceremonies-requirements.md` change nothing.
  The two new stories use the Week 2 and Week 4 rules, the planning and the retrospective use the existing ceremony rules, and the count is the assignment's week-specific minimum.
- `issue-tracking-requirements.md` changes nothing: the two new stories carry the existing fields, the `SPRINT-05` GitHub milestone already exists, and the plan milestones are plan documentation.
- `minimum-usable-product-requirements.md` changes nothing: its rule 7 already says the production deployment arrives in Week 5, and this plan makes that deployment the week's.
- `glossary-requirements.md` changes nothing: the codebase design exercise creates no term, and a team that names a feature in the glossary uses the existing `**Defined by:**` rule.

## New And Edited Guides

`guides/quality-requirement-tests.md` follows the shape of `guides/planning-and-tracking.md`: a short preamble, `## What You Produce`, numbered `## Step N:` sections with their `###` sub-sections, and `## Common Mistakes`.
The steps:

1. **Make the requirement testable.**
   The response measure a stranger can run, the pass condition, and the difference between a test and a restatement of the requirement.
2. **Write the test.**
   The `QRT-nn` section inside the QR's file, its `**Status:**`, `**Level:**`, and `**Runs at:**`, its `**Why Manual:**` when no command can run it, its numbered procedure, and its `**Pass when:**` criterion.
3. **Pick the environment the test needs.**
   The levels and the environments they run in: development for `scripted`, integration for `CI`, staging for `deployed`, and no environment of its own for `manual`; the `deployed` test on the VM; the `scripted` fallback when staging is unavailable; and why a `deployed` test is not a manual inspection.
4. **Record the progress.**
   The testing plan's row, its result, its last check, its planned sprint, and the evidence its level requires; what the weekly report points at; and what the test itself must not carry.

`## Common Mistakes` covers a test that restates the requirement, a manual test with no reason, a `deployed` test that is really an inspection, a result on the test instead of the plan, output pasted into the `Evidence` cell, a deployed test run against production, a real address in a public file, an ADR that cites a `QRT-nn`, and a release that claims a quality requirement its tests have not verified.

`guides/deployment-and-environments.md` follows the same shape.
The steps:

1. **Map the four environments.**
   Development, integration, staging, and production, what each runs, and which environment each `QRT-nn` level runs in, with `manual` having none of its own.
2. **Prepare the VM.**
   The university portal, recreating the VM, setting its password, the SSH access, the IPv4 address in the Moodle submission, the ports, and the customer's access from the university network.
3. **Configure the deployment.**
   The `.env.example`, the secrets outside the repository, the build, and the deployment directory or service.
4. **Deploy to staging and run the deployed test, or run the scripted fallback.**
   The other implemented `QRT-nn` at `deployed` when staging is available, or at `scripted` when it is not; the command or tool, the target, and the evidence.
5. **Deploy to production and verify.**
   The same commit, the core-task smoke check, the rollback, and the release tag after the review and rework.
6. **Document it in `docs/deployment.md`.**
   The environment table, the placeholders instead of addresses, the access, the configuration, the deploy, the verification, and the rollback, with the real address in the Moodle submission.

`## Common Mistakes` covers a committed secret, a real IPv4 address in a public file, staging that does not represent production, a test run against production, a deployment nobody else can repeat, an assumed domain name, a link check pointed at the private address, and a deployment document that stops at the first successful run or copies `docs/setup.md`.

`guides/quality-and-architecture.md` gains a `## Step 8: Document The Features` section before `## Common Mistakes`: a feature is a capability rather than an artifact; its need is a story, its behavior a functional requirement, its decision an ADR, and its name a story title, an FR title, a glossary term, or a label in whatever place the team documents features; the exercise asks the team to choose and explain that place and the element-naming scheme, and no index is required.

`guides/planning-and-tracking.md`'s [Step 2](../../guides/planning-and-tracking.md#step-2-choose-the-roadmaps-zoom-level) notes that Assignment 5 asks for at least two further milestones besides `MLS-03`, due in `SPRINT-05` through `SPRINT-09`, while the requirement still leaves the milestone set to the team.

## The Parts Assignment 5 Carries

`assignments/assignment-5.md` is written as a delta against `requirements/`, in the shape `assignment-4.md` uses: the header, `## Objectives`, the numbered parts, `## What Good Looks Like`, the repository report with its coverage table, the Moodle wrapper, the submission procedure, and the checklist.
The header carries Week 5's hard deadline, Saturday 31 October 2026 at 23:59, with no soft deadline.

The parts, in the order the work succeeds in:

- **Part 1: Plan The Sprint, Define The Milestones, And Add The Stories.**
  `SPRINT-05`'s goal, `**Due:**` `2026-10-31`, `**Sprint Backlog:**` link, and `**Planned Velocity:**`; at least two plan milestones besides `MLS-03`, due in `SPRINT-05` through `SPRINT-09`, each with its `**Due:**`, `**Sprints:**`, `**Advances:**`, and description, and a run that may cover two sprints; at least two new `US-nn` in the Week 4 shape, at least one scheduled in `SPRINT-05` and one refined for `SPRINT-06` with no milestone.
- **Part 2: Add The Unit Tests And The CI Checks.**
  `actionlint` over `.github/workflows/` and every applicable product-code check among linting, formatting, type checking, build, and automated tests on pull requests and on `main`, each third-party action pinned; the team states which of the five checks do not apply to its stack and why; the automated test suite covering the critical modules of the testability requirement; the Definition of Done's pull request list updated; and the latest `main` run green, with no deployment job.
- **Part 3: Deploy To The VM And Document The Environments.**
  `docs/deployment.md`, distinct from `docs/setup.md`, with its four environments, the VM's portal and SSH access, the configuration, the staging and production deployments, the deploy and verification steps, the rollback, and placeholders instead of addresses; the release candidate deployed to staging and production when the VM is available, and the core task verified.
- **Part 4: Write The Quality Requirement Tests.**
  A `QRT-nn` definition inside every active High QR's file, with its `**Status:**`, `**Level:**`, its `**Runs at:**`, its `**Why Manual:**` when it is `manual`, its numbered procedure, and its `**Pass when:**` criterion; every `High` QR has a `CI`, `scripted`, or `deployed` test, or the documented manual exception with its `**Why Manual:**` and declared deviation; implement the testability requirement's `CI` test and at least one other active QR's test at `scripted` or `deployed`, using `deployed` when staging is available; the other test is on a `High` business-importance QR other than the testability requirement when the matrix has one, and on the next active row by the matrix's sort with a declared deviation when it does not.
- **Part 5: Run The Tests And Record The Testing Plan.**
  The tests you wrote run at their levels; `docs/project-plan.md`'s `## Quality Requirement Testing Plan` with one row per test, its result, its last check, its planned sprint, and the evidence its level requires, linked from the plan's `Evidence` cell; the testability `CI` test and the other test implemented at `scripted` or `deployed` have `Passes` rows whose `Checked` is `SPRINT-05` this week; the quality requirements index links the plan once; and every row that is not `Passes` keeps its result.
- **Part 6: Answer The Codebase Design Exercise.**
  The team's answer, recorded where it documents features, to how it documents features for users and developers, where and why there, how the documentation connects to the stories, the `FR-nnn` files, the `ADR-nnn` records, and the glossary, how it updates the documentation, and how it names interface elements so a coding agent can fix one thing on one screen.
- **Part 7: Carry Out The Week 4 Action Points And Open Questions.**
  Each Week 4 action point due in Week 5 carried out or explained, its outcome carried into the artifact it changed, and each Week 4 open question answered or carried forward, per [Meeting Report](../../requirements/customer-meetings-requirements.md#meeting-report).
- **Part 8: Validate With The Customer.**
  The Sprint Review on the production deployment, reached from the university network; the testing plan's rows and the other implemented test at its `deployed` or `scripted` level shown with the working software; the meeting script and report; the story verdicts recorded as `DEC-nnn`; and the action points due in Week 6.
- **Part 9: Redeploy And Retest After Same-Week Rework.**
  If the review asks for same-week rework, merge it, redeploy it to staging, rerun the other implemented test at its `deployed` or `scripted` level, redeploy the same final commit to production, and verify it; if there is no rework, the reviewed commit is final; if the rework cannot finish before the deadline, defer it to `SPRINT-06` and keep the reviewed commit as the release commit.
- **Part 10: Cut The `REL-05` Release.**
  The tag on the final production commit, the changelog's version section such as `[0.5.0]`, the release body with the tests and the claimed `QR-nn`s in the team's shape, the plan's `REL-05` line, and the sprint milestone closed after any open issue is rescheduled.
- **Part 11: Close The Sprint And Hold The Retrospective.**
  `**Actual Velocity:**` in `### SPRINT-05`, and `reports/week-05/sprint-retrospective.md` with its four sections and the actions carried from Week 4.
- **Part 12: Report On Your AI Usage.**
  `reports/week-05/ai-usage.md`, per [AI Usage Report](../../requirements/weekly-report-requirements.md#ai-usage-report).

The assignment ends with the repository report, the Moodle wrapper, the submission procedure, and the checklist, in `assignment-4.md`'s shape.
The report's summary carries the deployment, the milestones, `REL-05`, the CI checks that do not apply to the stack and why, and what moved out of the sprint; its coverage table carries the sprint plan and milestones, the new stories, the QRTs, the testing plan, the unit tests and the CI, the deployment, the codebase design exercise, the Week 4 action points and open questions, the meeting script and validation, `REL-05`, the retrospective, and the AI usage; its repository evidence links a merged pull request and the latest green link-check, product-code CI, `actionlint`, and Markdown runs on `main`; and its deviations declare a VM that was unavailable, a `scripted` fallback where staging was unavailable, a test that could not be automated, a High-QR shortage, or rework deferred to `SPRINT-06`.
The Moodle wrapper carries the project and the team number, the member table, the permalink to `reports/week-05/README.md`, the production and staging addresses, which are private-only, with the note that the customer reaches them from the university network, the meeting recording link or one line saying why there is none, the meeting transcript when the customer refused publication, and the privacy line; it carries no pitch deck.
The submission procedure merges the report and every file it links into `main`, takes the permalink and the snapshot from that commit, and submits the PDF and the snapshot through Moodle.

### What Good Looks Like

- at least two milestones besides `MLS-03`, due in `SPRINT-05` through `SPRINT-09`, each stating the increment its run delivers;
- every active `High` requirement with at least one defined test, the testability requirement with a `CI` test, and a second implemented test on another active QR at `scripted` or `deployed`, `deployed` when staging is available, with a manual-only `High` requirement carrying its `**Why Manual:**` and a declared exception;
- a test whose `**Status:**` is its own state, whose level matches how it runs, and whose status and evidence live in the testing plan;
- a testing plan that says what is verified, in which environment, when it was last checked, when the rest arrives, and what evidence proves it;
- a deployment document a teammate could redeploy from with the address from the Moodle submission, and a `docs/setup.md` that still gets a clean checkout running without repetition;
- a VM prepared from the portal, reached over SSH, and a production instance the customer opens from the university network, with no real address in the repository;
- a unit test suite that covers the critical modules the testability requirement names and fails when one of them breaks;
- a CI check that is pinned, runs on pull requests and `main`, appears in the Definition of Done, passes on the latest `main`, and deploys nothing;
- a codebase-design answer that leaves one place to find how features are documented, why there, how the documentation stays connected, and how an agent is told which element to change;
- at least two milestones and two stories that make the increment visible: the deployed, verified product, and the needs it serves;
- a release cut after the review and rework, claiming only the quality requirements its tests have verified, on the commit that was finally deployed.

## New Maintainer Decision Log `course/decisions/a5.md`

The file follows the format of `course/decisions/a3.md`: a header paragraph, then `A5-DEC-nnn` entries with `**Status:**`, `**Decision:**`, `**Why:**`, `**Alternatives considered:**`, `**Where it lands:**`, and `**Reverses:**` on the entries that reverse an `A3-DEC` or an `A4-DEC`.

The entries:

1. Week 5 is the whole week outside the pitch deck: the QRTs, the testing plan, the CI checks and the unit tests, the environments and the manual deployment, at least two plan milestones and two new stories, the codebase design exercise, `REL-05`, the Sprint Review, the retrospective, and the AI usage report; Week 5 has no pitch deck, and the in-class presentations are in the Week 7 class, where a near-final Week 6 deck is shown before its 7 November submission.
2. A quality requirement test is a `## QRT-nn` section inside its QR's file, numbered within the QR and owned by `quality-requirements-requirements.md` with the requirement; no separate tests file is added.
3. A test's `**Level:**` is `CI`, `scripted`, `deployed`, or `manual`, `**Runs at:**` says where it runs, and a manual test carries `**Why Manual:**`; the test carries no check result, and the testing plan carries its result, last check, planned sprint, and `Evidence` cell.
4. A `High` QR must have a `CI`, `scripted`, or `deployed` test; when no automated form is possible, a `manual` test is the documented exception, carrying `**Why Manual:**` and a declared deviation naming the requirement, and the release may claim the requirement through a passing test of any level.
5. The testing plan lives in `docs/project-plan.md`'s `## Quality Requirement Testing Plan`, keeps its rows in the order of the quality requirements index, and `planning-requirements.md` owns its rules; the index's link to it moves from Week 4's rule to Week 5's.
6. Tests inherit their QR's priority; there is no separate test priority, and `Planned for sprint` is the only schedule.
7. The evidence the testing plan records for a test follows its level: a `CI` test links its run, a `scripted` test records the command and its output, a `deployed` test records the command or tool, the staging environment, the output, the measured value, and the commit, and a `manual` test records the inspection.
8. A release body links the tests it adds or relies on and claims an active `QR-nn` only when that requirement has at least one non-dropped test and every non-dropped test for it is `Passes` and `Checked` in the release's sprint, with evidence from the released state; the changelog stays user-visible, and the body's shape is the team's choice.
9. The required views are the context and the container, and no week requires a third: the context view stays in the product vision, the container view arrives in Week 4, and the component and sequence views are not required; this reverses `A4-DEC-033`'s Week 5 clause and `A4-DEC-001`'s clause that they are Assignment 5's, and the rest of both entries stands.
10. The container view is the only view that names containers, so the `**Containers:**` fields on the FR and ADR records are checked against the set it lists and no later view can introduce a container the view does not show.
11. The diagram conventions are `A4-DEC-033`'s and stay there: they live under `## Diagrams And Legends`, they serve the context and container views, and no later week adds or restates a diagram rule.
12. Continuous integration is `actionlint` over `.github/workflows/` plus every applicable product-code check among linting, formatting, type checking, build, and automated tests, on pull requests and on `main`, pinned, with its Definition of Done item, and it arrives in Week 5; the workflow deploys nothing.
13. [`A3-DEC-018`](../decisions/a3.md#a3-dec-018-the-vocabulary-and-the-deferrals-follow-the-week-that-teaches-them) is reversed in full, because automated product checks become necessary in Week 5 and its Week 4 clause no longer holds; entry 17 restates the plan's name, the "next product release" wording, the `MVP` vocabulary, the production deployment in Week 5, and the fact that Week 3 shipped without an automated product check.
14. `QRT-nn` is the Week 5 identifier family, scoped to its QR: the identifier is the pair `QR-01 QRT-02`, the heading is the number alone and the QR file supplies the scope, so the bare number is unique only within its QR; it carries `**Status:**` `Active` or `Dropped`, follows rules 10 and 11, and every active `High` business-importance QR has at least one test.
15. The new guides are `guides/quality-requirement-tests.md` and `guides/deployment-and-environments.md`, and the existing quality and planning guides gain the codebase-design and milestone notes.
16. The syllabus's Week 5 heading becomes "Testing, Verification & Deployment"; its objectives and deliverables name the QRTs and testing plan, the CI-only checks, the manual deployment and VM environments, the codebase design exercise, the milestones and two stories, and `REL-05`; "live accessible" means reachable by the customer from the university network; the Submission 5 row matches; Week 5 has no deck, the Week 6 deck deliverable stays, and the in-class presentations move to the Week 7 class, where a near-final deck is shown before the 7 November submission.
17. The surviving `A3-DEC-018` clauses: the syllabus keeps the project plan's name, the "next product release" wording, `MVP` as vocabulary, and the production deployment in Week 5; automated product checks are required from Week 5, and Week 3 shipped without one; the entry's `**Where it lands:**` pointer names the Week 5 CI block in `repository-requirements.md`.
18. An ADR cites no `QRT-nn`: a test proves a requirement, and the decision reaches the test through the `QR-nn` it addresses.
19. Assignment 5 asks for at least two plan milestones besides `MLS-03`, due in `SPRINT-05` through `SPRINT-09`; a run may cover two sprints and may begin at `SPRINT-04` and end at `SPRINT-05`, the team chooses the due weeks, and an existing milestone due in that range counts; `planning-requirements.md` rule 6 keeps the set the team's choice, and no rule is added.
20. The assignment asks for at least two new stories, at least one for the `SPRINT-05` increment and one for `SPRINT-06`; the one scheduled in `SPRINT-05` is built and shown, the other is refined for `SPRINT-06`; the story's form is the existing Week 2 and Week 4 rules, and the count is the week's minimum, so no requirements rule changes.
21. The codebase design exercise is the assignment's: the team answers how and where it documents features and how it names interface elements, in the place it chooses, and the report links it; there is no report rule, fixed path, feature index, feature issue type, or new identifier family, and the glossary's existing `**Defined by:**` rule covers a feature name.
22. The assignment implements at least two tests: the testability `CI` test and one other active QR's test at `scripted` or `deployed`, using `deployed` when staging is available; the other test is on a `High` business-importance QR other than the testability requirement when the matrix has one, and on the next active row by the matrix's sort with a declared deviation when it does not; an additional implemented test or a second High QR is optional.
23. The university VM hosts the staging and production deployments: development is the team's local machine, integration is the product CI on GitHub Actions, staging is where the `deployed` test runs, and production is where the customer uses the product; the team gets the VM from the university portal, recreates it, sets its password, and connects over SSH; the customer reaches production from the university network at its IPv4 address, and there is no domain name.
24. The W5 CI block names the five check types and requires every one that applies to the product's stack; the unit test suite covers the critical modules of the testability requirement, `definition-of-done-requirements.md`'s W5 item names `actionlint` and the applicable product-code CI checks, and the workflow deploys nothing.
25. When the VM is not available, the deployment is postponed to the date the group chat announces, the report declares the postponement, the other implemented test is `scripted`, and `REL-05` may claim the QR through that `scripted` test; the deployment stays `Not verified` with its planned sprint, and the row is upgraded to `deployed` when the VM is available.
26. `docs/deployment.md` is the deployment runbook: the four environments, the VM access, the configuration, the deploy, the verification, and the rollback; it is not `docs/setup.md`, which stays the clean-checkout guide, and it carries no real address, only placeholders.
27. The changelog stays the user-facing record; the release body carries the technical verification, the tests the release adds or relies on, and the `QR-nn`s it claims, in the team's shape.
28. No real deployment address is committed: `visibility-requirements.md` sends the staging and production addresses to Moodle only, `docs/deployment.md` uses placeholders, the QRT's `**Runs at:**` names the staging environment with a placeholder for the address, the Moodle wrapper carries the real addresses, and no link is excluded from the link check.
29. Week 5 has no pitch deck: the deck is Week 6's, the Week 5 Moodle wrapper and checklist carry none, the Week 6 class no longer presents it, and the Week 7 class presents a near-final Week 6 deck before the final one is submitted on 7 November.
30. A quality requirement test is cited as `QR-01 QRT-02` and linked by its repository-relative path, such as `docs/quality-requirements/qr/QR-01.md#qrt-02`, consistent with `FR-012 AC-02`; the TODO's hyphenated `QR-01-QRT-01` is not adopted.
31. `REL-05` is the release at the end of Week 5 and carries no ordinal; the first release was `REL-03`; `releases-requirements.md` owns the rule that a team may cut more than one release in a sprint and `REL-nn` names the last release that sprint; the version is the team's choice under Semantic Versioning, with `v0.5.0` as the example.
32. The release is cut after the Sprint Review and any same-week rework; if rework changes the commit, it is redeployed, retested, and redeployed to production before the tag, and only the final production deploy counts; if the rework is deferred, the reviewed commit is the release commit.
33. The assignment's parts follow the order of work: plan, CI and unit tests, VM and deployment, tests, testing plan, codebase design, action points, review, rework and redeploy, release, retrospective, AI usage.

## Edited Files Outside `requirements/`

- **`course/syllabus.md`**: The ToC entry and the Week 5 heading become `Testing, Verification & Deployment`, and the focus row names the lecture, the CI, the VM deployment, and Submission 5.
  The Class 5 lecture line keeps its CI/CD description, while the Week 5 objectives name the CI checks and the manual production deployment; the objectives also name the QRTs and testing plan, the unit tests and CI, the manual deployment to the university VM, the milestones and two stories, the codebase design exercise, and `REL-05`, and "live accessible" is stated as reachable by the customer from the university network.
  The Week 5 deliverables name the QRTs and testing plan, the unit tests and CI, the staging and production instances with `docs/deployment.md`, the codebase design exercise, the milestones and two stories, and `REL-05`; the pitch deck is removed.
  The Submission 5 row becomes a `Verification & Deployment` summary in the same order, with no deck.
  The in-class presentations move from the Week 6 class to the Week 7 class: the Week 6 class sentence no longer presents the deck or calls it a Week 5 submission, the Week 6 heading and focus row drop "In-Class Product Presentations", the Week 7 heading and class line gain them, the Week 7 class line says the near-final Week 6 deck is presented there and the final deck is submitted on 7 November, and Week 6's own deck deliverable stays.
  No week's objectives or deliverables gain the component or sequence views, and the Week 4 deliverables keep the container view and carry none of the tests, the testing plan, or the CI checks.
  Week 5's hard deadline stays Saturday 31 October 2026 at 23:59, as Assignment 4's schedule change sets it.
- **`README.md`**: The guide rows for `guides/quality-requirement-tests.md` and `guides/deployment-and-environments.md`, the Assignment 5 row, and no new requirements file row.
  The quality, planning, and repository requirement descriptions name the tests and testing plan, the milestone minimum, and the environments and deployment.
- **`SKILL.md`**: The routing rows for the two guides and the Week 5 artifacts, with each guide beside its requirements link; the rows for `docs/deployment.md`, the testing plan, and the QRTs; the front-matter `description` gains the tests, the deployment, and the environments; no feature-index row.
- **`course/rules.md`**: The two new guides in its guide list, and the quality, planning, and repository rows in `## Where The Rules Live` updated for the tests, the testing plan, the milestones, and the environments.
  It gains no artifact routing, because it has none.
- **`AGENTS.md`**: The Repository Map gains `guides/quality-requirement-tests.md`, `guides/deployment-and-environments.md`, and `course/decisions/a5.md`; the quality, planning, and repository rows in the `requirements/` table are updated; the `docs/` Destination Map's Week 5 row is added with `docs/deployment.md`, the testing plan in `docs/project-plan.md`, and the `QRT-nn` sections inside the QR files; the identifier conventions gain `QRT-nn` and the sentence that it is scoped to its QR; the terminology list gains `quality requirement test`, `quality requirement testing plan`, `evidence`, `development environment`, `integration environment`, `staging environment`, `production environment`, `university VM`, `deployed test`, and `deployment runbook`; no `feature index` term and no `docs/features.md` path are added.
- **`TODO.md`**: The A5 items this work answers are recorded when the plan is implemented: the "They should define at least two more milestones" item is answered by the assignment's milestone minimum, and "Define your integration environment" is answered as GitHub Actions.
  The open `actionlint` and product-code CI items are ticked when the rules land, and the already-ticked A4 items for QRT progress and priority stay ticked.
  The stale "story points from week 5" item is corrected, because story points arrived in Week 4.
  The line about the component and sequence views is reworded to say they are not required, not that they were removed, and the feature issue type stays deferred with a note that the codebase design exercise answers the need without one.
  The A5 backlog task breakdown is not created here; it is decided when this plan is approved.
- **`course/decisions/a3.md`**: `A3-DEC-018` gets `**Status:** Reversed by A5-DEC-013`, linked to that entry once `course/decisions/a5.md` exists, and keeps its statement and fields; its `**Where it lands:**` pointer says the product-code CI marker moved from Week 4 to Week 5 and cites `A5-DEC-013`; `A5-DEC-017` restates the clauses that still hold.
- **`course/decisions/a4.md`**: `A4-DEC-001`'s `**Status:**` reads `Accepted, with the container and views clauses reversed; see A4-DEC-033 and A5-DEC-009`, and `A4-DEC-033`'s `**Status:**` keeps its Week 5 views clause reversed, pointing at `A5-DEC-009`; both entries keep their statements and fields, and `A5-DEC-009` restates the clauses that stand.
  `A4-DEC-024`'s `**Where it lands:**` link is repointed at the renamed Week 5 heading and its "Week 4 adds no CI check" note points at this plan's Week 5 CI block.
- **`course/plans/a4-plan.md`**: It is updated in the same change for the scope boundary, the `actionlint` move, and the non-required views; its full examples stay Week 4's, with a note that this plan's file changes move the planning, release, weekly-report, and quality examples to Week 5.
  It links this plan, and the rules it hands over are not repeated there.
- **`guides/quality-and-architecture.md`**: The `## Step 8: Document The Features` section before `## Common Mistakes`, with the feature, documentation-place, and element-naming questions.
- **`guides/planning-and-tracking.md`**: Step 2's milestone paragraph notes the assignment's at-least-two further milestones due in `SPRINT-05` through `SPRINT-09`, while the requirement leaves the set to the team.
- **`backlog/`**: TASK-145's acceptance criterion that names the reversing decision changes from `A5-DEC-017` to `A5-DEC-013`, and its description changes from "removes them from the course" to "not required", through `backlog task edit`; no new A5 backlog breakdown is created here.

## Edge Cases And Failure Modes

- **The VM is not available this week:** The deployment is postponed to the date the group chat announces; the report declares the postponement; the other implemented test is `scripted` with its command and output; `REL-05` may claim the other QR through the `scripted` test; the Sprint Review shows the local product and the deployment plan; the deployment stays `Not verified` with `Planned for sprint: SPRINT-05`; and the row is upgraded to `deployed` when the VM is available.
- **A team has no other `High` QR:** The other implemented test covers the next active row by the matrix's sort at `scripted` or `deployed`, and the team declares the deviation; the testability requirement's `High` stays a `CI` test.
- **A `deployed` test cannot be run on staging:** It is `scripted` with its command and output, and `REL-05` can claim the QR through that scripted test.
  If no automated form is possible at all, it is `manual` with `**Why Manual:**` under the documented exception; it still does not satisfy the assignment's second implemented test, so the team declares that deviation too.
- **The customer cannot reach the VM:** The team verifies the access before the meeting; when the customer cannot reach it, the meeting shows the local product and the deployment evidence, and the report records why.
- **Staging and production share the VM:** They are separate deployments with separate configuration and secrets; a staging test never writes production data, and a production deploy never runs the staging configuration.
- **A public file would name the address:** It does not: `visibility-requirements.md` sends the staging and production addresses to Moodle only, `docs/deployment.md` uses placeholders, the QRT's `**Runs at:**` names the staging environment with a placeholder for the address, and the Moodle wrapper carries the addresses; no link is excluded, and the course's `lychee.toml` is unchanged.
- **A test that is not `Passes` this week:** It stays in the testing plan with its result and its planned sprint; a `Fails` row keeps its `Checked` and `Evidence`, a `Not verified` row keeps its planned sprint, a dropped QRT's row has `None` for all three, and the release body claims no `QR-nn` through it.
- **A `Passes` test the team has not re-checked:** It keeps its `Checked` sprint; a release that wants to claim its `QR-nn` re-checks it first, and a release that does not claim it leaves the row as it is.
- **A `QRT-nn` dropped after it was planned:** It keeps its section, its `**Status:** Dropped`, and its `**Dropped:**`, and its testing-plan row says `Dropped`, with `None` for `Checked`, `Planned for sprint`, and `Evidence`.
- **A `QR-nn` dropped:** It needs no test; an existing test is dropped with its own field and row.
- **A team with two milestones due in `SPRINT-05` or later already:** It keeps them; a run may cover `SPRINT-04`–`SPRINT-05`, and no two milestones cover the same sprint.
  A team whose two milestones cover neither `SPRINT-05` adds none, because the assignment no longer requires one.
- **A team whose plan has no room for the two new stories in `SPRINT-05`:** At least one is scheduled in `SPRINT-05` and the other is refined for `SPRINT-06`; a story larger than `13` points is split before it is scheduled.
- **A rework request that cannot finish this week:** It is deferred to `SPRINT-06`, the reviewed and tested commit is the release commit, and the report records the deferral.
- **A codebase design answer kept outside the repository:** The report links it as an external-but-indexed artifact, and the assignment's coverage row says where it is; no fixed path is created.
- **A feature no story or requirement covers:** It is a gap, not a feature; the team writes the story that covers it, or records it as an open point in the report's summary.
- **A feature name that is plain language:** It needs no glossary entry; the glossary carries only the words the project uses in its own sense.
- **A repository that already draws a component or sequence view:** It is left as it is: no rule asks for one, no artifact cites one, and the architecture document's required views are the container view and the vision's context diagram.
- **One rule in two places:** The testing-plan rule, the evidence content, the `Evidence` cell rule, the release-claim rule, the test-priority rule, the environment and deployment rules, and the identifier rules each have exactly one owner, and every other file links to it.

## Tests And Validation

- `pnpm run format:markdown`, then `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run test:markdown-format`, and `pnpm run test:markdown-rules`.
- `pnpm run check:links`, which checks every heading anchor the new files and the edited files cite.
- `pnpm run lint:actions` only if a workflow in this repository changes; the CI checks this plan adds are the students' rules, not this repository's workflows. `pnpm run check:lectures` only if a deck changes.
- A scope audit: every success criterion has a part, a rule, or a file change in [Changes To The Requirements](#changes-to-the-requirements) or [Edited Files Outside `requirements/`](#edited-files-outside-requirements), and every part has a rule or is a documented assignment minimum.
- A contradiction audit: every row in [Scope And Contradictions](#scope-and-contradictions) has its resolution applied, and the files named in the row carry it; in particular, the W5 CI block names the applicable checks and no deployment job, the weekly-report pointer is rule 15, the release body carries the claim, and the architecture's forward reference is confirmed gone.
- A routing audit: the two new guides appear in `README.md`, `SKILL.md`, `course/rules.md`, and `AGENTS.md`'s Repository Map; the quality, planning, and repository descriptions are updated; `docs/deployment.md` appears in the destination map; `docs/features.md` appears nowhere as a required path.
- A cross-reference audit: every `**Since: W5**` rule has an Assignment 5 part, including the weekly-report pointer, the environment rules, and the testing plan, and every part has a rule or is a documented assignment minimum.
- A move audit: no rule that left `a4-plan.md` is stated twice, and every rule has one owner; the CI group's checks and its Definition of Done item are separate rules; the unit tests and the deployment are separate rules; the milestones and stories are assignment minima, not new rules.
- A level audit: every `manual` test carries `**Why Manual:**`, every `CI` test names a workflow step, every `scripted` test names its script or command, every `deployed` test names the staging environment and the command or tool with a placeholder for the address, and every testing-plan `Evidence` cell matches its test's level.
- A QRT audit: every active `High` `QR-nn` has at least one `QRT-nn`, every `QRT-nn` carries `**Status:**` `Active` or `Dropped`, the testability requirement has a `CI` test, the other implemented test is `scripted` or `deployed` on a `High` QR or on the next active row, a manual-only `High` QR carries its `**Why Manual:**` and a declared exception, the team records the assignment's second-test deviation when no automated form exists, and a dropped test keeps its fields.
- A testing-plan audit: every row's result is `Passes`, `Fails`, or `Not verified`, or `Dropped` only for a QRT whose `**Status:**` is `Dropped`; a dropped QRT's row has `None` for `Checked`, `Planned for sprint`, and `Evidence`; and no test carries the check result.
- An environment audit: the four environments are named, the VM's portal and SSH access are recorded, staging and production are separate deployments, `docs/deployment.md` has its sections and differs from `docs/setup.md`, no real address is in a public file, and the customer's access is verified.
- A milestone audit: at least two milestones besides `MLS-03`, due in `SPRINT-05` through `SPRINT-09`, a run may cover two sprints, each advances a `TOS-nn`, its description leads with the increment its run delivers, and `planning-requirements.md` rule 6 is unchanged.
- A story audit: the two new stories carry the `User Story` type, `MoSCoW`, `Story Points`, `### Specified by`, checkbox `AC-nn`, and the one scheduled in `SPRINT-05` carries its `Responsible` and `Accountable` values and both assignees.
- A codebase-design audit: the assignment carries the exercise, the report links the team's answer, no report rule or fixed path is added, and no feature issue type or `FEAT-nn` family exists.
- A check audit: every `Passes` or `Fails` row carries a `Checked` sprint and an `Evidence` link, a `Not verified` or `Dropped` row carries what the rule allows, and every claimed `QR-nn` has at least one non-dropped test, with all of them `Passes` and `Checked` in the release's sprint.
- A trace audit: the testing plan is linked once from the quality requirements index, the week's report points at it, and no test's status is maintained outside the testing plan; the release body links the tests and states its claim.
- A full-example audit: every edited example carries its new field or section, every example is set in the week its new rule belongs to, and the tests example has a `CI` test and a `deployed` or `scripted` test, one for each active High QR.
- A CI audit: `actionlint` and the applicable checks are in the W5 block, pinned, on pull requests and on `main`, the Definition of Done's W5 item names them, and no deployment job exists.
- A release audit: the release is cut after the review and any same-week rework, only the final production deploy supplies the evidence, `REL-05` carries no ordinal, and the release body's claim matches the tests.
- A removal audit: no rule, assignment, guide, or router requires a component or sequence view; the decision records keep their statements and their statuses name the reversal.
- A deck audit: no Week 5 artifact, Moodle wrapper, checklist, coverage row, or decision designs a pitch deck, the Week 6 class no longer presents the deck, and the Week 7 class presents a near-final Week 6 deck, with the final one submitted on 7 November.
- `pnpm run check:links` after the edits; the TASK-145 criterion is updated with `backlog task edit`, `backlog doctor` runs after it, and no new A5 backlog breakdown is created here.

## Assumptions

- This work lands in the `itpd` course repository only, and no file is created under `docs/` or `reports/`, since those belong to student repositories.
- Assignment 5 is Week 5, and Week 5's due date is Saturday 31 October 2026 at 23:59, set by Assignment 4's schedule change.
- Assignment 4 lands first: the quality requirements, the functional requirements, the ADRs, the architecture document with its container view, drivers and ADR index, and the priority matrix exist before this work adds to them.
- The requirements files this plan edits are existing files; no new requirements file is added, because the tests stay inside the QR file, the testing plan stays inside the project plan, the environments and the deployment stay in `repository-requirements.md`, and the private addresses are recorded in `visibility-requirements.md`.
- The university provides one VM per team; the team gets it from the university portal, recreates it, sets its own password, and connects over SSH; the customer, who is the instructor, can reach it on the university network.
- Production is reachable from the university network at its IPv4 address with no domain name, and that is what "live accessible" means for this course.
- The VM hosts the staging and production deployments as separate deployments, and the team can deploy the same commit to both.
- The VM's availability is announced in the group chat; when it is not available, the deployment is postponed to when it is, the other implemented test is `scripted`, and the report declares the postponement.
- The product CI cannot reach the university network, so a `deployed` test is run by a person from a machine on that network or over SSH; when staging is unavailable the other test is `scripted`, and its evidence is recorded in the report without a real address.
- The context diagram and its Week 2 rules stay with `## System Context` in the product vision, and the container view is the architecture document's last required view: this work adds no sibling view, no view source, and no diagram rule.
- The examples are set in the week their rule belongs to: the planning example after Week 5, the changelog and the release body after `REL-05`, the quality requirements example after Week 5, and the weekly report a Week 05 report.
- The meeting-booking example is the example for every full example, as it is in Assignment 4's files.
- `REL-05` is the release at the end of Week 5 and carries no ordinal; the first was `REL-03`; `releases-requirements.md` allows more than one release in a sprint, with `REL-nn` naming the last; the example's version is `v0.5.0`, not a scheme the course fixes.
- Week 5 has no pitch deck; the deck is Week 6's, the Week 6 class does not present it, and the Week 7 class presents a near-final version before the final one is submitted on 7 November.
- The codebase design answer may live wherever the team documents features, including outside the repository, and the report links it.
- No review files are part of this work.

## Sources

### The Course Materials This Plan Changes

- [`course/plans/a4-plan.md`](a4-plan.md), especially its [Design Decisions](a4-plan.md#design-decisions) and [edited requirements files](a4-plan.md#2-edited-requirements-files): the scope this plan takes over and the shape it follows.
- [`course/syllabus.md`](../syllabus.md), especially Week 5, the Week 6 and Week 7 class sentences, and the Submission 5 row: the week's other deliverables and the deadline Assignment 4 sets.
- [`lectures/lecture-5.typ`](../../lectures/lecture-5.typ), especially its Environments slide: the development, integration, staging, and production definitions and the continuous-integration, delivery, and deployment terms.
- [`lectures/lecture-4.typ`](../../lectures/lecture-4.typ): ISO 25010, the six-part scenario and its worked test, the drivers, the ADR, and the priority matrix.
- [`assignment-4.md`](../../assignments/assignment-4.md): the shape Assignment 5 follows.
- [`course/decisions/a3.md`](../decisions/a3.md), especially `A3-DEC-018` (the product-code CI deferred to Week 4, which `A4-DEC-024` moved to Week 5 and `A5-DEC-013` reverses).
- [`course/decisions/a4.md`](../decisions/a4.md), especially `A4-DEC-001` and `A4-DEC-033` (the views clauses this plan reverses), `A4-DEC-024` (the Week 5 CI move), `A4-DEC-028` (the surviving entry for the one-way chain, which replaced `A3-DEC-022`), and `A4-DEC-034` (refinement keeps the item in the product backlog).
- [`TODO.md`](../../TODO.md), especially the A5 items: the two further milestones, the integration environment, the stale story-points line, and the feature issue type.

### The Requirements This Plan Extends

- [General Requirements](../../requirements/general-requirements.md), [Planning Requirements](../../requirements/planning-requirements.md), [Releases](../../requirements/releases-requirements.md), [Weekly Report](../../requirements/weekly-report-requirements.md), [Repository Requirements](../../requirements/repository-requirements.md), [Visibility Requirements](../../requirements/visibility-requirements.md), [Definition Of Done](../../requirements/definition-of-done-requirements.md), [Customer Meeting Requirements](../../requirements/customer-meetings-requirements.md), plus `requirements/quality-requirements-requirements.md`, which this plan edits, and `requirements/user-stories-requirements.md`, `requirements/adr-requirements.md`, and `requirements/glossary-requirements.md`, whose rules the new work uses without a change.

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
- The backlog tasks this plan consults: TASK-134 records the Week 3 to Week 4 move, TASK-140 records the milestone set the team chooses, which the assignment's minimum extends without changing the rule, and TASK-145 records the Week 4 to Week 5 move, and its criterion is repointed to `A5-DEC-013`.
