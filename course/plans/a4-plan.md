# Plan: Assignment 4 — Quality, Requirements, Architecture, And The Fourth Release

This plan records the final design of Assignment 4 and everything it depends on, before the work is written.
It replaces the first draft and its correction list: every decision is stated once, in the form the requirements will take, and the superseded corrections are gone.
The design was settled in the review of the first draft and in the decisions that `course/decisions/a4.md` will carry.
The [Design Decisions](#design-decisions) section states the model and the reason for it.
Assignment 4 is about the functional requirements, the quality requirements, the architecture decision records, the architecture document's drivers and decision index, and the Week 4 process work; the quality requirement tests, their testing plan, the container, component, and sequence views, and continuous integration (`actionlint` and the product-code CI) are planned in [`a5-plan.md`](a5-plan.md).

## Goal And Success Criteria

Write Assignment 4 and everything it depends on, so Week 4 can be handed in from the course materials.
The week covers: the ISO/IEC 25010 quality model, testable quality requirements, the architectural drivers and the architecture document that links them, the functional requirements behind the stories, the architecture decision records, the glossary and the team's `AGENTS.md`, the sprint ceremonies, the `REL-04` release, and the deadline change; the product-code CI's marker moves out of Week 4 to Week 5.

Done means:

- `assignments/assignment-4.md` exists, is written as a delta against `requirements/`, and follows the Assignment 3 shape: header, Objectives, numbered parts, What Good Looks Like, the repository report with its coverage table, the Moodle wrapper, Submission Procedure, and Checklist.
- Seven new requirements files own the new rules, and every new rule has exactly one owner.
- The architecture document links the drivers to the sections and files that hold them, and its decision index maps each record to the drivers it answers, while the constraints, boundary, and system context stay in the product vision.
- The architecture, the functional requirements, the quality requirements, the ADRs, the ceremonies, the team's `AGENTS.md`, and the glossary each have a requirements file.
- The quality requirement tests, their testing plan, the container, component, and sequence views, `actionlint`, and product-code CI are planned in [`a5-plan.md`](a5-plan.md), not here.
- `course/syllabus.md`, `README.md`, `SKILL.md`, `course/rules.md`, `AGENTS.md`, and `TODO.md` are updated in step with the new files and the deadline change.
- `course/decisions/a4.md` records every decision as an `A4-DEC-nnn` entry, and `course/decisions/a3.md` marks the two reversed entries.
- `pnpm run format:markdown:check`, `pnpm run lint:markdown`, and `pnpm run check:links` pass.

## Reference And Baseline

- The reference checkout is `/home/eyjafjallajokull/Desktop/gh/timeful`.
  The workspace-relative `../../time-tools/timeful` does not exist.
- The reference supplies the shape of the FR, QR, and ADR records: the six-part quality attribute scenario, the ISO/IEC 25010 characteristic and sub-characteristic table, the MADR sections, and the decision index.
- The existing `itpd` conventions win where the two differ: no YAML front matter, since no course file uses it; an identifier heads a section or a file, with a first line and then a bulleted `- **Label:**` field list; every family has a dropped form; `**Since: WN**` markers; one owner per rule.
- The course changes the reference in three places: the architecture document's drivers link the sections and files that hold them rather than restating them, so the constraints, boundary, and system context stay in the product vision; the quality requirement index is also the priority matrix; and the ADR `**Addresses:**` accounts for the ASRs rather than naming a generic effect.
  The reference's test shape, a `QRT-nn` scoped to its QR, is the fourth change and belongs to [`a5-plan.md`](a5-plan.md).

## Architecture Change Map

The change touches the four layers `AGENTS.md` defines, plus the schedule and the maintainer decision log.

```text
assignments/assignment-4.md          what this week requires (deltas only)
guides/quality-and-architecture.md   how (new)
requirements/                        the rules (seven new files, and edited ones)
course/rules.md                      the contract and its router (rows and the deadline rule)
course/syllabus.md                   the schedule (Week 4 paths, deadlines, Submission 4 row)
course/decisions/a4.md               maintainer decisions (new)
course/decisions/a3.md               the two reversed decisions
README.md                            the assignment row, the guide, the rules
SKILL.md                             the routing table
AGENTS.md                            the repository map, destination map, identifiers, terminology, Scrum
TODO.md                              the A4 items this work closes
```

The lecture deck stays as compiled.
Lecture 4 already covers quality, ISO 25010, quality attribute scenarios, architectural drivers, ADRs, and the priority matrix; its Scrum slides are commented out, which is why the ceremony rules are written here rather than shown there.

## Design Decisions

The model has three record families and one index per group.

- **FR.** `FR-nnn` is a file under `docs/functional-requirements/fr/`.
  It states behavior independently of the story that needed it, carries its own `### AC-nn` criteria, and has no story field; the story that produced it may appear in `**Traces to:**`.
  Its `**Traces to:**` field records its origins and the ADRs that constrain it.
  Its `**Containers:**` field names the containers it lands in.
- **QR.** `QR-nn` is a file under `docs/quality-requirements/qr/`.
  It carries one ISO/IEC 25010:2023 pair and the six-part quality attribute scenario.
- **The tests.**
  A quality requirement's tests, their levels, the testing plan that carries their status, and the evidence each needs are Assignment 5's; [`a5-plan.md`](a5-plan.md) states that model.
- **ADR.** `ADR-nnn` is a file under `docs/architecture/adr/`, in the MADR shape.
  Its `**Addresses:**` lists the ASRs it accounts for: the `FR-nnn` and `QR-nn` links that the decision is responsible for.
  It does not use relation words.
  Its `**Decision:**` names the `DEC-nnn` whose choice it documents, when one exists.
- **The link model.**
  Each side owns one fact, and neither fact is derived from the other.
  The ADR's `**Addresses:**` says which ASRs the decision accounts for, and the FR's `**Traces to:**` says which ADRs constrain it.
  The facts are different: the ADR says "I account for this ASR", and the FR says "this ADR constrains me", so the ADR may be written before or after the FR.
  There is no `ASR: true/false` field; the ADR `**Addresses:**` list is the set of ASRs, and the reverse lookup is a search of those lists.
- **The architecture document.** `docs/architecture/README.md` is the one architecture document.
  It opens by linking the product vision as the scope it serves, then carries the drivers, the decision index, and the trace.
  The drivers section points at the sections and files that hold the drivers, so the architecture document restates no goal, constraint, or requirement.
  The goal, stakeholders, boundary, constraints, and system context stay in `docs/product-vision.md`, and the context diagram stays embedded there.
  The container, component, and sequence views and their diagram rules are Assignment 5's, under `## Views` with `### Diagrams And Legends` at its end, so Week 4 shows what drives the architecture before Week 5 draws it.
- **The product vision.**
  The vision keeps every part it has: `## Goal`, `## Stakeholders`, `## Constraints`, `## Boundary`, and `## System Context` with its embedded diagram.
  From Week 4 it links `docs/architecture/README.md` as a whole, so the two documents point at each other and neither copies the other.
  No section moves out of the vision in Week 4.
- **The drivers.**
  The drivers are the business goals, the constraints, the functional requirements, and the quality requirements.
  `## Drivers` links each group once, at a section or a file, and names no `TOS-nn`, `CON-nn`, `FR-nnn`, or `QR-nn` of its own: the threshold of success in full, the vision's `## Constraints` section, the functional requirements index, and the quality requirements index.
  The specific requirements appear in the decision index's `Addresses` column, which maps each record to the drivers it answers, so a driver is named once and the two lists cannot drift.
- **The quality requirements index.** `docs/quality-requirements/README.md` is the priority matrix: `QR`, `Outcome`, `Business importance`, `Technical risk`, `Characteristic`, `Sub-characteristic`, `Status`.
  It sorts active records first, then business importance High to Low, then technical risk High to Low.
  No separate matrix table is added.
- **The decision index.** It has the columns `ADR`, `Status`, `Addresses`, and `Decision`.
  `Proposed` and `Accepted` are active; `Superseded`, `Deprecated`, and `Dropped` are inactive.
  It is the one table that maps a driver to the record that answers it, so no separate driver table is added.
  The active records come first, and Week 4 requires the three minimum ADRs to be `Accepted` before submission.
- **Estimation.**
  Three public single-select issue fields: `MoSCoW` and `Story Points` on a `User Story`, and `Priority` on a `Task`. `Story Points` stops at `13`; a story above `13` is split before it is estimated or scheduled.
  A task is ordered by `Priority` and carries no estimate, so velocity is the only total: it is computed by hand from the stories' `Story Points`, because a single-select field holds one option and cannot be added up.
- **The sprint record.** `docs/project-plan.md`'s `### SPRINT-nn` section carries `**Planned Velocity:**` and `**Actual Velocity:**` after `**Sprint Backlog:**`.
  Planned velocity is the selected stories' points, set at planning; actual velocity is the completed stories' points, set when the sprint closes.
- **The ceremonies.**
  The method is the [Scrum Guide](https://scrumguides.org/scrum-guide.html).
  The weekly customer meeting is the Sprint Review, estimation is an activity inside planning and refinement, and every sprint from `SPRINT-04` ends with a retrospective that carries a `## Carried Actions` section.
- **Continuous integration.**
  Week 4 adds no CI check: the product-code CI's marker moves from Week 4 to Week 5, and `actionlint` and the product-code CI's five checks are Assignment 5's.
  The link check and the Markdown check stay as they are.
- **Deadlines.**
  From Week 4 through Week 9 every group submission is due on Saturday at 23:59; there is no soft deadline.
  Weeks 1 to 3 stay as their assignments recorded them, and the Week 11 individual reflection keeps its own December date.
- **The glossary.** `docs/glossary.md` is a Week 4 maintained artifact with at least three terms.
  Linking every mention of a term is recommended, not required.
- **The team's `AGENTS.md`.**
  From Week 4 the repository root carries an `AGENTS.md` that maps each maintained artifact path to the requirements file that checks it.
  A new requirements file owns it.

## 1. New Requirements Files (`requirements/`)

All new files are flat in `requirements/`, carry `**Since: W4**` markers, a ToC, `Required` / `Recommended` / `Example` labels, and one full example at the end, in the meeting-booking example the other files already use.
`architecture-requirements.md` carries no `**Since: W2**` rule, because the product vision keeps the Week 2 scope and the context diagram.

### `architecture-requirements.md`

- **Where The Architecture Lives:** `docs/architecture/README.md` is the only architecture document.
  It opens with one sentence that links `docs/product-vision.md` as the scope it serves, then carries these parts, in order:
  1. `## Drivers`, which links the business goals, the constraints, the functional requirements, and the quality requirements;
  2. `## Architectural Decisions`, with the decision index;
  3. `## Trace`, with the chain from a task to the threshold.

  `## Views`, with `### Diagrams And Legends` at its end, is Assignment 5's, which adds it between `## Drivers` and `## Architectural Decisions`; the final order is Drivers, Views, Architectural Decisions, Trace.
  The goal, stakeholders, boundary, constraints, and system context stay in `docs/product-vision.md`, and the context diagram stays embedded there, so the vision owns the scope and the architecture document links it.

- **No Move:** The constraints, boundary, and system context rules stay in [Product Vision Requirements](../../requirements/product-vision-requirements.md), with their `**Since: W2**` markers, fields, and citations.
  The vision gains one `**Since: W4**` rule that it links the architecture document as a whole, alongside the user stories and the current week's report, because the architecture document's drivers point back at `## Constraints`.
  Week 4 moves no section, so no file that links `docs/product-vision.md#constraints`, `#boundary`, or `#system-context` retargets.
- **Drivers:** The section has four entries, and each links the holder of its group:
  1. the business goals link `docs/threshold-of-success.md` in full, because its goals are its own `## TOS-nn` sections and the threshold owns each statement;
  2. the constraints link `docs/product-vision.md#constraints`, whose `### CON-nn` sections are the constraints;
  3. the functional requirements link `docs/functional-requirements/README.md`;
  4. the quality requirements link `docs/quality-requirements/README.md`, which is also the priority matrix.

  The section names no `TOS-nn`, `CON-nn`, `FR-nnn`, or `QR-nn`, and restates no requirement: it says which group it is and links the group.
  The boundary and the system context are scope rather than drivers, so the section links neither and the opening sentence links the vision for both.
  The entries are bullets, not a table: the one table that maps a driver to a record is the decision index's `Addresses` column, which lists, record by record, the `FR-nnn` and `QR-nn` the record answers.
  A requirement no record answers is still reached through the index that holds it, so nothing dangles from the drivers section.

- **ASRs:** An architecturally significant requirement is a requirement that affects the architecture and the quality of the software system.
  The `**Addresses:**` field of an ADR lists the ASRs that ADR accounts for, so the ADR set is the marker and no separate `ASR` field is added.
  The drivers section links where the requirements live; the decision index names, record by record, the requirements that shaped the architecture.
  Finding the ADRs that account for one requirement is a search of the ADR files' `**Addresses:**` lists, not a field on the requirement, because a connection maintained on both sides goes stale on one, as [`A3-DEC-022`](../decisions/a3.md#a3-dec-022-the-chain-from-a-commit-to-the-threshold) reasons.
- **Architectural Decisions:** The index is one table under `## Architectural Decisions`, with these columns in this order:

  | Column      | What it holds                                                                         |
  | ----------- | ------------------------------------------------------------------------------------- |
  | `ADR`       | The `ADR-nnn` as link text, linked to its file under `adr/`                           |
  | `Status`    | `Proposed`, `Accepted`, `Superseded`, `Deprecated`, or `Dropped`, matching the record |
  | `Addresses` | Each `FR-nnn` and `QR-nn` the record accounts for, linked                             |
  | `Decision`  | The record's decision in one line, short enough to scan                               |

  `Proposed` and `Accepted` are active; the other three are inactive.
  The index is the one table that maps a driver to the record that answers it: the `Addresses` cell names the `FR-nnn` and `QR-nn` the record accounts for, and no separate driver table is added.
  The active records come first, in `ADR-nnn` order, and the inactive ones follow, in `ADR-nnn` order.
  An ADR that addresses several requirements lists them all in one cell.

- **Trace Forward:** The trace states the chain from a task to the threshold: the task's `### Requirements` names the FRs and ADRs it works on; an ADR's `**Addresses:**` names the FRs and QRs it accounts for; an FR's `**Traces to:**` names the story or the value proposition it came from and the ADRs that constrain it; a story cites its `VP-nn`; and the product vision's `## Goal` is what the threshold refines into a `TOS-nn`, which the plan's `MLS-nn` names in its `**Advances:**`.
  A task that names only an ADR reaches the threshold through the requirements in that ADR's `**Addresses:**`.
  The link to the testing plan joins this section in Assignment 5, so the architecture document never restates when a test passes.

### `functional-requirements-requirements.md`

- `FR-nnn` takes three digits, because a project's functional requirements can pass 99 over the course; every other Week 4 family takes two.
  It is issued once, never renumbered, and never reused.
- Each FR is `docs/functional-requirements/fr/FR-nnn.md`, headed `# FR-nnn: Title`, and `docs/functional-requirements/README.md` is the index table in `FR-nnn` order, with the columns `FR`, `Title`, `Containers`, and `Status`.
- Its fields, in this order:
  - `**Status:**`, `Active` or `Dropped`;
  - `**Traces to:**`, one or more entries recording where the requirement came from and what constrains it: the `US-nn`, `DEC-nnn`, `CON-nn`, or meeting report that produced it, and the `ADR-nnn` that constrains it, each linked; at least one entry;
  - `**Containers:**`, one or more container names, the C4 deployable units such as `frontend`, `static content`, or `backend`;
  - `**Changed:**`, each change, recorded as a gap records one, only when it changed;
  - `**Dropped:**`, the date, the reason, and the `DEC-nnn` or `ADR-nnn` when one caused it.
- `**Traces to:**` is provenance and constraint.
  The story that produced the requirement, the decision that imposed it, and the constraint that shapes it are origins; the ADR that constrains it is a constraint.
  The ADR's `**Addresses:**` lists the FR as an ASR it accounts for, so the pair is two facts: "where it came from and what limits it" on the FR, and "which ASR this decision accounts for" on the ADR.
  No other field repeats the ADR.
- The FR has no `**Stories:**` field and does not restate the story.
  The story that produced it is an origin and appears in `**Traces to:**` when the FR came from one.
  A story names the FRs and ADRs that specify it in `### Specified by`, per [User Story Requirements](../../requirements/user-stories-requirements.md#the-story).
  A story may close and stay closed while its FR stays `Active`.
- `## Behavior` holds one or more `shall` statements.
  Each names its actor, its condition, and its observable outcome, so a reader can verify it without opening a story.
- `## Acceptance Criteria` holds one `### AC-nn` section per criterion, `AC-01` upward, numbered within the FR and never renumbered or reused there.
  A criterion is a verifiable assertion: a given and an expected result, an example input and output, a configuration table, or a state a reader can observe.
  No scenario notation is required, and a criterion that would need one to be checkable is not yet a criterion.
- An FR's criteria are the team's technical check; a story's are the customer's.
  Cite a criterion as `FR-012 AC-02`, and link it as `FR-012.md#ac-02`, per [Identifier Rules](../../requirements/general-requirements.md#identifier-rules).
- An FR specifies functional behavior and never adds a user-facing need.
- A dropped FR keeps its file, and its criteria keep their anchors, as rule 11 of [Identifier Rules](../../requirements/general-requirements.md#identifier-rules) requires of every family.

### `quality-requirements-requirements.md`

- `QR-nn` takes two digits and is one file at `docs/quality-requirements/qr/QR-nn.md`, headed `# QR-nn: <short outcome>`, and `docs/quality-requirements/README.md` is the index, sorted as the priority matrix below requires.
- Its first line below the heading is the outcome in one sentence, which a reviewer could fail.
  Its fields, in this order:
  - `**Status:**`, `Active` or `Dropped`;
  - `**Characteristic:**` and `**Sub-characteristic:**`, from one ISO/IEC 25010:2023 pair in the allowed table below;
  - `**Business importance:**` and `**Technical risk:**`, each `High`, `Medium`, or `Low`;
  - `**Changed:**`, then `**Dropped:**`, in the form the FR uses.
- The allowed pairs, in Title Case as the course writes them, from [ISO/IEC 25010:2023](https://iso25000.com/en/iso-25000-standards/iso-25010):

  | Characteristic           | Sub-characteristics                                                                                                                                                    |
  | ------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
  | `Functional Suitability` | `Functional Completeness`, `Functional Correctness`, `Functional Appropriateness`                                                                                      |
  | `Performance Efficiency` | `Time Behaviour`, `Resource Utilization`, `Capacity`                                                                                                                   |
  | `Compatibility`          | `Co-existence`, `Interoperability`                                                                                                                                     |
  | `Interaction Capability` | `Appropriateness Recognizability`, `Learnability`, `Operability`, `User Error Protection`, `User Engagement`, `Inclusivity`, `User Assistance`, `Self-descriptiveness` |
  | `Reliability`            | `Faultlessness`, `Availability`, `Fault Tolerance`, `Recoverability`                                                                                                   |
  | `Security`               | `Confidentiality`, `Integrity`, `Non-repudiation`, `Accountability`, `Authenticity`, `Resistance`                                                                      |
  | `Maintainability`        | `Modularity`, `Reusability`, `Analysability`, `Modifiability`, `Testability`                                                                                           |
  | `Flexibility`            | `Adaptability`, `Scalability`, `Installability`, `Replaceability`                                                                                                      |
  | `Safety`                 | `Operational Constraint`, `Risk Identification`, `Fail Safe`, `Hazard Warning`, `Safe Integration`                                                                     |

- Under `## Scenario`, six `###` sub-headings follow, in this order: `Source`, `Stimulus`, `Environment`, `Artifact`, `Response`, `Response Measure`.
  These are the quality attribute scenario from lecture 4, written as the reference does.
- A quality requirement about testability names its critical modules by repository path, such as the frontend entry point or the payment module, so the requirement can be checked against the code rather than against a description of it.
  That requirement carries `**Business importance:** High`, because the course is part of the business and the instructors are stakeholders who require it; the rule states the reason, so the priority matrix cannot rate it `Low`.
- `docs/quality-requirements/README.md` is the priority matrix, not a second list.
  Its columns, in this order, are `QR`, `Outcome`, `Business importance`, `Technical risk`, `Characteristic`, `Sub-characteristic`, and `Status`.
  It sorts active records first, then business importance High to Low, then technical risk High to Low, and `QR-nn` order breaks a tie.
  The `Status` column is the QR's own `Active` or `Dropped`.
  The index does not repeat the scenario; the QR file carries it.
- A QR cites no ADR, and no QR has an `ASR` field.
  The ADR's `**Addresses:**` is where the two meet; a QR that an ADR accounts for is an ASR, and the reverse lookup is a search of the ADR lists.
- The tests for these requirements, their levels, the evidence recorded for them, and the testing plan that carries their status are Assignment 5's, planned in [`a5-plan.md`](a5-plan.md).

### `adr-requirements.md`

- `ADR-nnn` takes three digits, because the decision set grows with every record and can pass 99; every other Week 4 family takes two.
  It is one file per decision at `docs/architecture/adr/ADR-nnn.md`, numbered sequentially across the repository.
  `docs/architecture/adr/TEMPLATE.md` is the shape to copy.
- Its fields, in this order:
  - `**Status:**`, one of `Proposed`, `Accepted`, `Superseded`, `Deprecated`, or `Dropped`;
  - `**Superseded by:**`, only on a superseded record, the `ADR-nnn` linked;
  - `**Dropped:**`, only on a dropped record, the date and the reason;
  - `**Created:**` and `**Updated:**`, where `**Updated:**` changes only when an edit leaves the decision as it was, because a changed decision is a new record that supersedes;
  - `**Containers:**`, one or more container names, the C4 deployable units;
  - `**Addresses:**`, the ASRs the record accounts for, one or more `FR-nnn` and `QR-nn` links; at least one, and no relation word;
  - `**Decision:**`, the `DEC-nnn` whose choice the record documents, one or more, each linked, only when one exists.
- The body sections are `## Context`, `## Considered Options`, `## Decision Outcome`, and `## Consequences`.
  `## Considered Options` names each rejected option with why it lost.
  An option is called an **option**, because "alternative" is reserved for the `ALT-nn` family.
- `## Consequences` names each quality attribute the decision accepts and the `QR-nn` that covers it, linked.
  Every accepted quality attribute is covered by a named QR; a decision that accepts an attribute with no QR is not ready, so the team either writes the QR or changes the decision.
- The record carries the architectural, technology, or functional-behavior reasoning; the `DEC-nnn` it names carries only what the customer decided.
  The stack is an ADR: it states the stack and justifies it, and it may cite the `DEC-nnn` that records the customer's mandate.
- An FR the record accounts for names the ADR in its `**Traces to:**`; a QR does not name the ADR, because the ADR's `**Addresses:**` already carries the connection.
- The record's row follows the index's own rule for active and inactive records, in the architecture requirements' `## Architectural Decisions` section; this file does not restate it.
- The record's `**Addresses:**` is the set of ASRs; it does not list the artifacts the decision changed.
  A requirement the record drops is still listed, because the decision is answerable for the removal, and that requirement records the `ADR-nnn` in its own `**Dropped:**`.
  A requirement the record only words differently is not listed.

### `sprint-ceremonies-requirements.md`

Five sections, each with its own anchor, and the requirements file that owns each term links these anchors.
The method is the [Scrum Guide](https://scrumguides.org/scrum-guide.html), named here as the source, because the lecture does not teach the ceremonies and the deck's Scrum slides stay commented out.

- **`## Sprint Planning`**: The sprint opens with planning in the plan's `### SPRINT-nn` section, which is the planning record.
  Planning sets the goal, replacing the provisional one, and adds `**Planned Velocity:**`: the story points of the stories selected for the sprint.
  The items stay in the sprint's GitHub milestone, which the section links; the plan does not copy that list.
  When the sprint closes, the section gains `**Actual Velocity:**`, the points of the completed stories, and one sentence on what moved out and to which sprint.
  The velocity is computed by hand from the stories' `Story Points`, because a single-select field holds one option and cannot be added up.
  The team plans `SPRINT-04` first, and every later sprint is planned the same way in its own week.
- **`## Product Backlog Refinement`**: Before planning, the items in the next two sprints are refined until each is ready to schedule, as the guide's refinement does.
  Refinement produces no document: its evidence is the `Story Points` on each story.
  An item ready to schedule sits in its future sprint's GitHub milestone; a story larger than `13SP` is split before it is scheduled, so the milestone applies only to items small enough to schedule.
  In the first sprint the ceremony runs, planning itself estimates the sprint's stories and orders its tasks, because the week before had no refinement.
  An issue carried from an earlier week is refined before it enters a sprint, and a story among them is estimated, or it stays unscheduled.
- **`## Estimation`**: Estimation is an activity inside planning and refinement, not a ceremony of its own.
  Three `Public` single-select issue fields carry the estimate and the order of work, and the issue type each pins to says which it applies to:

  | Field          | Options                                                | Pins to      | Set when              |
  | -------------- | ------------------------------------------------------ | ------------ | --------------------- |
  | `MoSCoW`       | `Must Have`, `Should Have`, `Could Have`, `Won't Have` | `User Story` | the story is written  |
  | `Story Points` | `1`, `2`, `3`, `5`, `8`, `13`                          | `User Story` | refinement            |
  | `Priority`     | `High`, `Medium`, `Low`                                | `Task`       | the task is scheduled |

  `Story Points` follows the modified Fibonacci sequence up to `13`; a story above `13SP` is split before it is estimated or scheduled.
  A `13SP` story is the largest one scheduled, and it is decomposed into tasks like any story.
  Stories are estimated against stories; a task carries `Priority` for its order and no estimate of its own.

- **`## Sprint Review`**: The weekly customer meeting is the Sprint Review.
  It shows the working software, the quality requirements, and the architecture against the drivers, and the customer's verdict on each story is recorded as a `DEC-nnn`, per [Showing Working Software](../../requirements/customer-meetings-requirements.md#showing-working-software).
  The review is not a second meeting: the meeting report is its record, and it carries the review's outcome.
  The meeting's schedule and its record are the customer-meetings requirements', not this file's.
- **`## Retrospective`**: Every sprint from `SPRINT-04` on ends with `reports/week-NN/sprint-retrospective.md`.
  It carries these sections, in this order:

  | Section           | Rows                                                                                                                                                   |
  | ----------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------ |
  | `What Went Well`  | 3 or more, each one sentence naming what happened                                                                                                      |
  | `What Did Not`    | 2 or 3, each with the problem and its root cause                                                                                                       |
  | `Actions`         | 3 or 4, each with its `Action`, `Owner` (a GitHub username), `Impact` (`High`, `Medium`, `Low`), `Reason`, and `Carried` flag                          |
  | `Carried Actions` | one row per action carried from the previous retrospective, with its `Outcome` (`Done`, `Not done`, `Dropped`), and a re-listing when it is still open |

  The file is a record of its sprint and is not rewritten; the next sprint's file carries the history.
  An action is not an identifier family: it is cited by its file's path and the `#actions` anchor, with the action quoted.
  What the weekly report records about the ceremonies is the weekly report's rule, not this file's.

### `agent-instructions-requirements.md`

- From Week 4 the repository root carries `AGENTS.md`.
  It is repository content rather than an artifact, per [Where Artifacts Live In The Repository](../../requirements/general-requirements.md#where-artifacts-live-in-the-repository), but the course requires it.
- It maps each maintained artifact path to the requirements file that checks it, so a coding agent reads the rule instead of inferring it.
  It also names the repository's layout, its checks, and the files a team's agent must not edit, when those exist.
- It is updated when an artifact path or its owning requirements file changes.
  The agent-skill installation stays in [The Course Materials As An Agent Skill](../../requirements/repository-requirements.md#the-course-materials-as-an-agent-skill); this file owns the team's own `AGENTS.md`.
- A full example is a table with one row per artifact: the path, the requirements file, and one line on what the file owns.

### `glossary-requirements.md`

- `docs/glossary.md` is a maintained artifact, created in Week 4, and it carries the project's ubiquitous language.
- It carries at least three terms in Week 4.
  Each term is a `### Term` section under a domain heading, with a definition and, when an artifact defines the term, a link to that artifact.
- The glossary is updated when a term changes.
  Linking every mention of a term from prose is recommended, not required.
- A full example is a short glossary with one domain heading and three terms, each with a definition and a link.

## 2. Edited Requirements Files

| File                                 | Change                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| ------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `general-requirements.md`            | Add `FR-nnn`, `QR-nn`, and `ADR-nnn` to rule 1 as the Week 4 families; `FR-nnn` and `ADR-nnn` take three digits, because each grows with every record and can pass 99. `FR-nnn`, `QR-nn`, and `ADR-nnn` are exceptions to rule 5, because a one-per-record file's `#` heading carries the title. Extend rule 7 so an `AC-nn` may belong to an FR. Add the link model to [Traceability Into Later Weeks](../../requirements/general-requirements.md#traceability-into-later-weeks): each side owns one fact, the ADR `**Addresses:**` accounts for the ASRs, the FR `**Traces to:**` names the ADRs that constrain it, the story's `### Specified by` is conformance, and the reverse lookup is a search. Extend that table with the Week 4 rows.                                                                                                                                                                                                                         |
| `repository-requirements.md`         | The product-code CI item leaves the `**Since: W4**` block for a `**Since: W5**` block, so Week 4 requires no product-code CI while the block's other two items stay in Week 4; `actionlint` and the five checks are Assignment 5's. In `### The Course Materials As An Agent Skill`, the `Recommended` `AGENTS.md` line is removed, because the new `agent-instructions-requirements.md` owns the team's file. The root `README` keeps its setup link; no architecture link is added there.                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| `definition-of-done-requirements.md` | Item 2's `**Since:**` marker and its "From Week 4" wording move from Week 4 to Week 5, so Week 4 does not require the product-code CI; Assignment 5 adds `actionlint` and the five checks to that item and to the full example. The Week 4 example is unchanged.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| `issue-tracking-requirements.md`     | `## Issue Fields` gains three single-select `Public` fields with their options and the issue type each pins to: `MoSCoW`, `Story Points`, and `Priority`. The project's table view gains the three columns. A rule says the fields are set on the existing issues and the six labels retire. The story and task files link here for the definitions, and `sprint-ceremonies-requirements.md#estimation` says when each is set.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| `user-stories-requirements.md`       | The story's acceptance criteria become checkboxes, `- [ ] AC-01: <criterion>`, and the form prefills the first one. Rule 3's change-comment list gains `Specified by` and the two story field values, `MoSCoW` and `Story Points`. Rule 4's registry is the `User Story` type, applied to the existing stories. Rule 6 names the type as the marker from Week 4; the type fallback is removed because types are available. MoSCoW rule 1 names the `MoSCoW` field, and the six labels retire after the migration. The form and the story gain `### Specified by`, naming `FR-nnn` and `ADR-nnn`; a closed story is reopened when a new related task is linked, then closed again. Its `Traces to` rule lists the allowed origins explicitly: the `GAP-nn` it closes, the `DEC-nnn` of a decision, or an action point, and no other. The file links `sprint-ceremonies-requirements.md#estimation` for when a story is estimated and scheduled, rather than restating it. |
| `task-issues-requirements.md`        | The form gains a `### Requirements` section naming the FRs and ADRs the task works on, as links on `main`, and keeps its `### Story` section, which names the story and the `AC-nn` the task advances; the two are different links. It applies the `Task` type, which is also set on the existing tasks. A scheduled task carries `Priority`, per `sprint-ceremonies-requirements.md#estimation`, which owns when the field is set. The `task` label retires after the migration.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| `planning-requirements.md`           | `### SPRINT-nn` gains the `Since: W4` fields: the goal is set at planning and replaces the provisional one; `**Planned Velocity:**` and `**Actual Velocity:**` follow `**Sprint Backlog:**`, with the planned value set at planning and the actual value at close. The full example gains the actual field; its `SPRINT-04` due date becomes `2026-10-24`, and `SPRINT-05` to `SPRINT-09` become `2026-10-31`, `2026-11-07`, `2026-11-14`, `2026-11-21`, and `2026-11-28`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `decisions-requirements.md`          | The technology-choice trigger of [The Decision](../../requirements/decisions-requirements.md#the-decision) links the ADR rule instead of requiring a `DEC-nnn`, and a customer's mandate stays a `CON-nn` citing the decision that records it. [What Cites It](../../requirements/decisions-requirements.md#what-cites-it) links the link model instead of restating it.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| `product-vision-requirements.md`     | `## Constraints`, `## Boundary`, and `## System Context` stay as they are, with their `**Since: W2**` markers, fields, and examples; no rule moves out. A `**Since: W4**` rule 4 says the vision links `docs/architecture/README.md` as a whole, because the architecture document's drivers point back at `## Constraints`. The ToC is unchanged, and the full example keeps the three sections and gains the architecture link in its links list.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| `weekly-report-requirements.md`      | W4: the coverage table carries a row that links `reports/week-NN/sprint-retrospective.md`. The report gains no planning, refinement, or retrospective section, because the plan, the issues, and the retrospective file own them. The free-riding answer is not required; the contribution table is the evidence, and the report does not assess an individual. The full example is reframed as a Week 04 report, so the retrospective row sits in the week it belongs to, and its coverage table lists the Week 4 deliverables.                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| `customer-meetings-requirements.md`  | A `Since: W4` sentence links `sprint-ceremonies-requirements.md#sprint-review` as the weekly meeting's role, so the meeting and the ceremony are one event. The team schedules the meeting, and it may be on Friday.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| `pull-requests-requirements.md`      | No change. The pull request template stays owned by [The Pull Request Template](../../requirements/pull-requests-requirements.md#the-pull-request-template); the `FR` / `ADR` / `QR` prompt block is not added, because the task issue's `### Requirements` section carries the links.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |

The full examples in the edited files gain the new fields: the story and task examples gain `### Specified by` and `### Requirements`, the weekly-report example is reframed as a Week 04 report with the retrospective row, and the product-vision example links the architecture document.
The architecture example's `## Drivers` links the meeting-booking example's threshold, the constraints section of its vision, its functional-requirements index, and its quality requirements index, and names no driver of its own.
Each new requirements file ends with its own full example in the meeting-booking example; the quality requirements example is one `QR-nn` with its scenario.

No `issue-types-requirements.md` is added: the story file's rule 6 and the task file's form rule own the type, and [Issue Fields](../../requirements/issue-tracking-requirements.md#issue-fields) owns the pinning.

## 3. New Guide

`guides/quality-and-architecture.md` follows the shape of `guides/planning-and-tracking.md`: a short preamble, `## What You Produce`, numbered `## Step N:` sections with their `###` sub-sections, and `## Common Mistakes`.
The steps:

1. **Find the quality expectations.**
   A quality attribute workshop: stakeholders, their concerns, and the three ways to measure quality from lecture 4.
2. **Turn a characteristic into a requirement.**
   The ISO/IEC 25010 pair, the six-part scenario, and the testability requirement that names its critical modules.
3. **Prioritize.**
   Business importance is the value to the customer and technical risk is how hard the attribute is to achieve and to test; the index sorts active records first, then importance, then risk, and its `Status` column is the record's own state.
4. **Write the functional requirements.**
   The behavior a story needs, the containers it lands in, its `**Traces to:**`, its `shall` statements, and its own criteria, each with an anchor; the story's `### Specified by` names the FRs and ADRs that specify it.
5. **Link the drivers.**
   The four groups, the section or file that holds each, the threshold in full and the vision's constraints section, and why the drivers section names no driver of its own.
6. **Write the decision records.**
   Context, the options turned down, the outcome, the consequences, the `**Addresses:**` ASRs, and the `**Decision:**` it documents.
7. **Index and trace.**
   The quality requirements index and its sort, and the decision index with its active and inactive tables and its `Addresses` column as the one map from a driver to its record; the reading order from a quality requirement to the ADR that answers it, and the search that finds it in the other direction.
8. **Answer "why does this line of code exist?".**
   The chain from a commit to a `TOS-nn`, with the task's `### Requirements` section as its first hop.

## 4. `assignments/assignment-4.md`

The header carries the date: hard Saturday 24 October 2026 at 23:59.
There is no soft deadline.
The intro continues from Week 3: the minimum usable product is on `main` and the first release is tagged, and this week the product gets quality requirements, functional requirements, a documented architecture, and the decision records behind it.
`## Objectives` follows Assignment 3's: the ISO/IEC 25010 quality model and the six-part scenario, the quality requirements, the functional requirements and the ADRs, the architecture document with the drivers it links and the decision index, the sprint records and estimates, the glossary and the team's `AGENTS.md`, and `REL-04`.

The numbered parts, in the order the work can succeed, each a rules list and then the week's minima:

1. **Plan The Sprint, Refine The Backlog, And Set The Fields.**
   The plan's `### SPRINT-04` section with its goal replacing the provisional one, `**Planned Velocity:**`, `SPRINT-04`'s due date set to `2026-10-24`, and the later sprints' `**Due:**` fields and GitHub milestones moved to `2026-10-31`, `2026-11-07`, `2026-11-14`, `2026-11-21`, and `2026-11-28`; refinement for `SPRINT-05` and `SPRINT-06` with no document; the three issue fields created and pinned; `MoSCoW` migrated from the old labels and the types set on the existing issues; and every carried issue refined and, when it is a story, estimated before it enters the sprint.
   The velocity that goes into the plan's planned field is computed by hand from the stories' `Story Points`.
2. **Write The Quality Requirements.** `docs/quality-requirements/qr/`, at least 3 `QR-nn` files, each with a different characteristic, all six scenario parts, both priorities, and its row in `docs/quality-requirements/README.md`.
   One of them is about `Maintainability` / `Testability`, names the critical modules, and carries `High` business importance.
3. **Write The Functional Requirements.** `docs/functional-requirements/` with its index and at least 5 `fr/FR-nnn.md`, each with its `**Traces to:**`, its `**Containers:**`, its `shall` statements, and its own `### AC-nn` criteria.
   Every open story in the previous and the current sprint names its FRs and ADRs in `### Specified by`.
4. **Link The Drivers Into The Architecture.**
   Open `docs/architecture/README.md` with one sentence that links `docs/product-vision.md` as the scope, then link the threshold of success in full, the vision's `## Constraints` section, the functional requirements index, and the quality requirements index, and name no single `TOS-nn`, `CON-nn`, `FR-nnn`, or `QR-nn` there.
   Link `docs/architecture/README.md` from `docs/product-vision.md`, per [Product Vision Requirements](../../requirements/product-vision-requirements.md#where-the-vision-lives), with the vision's constraints, boundary, and system context staying where they are.
5. **Record The Decisions, Index, And Trace.**
   At least 3 `ADR-nnn` files, each `**Addresses:**` at least one ASR, each with its rejected options, its accepted quality attributes covered by a QR, and the index's active table above its inactive one, with each row's `Addresses` cell naming the drivers that record answers.
   The three minimum ADRs are `Accepted` before submission.
   The trace states the chain from a task to a `TOS-nn`.
6. **Write The Glossary And The Team's `AGENTS.md`.**
   `docs/glossary.md` with at least three terms, and a root `AGENTS.md` that maps each maintained artifact path to the requirements file that checks it.
7. **Carry Out The Week 3 Action Points And Open Questions.**
   They are read from `## Previous action points` and `## Previous open questions` of `reports/week-04/meeting-report.md`, per [Meeting Report](../../requirements/customer-meetings-requirements.md#meeting-report); nothing is copied from Week 3.
8. **Validate With The Customer.**
   The meeting is the Sprint Review: show the quality requirements and the architecture against the drivers, and record each customer change as a `DEC-nnn`.
   In the script, the report, and the transcript.
9. **Cut The `REL-04` Release.**
   The tag on `main`, the changelog's released section, the plan's `REL-04` line, and the week's report, in that order, per [Releases](../../requirements/planning-requirements.md#releases).
10. **Close The Sprint And Hold The Retrospective.**
    Set `**Actual Velocity:**` in `### SPRINT-04` from the completed stories, then write `reports/week-04/sprint-retrospective.md` with its four sections, the row counts, a `Reason` on every action, and the carried actions' outcomes.
11. **Answer The Traceability Question In The Report.**
    How a line of code reaches a `TOS-nn` goal.
12. **Report On Your AI Usage.**

The assignment follows Assignment 3's shape: the header, `## Objectives`, the numbered parts, `## What Good Looks Like`, `## Assignment Report In The Repository` with its coverage table and repository evidence, `## Assignment Report On Moodle` with the wrapper's contents, `### Submission Procedure`, and `## Checklist`.

The repository evidence names one merged pull request that closed its task issue, and the latest green link-check and Markdown-check runs on `main`.
The Moodle wrapper keeps Assignment 3's six items: project name and team number; the team table; the permalink to `reports/week-04/README.md` at the full commit hash; the meeting recording link or the line saying why there is none; the transcript when the customer refused publication; and the line confirming that no private-only material was committed.
The checklist has one item per part and per artifact, each citing the rule its part cites.

The coverage table rows are:

| Deliverable                | Artifact                                                                                           |
| -------------------------- | -------------------------------------------------------------------------------------------------- |
| Sprint plan and estimates  | `docs/project-plan.md#sprint-04`, with its goal, its planned velocity, and its actual velocity     |
| Product backlog refinement | the `SPRINT-05` and `SPRINT-06` milestone issues, with the `Story Points` on each                  |
| Quality requirements       | `docs/quality-requirements/qr/`, with `docs/quality-requirements/README.md` as the priority matrix |
| Functional requirements    | `docs/functional-requirements/`, with `README.md` as the index and `fr/` for the records           |
| Architecture and drivers   | `docs/architecture/README.md`, with the drivers it links and the decision index                    |
| Architectural decisions    | `docs/architecture/adr/` and the index                                                             |
| Glossary                   | `docs/glossary.md`                                                                                 |
| Team `AGENTS.md`           | `AGENTS.md`                                                                                        |
| Week 3 action points       | `## Previous action points` in `reports/week-04/meeting-report.md`                                 |
| Week 3 open questions      | `## Previous open questions` in the same report                                                    |
| Meeting script             | `reports/week-04/meeting-script.md`                                                                |
| Customer validation        | `reports/week-04/meeting-report.md`, the transcript when there is one, and each story's verdict    |
| `REL-04`                   | the tag, the changelog's released section, and the plan's `REL-04` line                            |
| Sprint retrospective       | `reports/week-04/sprint-retrospective.md`                                                          |
| AI usage                   | `reports/week-04/ai-usage.md`                                                                      |

The **What Good Looks Like** guidance:

- quality requirements a stranger could fail, with a response measure that runs;
- a priority matrix that does not rate everything `High`, and the mandated testability requirement rated `High` with its reason;
- functional requirements a reviewer can check without opening a story, a `**Traces to:**` that names their origins and constraints, and a story that names the FRs and ADRs specifying it;
- criteria a checker can run as written, including a table or an example where prose would be vague;
- a drivers section that points at where the drivers live, a decision index where each driver meets the record that answers it, and a vision the architecture links rather than copies;
- decision records that name a rejected option, the ASRs they account for, and the quality attributes they accept with the QR that covers each;
- a trace chain a reader can walk from a task through the ADR or the FR to a `TOS-nn`;
- estimates the team can defend, a `**Planned Velocity:**` they knew before they started, and an `**Actual Velocity:**` they compare it with, both computed from the stories' `Story Points`;
- a glossary that fixes the project's words, and an `AGENTS.md` that lets an agent find the rule instead of guessing it.

## 5. New Maintainer Decision Log `course/decisions/a4.md`

The file follows the format of `course/decisions/a3.md`: a header paragraph, then `A4-DEC-nnn` entries with `**Status:**`, `**Decision:**`, `**Why:**`, `**Alternatives considered:**`, `**Where it lands:**`, and `**Reverses:**` on the entries that reverse an `A3-DEC`.

The entries:

1. Week 4 is the functional requirements, the quality requirements, the architecture decision records, the architecture document's drivers and decision index, the glossary, the ceremonies, the team's `AGENTS.md`, `REL-04`, and the deadlines; the tests, the testing plan, the container, component, and sequence views, and continuous integration (`actionlint` and the product-code CI) are Assignment 5's.
2. Seven flat requirements files own the new rules: architecture, functional requirements, quality requirements, ADRs, sprint ceremonies, agent instructions, and the glossary.
3. `FR-nnn` exists; this entry reverses `A3-DEC-014` in full, whose "stories with their acceptance criteria are the functional requirements" clause stops holding.
   Entry 27 restates the clauses it leaves standing.
4. An FR is the specification independent of its stories: it has no story field and does not restate the story, may cite the origin story in `**Traces to:**`, names its `**Containers:**`, and carries its own criteria with anchors.
5. `QR-nn`: one file at `docs/quality-requirements/qr/QR-nn.md`, one ISO/IEC 25010 pair, six scenario parts, the index as the priority matrix, and the testability requirement at `High`.
6. `ADR-nnn`: MADR-shaped files, the `**Addresses:**` list of ASRs, the `**Decision:**` field, and the five statuses ending in `Dropped`.
7. The architecture document links the drivers to the sections and files that hold them, and carries the decision index and the trace; the product vision keeps the goal, stakeholders, constraints, boundary, and system context, and links the architecture.
8. The decision index has the columns `ADR`, `Status`, `Addresses`, and `Decision`, and it is the one table that maps a driver to the record that answers it; `Proposed` is active; the three minimum ADRs are `Accepted` before submission.
9. `Story Points` stops at `13`; a larger story is split before it is estimated or scheduled.
   Ideal hours are not tracked: a task is ordered by `Priority` and carries no estimate.
10. The sprint section carries `**Planned Velocity:**` and `**Actual Velocity:**`, computed by hand from the stories' `Story Points`.
11. The link model: the ADR `**Addresses:**` accounts for the ASRs, the FR `**Traces to:**` names the ADRs that constrain it, and there is no `ASR` field; the reverse lookup is a search of the ADR lists.
12. Issue types replace the story and task labels, are applied to the existing issues in the same pass, and the six labels then retire.
13. `MoSCoW` is an issue field, migrated from the four labels, which then retire; every story gets the field before the labels go.
14. A story's criteria are checkboxes; a closed story is reopened when a new related task is linked, then closed again.
15. `AC-nn` also belongs to an FR, with one `###` section per criterion so it can be linked.
16. The ceremonies come from the Scrum Guide; the weekly customer meeting is the Sprint Review, and estimation is an activity.
17. The retrospective has the four sections, the `Reason` column, and the `Carried Actions` outcomes; the weekly report's coverage table links it.
18. A task's `### Requirements` section names its FRs and ADRs, which extends the trace chain by one hop.
19. The mandated testability requirement carries `High` business importance, and the rule gives the reason.
20. The team's `AGENTS.md` is required from Week 4, and `agent-instructions-requirements.md` owns it.
21. The glossary is `docs/glossary.md` with at least three terms.
22. Week 4's hard deadline is Saturday 24 October 2026; Weeks 4 to 9 are Saturdays with no soft deadline, and the Week 11 individual reflection keeps its December date.
23. The syllabus's Week 4 deliverables are the detailed path list, the Week 4 section gains an `Objectives` list, and the Submission 4 row is a short category summary; the Week 5 deliverables and Submission 5 row are Assignment 5's.
24. Week 4 adds no CI check: the product-code CI's marker moves from Week 4 to Week 5, and `actionlint` and the product-code CI are Assignment 5's.
25. The new identifier families, `FR-nnn`, `QR-nn`, and `ADR-nnn`, and the new paths `docs/functional-requirements/`, `docs/quality-requirements/`, and `docs/architecture/`, each named for the artifact it holds so the two requirement groups read as a pair; `QRT-nn` arrives with Assignment 5.
26. Assignment 4 is a delta ordered by the work, with the Week 3 report shape.
27. The stack is an ADR that cites the customer's `DEC-nnn`, and the `DEC-nnn` trigger links it; this entry restates `A3-DEC-014`'s stack clause, and its `.gitignore` and Dependabot clauses stay in `repository-requirements.md`.
28. `A3-DEC-022` is reversed by a new `A4-DEC` that states the new chain through the FR and the ADR.
29. The free-riding setup question is removed from the weekly report, because the report is public and an answer can name underperforming members; the contribution table is the evidence, and the traceability question stays.

## 6. Edited Files Outside `requirements/`

- **`course/syllabus.md`**: The Week 4 deliverables name each artifact by path: the sprint plan and estimates, the quality requirements, the functional requirements, the architecture with the drivers it links and the decision index, the decision records, the glossary, the team's `AGENTS.md`, the retrospective, and `REL-04`.
  The Week 4 section gains an `- **Objectives**:` list like Week 5's, covering the quality model and the six-part scenario, the quality requirements, the functional requirements and ADRs, the architecture with its drivers and decisions, the ceremony records and estimates, the glossary and the team's `AGENTS.md`, and `REL-04`.
  The Submission 4 row is a short category summary in the same order, and both call the group quality requirements.
  The Week 5 deliverables, the Submission 5 row, and continuous integration (`actionlint` and the product-code CI) are Assignment 5's.
  Week 4's hard deadline becomes Saturday 24 October at 23:59, and Weeks 5 to 9 move to Saturdays 31 October, 7 November, 14 November, 21 November, and 28 November.
  The global deadline rule says the group submissions from Week 4 to Week 9 are due on Saturday at 23:59 with no soft deadline, Weeks 1 to 3 keep their recorded pair, and the Week 11 individual reflection keeps `December 10 at 23:59`; the late-submission example says Saturday.
  The `Verification & Validation` line under Week 5 moves into the Week 5 lecture line it describes.
- **`README.md`**: The Assignment 4 row in Assignments, the new guide row in The Guides, the seven new requirements files in The Rules table, the product-vision row gaining the architecture link, and the Saturday deadline in the assignment table and the closing sentence.
- **`SKILL.md`**: Matching rows in Where Each Kind Of Work Is Ruled, with the guide beside each requirements link: functional requirements, quality requirements, the architecture with its decisions, the sprint ceremonies, the team's `AGENTS.md`, and the glossary.
  The product-vision row gains the architecture link as in the README, and the front-matter `description` names the new Week 4 artifacts.
- **`course/rules.md`**: The seven new requirements files in Where The Rules Live, the new guide, the product-vision row gaining the architecture link, and the deadline rule: the group submissions from Week 4 to Week 9 are due on Saturday at 23:59 with no soft deadline, Weeks 1 to 3 keep their pair, and the Week 11 individual reflection keeps its date.
- **`AGENTS.md`**: The Repository Map with the seven new requirements files and `guides/quality-and-architecture.md`; the `requirements/` table with them, and the product-vision row keeping the scope and gaining the architecture link; the `docs/` Destination Map's Week 4 row (`docs/architecture/README.md` with the drivers it links, the decision index, and the trace, and `adr/`, `docs/functional-requirements/` with `fr/`, `docs/quality-requirements/` with `qr/`, `docs/glossary.md`), leaving the container, component, and sequence views and the testing plan to Assignment 5; the identifier conventions with the new families and their heading forms, including the sentence that `DEC-nnn`, `FR-nnn`, and `ADR-nnn` take three digits and every other family two; the terminology list with the new words (`functional requirement`, `quality requirement`, `architecture decision record`, `architecturally significant requirement`, `quality attribute scenario`, `architectural driver`, `option`, `container`, `sprint planning`, `product backlog refinement`, `sprint review`, `retrospective`, `velocity`, `glossary`, `provenance`, `conformance`); the Scrum paragraph rewritten for the three fields, the hand-computed velocity, and the Sprint Review; the "Do Not" bullet about the soft/hard deadline pair replaced, because there is no soft deadline from Week 4; and the assignment checklist unchanged.
- **`TODO.md`**: The A4 items this work closes are ticked: the acceptance criteria checkboxes, the reopened story, the `Traces to` origins, the velocity fields, the glossary, the free-riding answer removed, the manual calculation of velocity, the technical-risk rating, and the public retrospective.
  The lecture additions are marked skipped, and the feature issue type is deferred with a note.
- **`course/decisions/a3.md`**: `A3-DEC-014` and `A3-DEC-022` get `**Status:** Reversed by A4-DEC-nnn`, linked, and keep their statements and fields; `A3-DEC-014`'s surviving stack, `.gitignore`, and Dependabot clauses are restated by an `A4-DEC`, because a reversal cannot be partial.

## 7. The Students' `.github/` Files The Rules Cover

These are repository content rather than artifacts, per [Where Artifacts Live In The Repository](../../requirements/general-requirements.md#where-artifacts-live-in-the-repository), and the rules own them.

- **`.github/ISSUE_TEMPLATE/user-story.yml`**: It applies the `User Story` type, it gains the `Specified by` field, it prefills the first acceptance criterion as `- [ ] AC-01: `, and it no longer applies the `user-story` label.
  The type is also set on the existing story issues, and the label retires.
  The form cannot set the issue fields, which are set after the issue is created.
- **`.github/ISSUE_TEMPLATE/task.yml`**: It applies the `Task` type, keeps its `### Story` section, gains a `### Requirements` field for the FRs and ADRs, and no longer applies the `task` label.
  The type is also set on the existing task issues, and the label retires.
- **`.github/pull_request_template.md`**: It stays as it is, owned by [The Pull Request Template](../../requirements/pull-requests-requirements.md#the-pull-request-template).
  The task issue's `### Requirements` section carries the FR and ADR links; no `FR` / `ADR` / `QR` prompt block is added.
- **`.github/workflows/`**: No Week 4 change; `actionlint` and the product-code CI are Assignment 5's.
- **`AGENTS.md`**: The team's own instruction file, mapping each maintained artifact path to the requirements file that checks it, per `agent-instructions-requirements.md`.
- **`docs/glossary.md`**: The project's glossary, with at least three terms.

## 8. Edge Cases And Failure Modes

- **A story that several FRs specify:** Allowed: the story's `### Specified by` lists all of them, and no FR names the story back.
- **An FR that arrives after its story is built:** Allowed: `**Traces to:**` cites the story, and the FR starts from the behavior that exists.
- **A QR no ADR accounts for:** Allowed: the QR is a requirement that no decision has shaped yet, and the drivers section still reaches it through the quality requirements index it links.
- **A story dropped after its FR exists:** The FR becomes `Dropped` with the reason and the `DEC-nnn`, and a story that still points at it is re-pointed or closed.
- **An ADR that drops an FR:** The FR's `**Dropped:**` cites the `ADR-nnn`, and the ADR's `**Addresses:**` still lists the FR, because the decision is answerable for the removal.
- **A customer decision that changes a quality requirement:** A `DEC-nnn` and a `**Changed:**` on the QR, never an edit with no record.
- **A stack revision:** It is an ADR whose `**Decision:**` names the stack's `DEC-nnn`, which stays as it is.
- **A team whose organization cannot create issue types or fields:** It declares a deviation and uses the labels; no Week 4 rule is rewritten for the case.
- **One rule in two places:** The estimation rule, the decision-index rule, the type rule, and the weekly-report content rules each have exactly one owner, and every other file links to it.

## 9. Tests And Validation

- `pnpm run format:markdown`, then `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run test:markdown-format`, and `pnpm run test:markdown-rules`.
- `pnpm run check:links`, which checks every heading anchor the new files cite.
- `pnpm run lint:actions` for any workflow change, and `pnpm run check:lectures` only if a deck changes.
- A routing audit: every new file appears in `README.md`, `SKILL.md`, `course/rules.md`, and both of `AGENTS.md`'s tables.
- A cross-reference audit: every `**Since: W4**` rule has an Assignment 4 part, and every assignment part and coverage row has a rule.
- A date audit: `course/syllabus.md`, `README.md`, `assignments/assignment-4.md`, this plan, and `SPRINT-04`'s `**Due:**` all say 24 October 2026; Weeks 5 to 9 say the Saturday dates.
- A link-model audit: an FR's `**Traces to:**` names the ADRs that constrain it, an ADR's `**Addresses:**` names the FRs and QRs it accounts for, and no file carries an `ASR` field.
- A drivers audit: `## Drivers` names no `TOS-nn`, `CON-nn`, `FR-nnn`, or `QR-nn`, links the threshold in full, the vision's `## Constraints`, the functional requirements index, and the quality requirements index; the decision index's `Addresses` cells name the drivers; no section moved out of `docs/product-vision.md`; and the vision links `docs/architecture/README.md`.
- A three-digit audit: `FR-nnn` and `ADR-nnn` use three digits everywhere, and no other Week 4 family does.
- A full-example audit: every new requirements file ends with one, every edited example carries its new fields, and every example is set in the week its new rule belongs to.
- `backlog doctor`, after the task changes.

## 10. Assumptions

- This work lands in the `itpd` course repository only, and no file is created under `docs/` or `reports/`, since those belong to student repositories.
- The Week 4 dates come from the syllabus, and its hard deadline moved to Saturday 24 October 2026 in the design session; Weeks 4 to 9 are Saturdays with no soft deadline, and the Week 11 individual reflection keeps its December 10 date.
- The constraints, boundary, and system context stay in `docs/product-vision.md` under their Week 2 rules; the architecture document links the threshold of success, the vision's constraints section, the functional requirements index, and the quality requirements index, and the vision links the architecture document.
  The Week 2 assignment stays historical, so the Week 4 assignment adds the architecture link and moves nothing.
- The ASR is not a field: the ADR `**Addresses:**` list is the set of ASRs, and the FR `**Traces to:**` names the ADRs that constrain it; the reverse lookup is a search of the ADR lists.
- The stack is an ADR that cites the customer's `DEC-nnn`; the existing `DEC` is not migrated, `A3-DEC-014` is reversed in full by an `A4-DEC` that restates its stack, `.gitignore`, and Dependabot clauses, and `A3-DEC-022` is reversed by another.
- ISO/IEC 25010:2023 is the standard cited, with the course's Title Case labels and the link `https://iso25000.com/en/iso-25000-standards/iso-25010`; the Scrum Guide is the ceremony method; and a container is C4's deployable unit, though the container view that draws them is Assignment 5's.
- The lecture stays as built, and its commented-out Scrum slides are not uncommented here.
- Week 4 adds no CI check: the product-code CI's marker moves to Week 5, and `actionlint` and the product-code CI are Assignment 5's.
- The team schedules the customer meeting, which may fall on Friday; the meeting is the Sprint Review.
- The two review files are local notes and are not committed; the plan cites neither.
- The feature issue type stays open in `TODO.md`, with a note that this work defers it.
- This week's release is `REL-04`, and the first release was `REL-03`.
- The meeting-booking example is the example for every full example, and the docs site serves the new directory READMEs.
- Every new requirements file gets one full example in the meeting-booking example, every edited full example gains the fields its rule adds, and every example is set in the week its rule belongs to.
- The glossary is a student artifact at `docs/glossary.md`, with at least three terms, and linking terms from prose is recommended rather than required.

## 11. Sources

### The Course Materials This Plan Changes

- [`course/syllabus.md`](../syllabus.md), especially Week 4 and the Submission 4 row: it fixes the week's deliverables and dates.
- [`course/plans/a5-plan.md`](a5-plan.md): the scope this plan hands to Assignment 5.
- [`lectures/lecture-4.typ`](../../lectures/lecture-4.typ): ISO 25010, the six-part scenario, the drivers, the ADR, the priority matrix, and the commented-out Scrum material.
- [`assignments/assignment-3.md`](../../assignments/assignment-3.md): the shape Assignment 4 copies.
- [`course/decisions/a3.md`](../decisions/a3.md), especially `A3-DEC-002` (ceremonies deferred to Week 4), `A3-DEC-014` (no functional-requirements file), `A3-DEC-020` (the report's verdicts), `A3-DEC-021` (the assignment as a delta ordered by the work), and `A3-DEC-022` (the one-way chain from a commit to the threshold).
- [`AGENTS.md`](../../AGENTS.md): the layers, the `docs/` destination map, the identifiers, and the Scrum paragraph this plan rewrites.
- [`TODO.md`](../../TODO.md), the A4 section: the acceptance criteria checkboxes, the reopened story, the `Traces to` origins, the velocity fields, the glossary, and the report questions it changes.

### The Student-Facing Requirements This Plan Extends

- [General Requirements](../../requirements/general-requirements.md), [Repository Requirements](../../requirements/repository-requirements.md), [Definition Of Done](../../requirements/definition-of-done-requirements.md), [Issue Tracking](../../requirements/issue-tracking-requirements.md), [User Stories](../../requirements/user-stories-requirements.md), [Task Issues](../../requirements/task-issues-requirements.md), [Planning](../../requirements/planning-requirements.md), [Product Vision](../../requirements/product-vision-requirements.md), [Decisions](../../requirements/decisions-requirements.md), [Customer Meetings](../../requirements/customer-meetings-requirements.md), [Weekly Report](../../requirements/weekly-report-requirements.md), and [`course/rules.md`](../rules.md).

### The Format Reference

- The `timeful` checkout at `/home/eyjafjallajokull/Desktop/gh/timeful`: `docs/requirements/README.md`, `docs/requirements/functional/README.md` with `fr/FR-nnn.md`, `docs/requirements/quality/README.md` with `qr/QR-nnn.md` and `qr/TEMPLATE.md`, `docs/design/architecture/README.md`, and `adr/TEMPLATE.md`.
- [MADR 4](https://adr.github.io/madr/), [ISO/IEC 25010:2023](https://iso25000.com/en/iso-25000-standards/iso-25010), the [Scrum Guide](https://scrumguides.org/scrum-guide.html), and the [Modified Fibonacci sequence](https://framework.scaledagile.com/blog/glossary_term/modified-fibonacci-sequence).

### The Prior Iterations Consulted

- [`tmp/itpd-2025/assignments/assignment-4.md`](../../tmp/itpd-2025/assignments/assignment-4.md), for the sprint review, the retrospective's three questions, the grooming, and the 1–2 hour task size.
- The backlog tasks this plan closes or changes: TASK-010 and TASK-066.
