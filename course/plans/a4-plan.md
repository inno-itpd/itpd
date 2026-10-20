# Plan: Assignment 4 — Quality, Requirements, Architecture, And The Fourth Release

This plan records the final design of Assignment 4 and everything it depends on, before the work is written.
It replaces the first draft and its correction list: every decision is stated once, in the form the requirements will take, and the superseded corrections are gone.
The design was settled in the review recorded in `findings.md` and in the decisions that `course/decisions/a4.md` will carry.
The [Design Decisions](#design-decisions) section states the model and the reason for it.

## Goal And Success Criteria

Write Assignment 4 and everything it depends on, so Week 4 can be handed in from the course materials.
The week covers: the ISO/IEC 25010 quality model, testable quality requirements and their tests, the architectural drivers and the architecture document, the functional requirements behind the stories, the architecture decision records, the glossary and the team's `AGENTS.md`, the sprint ceremonies, `actionlint`, the `REL-04` release, and the deadline change.

Done means:

- `assignments/assignment-4.md` exists, is written as a delta against `requirements/`, and follows the Assignment 3 shape: header, Objectives, numbered parts, What Good Looks Like, the repository report with its coverage table, the Moodle wrapper, Submission Procedure, and Checklist.
- Eight new requirements files own the new rules, and every new rule has exactly one owner.
- The architecture document takes the constraints, boundary, and system context from the product vision, and the product vision links it.
- The functional requirements, quality requirements, their tests, the ADRs, the ceremonies, the team's `AGENTS.md`, and the glossary each have a requirements file.
- `course/syllabus.md`, `README.md`, `SKILL.md`, `course/rules.md`, `AGENTS.md`, and `TODO.md` are updated in step with the new files and the deadline change.
- `course/decisions/a4.md` records every decision as an `A4-DEC-nnn` entry, and `course/decisions/a3.md` marks the two reversed entries.
- `pnpm run format:markdown:check`, `pnpm run lint:markdown`, and `pnpm run check:links` pass.

## Reference And Baseline

- The reference checkout is `/home/eyjafjallajokull/Desktop/gh/timeful`.
  The workspace-relative `../../time-tools/timeful` does not exist.
- The reference supplies the shape of the FR, QR, and ADR records: the six-part quality attribute scenario, the ISO/IEC 25010 characteristic and sub-characteristic table, the MADR sections, and the decision index.
- The existing `itpd` conventions win where the two differ: no YAML front matter, since no course file uses it; an identifier heads a section or a file, with a first line and then a bulleted `- **Label:**` field list; every family has a dropped form; `**Since: WN**` markers; one owner per rule.
- The course changes the reference in four places: the constraints, boundary, and system context move into the architecture document; the quality requirement index is also the priority matrix; a `QRT-nn` is scoped to its QR; and the ADR `**Addresses:**` accounts for the ASRs rather than naming a generic effect.

## Architecture Change Map

The change touches the four layers `AGENTS.md` defines, plus the schedule and the maintainer decision log.

```text
assignments/assignment-4.md          what this week requires (deltas only)
guides/quality-and-architecture.md   how (new)
requirements/                        the rules (eight new files, and edited ones)
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

The model has four record families and one index per group.

- **FR.** `FR-nnn` is a file under `docs/functional-requirements/fr/`.
  It states behavior independently of the story that needed it, carries its own `### AC-nn` criteria, and names no story.
  Its `**Traces to:**` field records its origins and the ADRs that constrain it.
  Its `**Containers:**` field names the containers it lands in.
- **QR.** `QR-nn` is a file under `docs/quality/qr/`.
  It carries one ISO/IEC 25010:2023 pair and the six-part quality attribute scenario.
  Its tests are `## QRT-nn` sections inside the same file, numbered from `QRT-01` within the QR and never globally unique.
- **QRT.**
  A test has no status, sprint, or evidence of its own.
  The `## Quality Requirement Testing Plan` in `docs/project-plan.md` is the one table that carries `Status`, `Planned for sprint`, and `Evidence`.
  A QR with `**Business importance:** High` must have at least one `Automated` test so it can run in CI.
- **ADR.** `ADR-nnn` is a file under `docs/architecture/adr/`, in the MADR shape.
  Its `**Addresses:**` lists the ASRs it accounts for: the `FR-nnn` and `QR-nn` links that the decision is responsible for.
  It does not use relation words.
  Its `**Decision:**` names the `DEC-nnn` whose choice it documents, when one exists.
- **The link model.**
  The ADR is the later artifact and owns the link to the requirements it accounts for.
  The FR is also a later artifact when it records what constrains it, so its `**Traces to:**` names the ADRs that constrain it.
  The two facts are different: the ADR says “I account for this ASR”, and the FR says “this ADR constrains me”.
  There is no `ASR: true/false` field; the ADR `**Addresses:**` list is the set of ASRs.
- **The architecture document.** `docs/architecture/README.md` is the one architecture document.
  It owns the constraints, boundary, and system context, and the context diagram is embedded there.
  The product vision keeps the goal and stakeholders and links the architecture.
  The architecture embeds the context, container, component, and sequence views; every view has its source beside its image, and the images use SVG or PNG with an opaque background.
- **The product vision.**
  The vision keeps `## Goal` and `## Stakeholders`.
  From Week 4 it links the architecture document for the constraints, boundary, and system context; it does not duplicate them.
  The Week 4 assignment moves the existing Week 2 sections from the vision into the architecture.
- **The quality index.** `docs/quality/README.md` is the priority matrix: `QR`, `Outcome`, `Business importance`, `Technical risk`, `Characteristic`, `Sub-characteristic`, `Status`.
  It sorts active records first, then business importance High to Low, then technical risk High to Low.
  No separate matrix table is added.
- **The decision index.** It has the columns `ADR`, `Status`, `Addresses`, and `Decision`. `Proposed` and `Accepted` are active; `Superseded`, `Deprecated`, and `Dropped` are inactive.
  The active records come first, and Week 4 requires the three minimum ADRs to be `Accepted` before submission.
- **Estimation.**
  Four public single-select issue fields: `MoSCoW` and `Story Points` on a `User Story`, and `Ideal Hours` and `Priority` on a `Task`. `Story Points` stops at `13`; anything above `13` is split before it is estimated or scheduled. `Ideal Hours` stops at `8`; a task above `8` is split before it is scheduled.
- **The sprint record.** `docs/project-plan.md`'s `### SPRINT-nn` section carries `**Planned Velocity:**`, `**Planned Ideal Hours:**`, `**Actual Velocity:**`, and `**Actual Ideal Hours:**` after `**Sprint Backlog:**`.
  Planned values are the selected stories' points and selected tasks' ideal hours; actual values are the completed stories' points and completed tasks' ideal hours, set when the sprint closes.
- **The ceremonies.**
  The method is the [Scrum Guide](https://scrumguides.org/scrum-guide.html).
  The weekly customer meeting is the Sprint Review, estimation is an activity inside planning and refinement, and every sprint from `SPRINT-04` ends with a retrospective that carries a `## Carried Actions` section.
- **Continuous integration.** `actionlint` over `.github/workflows/` is a Week 4 rule and a Week 4 pull request check.
  Product-code CI moves to Week 5, with its Definition of Done item.
- **Deadlines.**
  From Week 4 through Week 9 every submission is due on Saturday at 23:59; there is no soft deadline.
  Weeks 1 to 3 stay as their assignments recorded them.
- **The glossary.** `docs/glossary.md` is a Week 4 maintained artifact with at least three terms.
  Linking every mention of a term is recommended, not required.
- **The team's `AGENTS.md`.**
  From Week 4 the repository root carries an `AGENTS.md` that maps each maintained artifact path to the requirements file that checks it.
  A new requirements file owns it.

## 1. New Requirements Files (`requirements/`)

All new files are flat in `requirements/`, carry `**Since: W4**` markers, a ToC, `Required` / `Recommended` / `Example` labels, and one full example at the end, in the meeting-booking example the other files already use.
`architecture-requirements.md` also carries the constraints, boundary, and system context rules with `**Since: W2**`, because those artifacts are created in Week 2 and move into the architecture document in Week 4.

### `architecture-requirements.md`

- **Where The Architecture Lives:** `docs/architecture/README.md` is the only architecture document.
  It carries these parts, in order:
  1. `## System Context`, with the context diagram, its source, and the external actors;
  2. `## Boundary`, with one `### BND-nn` section per item;
  3. `## Constraints`, with one `### CON-nn` section per constraint;
  4. `## Drivers`, with the business goals, the constraints, the functional requirements, and the quality requirements;
  5. `## Views`, with the container, component, and sequence views;
  6. `## Architectural Decisions`, with the decision index;
  7. `## Trace`, with the link to the testing plan.
- **The Move:** The constraints, boundary, and system context rules move here from [Product Vision Requirements](../../requirements/product-vision-requirements.md#system-context).
  They keep `**Since: W2**` markers and the fields and citations the product vision gave them.
  The product vision keeps `## Goal` and `## Stakeholders`, and gains a `## Architecture` link.
  Week 4 moves the existing `## Constraints`, `## Boundary`, and `## System Context` sections from `docs/product-vision.md` to the architecture document, and leaves the `## Architecture` link in the vision.
  No content stays in both files.
- **System Context:** The context diagram is embedded under `## System Context`, committed at `docs/architecture/context.<ext>` with its source beside it.
  It shows the product, the external actors, and the external systems it exchanges data with.
  It agrees with the boundary list: every external system or actor a boundary item names appears on the diagram, and everything on the diagram exchanges something with the product.
  The diagram is legible in both themes and has an opaque background.
  The product vision links `docs/architecture/README.md#system-context`; it does not embed a second copy.
- **Boundary:** Each `### BND-nn` section states one job somebody could expect the product to do and that it will not do.
  Its fields are `**Status:**`, `**Handled by:**`, `**Why:**`, `**Changed:**`, and `**Dropped:**`, in that order.
  A decision that moves a job into or out of the boundary has an entry; a job moved out is a new `BND-nn` whose `**Why:**` cites it, and a job moved in keeps its `BND-nn` marked dropped and cites it.
- **Constraints:** Each `### CON-nn` section states one condition the product has to live inside.
  Its fields are `**Status:**`, `**Source:**`, `**What it costs:**`, `**Decision:**`, `**Changed:**`, and `**Dropped:**`, in that order.
  The four sources are Customer-given, Team-given, Environmental, and Derived.
  A technology choice is an ADR, not a constraint; a customer mandate is a `CON-nn` whose `**Decision:**` cites the `DEC-nnn` that records it.
- **Drivers:** The business goals are the `TOS-nn` goals, each linked with a one-line label and not copied; the threshold of success owns the statement.
  The constraints are each `CON-nn` linked with the requirement it constrains.
  The functional requirements are each `FR-nnn` linked.
  The quality requirements are each `QR-nn` linked in the order of the quality index.
  The drivers section does not restate a requirement; it links it.
- **ASRs:** An architecturally significant requirement is a requirement that affects the architecture and the quality of the software system.
  The `**Addresses:**` field of an ADR lists the ASRs that ADR accounts for, so the ADR set is the marker and no separate `ASR` field is added.
  The drivers section lists every requirement; the ADRs show which of them shaped the architecture.
- **Views:** Four views, numbered as the diagram rules number them:
  1. the context view, in `## System Context`, embedded from `docs/architecture/context.<ext>`;
  2. the container view, embedded from `docs/architecture/container.<ext>`, showing the deployed units and what they exchange;
  3. the component view, embedded from `docs/architecture/component.<ext>`, showing the components inside one named container and their well-defined interfaces;
  4. the sequence view, embedded from `docs/architecture/sequence-<core-task>.<ext>`, showing the core task's main actor flow across the containers, with each step numbered.

  Each view is embedded, and each has its source committed beside its image.
  The container view names the containers the functional requirements use, such as `frontend`, `static content`, and `backend`; a project may add a database or another container, so the set is the team's, not a fixed list.
  The component view expands one of those containers and shows the components inside it, with the interfaces they expose.

- **Diagrams And Legends:** This heading is the anchor other files link, and it is the sole owner of every diagram rule under `docs/`:
  - every diagram carries a legend that names each shape, colour, and arrow it uses; a Markdown legend below the image is allowed when the image is legible without it;
  - the image and its source share a directory and a base name, and are updated in one change;
  - the image is SVG or PNG with an opaque background, so it is legible in both themes;
  - [Structurizr](https://structurizr.com/), [LikeC4](https://github.com/likec4/likec4), and C4-PlantUML are recommended for the C4 views; Mermaid, PlantUML, D2, draw.io, and Excalidraw remain allowed;
  - a Mermaid source is committed beside an exported SVG or PNG, because a code fence alone is not the embedded image;
  - the diagrams agree with the document's text and with the boundary;
  - every element the document names in prose appears in a view.
- **Architectural Decisions:** The index is one table under `## Architectural Decisions`, with these columns in this order:

  | Column      | What it holds                                                                         |
  | ----------- | ------------------------------------------------------------------------------------- |
  | `ADR`       | The `ADR-nnn` as link text, linked to its file under `adr/`                           |
  | `Status`    | `Proposed`, `Accepted`, `Superseded`, `Deprecated`, or `Dropped`, matching the record |
  | `Addresses` | Each `FR-nnn` and `QR-nn` the record accounts for, linked                             |
  | `Decision`  | The record's decision in one line, short enough to scan                               |

  `Proposed` and `Accepted` are active; the other three are inactive.
  The active records come first, in `ADR-nnn` order, and the inactive ones follow, in `ADR-nnn` order.
  An ADR that addresses several requirements lists them all in one cell.

- **Trace Forward:** The trace links `docs/project-plan.md#quality-requirement-testing-plan` once, so the architecture document never restates when a test passes.
  It also states the chain from a task to the threshold: the task's `### Requirements` names the FR or ADR, an FR names its story or value proposition in `**Traces to:**`, the story cites its `VP-nn`, and the `TOS-nn` is the goal the threshold measures.

### `functional-requirements-requirements.md`

- `FR-nnn` takes three digits.
  It is issued once, never renumbered, and never reused.
- Each FR is `docs/functional-requirements/fr/FR-nnn.md`, headed `# FR-nnn: Title`, and `docs/functional-requirements/README.md` is the index table in `FR-nnn` order, with the columns `FR`, `Title`, `Containers`, and `Status`.
- Its fields, in this order:
  - `**Status:**`, `Active` or `Dropped`;
  - `**Traces to:**`, one or more entries recording where the requirement came from and what constrains it: the `US-nn`, `DEC-nnn`, `CON-nn`, or meeting report that produced it, and the `ADR-nnn` that constrains it, each linked; at least one entry;
  - `**Containers:**`, one or more container names from the architecture's container view, such as `frontend`, `static content`, or `backend`;
  - `**Changed:**`, each change, recorded as a gap records one, only when it changed;
  - `**Dropped:**`, the date, the reason, and the `DEC-nnn` or `ADR-nnn` when one caused it.
- `**Traces to:**` is provenance and constraint.
  The story that produced the requirement, the decision that imposed it, and the constraint that shapes it are origins; the ADR that constrains it is a constraint.
  The ADR's `**Addresses:**` lists the FR as an ASR it accounts for, so the pair is two facts: “where it came from and what limits it” on the FR, and “which ASR this decision accounts for” on the ADR.
  No other field repeats the ADR.
- The FR names no story.
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

- `QR-nn` takes two digits and is one file at `docs/quality/qr/QR-nn.md`, headed `# QR-nn: <short outcome>`, and `docs/quality/README.md` is the index in `QR-nn` order.
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
- `docs/quality/README.md` is the priority matrix, not a second list.
  Its columns, in this order, are `QR`, `Outcome`, `Business importance`, `Technical risk`, `Characteristic`, `Sub-characteristic`, and `Status`.
  It sorts active records first, then business importance High to Low, then technical risk High to Low.
  The index does not repeat the tests or the scenario; the QR file carries them.
- A QR cites no ADR, and no QR has an `ASR` field.
  The ADR's `**Addresses:**` is where the two meet; a QR that an ADR accounts for is an ASR.
- A QR with `**Business importance:** High` has at least one `Automated` `QRT-nn`, so the test can run in CI.
  A lower-importance QR may have a `Manual` test, with the reason in the test.

### `quality-requirement-tests-requirements.md`

- A `QRT-nn` is a `## QRT-nn` section inside its `QR-nn` file, numbered within that QR, `QRT-01` upward, and never renumbered or reused there.
  It is not globally unique; cite it as `QR-01 QRT-02`, linked as `QR-01.md#qrt-02`.
- Its first line below the heading is the test in one sentence, and it carries these fields, in this order:
  - `**Implementation:**`, `Manual` or `Automated`;
  - `**Runs at:**`, the file path of the script, the workflow step, or the inspection step, in one line.
- The body is a numbered procedure and one `**Pass when:**` criterion, which restates the QR's response measure in a form a stranger can run.
- Every `QR-nn` has at least one `QRT-nn`.
- A test carries no `**Status:**`, no `**Planned for sprint:**`, and no `**Evidence:**`.
  The quality requirement testing plan carries all three: `docs/project-plan.md`'s `## Quality Requirement Testing Plan`, per `planning-requirements.md`'s `## Quality Requirement Testing Plan`, is one table with these columns, in this order: `QR`, `QRT`, `Status`, `Planned for sprint`, `Evidence`.
  It has one row per `QRT-nn`.
- `Status` is `Passes`, `Fails`, or `Not implemented`, and it is current by the end of the sprint.
  `Planned for sprint` is exactly one `SPRINT-nn`, linked through the plan.
  `Evidence` links the CI run for an `Automated` test, or the evidence the team chose for a `Manual` test: a dated section of the week's report, a screenshot, or a note.
  Evidence is required for `Passes` and `Fails`; a `Not implemented` row says `None`.
- A `QRT-nn` that is not `Passes` stays in the plan with its `Status` and its planned sprint; it does not gate the release.
  The release's changelog claims a quality requirement only through a `QRT-nn` that is `Passes` at the end of the sprint, per [Release Requirements](../../requirements/releases-requirements.md#the-changelog), so a release never claims quality it has not verified.
- A dropped test's table row says `Dropped`, and its section keeps `**Dropped:**` with the date and the reason, per [Identifier Rules](../../requirements/general-requirements.md#identifier-rules).

### `adr-requirements.md`

- `ADR-nnn` takes three digits, one file per decision at `docs/architecture/adr/ADR-nnn.md`, numbered sequentially across the repository.
  `docs/architecture/adr/TEMPLATE.md` is the shape to copy.
- Its fields, in this order:
  - `**Status:**`, one of `Proposed`, `Accepted`, `Superseded`, `Deprecated`, or `Dropped`;
  - `**Superseded by:**`, only on a superseded record, the `ADR-nnn` linked;
  - `**Dropped:**`, only on a dropped record, the date and the reason;
  - `**Created:**` and `**Updated:**`, where `**Updated:**` changes only when an edit leaves the decision as it was, because a changed decision is a new record that supersedes;
  - `**Containers:**`, one or more container names from the architecture's container view;
  - `**Addresses:**`, the ASRs the record accounts for, one or more `FR-nnn` and `QR-nn` links; at least one, and no relation word;
  - `**Decision:**`, the `DEC-nnn` whose choice the record documents, one or more, each linked, only when one exists.
- The body sections are `## Context`, `## Considered Options`, `## Decision Outcome`, and `## Consequences`.
  `## Considered Options` names each rejected option with why it lost.
  An option is called an **option**, because “alternative” is reserved for the `ALT-nn` family.
- `## Consequences` names each quality attribute the decision accepts and the `QR-nn` that covers it, linked.
  Every accepted quality attribute is covered by a named QR; a decision that accepts an attribute with no QR is not ready, so the team either writes the QR or changes the decision.
- The record carries the architectural, technology, or functional-behavior reasoning; the `DEC-nnn` it names carries only what the customer decided.
  The stack is an ADR: it states the stack and justifies it, and it may cite the `DEC-nnn` that records the customer's mandate.
- The record cites no `QRT-nn`: a test proves a requirement, and the decision reaches the test through the requirement it addresses.
- An FR the record accounts for names the ADR in its `**Traces to:**`; a QR does not name the ADR, because the ADR's `**Addresses:**` already carries the connection.
- An active record's row sits in the index's active table, and an inactive record's row in the inactive table below it.
  `Proposed` is active.
- The record's `**Addresses:**` is the set of ASRs; it does not list the artifacts the decision changed.
  A dropped FR records the `ADR-nnn` in its own `**Dropped:**`.

### `sprint-ceremonies-requirements.md`

Five sections, each with its own anchor, and the requirements file that owns each term links these anchors.
The method is the [Scrum Guide](https://scrumguides.org/scrum-guide.html), named here as the source, because the lecture does not teach the ceremonies and the deck's Scrum slides stay commented out.

- **`## Sprint Planning`**: The sprint opens with planning in the plan's `### SPRINT-nn` section, which is the planning record.
  Planning sets the goal, replacing the provisional one, and adds `**Planned Velocity:**` and `**Planned Ideal Hours:**`: the selected stories' story points and the selected tasks' ideal hours.
  The items stay in the sprint's GitHub milestone, which the section links; the plan does not copy that list.
  When the sprint closes, the section gains `**Actual Velocity:**` and `**Actual Ideal Hours:**`, the same sums over the completed items, and one sentence on what moved out and to which sprint.
  The weekly report names the week's planning in its summary and carries no planning section.
  The team plans `SPRINT-04` first, and every later sprint is planned the same way in its own week.
- **`## Product Backlog Refinement`**: Before planning, the items in the next two sprints are refined until each can be estimated, as the guide's refinement does.
  Refinement produces no document: its evidence is the estimate on the issue, and the report's summary names what was refined that week.
  An item small enough to schedule sits in its future sprint's GitHub milestone; an item larger than `13SP` is split before it is scheduled, so the milestone applies only to items small enough to schedule.
  In the first sprint the ceremony runs, planning itself estimates the sprint's items, because the week before had no refinement.
  An issue carried from an earlier week is refined and estimated before it enters a sprint, or it stays unscheduled.
- **`## Estimation`**: Estimation is an activity inside planning and refinement, not a ceremony of its own.
  Four `Public` single-select issue fields carry the estimate and the order of work, and the issue type each pins to says which it applies to:

  | Field          | Options                                                | Pins to      | Set when              |
  | -------------- | ------------------------------------------------------ | ------------ | --------------------- |
  | `MoSCoW`       | `Must Have`, `Should Have`, `Could Have`, `Won't Have` | `User Story` | the story is written  |
  | `Story Points` | `1`, `2`, `3`, `5`, `8`, `13`                          | `User Story` | refinement            |
  | `Ideal Hours`  | `1`, `2`, `4`, `8`                                     | `Task`       | the task is scheduled |
  | `Priority`     | `High`, `Medium`, `Low`                                | `Task`       | the task is scheduled |

  `Story Points` follows the modified Fibonacci sequence up to `13`; a story above `13SP` is split before it is estimated or scheduled.
  A task above `8H` is split before it is scheduled.
  A `13SP` story is the largest one scheduled, and it is decomposed into tasks like any story.
  Stories are compared against stories and tasks against tasks.

- **`## Sprint Review`**: The weekly customer meeting is the Sprint Review.
  It shows the working software, the quality requirements, and the architecture against the drivers, and the customer's verdict on each story is recorded as a `DEC-nnn`, per [Showing Working Software](../../requirements/customer-meetings-requirements.md#showing-working-software).
  The review is not a second meeting: the meeting report is its record, and it carries the review's outcome.
  The team schedules the meeting; it may fall on any day of the week, including Friday.
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
  The weekly report's coverage table links the retrospective, per [Weekly Public Report](../../requirements/weekly-report-requirements.md#weekly-public-report).

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

| File                                 | Change                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| ------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `general-requirements.md`            | Add `FR-nnn`, `QR-nn`, `QRT-nn`, and `ADR-nnn` to rule 1. `FR-nnn`, `QR-nn`, and `ADR-nnn` are exceptions to rule 5, because a one-per-record file's `#` heading carries the title; `QRT-nn` is the section exception to rule 10, because the testing plan carries its state. Extend rule 7 so an `AC-nn` may belong to an FR, and rule 14 so a `QRT-nn` is scoped to its QR and is not globally unique. Add the link model to [Traceability Into Later Weeks](../../requirements/general-requirements.md#traceability-into-later-weeks): the ADR `**Addresses:**` accounts for the ASRs, the FR `**Traces to:**` names the ADRs that constrain it, the story's `### Specified by` is conformance, and provenance and conformance are different facts. Extend that table with the Week 4 rows. |
| `repository-requirements.md`         | The Week 4 block gains a rule for `actionlint` over `.github/workflows/` on pull requests and on `main`, pinned like any other tool; rule 6, the product-code CI rule, moves to Week 5 with `**Since: W5**`. In `### The Course Materials As An Agent Skill`, the `Recommended` `AGENTS.md` line is removed, because the new `agent-instructions-requirements.md` owns the team's file. The root `README` keeps its setup link; no architecture link is added there.                                                                                                                                                                                                                                                                                                                           |
| `definition-of-done-requirements.md` | The `Since: W4` item names `actionlint` among the checks that must be green. A new `Since: W5` item names the product-code CI. The full example's `## Pull Request` list is backfilled with both, so the example matches the rule.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| `issue-tracking-requirements.md`     | `## Issue Fields` gains four single-select `Public` fields with their options and the issue type each pins to: `MoSCoW`, `Story Points`, `Ideal Hours`, and `Priority`. The project's table view gains the four columns. A rule says the fields are set on the existing issues and the six labels retire. The story and task files link here for the definitions.                                                                                                                                                                                                                                                                                                                                                                                                                              |
| `user-stories-requirements.md`       | The story's acceptance criteria become checkboxes, `- [ ] AC-01: <criterion>`, and the form prefills the first one. Rule 3's change-comment list gains `Specified by` and the four field values. Rule 4's registry is the `User Story` type, applied to the existing stories. Rule 6 names the type as the marker from Week 4; the type fallback is removed because types are available. MoSCoW rule 1 names the `MoSCoW` field, and the six labels retire after the migration. The form and the story gain `### Specified by`, naming `FR-nnn` and `ADR-nnn`; a closed story is reopened when a new related task is linked, then closed again. A new rule says a story is estimated at refinement and scheduled only after that.                                                              |
| `task-issues-requirements.md`        | The form gains a `### Requirements` section naming the FRs and ADRs the task works on, as links on `main`, and applies the `Task` type, which is also set on the existing tasks. A scheduled task carries `Ideal Hours` and `Priority`, and a task above `8H` is split before it is scheduled. The `task` label retires after the migration.                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| `planning-requirements.md`           | `### SPRINT-nn` gains the `Since: W4` fields: the goal is set at planning and replaces the provisional one; `**Planned Velocity:**`, `**Planned Ideal Hours:**`, `**Actual Velocity:**`, and `**Actual Ideal Hours:**` follow `**Sprint Backlog:**`. The plan carries `## Quality Requirement Testing Plan` between `## Sprints` and `## Progress Monitoring`, with the four columns, one row per `QRT-nn`. The full example's `SPRINT-04` due date becomes `2026-10-24`, and the later sprints move to the Saturday dates. `## Progress Monitoring` stays last, and refinement keeps no register.                                                                                                                                                                                             |
| `decisions-requirements.md`          | The technology-choice trigger of [The Decision](../../requirements/decisions-requirements.md#the-decision) links the ADR rule instead of requiring a `DEC-nnn`, and a customer's mandate stays a `CON-nn` citing the decision that records it. [What Cites It](../../requirements/decisions-requirements.md#what-cites-it) links the link model instead of restating it.                                                                                                                                                                                                                                                                                                                                                                                                                       |
| `product-vision-requirements.md`     | `## Constraints`, `## Boundary`, and `## System Context` move to the architecture requirements, with their `**Since: W2**` markers and fields. The vision keeps `## Goal` and `## Stakeholders`, and gains a `## Architecture` section that links `docs/architecture/README.md`. Week 4 moves the existing sections from `docs/product-vision.md` to the architecture document and leaves the link; no content stays in both.                                                                                                                                                                                                                                                                                                                                                                  |
| `releases-requirements.md`           | `## The Changelog` gains a `Since: W4` rule: a released section names a `QRT-nn` only when the test is `Passes` at the end of the sprint, and it links the test; the changelog may also record the `QRT-nn` it adds. The rule no longer names a `QR-nn` as a quality claim.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| `weekly-report-requirements.md`      | W4: the coverage table carries a row that links `reports/week-NN/sprint-retrospective.md`, and the report's summary points at the quality requirement testing plan for the tests that are not `Passes`. The report gains no retrospective section and no planning section. The free-riding answer is not required; the contribution table is the evidence.                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| `customer-meetings-requirements.md`  | A `Since: W4` sentence links `sprint-ceremonies-requirements.md#sprint-review` as the weekly meeting's role, so the meeting and the ceremony are one event. The team schedules the meeting, and it may be on Friday.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| `pull-requests-requirements.md`      | No change. The pull request template stays owned by [The Pull Request Template](../../requirements/pull-requests-requirements.md#the-pull-request-template); the `FR` / `ADR` / `QR` prompt block is not added, because the task issue's `### Requirements` section carries the links.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |

No `issue-types-requirements.md` is added: the story file's rule 6 and the task file's form rule own the type, and [Issue Fields](../../requirements/issue-tracking-requirements.md#issue-fields) owns the pinning.

## 3. New Guide

`guides/quality-and-architecture.md` follows the shape of `guides/planning-and-tracking.md`: a short preamble, `## What You Produce`, numbered `## Step N:` sections with their `###` sub-sections, and `## Common Mistakes`.
The steps:

1. **Find the quality expectations.**
   A quality attribute workshop: stakeholders, their concerns, and the three ways to measure quality from lecture 4.
2. **Turn a characteristic into a requirement.**
   The ISO/IEC 25010 pair, the six-part scenario, and the testability requirement that names its critical modules.
3. **Make it testable, and write the test.**
   The response measure a stranger can run, the `QRT-nn` inside the quality requirement's file, its `**Implementation:**` and `**Runs at:**`, and its row in the testing plan with its status, sprint, and evidence.
4. **Prioritize.**
   Business importance against technical risk, and the index that sorts active records first, then importance, then risk.
5. **Write the functional requirements.**
   The behavior a story needs, the containers it lands in, its `**Traces to:**`, its `shall` statements, and its own criteria, each with an anchor; the story's `### Specified by` names the FRs and ADRs that specify it.
6. **Put the scope in the architecture.**
   Move the constraints, boundary, and context from the vision, embed the context diagram, and link the vision to the architecture.
7. **Collect the drivers.**
   The `TOS-nn` goals, the `CON-nn`, the FRs, and the QRs, each linked, and the ASRs that the ADRs account for.
8. **Draw the C4 views.**
   The context, container, component, and sequence views; the component view expands one container and shows its interfaces; each view has an opaque SVG or PNG and its source beside it.
9. **Write the decision records.**
   Context, the options turned down, the outcome, the consequences, the `**Addresses:**` ASRs, and the `**Decision:**` it documents.
10. **Index and trace.**
    The quality index and its sort, the decision index with its active and inactive tables, and the testing plan; the reading order from a quality requirement to the ADR that answers it.
11. **Answer “why does this line of code exist?”.**
    The chain from a commit to a `TOS-nn`, with the task's `### Requirements` section as its first hop.

## 4. `assignments/assignment-4.md`

The header carries the date: hard Saturday 24 October 2026 at 23:59.
There is no soft deadline.
The intro continues from Week 3: the minimum usable product is on `main` and the first release is tagged, and this week the product gets quality requirements, a documented architecture, a quality requirement testing plan, and the checks that prove the code.

The numbered parts, in the order the work can succeed, each a rules list and then the week's minima:

1. **Plan The Sprint, Refine The Backlog, And Set The Fields.**
   The plan's `### SPRINT-04` section with its goal replacing the provisional one, `**Planned Velocity:**`, `**Planned Ideal Hours:**`, `SPRINT-04`'s due date set to `2026-10-24`, refinement for `SPRINT-05` and `SPRINT-06` with no document, the four issue fields created and pinned, `MoSCoW` migrated from the old labels and the types set on the existing issues, and every carried issue refined and estimated before it enters the sprint.
2. **Write The Quality Requirements.** `docs/quality/qr/`, at least 3 `QR-nn` files, each with a different characteristic, all six scenario parts, both priorities, and its row in `docs/quality/README.md`.
   One of them is about `Maintainability` / `Testability`, names the critical modules, and carries `High` business importance.
3. **Write The Quality Requirement Tests And Their Testing Plan.**
   At least one `QRT-nn` inside each QR's file, with `**Implementation:**` and `**Runs at:**`, and `docs/project-plan.md`'s `## Quality Requirement Testing Plan` with one row per test, its status, its planned sprint, and its evidence, with at least one `Passes` this week.
   Every `High` QR has an `Automated` test.
4. **Write The Functional Requirements.** `docs/functional-requirements/` with its index and at least 5 `fr/FR-nnn.md`, each with its `**Traces to:**`, its `**Containers:**`, its `shall` statements, and its own `### AC-nn` criteria.
   Every open story in the previous and the current sprint names its FRs and ADRs in `### Specified by`.
5. **Move The Scope And Write The Drivers.**
   Move `## Constraints`, `## Boundary`, and `## System Context` from `docs/product-vision.md` to `docs/architecture/README.md`, embed the context diagram there with its source, and leave the `## Architecture` link in the vision.
   In the architecture document, link the `TOS-nn` goals, the `CON-nn`, the FRs, and the QRs in the quality index order.
6. **Draw The C4 Views.**
   A container view, a component view of one named container with its interfaces, and one sequence view of the core task's main flow, each embedded with its source, its legend, and an opaque SVG or PNG.
7. **Record The Decisions, Index, And Trace.**
   At least 3 `ADR-nnn` files, each `**Addresses:**` at least one ASR, each with its rejected options, its accepted quality attributes covered by a QR, and the index's active table above its inactive one.
   The three minimum ADRs are `Accepted` before submission.
   The trace links `docs/project-plan.md#quality-requirement-testing-plan` once.
8. **Write The Glossary And The Team's `AGENTS.md`.**
   `docs/glossary.md` with at least three terms, and a root `AGENTS.md` that maps each maintained artifact path to the requirements file that checks it.
9. **Add `actionlint` And Update The Definition Of Done.**
   Lint `.github/workflows/` on pull requests and on `main`, with the DoD's pull request list updated.
   Product-code CI waits for Week 5.
10. **Carry Out The Week 3 Action Points And Open Questions.**
    They are read from `## Previous action points` and `## Previous open questions` of `reports/week-04/meeting-report.md`, per [Meeting Report](../../requirements/customer-meetings-requirements.md#meeting-report); nothing is copied from Week 3.
11. **Validate With The Customer.**
    The meeting is the Sprint Review: show the quality requirements and the architecture against the drivers, and record each customer change as a `DEC-nnn`.
    In the script, the report, and the transcript.
12. **Cut The `REL-04` Release.**
    The tag on `main`, the changelog's released section, the plan's `REL-04` line, and the week's report, in that order, per [Releases](../../requirements/planning-requirements.md#releases).
    The changelog claims no test that is not `Passes`.
13. **Hold The Sprint Retrospective.** `reports/week-04/sprint-retrospective.md` with its four sections, the row counts, a `Reason` on every action, and the carried actions' outcomes.
14. **Answer The Traceability Question In The Report.**
    How a line of code reaches a `TOS-nn` goal.
15. **Report On Your AI Usage.**

The report sections follow Assignment 3: **What Good Looks Like**, **Assignment Report In The Repository** with the coverage table and the repository evidence, **Assignment Report On Moodle** with the wrapper's contents, **Submission Procedure**, and **Checklist**.

The coverage table rows are:

| Deliverable                             | Artifact                                                                                                    |
| --------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| Sprint plan and estimates               | `docs/project-plan.md#sprint-04`, with its goal and its four fields                                         |
| Product backlog refinement              | the estimates on the issues in the `SPRINT-05` and `SPRINT-06` milestones, named in the report's summary    |
| Quality requirements                    | `docs/quality/qr/`, with `docs/quality/README.md` as the priority matrix                                    |
| Quality requirement testing plan        | `docs/project-plan.md#quality-requirement-testing-plan`                                                     |
| Quality requirement tests               | the `QRT-nn` sections in the QR files                                                                       |
| Functional requirements                 | `docs/functional-requirements/`, with `README.md` as the index and `fr/` for the records                    |
| Architecture, constraints, and boundary | `docs/architecture/README.md`, with `context.<ext>`, `container.<ext>`, `component.<ext>`, and the sequence |
| Architectural decisions                 | `docs/architecture/adr/` and the index                                                                      |
| Glossary                                | `docs/glossary.md`                                                                                          |
| Team `AGENTS.md`                        | `AGENTS.md`                                                                                                 |
| `actionlint`                            | the latest `actionlint` run on `main`                                                                       |
| Definition of Done                      | `docs/definition-of-done.md`                                                                                |
| Week 3 action points                    | `## Previous action points` in `reports/week-04/meeting-report.md`                                          |
| Week 3 open questions                   | `## Previous open questions` in the same report                                                             |
| Meeting script                          | `reports/week-04/meeting-script.md`                                                                         |
| Customer validation                     | `reports/week-04/meeting-report.md`, the transcript when there is one, and each story's verdict             |
| `REL-04`                                | the tag, the changelog's released section, and the plan's `REL-04` line                                     |
| Sprint retrospective                    | `reports/week-04/sprint-retrospective.md`                                                                   |
| Traceability answer                     | the summary section of `reports/week-04/README.md`                                                          |
| AI usage                                | `reports/week-04/ai-usage.md`                                                                               |

The **What Good Looks Like** guidance:

- quality requirements a stranger could fail, with a response measure that runs;
- a testing plan that says what is verified now, when the rest arrives, and what evidence proves it;
- a priority matrix that does not rate everything `High`, and the mandated testability requirement rated `High` with its reason;
- functional requirements a reviewer can check without opening a story, a `**Traces to:**` that names their origins and constraints, and a story that names the FRs and ADRs specifying it;
- criteria a checker can run as written, including a table or an example where prose would be vague;
- an architecture that owns the scope, the context, and the drivers in one place, and a vision that links it rather than copying it;
- decision records that name a rejected option, the ASRs they account for, and the quality attributes they accept with the QR that covers each;
- a legend that makes each diagram readable without the text, and a diagram that is legible in both themes;
- a sequence view that shows the core task end to end, not a component's internals;
- estimates the team can defend, a `**Planned Velocity:**` they knew before they started, and an `**Actual Velocity:**` they compare it with;
- a glossary that fixes the project's words, and an `AGENTS.md` that lets an agent find the rule instead of guessing it.

## 5. New Maintainer Decision Log `course/decisions/a4.md`

The file follows the format of `course/decisions/a3.md`: a header paragraph, then `A4-DEC-nnn` entries with `**Status:**`, `**Decision:**`, `**Why:**`, `**Alternatives considered:**`, `**Where it lands:**`, and `**Reverses:**` on the entries that reverse an `A3-DEC`.

The entries:

1. Week 4 is quality, architecture, `actionlint`, the glossary, and `REL-04`, with the ceremonies arriving here.
2. Eight flat requirements files own the new rules: architecture, functional requirements, quality requirements, quality requirement tests, ADRs, sprint ceremonies, agent instructions, and the glossary.
3. `FR-nnn` exists; this entry reverses `A3-DEC-014`, whose “stories are the functional requirements” clause stops holding.
4. An FR is the specification independent of its stories: it names no story, records its `**Traces to:**`, names its `**Containers:**`, and carries its own criteria with anchors.
5. `QR-nn`: one file at `docs/quality/qr/QR-nn.md`, one ISO/IEC 25010 pair, six scenario parts, the index as the priority matrix, and the testability requirement at `High`.
6. `QRT-nn`: a section inside its QR's file, numbered within the QR, with `**Implementation:**` and `**Runs at:**`; the testing plan carries status, sprint, and evidence; a `High` QR must be automated.
7. `ADR-nnn`: MADR-shaped files, the `**Addresses:**` list of ASRs, the `**Decision:**` field, and the five statuses ending in `Dropped`.
8. The architecture document owns the constraints, boundary, and system context; the product vision keeps goal and stakeholders and links the architecture.
9. The architecture's views are C4: context, container, component, and sequence; the component view expands one container and shows its interfaces; images are opaque SVG or PNG with their sources.
10. The decision index has the columns `ADR`, `Status`, `Addresses`, and `Decision`; `Proposed` is active; the three minimum ADRs are `Accepted` before submission.
11. `Story Points` stops at `13` and `Ideal Hours` at `8`; a larger item is split before it is scheduled.
12. The sprint section carries `**Planned Velocity:**`, `**Planned Ideal Hours:**`, `**Actual Velocity:**`, and `**Actual Ideal Hours:**`.
13. The link model: the ADR `**Addresses:**` accounts for the ASRs, the FR `**Traces to:**` names the ADRs that constrain it, and there is no `ASR` field.
14. Issue types replace the story and task labels, are applied to the existing issues in the same pass, and the six labels then retire.
15. `MoSCoW` is an issue field, migrated from the four labels, which then retire; every story gets the field before the labels go.
16. A story's criteria are checkboxes; a closed story is reopened when a new related task is linked, then closed again.
17. `AC-nn` also belongs to an FR, with one `###` section per criterion so it can be linked.
18. The ceremonies come from the Scrum Guide; the weekly customer meeting is the Sprint Review, and estimation is an activity.
19. The retrospective has the four sections, the `Reason` column, and the `Carried Actions` outcomes; the weekly report's coverage table links it.
20. A task's `### Requirements` section names its FRs and ADRs, which extends the trace chain by one hop.
21. The mandated testability requirement carries `High` business importance, and the rule gives the reason.
22. A release claims a quality requirement only through a `QRT-nn` that is `Passes` at the end of the sprint.
23. The team's `AGENTS.md` is required from Week 4, and `agent-instructions-requirements.md` owns it.
24. The glossary is `docs/glossary.md` with at least three terms.
25. Week 4's hard deadline is Saturday 24 October 2026, and Weeks 4 to 9 are Saturdays with no soft deadline.
26. The syllabus's Week 4 deliverables are the detailed path list, and the Submission 4 row is a short category summary.
27. `actionlint` stays in Week 4 and product-code CI moves to Week 5.
28. The new identifier families and the new paths.
29. Assignment 4 is a delta ordered by the work, with the Week 3 report shape.
30. The stack is an ADR, and the `DEC-nnn` trigger links it.
31. `A3-DEC-022` is reversed by a new `A4-DEC` that states the new chain through the FR and the ADR.

## 6. Edited Files Outside `requirements/`

- **`course/syllabus.md`**: The Week 4 deliverables name each artifact by path: the sprint plan and estimates, the quality requirements, the quality requirement tests and their testing plan, the functional requirements, the architecture with its constraints, boundary, context, and views, the decision records, the glossary, the team's `AGENTS.md`, `actionlint`, the retrospective, and `REL-04`.
  The Submission 4 row is a short category summary in the same order, and both call the group quality requirements.
  Week 4's hard deadline becomes Saturday 24 October at 23:59, and Weeks 5 to 9 move to Saturdays 31 October, 7 November, 14 November, 21 November, and 28 November.
  The global deadline rule says there is one Saturday hard deadline and no soft deadline from Week 4; the late-submission example says Saturday.
  The `Verification & Validation` line under Week 5 moves into the Week 5 lecture line it describes.
- **`README.md`**: The Assignment 4 row in Assignments, the new guide row in The Guides, the eight new requirements files in The Rules table, and the Saturday deadline in the assignment table and the closing sentence.
- **`SKILL.md`**: Matching rows in Where Each Kind Of Work Is Ruled, with the guide beside each requirements link: functional requirements, quality requirements and their tests, the architecture with its decisions, the sprint ceremonies, the team's `AGENTS.md`, and the glossary.
- **`course/rules.md`**: The eight new requirements files in Where The Rules Live, the new guide, and the deadline rule: one hard deadline on Saturday at 23:59, no soft deadline.
- **`AGENTS.md`**: The `requirements/` table with the eight new files, the `docs/` Destination Map with the Week 2 and Week 4 rows (`docs/product-vision.md` and its link, `docs/architecture/README.md` with the context, constraints, boundary, container, component, sequence, and `adr/`, `docs/functional-requirements/` with `fr/`, `docs/quality/` with `qr/`, `docs/glossary.md`, and the testing-plan section), the identifier conventions with the new families and their heading forms, the terminology list with the new words (`functional requirement`, `quality requirement`, `quality requirement test`, `quality requirement testing plan`, `architecture decision record`, `architecturally significant requirement`, `option`, `container`, `component`, `interface`, `sprint planning`, `product backlog refinement`, `sprint review`, `retrospective`, `velocity`, `ideal hours`, `glossary`, `provenance`, `conformance`), the Scrum paragraph rewritten for the four fields and the Sprint Review, and the assignment checklist unchanged.
- **`TODO.md`**: The A4 items this work closes are ticked: the acceptance criteria checkboxes, the reopened story, the `Traces to` origins, the velocity fields, the glossary, the product-code CI moved to Week 5, and the free-riding answer removed.
  The lecture additions are marked skipped, and the items that move to Week 5 are noted.
- **`course/decisions/a3.md`**: `A3-DEC-014` and `A3-DEC-022` get `**Status:** Reversed by A4-DEC-nnn`, linked, and keep their statements and fields.

## 7. The Students' `.github/` Files The Rules Cover

These are repository content rather than artifacts, per [Where Artifacts Live In The Repository](../../requirements/general-requirements.md#where-artifacts-live-in-the-repository), and the rules own them.

- **`.github/ISSUE_TEMPLATE/user-story.yml`**: It applies the `User Story` type, it gains the `Specified by` field, it prefills the first acceptance criterion as `- [ ] AC-01: `, and it no longer applies the `user-story` label.
  The type is also set on the existing story issues, and the label retires.
  The form cannot set the issue fields, which are set after the issue is created.
- **`.github/ISSUE_TEMPLATE/task.yml`**: It applies the `Task` type, it gains a `Requirements` field for the FRs and ADRs, and it no longer applies the `task` label.
  The type is also set on the existing task issues, and the label retires.
- **`.github/pull_request_template.md`**: It stays as it is, owned by [The Pull Request Template](../../requirements/pull-requests-requirements.md#the-pull-request-template).
  The task issue's `### Requirements` section carries the FR and ADR links; no `FR` / `ADR` / `QR` prompt block is added.
- **`.github/workflows/`**: The `actionlint` job over `.github/workflows/`, on pull requests and on `main`, with each third-party action pinned per [Pinning Third-Party Actions](../../requirements/repository-requirements.md#pinning-third-party-actions).
  Product-code CI waits for Week 5.
- **`AGENTS.md`**: The team's own instruction file, mapping each maintained artifact path to the requirements file that checks it, per `agent-instructions-requirements.md`.
- **`docs/glossary.md`**: The project's glossary, with at least three terms.

## 8. Edge Cases And Failure Modes

- **A story that several FRs specify:** Allowed: the story's `### Specified by` lists all of them, and no FR names the story back.
- **An FR that arrives after its story is built:** Allowed: `**Traces to:**` cites the story, and the FR starts from the behavior that exists.
- **A QR no ADR accounts for:** Allowed: the QR is a requirement that no decision has shaped yet; the architecture's drivers list still links it, and the testing plan records when its test passes.
- **A test that is not `Passes` this week:** It stays in the testing plan with its status and its planned sprint, and the changelog claims no quality through it.
- **A `High` QR that cannot be automated:** It is a deviation, and the team records the reason; the changelog still claims no quality through a manual test unless the evidence is linked and the test is `Passes`.
- **A story dropped after its FR exists:** The FR becomes `Dropped` with the reason and the `DEC-nnn`, and a story that still points at it is re-pointed or closed.
- **An ADR that drops an FR:** The FR's `**Dropped:**` cites the `ADR-nnn`, and the ADR's `**Addresses:**` still lists the FR as an ASR it accounted for.
- **A customer decision that changes a quality requirement:** A `DEC-nnn` and a `**Changed:**` on the QR, never an edit with no record.
- **A stack revision:** It is an ADR whose `**Decision:**` names the stack's `DEC-nnn`, which stays as it is.
- **A container the team adds:** The container view names it, the FRs name it, and the component view expands it; there is no fixed enum.
- **A team whose organization cannot create issue types or fields:** It declares a deviation and uses the labels; no Week 4 rule is rewritten for the case.
- **One rule in two places:** The legend rule, the `actionlint` rule, the estimation rule, the diagram rule, the decision-index rule, and the type rule each have exactly one owner, and every other file links to it.

## 9. Tests And Validation

- `pnpm run format:markdown`, then `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run test:markdown-format`, and `pnpm run test:markdown-rules`.
- `pnpm run check:links --include-fragments`, which checks every heading anchor the new files cite.
- `pnpm run lint:actions` for any workflow change, and `pnpm run check:lectures` only if a deck changes.
- A routing audit: every new file appears in `README.md`, `SKILL.md`, `course/rules.md`, and both of `AGENTS.md`'s tables.
- A cross-reference audit: every `**Since: W4**` rule has an Assignment 4 part, and every assignment part and coverage row has a rule.
- A date audit: `course/syllabus.md`, `README.md`, `assignments/assignment-4.md`, this plan, and `SPRINT-04`'s `**Due:**` all say 24 October 2026; Weeks 5 to 9 say the Saturday dates.
- A link-model audit: an FR's `**Traces to:**` names the ADRs that constrain it, an ADR's `**Addresses:**` names the FRs and QRs it accounts for, and no file carries an `ASR` field.
- `backlog doctor`, after the task changes.

## 10. Assumptions

- This work lands in the `itpd` course repository only, and no file is created under `docs/` or `reports/`, since those belong to student repositories.
- The Week 4 dates come from the syllabus, and its hard deadline moved to Saturday 24 October 2026 in the design session.
- The constraints, boundary, and system context move into the architecture document in Week 4; the product vision keeps the goal and stakeholders and links it.
  The Week 2 assignment stays historical, so the requirements state the final home and the Week 4 assignment performs the move.
- The ASR is not a field: the ADR `**Addresses:**` list is the set of ASRs, and the FR `**Traces to:**` names the ADRs that constrain it.
- The stack is an ADR that cites the customer's `DEC-nnn`; the existing `DEC` is not migrated, and `A3-DEC-014` and `A3-DEC-022` are reversed by `A4-DEC` entries.
- ISO/IEC 25010:2023 is the standard cited, with the course's Title Case labels and the link `https://iso25000.com/en/iso-25000-standards/iso-25010`; the Scrum Guide is the ceremony method; and C4 is the view style, with Structurizr, LikeC4, and C4-PlantUML recommended and no diagram tool mandated.
- The lecture stays as built, and its commented-out Scrum slides are not uncommented here.
- The product-code CI waits for Week 5, and `actionlint` stays in Week 4.
- The team schedules the customer meeting, which may fall on Friday; the meeting is the Sprint Review.
- This week's release is `REL-04`, and the first release was `REL-03`.
- The meeting-booking example is the example for every full example, and the docs site serves the new directory READMEs.
- Every new requirements file gets one full example in the meeting-booking example.
- The glossary is a student artifact at `docs/glossary.md`, with at least three terms, and linking terms from prose is recommended rather than required.

## 11. Sources

### The Course Materials This Plan Changes

- [`course/syllabus.md`](../syllabus.md), especially Week 4 and the Submission 4 row: it fixes the week's deliverables and dates.
- [`lectures/lecture-4.typ`](../../lectures/lecture-4.typ): ISO 25010, the six-part scenario and its worked test, the drivers, the ADR, the priority matrix, and the commented-out Scrum material.
- [`assignments/assignment-3.md`](../../assignments/assignment-3.md): the shape Assignment 4 copies.
- [`course/decisions/a3.md`](../decisions/a3.md), especially `A3-DEC-002` (ceremonies deferred to Week 4), `A3-DEC-014` (no functional-requirements file), `A3-DEC-020` (the report's verdicts), `A3-DEC-021` (the assignment as a delta ordered by the work), and `A3-DEC-022` (the one-way chain from a commit to the threshold).
- [`AGENTS.md`](../../AGENTS.md): the layers, the `docs/` destination map, the identifiers, and the Scrum paragraph this plan rewrites.
- [`TODO.md`](../../TODO.md), the A4 section: the acceptance criteria checkboxes, the reopened story, the `Traces to` origins, the velocity fields, the glossary, and the two report questions.

### The Student-Facing Requirements This Plan Extends

- [General Requirements](../../requirements/general-requirements.md), [Repository Requirements](../../requirements/repository-requirements.md), [Definition Of Done](../../requirements/definition-of-done-requirements.md), [Issue Tracking](../../requirements/issue-tracking-requirements.md), [User Stories](../../requirements/user-stories-requirements.md), [Task Issues](../../requirements/task-issues-requirements.md), [Planning](../../requirements/planning-requirements.md), [Product Vision](../../requirements/product-vision-requirements.md), [Decisions](../../requirements/decisions-requirements.md), [Customer Meetings](../../requirements/customer-meetings-requirements.md), [Releases](../../requirements/releases-requirements.md), [Weekly Report](../../requirements/weekly-report-requirements.md), and [`course/rules.md`](../rules.md).

### The Format Reference

- The `timeful` checkout at `/home/eyjafjallajokull/Desktop/gh/timeful`: `docs/requirements/README.md`, `docs/requirements/functional/README.md` with `fr/FR-nnn.md`, `docs/requirements/quality/README.md` with `qr/QR-nnn.md` and `qr/TEMPLATE.md`, `docs/design/architecture/README.md`, and `adr/TEMPLATE.md`.
- [MADR 4](https://adr.github.io/madr/), [ISO/IEC 25010:2023](https://iso25000.com/en/iso-25000-standards/iso-25010), [C4 model](https://c4model.com/), [Structurizr](https://structurizr.com/), [LikeC4](https://github.com/likec4/likec4), the [Scrum Guide](https://scrumguides.org/scrum-guide.html), and the [Modified Fibonacci sequence](https://framework.scaledagile.com/blog/glossary_term/modified-fibonacci-sequence).

### The Architecture Examples The User Named

- [`EventTicketSystem/Design/Architecture.md`](https://github.com/otrebmuh/EventTicketSystem/blob/2a928d226d43704457ad5be46b1e6b80f5bca8cb/Design/Architecture.md), [`HotelPricingSystem/Design/Architecture.md`](https://github.com/otrebmuh/HotelPricingSystem/blob/433e061f712a8748fdf04a6f767752e12be2f4b9/Design/Architecture.md), and [The Guide](https://github.com/inno-se/the-guide).

### The Prior Iterations Consulted

- [`tmp/itpd-2025/assignments/assignment-4.md`](../../tmp/itpd-2025/assignments/assignment-4.md), for the sprint review, the retrospective's three questions, the grooming, and the 1–2 hour task size.
- [`tmp/swp-2026/assignments/Assignment_04.md`](../../tmp/swp-2026/assignments/Assignment_04.md), for the range of quality requirement evidence it expected.
- The backlog tasks this plan closes or changes: TASK-010 and TASK-066.
