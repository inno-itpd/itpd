# Plan: Assignment 4 — Quality, Requirements, Architecture, And The Fourth Release

This plan records the design of Assignment 4 and everything it depends on, before the work is written.
It is the approved design from the design session, revised against `requirements/`, `course/syllabus.md`, `README.md`, `SKILL.md`, `AGENTS.md`, and `TODO.md`.
The [Corrections](#corrections-to-the-first-draft) section states every place the first draft was wrong and what replaces it.
A second review checked the draft against the artifact model that governs the course: functional requirements and architectural decisions are the specification, and user stories and tasks are the ephemeral work that cites it.
That review added C13 to C30 and reversed four decisions the first review had settled the other way.
The [Decisions Settled In This Session](#decisions-settled-in-this-session) section states what the reviews decided and why.
Every decision is later recorded in `course/decisions/a4.md` as an `A4-DEC-nnn` entry.

## Goal And Success Criteria

Write Assignment 4 and everything it depends on, so Week 4 can be handed in from the course materials.
The week covers: the ISO/IEC 25010 quality model, testable quality requirements, the architectural drivers (business goals, constraints, functional requirements, quality requirements), the architecture draft, the quality plan and its tests, product-code CI, the `REL-04` release, and the sprint ceremonies and estimation that `AGENTS.md` defers to Week 4.

Done means:

- `assignments/assignment-4.md` exists, is written as a delta against `requirements/`, and follows the Assignment 3 shape: header, Objectives, numbered parts, What Good Looks Like, the repository report with its coverage table, the Moodle wrapper, Submission Procedure, and Checklist.
- New requirements files own the new rules, and every new rule has exactly one owner.
- Every correction below is applied, and no sentence of the first draft survives where a correction replaces it.
- `course/decisions/a4.md` records every decision as an `A4-DEC-nnn` entry, including the ones that reverse an `A3-DEC`.
- `course/syllabus.md`, `README.md`, `SKILL.md`, `course/rules.md`, and `AGENTS.md` are updated in step with the new files that `AGENTS.md` requires be routed.
- `pnpm run format:markdown:check`, `pnpm run lint:markdown`, and `pnpm run check:links` pass.

## Reference And Baseline

- The reference checkout is `/home/eyjafjallajokull/Desktop/gh/timeful`.
  The workspace-relative `../../time-tools/timeful` does not exist.
- The reference format supplies the shape of the FR, QR, and ADR records: the six-part quality attribute scenario, the ISO/IEC 25010:2023 characteristic and sub-characteristic table, the MADR sections, and the addressed-requirement relations.
- The existing `itpd` conventions win where the two differ: no YAML front matter, since no course file uses it; an identifier heads a section or a file, with a first line and then a bulleted `- **Label:**` field list; every family has a dropped form; `**Since: WN**` markers; one owner per rule.

## Architecture Change Map

The five layers are the four that `AGENTS.md` defines, plus the reference material that is deliberately outside them.

```text
assignments/assignment-4.md          what this week requires (deltas only)
guides/quality-and-architecture.md   how (new)
requirements/                        the rules (new files, and edited ones)
course/rules.md                      the contract and its router (rows added)
course/syllabus.md                   the schedule (edited)
course/decisions/a4.md               maintainer decisions (new)
```

The lecture deck stays as compiled.
Lecture 4 already covers quality, ISO 25010, quality attribute scenarios, architectural drivers, ADRs, and the priority matrix; its Scrum slides are commented out, which is why the ceremony rules are written here rather than shown there.

## Corrections To The First Draft

Each correction names the problem and what replaces it.
"Fd" is the first draft of this plan.

### C1: An FR May Name Several Stories

**Problem:** Fd line 52 said "Each FR is a slice of an existing story issue", and Fd line 331 said "the FR may slice several stories, and each one is cited from its own `**Story:**`".
One is singular, the other is plural, and a singular field cannot be cited from several stories.

**Replacement:** An FR names the stories it exists for in `**Stories:**`, one or more `US-nn` links, and each of those stories takes a comment naming the FR.
An FR specifies functional behavior; the stories justify why the behavior exists and are the only path from it to a `VP-nn`.
C13 replaces this field: the story names its specifiers, and the FR names no story.

### C2: An Identifier Section Is Headed By The Identifier Alone

**Problem:** Fd line 133 says a QR section "opens with `## QR-nn` and a one-sentence outcome title".
Rule 5 of [Identifier Rules](../../requirements/general-requirements.md#identifier-rules) makes the heading the identifier alone, so a link to `#qr-01` survives rewording the title.

**Replacement:** `## QR-01` stands alone, and the one-sentence outcome is the first line below it.
`## QRT-01` and `# ADR-001: Title` follow the third rule: a sectioned identifier is an `##` heading, and a one-file-per-record identifier titles the file's `#` heading.
`# FR-001: Title` already follows that form, since the title is what the index and its links carry.

### C3: Issue Types Replace The Labels From Week 4

**Problem:** Fd makes the `User Story` and `Task` issue types required, with the labels as a declared fallback.
Today `requirements/user-stories-requirements.md` makes the `user-story` and `moscow:*` labels the default and allows an issue type as a team option, `requirements/task-issues-requirements.md` does the same for `task`, and Weeks 2 and 3 tell teams to create the labels and open issues from forms that apply them.

**Replacement:** From Week 4 the issue types carry the kind of an issue: `User Story` and `Task`.
The forms apply them, so the `user-story` and `task` labels are no longer applied to a new issue, and the label rules become the fallback for a team whose organization cannot use issue types, declared as a deviation.
Issues opened in Weeks 2 and 3 keep the labels they carry; they stay findable, and the rules cite the type where they cite the label.
C20 and C21 replace the deviation: `MoSCoW` migrates to the field, and the type rule lives in the story and task files rather than in one of its own.

### C4: Estimation Is Prescribed

**Problem:** Fd prescribes `Story Points` on stories and `Ideal Hours` on tasks.
`AGENTS.md` says "estimation is required with no unit prescribed", and `backlog/tasks/task-010` repeats it.

**Replacement:** The plan wins: the two organization issue fields carry the estimates, with the option lists and the ceilings below.
`AGENTS.md`'s Scrum paragraph and TASK-010 are rewritten to match.
C19 replaces two fields with four, and adds `MoSCoW` and `Priority`.

### C5: The ADR Owns The Connection To The Requirements

**Problem:** Fd gives the QR a `**Satisfied by:**` field and the ADR an `**Addresses:**` field, so one connection is maintained from both ends.
`A3-DEC-022` requires every link to point one way, from the later artifact to the earlier identifier.

**Replacement:** The ADR owns the connection through `**Addresses:**`, and the QR has no field naming an ADR.
The QR keeps its two priorities, and a reader finds the ADRs that answer it by searching for its `QR-nn`.

### C6: A Test Passes From A Sprint, In One Form

**Problem:** Fd line 153 says `**Passes from:**` is "the sprint or release by which it must pass", Fd line 155 says "a later passing sprint named", and the assignment part says "a `**Passes from:**` week".

**Replacement:** `**Passes from:**` names exactly one `SPRINT-nn`, linked through the plan.
A sprint carries a release, so naming the sprint names the release.

### C7: The Retrospective Is A Coverage Row

**Problem:** Fd says the weekly report "gains a retrospective row, and no new section".
The report has no row for an artifact of its own to gain, and `A3-DEC-020` does not extend to a retrospective.

**Replacement:** The retrospective is a supporting artifact, so it takes a row in the week's existing coverage table, per [Weekly Public Report](../../requirements/weekly-report-requirements.md#weekly-public-report).
A new `A4-DEC` extends `A3-DEC-020` and says so.

### C8: The Release File Is `releases-requirements.md`

**Problem:** Fd's edited-files table names `release-requirements.md`, which does not exist.

**Replacement:** The file is [Release Requirements](../../requirements/releases-requirements.md).
It is checked and left unchanged: `REL-04` is the fourth sprint's release under the rules that already apply to every sprint.

### C9: Every Image Sits Beside Its Source

**Problem:** Fd names `architecture/container.<ext>` and `architecture/component.<ext>` without saying where the source goes, while the product vision's diagram already commits its source beside its image.

**Replacement:** A diagram's image and its source share a directory and a base name, as [System Context](../../requirements/product-vision-requirements.md#system-context) already requires of the context diagram.
All four views live under `docs/architecture/`: `context.<ext>`, `container.<ext>`, `component.<ext>`, and the sequence diagram's own name, each with its source beside it.

### C10: The ADR Follows The Family's Field Form

**Problem:** Fd gives an inactive ADR "a status banner", which is not a course form.

**Replacement:** `**Status:**` is the first field of every record, as rule 10 of [Identifier Rules](../../requirements/general-requirements.md#identifier-rules) requires, and it takes one of the ADR's five values.
`Superseded` carries `**Superseded by:**`, and a rejected record gives its reason under `**Rejected:**`, in the form a dropped item's `**Dropped:**` takes.

### C11: The Vision Keeps Its Diagram And No Second Copy

**Problem:** Fd's third and fourth corrections move the diagram's presentation rules to the architecture requirements, but both the vision and the architecture document would then embed the context diagram.

**Replacement:** The vision keeps its `## System Context` section, the embedded diagram, and the agreement with the boundary.
It links to [Diagrams And Legends](../../requirements/architecture-requirements.md#diagrams-and-legends-for-docs) for the presentation rules, and the architecture document links that section as its first view rather than embedding a second copy.

### C12: The Syllabus Names What Week 4 Hands In

**Problem:** The syllabus's Week 4 deliverables do not name the planning record, the estimates, or the retrospective, and they call the week's first deliverable "quality goals", which `TODO.md` resolves as quality requirements.
The Submission 4 row repeats the same five-item summary.

**Replacement:** The Week 4 deliverables name every path the assignment requires, and the Submission 4 row is rewritten from that list rather than regenerated, since nothing generates it.
Both call the group quality requirements.
C28 states the one-list rule that keeps the two from drifting again.

### C13: The Story Names Its Specifiers, And The FR Names No Story

**Problem:** C1 makes the FR name its stories in `**Stories:**` and requires a comment on each of them.
That writes the link from the specification to the ephemeral artifact, and a comment is not where a story says what it has to meet.
It also makes a requirement depend on the issue that happens to survive it.

**Replacement:** The story carries a `### Specified by` section, a form field, naming the `FR-nnn`, `QR-nn`, and `ADR-nnn` that specify it, each linked on `main`.
The FR names no story.
A story may close and stay closed while its FR stays `Active`.

### C14: Provenance And Conformance Are Different Links

**Problem:** With `**Sources:**` on the FR and `### Specified by` on the story, a reader can take the pair for one connection maintained in both directions, which `A3-DEC-022` forbids.

**Replacement:** They are two facts. `**Sources:**` says why the requirement appeared: the story, decision, ADR, constraint, or meeting that produced it.
`### Specified by` says which requirements the story must meet.
[Identifier Rules](../../requirements/general-requirements.md#identifier-rules) states the distinction once, beside the one-way rule, so neither field reads as a cycle.

### C15: A Functional Requirement Carries Its Own Criteria, With Anchors

**Problem:** Fd leaves the FR body as `shall` statements only, which is not the verifiable assertion the course asks for, and it puts every criterion on the story, where the customer's check lives.

**Replacement:** An FR carries a `## Acceptance Criteria` section with one `### AC-nn` section per criterion, numbered within the FR.
A criterion is a verifiable assertion: a given and an expected result, an example input and output, a configuration table, or a state the checker reads.
The `###` heading gives each criterion an anchor, so it is linked as `FR-012.md#ac-02` and cited as `FR-012 AC-02`.
`AC-nn` stays scoped to its parent, [general-requirements rule 7](../../requirements/general-requirements.md#identifier-rules) extending to an FR as it already does to a story and a task.

### C16: An Architectural Decision May Drop Or Change A Functional Requirement

**Problem:** The second review first took the `ADR-nnn` out of an FR's fields, to stop an FR and an ADR citing each other.
But an FR can be an architecturally significant requirement, and a decision can retire the behavior it specified: with no way to say so, the FR would sit `Active` while the ADR contradicted it.

**Replacement:** `**Addresses:**` gains a fourth group, `drops`, naming the FRs and QRs whose behavior the record removes.
An FR's `**Changed:**` and `**Dropped:**` may cite an `ADR-nnn` as well as a `DEC-nnn`.
This is not a second link: the ADR's `drops` states the scope of the decision, and the FR's entry states why it died.

### C17: The Quality Group Is A Directory

**Problem:** Fd puts the requirements in `docs/quality-requirements.md` and the tests in `docs/testing.md`, so the plan that says when quality will be met has no home, and the architecture's trace has to guess which file to link.

**Replacement:** `docs/quality/README.md` is the quality plan: a short preamble and one table of every `QR-nn`, its `QRT-nn`, each test's `**Status:**`, and the `SPRINT-nn` it passes from, so a stranger sees what is verified and what is not.
`docs/quality/quality-requirements.md` holds the QR sections, and `docs/quality/quality-requirement-tests.md` holds the QRT sections.
The architecture document's trace links the plan.

### C18: Product Backlog Refinement, In No File

**Problem:** Fd calls the ceremony grooming, which the Scrum Guide renamed, and gives it a `## Product Backlog` table in the plan.
The table is a second register of the backlog beside the sprint milestone and the estimate fields, and each can disagree with the other.

**Replacement:** The ceremony is **Product Backlog Refinement**.
It produces no document: its evidence is the estimate on the issue and the refined item sitting in the next sprints' GitHub milestones.
`planning-requirements.md`'s `## Progress Monitoring` is left unchanged.

### C19: Estimation Is Four Issue Fields

**Problem:** C4 gives two fields, leaves `MoSCoW` to the story's label, and gives a task no way to say which of the sprint's tasks comes first.

**Replacement:** Four `Public` single-select issue fields, each pinned to one issue type.
`MoSCoW` and `Story Points` pin to `User Story`; `Ideal Hours` and `Priority` pin to `Task`.
`Story Points` lists the modified Fibonacci `1`, `2`, `3`, `5`, `8`, `13`, `20`, `40`, `100`, and the rule splits anything above `20` before it is scheduled, so refinement can record an item larger than a sprint without scheduling it.
`Ideal Hours` lists `1`, `2`, `4`, `8`, and a task above `8H` is split.
`Priority` lists `High`, `Medium`, and `Low`.
A story keeps `MoSCoW` and gains no priority field.

### C20: `MoSCoW` Migrates And The Old Labels Retire

**Problem:** C3 leaves the `moscow:*` labels on the issues from Weeks 2 and 3, so the registry carries two markers for one property and the project's field column is empty for the oldest stories.

**Replacement:** The team sets `MoSCoW` on every open story when the field is created, and on a closed story when a later artifact cites it.
The four `moscow:*` labels are then deleted, because the field replaces them.
The `user-story` and `task` labels stay on the issues that carry them, so those issues stay findable, and a new issue takes the type instead.

### C21: There Is No `issue-types-requirements.md`

**Problem:** The file's whole content is "use the types", while `user-stories-requirements.md` rule 6 and `task-issues-requirements.md` already own that choice and [Issue Fields](../../requirements/issue-tracking-requirements.md#issue-fields) owns the pinning.
Four owners for one rule is the defect this plan exists to avoid.

**Replacement:** The story file's rule 6 and the task file's form rule name the type from Week 4, and the exception for an organization without types is one sentence there.
The pinning stays in Issue Fields.
No file is added, and the destination map and both router tables gain no row for it.

### C22: The Testability Requirement Rates High

**Problem:** Fd requires a `maintainability`/`testability` QR but leaves its priorities to the team, so a four-week product rates it `Low` and the one requirement the course mandates is the one the matrix calls unimportant.

**Replacement:** Its `**Business importance:**` is `High`, and the rule gives the reason: the course's stakeholders include the instructors, who require it.
The priority matrix cannot then contradict the requirement.
`**Technical risk:**` stays the team's call.

### C23: `REL-04` Is Honest About Unverified Quality

**Problem:** Fd asks for one `Passing` test and a release in the same week without saying what the release may claim, so a team can tag a release that claims quality it never verified.

**Replacement:** `**Passes from:**` states when a test must pass; it does not gate the release.
The changelog's released section claims a `QR-nn` only when its test is `Passing` in `SPRINT-04`, and the week's report names each QR whose test is not yet passing.
A test that cannot be automated stays `Planned` with a later sprint and a one-line reason in the quality plan.

### C24: The Retrospective's Actions Name An Owner

**Problem:** Fd's `Actions` rows carry an impact and a carried flag but nobody to do the work, so the next sprint's file cannot say what became of the action.

**Replacement:** Each action names an `Owner`, a team member's GitHub username, and the reason it was chosen.

### C25: The Ceremonies Cite The Scrum Guide

**Problem:** The lecture's Scrum slides stay commented out, so nothing in Week 4 teaches the ceremonies the week requires.

**Replacement:** `sprint-ceremonies-requirements.md` opens by naming the [Scrum Guide](https://scrumguides.org/scrum-guide.html) as its method, the assignment links it once, and an `A4-DEC` records that the ceremonies come from the guide rather than the deck.

### C26: `actionlint` Is A Rule Of Its Own

**Problem:** Fd adds `actionlint` to the CI rule about the product's code.
The workflow files are not product code, and the team adds more workflows in later weeks, so a broken workflow is a broken check.

**Replacement:** The Week 4 block ends with a rule of its own: lint `.github/workflows/` with `actionlint` on pull requests and on `main`, pinned like any other tool.

### C27: The Team's `AGENTS.md` Is Required From Week 4

**Problem:** `repository-requirements.md` only recommends an `AGENTS.md` once the workflow is stable, and Week 4 adds four artifact groups that a coding agent cannot find by guessing.

**Replacement:** From Week 4 the repository carries a root `AGENTS.md` listing each maintained artifact path and the requirements file that checks it, so an agent reads the rule instead of inferring it.
The `Recommended` line is promoted to a required rule, and the requirements file that already owns the agent skill links it.

### C28: The Syllabus Row And The Deliverable List Are One List

**Problem:** C12 says the Submission 4 row is regenerated, which implies a generator that does not exist, and the two lists can drift again the moment one is edited.

**Replacement:** The Week 4 deliverables list is the source.
The Submission 4 row is rewritten from it, naming the same artifacts in the same order, and a later change to one is a change to both.

### C29: Every Carried Issue Is Refined And Estimated First

**Problem:** Fd says every story and every scheduled task is estimated before the work starts.
A story written in Week 2 that nobody refined cannot meet that, and the plan does not say when each value is set.

**Replacement:** `MoSCoW` is set when the story is written, `Story Points` at refinement, and `Ideal Hours` and `Priority` when the task is scheduled.
An issue carried from an earlier week is refined and estimated before it enters `SPRINT-04`, or it stays unscheduled.

### C30: The ADR's Link To A Decision Is `**Decision:**`

**Problem:** Fd's `**Links:**` names a `DEC-nnn` without saying what the two have to do with each other, and a field called Links invites whatever a team finds convenient.

**Replacement:** `**Decision:**` names one or more `DEC-nnn`, linked, whose choice the record documents, and appears only when one exists.
The ADR answers a decision that was made, so the link points from the later artifact, as every other link does.

### C31: The Planning Record Is The Plan's Sprint Section

**Problem:** The first review put the sprint planning record in a `## Sprint Planning` section of `reports/week-NN/README.md`, beside a plan section that already carries the sprint's goal, its due date, its backlog link, and its release.
That gave one sprint two records, made the report carry a plan, and left the record's item table copying a list the milestone already holds, which `planning-requirements.md` forbids.

**Replacement:** `docs/project-plan.md`'s `### SPRINT-nn` section is the planning record.
It gains `**Planned:**`, the sum of the selected stories' `Story Points` and the selected tasks' `Ideal Hours`, set at planning.
When the sprint closes, it gains `**Actual:**`, the same sums as completed, and one sentence on what moved out and to which sprint.
The items stay in the sprint's GitHub milestone, and the report's summary names the week's planning and refinement rather than repeating the table.

### C32: Quality Requirements Are One File Per Record, With Their Tests Inside

**Problem:** The first review gave the quality group three files, made `docs/quality/README.md` the plan, and left the QR a section in one file while an FR and an ADR are files of their own.
That made the group read as a process folder rather than a requirement record, and it made the tests subordinate to a file that held nothing else.

**Replacement:** `docs/quality/qr/QR-nn.md` is one file per quality requirement, and `docs/quality/README.md` is the index.
A QR's tests are `## QRT-nn` sections inside its own file, numbered within the QR and cited `QR-01 QRT-02`, linked `QR-01.md#qrt-02`, as an `AC-nn` is scoped to its parent.
`quality-requirement-tests-requirements.md` still owns the QRT sections; no `docs/quality/quality-requirement-tests.md` is created.
A QR's file heading is `# QR-nn: <short outcome>`, and the outcome sentence is the first line below it.

### C33: The Testing Plan Is A Part Of The Project Plan

**Problem:** The first review called `docs/quality/README.md` the quality plan, so an index carried the schedule, and the schedule repeated each test's status and sprint, which are the same two facts the test itself carried.
It also called a schedule a plan, which promises more than the table can show.

**Replacement:** `docs/project-plan.md` gains a `## Quality Requirement Testing Plan` section after `## Sprints`, and it is one table: `Test`, `Requirement`, `Passes from`, `Status`, one row per `QRT-nn`.
That table is the only place a test's state and its sprint are read.
The name is the quality requirement testing plan, not the quality plan; the requirements' priorities live in their files and the index.
`planning-requirements.md` owns the plan's part, and `quality-requirement-tests-requirements.md` owns the table's columns and statuses.
The architecture document's trace links the table once.

### C34: The Record Groups Share One Shape

**Problem:** The first review gave the FR group an index and one file per record, the quality group three files, and the ADR group a directory indexed from the architecture document, so a reader learned three layouts and last year's `docs/requirements/` parent invited a fourth.

**Replacement:** Each group is an index plus a record directory:
`docs/functional-requirements/README.md` with `fr/FR-nnn.md`, `docs/quality/README.md` with `qr/QR-nn.md`, and `docs/architecture/README.md` with `adr/ADR-nnn.md`.
There is no `docs/requirements/` parent, and C17's three-file quality directory is superseded.

### C35: An ADR Is Dropped, Not Rejected

**Problem:** C10 gave the ADR a `Rejected` status and a `**Rejected:**` field, so the family broke rules 10 and 11 of [Identifier Rules](../../requirements/general-requirements.md#identifier-rules) and used a word no other family uses.

**Replacement:** The five statuses are `Proposed`, `Accepted`, `Superseded`, `Deprecated`, and `Dropped`.
A record that was never adopted is `Dropped`, with the ordinary `**Dropped:**` field giving the date and the reason.
`Deprecated` is an adopted record that is no longer recommended, and `Superseded` is one that another record replaces.
`**Created:**` and `**Updated:**` stay.
`**Updated:**` records an edit that does not change the decision, and a changed decision is a new record that supersedes the old one.

### C36: An ADR Records Its Untracked Quality In Its Consequences

**Problem:** `**Untracked quality:**` named an ISO/IEC 25010 pair as a field, which is a requirement-shaped statement with no requirement behind it, and "untracked" does not say what it means.

**Replacement:** The field is dropped.
An ADR's `## Consequences` names the quality attribute the decision accepts and says why no `QR-nn` covers it.

### C37: The Story Names Only Its Functional Requirements And Decisions

**Problem:** C13 put `QR-nn` in `### Specified by`, while the assignment and the task's `### References` named FRs and ADRs only, and a quality requirement holds for the product rather than for one story.

**Replacement:** `### Specified by` names `FR-nnn` and `ADR-nnn` only.
A QR reaches work through the ADR that addresses it and the test that proves it, never through a story.

### C38: The One-Way Rule Lives In General Requirements

**Problem:** C14 put the provenance-and-conformance distinction "beside the one-way rule", but that rule lives at [What Cites It](../../requirements/decisions-requirements.md#what-cites-it) and in `A3-DEC-022`, so the edit had no target and risked a second owner.

**Replacement:** The one-way rule and the provenance-and-conformance distinction move into `general-requirements.md#traceability-into-later-weeks`, and [What Cites It](../../requirements/decisions-requirements.md#what-cites-it) links it and keeps only the per-artifact citation list.

### C39: The Types Replace The Labels On The Issues That Carry Them

**Problem:** C3 kept the `user-story` and `task` labels "so those issues stay findable", while C20 deleted the `moscow:*` labels for exactly the two-markers reason, so the story registry became "the type or the label".

**Replacement:** The team applies the `User Story` and `Task` types to every existing story and task issue in the same pass as the MoSCoW backfill.
The six labels then retire, and the registry is the type.

### C40: The Week 4 Hard Deadline Moves To Saturday

**Problem:** The syllabus had Week 4's hard deadline on Friday 23 October, the day after the customer meeting, while Weeks 2 and 3 already put the hard deadline on Saturday and Week 4 needs the same day.

**Replacement:** Week 4's hard deadline is Saturday 24 October 2026 at 23:59, and the soft deadline stays Thursday 22 October at 23:59.
The syllabus's exception sentence, the Week 4 deadline line, the README's assignment row, this plan's header, and the assignment's header all say so, and `SPRINT-04`'s `**Due:**` is `2026-10-24`.

### C41: A Technology Choice Is An ADR

**Problem:** [The Decision](../../requirements/decisions-requirements.md#the-decision) still sends a technology choice to a `DEC-nnn`, while `A4-DEC-8` and `TASK-066` route it to an ADR.
The plan's edited-files table did not include the file, and Week 4's tool choices had no record at all once `tech-stack.md` was gone.

**Replacement:** The technology-choice trigger links the ADR rule instead of requiring a `DEC-nnn`, and a customer's mandate stays a `CON-nn` citing the `DEC-nnn` that records it.
Week 4's test-framework choice and static-analysis choice are ADRs, each `constrains` the testability QR.

### C42: The Changelog's Quality Claim Is A Release Rule

**Problem:** C23 and section 2 said `releases-requirements.md` needed no change, but the changelog's released section claiming a `QR-nn` is a new changelog rule, and the quality file would have been its only owner while the release file owns the changelog.

**Replacement:** `releases-requirements.md` gains a `Since: W4` rule: a released section names a `QR-nn` only when that requirement's test is `Passing` in the sprint, and it links the requirement and the test.
The quality requirement tests file links the rule instead of restating it.

## Decisions Settled In This Session

| Theme                        | Decision                                                                                                                                                                                                                               | Source            |
| ---------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------- |
| Layout                       | One flat file per requirements group in `requirements/`. No folder per artifact.                                                                                                                                                       | Meeting           |
| Paths                        | Each artifact group is an index plus a record directory: `docs/functional-requirements/` with `fr/`, `docs/quality/` with `qr/`, and `docs/architecture/` with `adr/`. No `docs/requirements/` parent.                                 | C34               |
| Links                        | Every link points one way, from the later artifact to the earlier identifier; provenance and conformance are different links, stated once in general requirements.                                                                     | C14, C38          |
| Identifiers                  | `FR-nnn` and `ADR-nnn` take three digits; `QR-nn` and `QRT-nn` take two.                                                                                                                                                               | Meeting           |
| Functional requirements      | `FR-nnn` exists, and `A3-DEC-014` is reversed by an `A4-DEC` entry. An FR states behavior independently of when the story that needed it was written.                                                                                  | Meeting, C1       |
| FR inventory                 | Every story that is not `Won't Have` names at least one `FR-nnn`, the stories built in Week 3 included.                                                                                                                                | D1, C13           |
| FR shape                     | One file per FR under `docs/functional-requirements/fr/`, with `docs/functional-requirements/README.md` as the index.                                                                                                                  | Meeting, C34      |
| FR fields                    | `Status`, `Sources`, `Components`, `Decision`, `Changed`, `Dropped`. `**Sources:**` is provenance: the story, decision, ADR, constraint, or meeting the requirement came from.                                                         | C13, C14          |
| FR criteria                  | `## Acceptance Criteria` with one `### AC-nn` section per criterion, so each has an anchor; cited `FR-012 AC-02`, linked `FR-012.md#ac-02`.                                                                                            | C15               |
| FR and stories               | There is no feature artifact and no `Feature` issue type. The story names its specifiers in `### Specified by`, an `FR-nnn` or an `ADR-nnn`; the FR names no story.                                                                    | D2, C37           |
| Quality requirement shape    | One file per quality requirement at `docs/quality/qr/QR-nn.md`, with `docs/quality/README.md` as the index, the six-part quality attribute scenario, and exactly one ISO/IEC 25010:2023 characteristic and sub-characteristic.         | Meeting, C32      |
| Quality requirement testing plan | `docs/project-plan.md`'s `## Quality Requirement Testing Plan` is one table: `Test`, `Requirement`, `Passes from`, `Status`, one row per `QRT-nn`.                                                                                | C33               |
| Quality requirement priority | Business importance against technical risk, each `High`, `Medium`, or `Low`; the mandated testability requirement is `High`, and the rule says why.                                                                                    | Meeting, C22      |
| Quality requirement tests    | One `## QRT-nn` section per test inside its `QR-nn` file, numbered within the QR and cited `QR-01 QRT-01`, linked `QR-01.md#qrt-01`.                                                                                                 | Meeting, C32      |
| ADR shape                    | One file per ADR at `docs/architecture/adr/ADR-nnn.md`, in the MADR shape, with the five statuses `Proposed`, `Accepted`, `Superseded`, `Deprecated`, and `Dropped`.                                                                  | Meeting, C35      |
| ADR relations                | `**Addresses:**` groups `satisfies`, `enables`, `constrains`, and `drops`; `**Decision:**` names the `DEC-nnn` the record documents; no QRT is cited, and a quality attribute without a QR goes in `## Consequences`.                  | C16, C30, C36     |
| Decision routing             | An architectural, technology, or functional-behavior decision is an `ADR-nnn` or an `FR-nnn`. A `DEC-nnn` is for a decision the customer made and for a scope, priority, or story change. Existing `DEC-nnn` entries are not migrated. | D3                |
| Architecture document        | `docs/architecture/README.md` is the one architecture document: drivers, views with their legends, the ADR index, and the trace.                                                                                                       | Meeting           |
| Architecture views           | The W2 context diagram stays. Week 4 adds a container diagram, a component diagram, and one sequence diagram of the core task's main actor flow.                                                                                       | Meeting, D8       |
| Diagram and legend ownership | `requirements/architecture-requirements.md` owns every diagram rule under `docs/`: the legend, the source beside the image, and the light and dark themes.                                                                             | Meeting           |
| Minima                       | At least 3 quality requirements with different characteristics, at least 1 test per quality requirement with at least one `Passing`, at least 5 functional requirements, and at least 3 ADRs.                                          | Meeting, C23      |
| Estimation                   | Four `Public` single-select issue fields: `MoSCoW` and `Story Points` on `User Story`, `Ideal Hours` and `Priority` on `Task`; modified Fibonacci to `100` with a split above `13SP`, and a task split above `8H`.                     | Meeting, C4, C19  |
| Estimate timing              | `MoSCoW` when the story is written, `Story Points` at refinement, and `Ideal Hours` and `Priority` when the task is scheduled; a carried issue is refined and estimated before it enters the sprint.                                   | C29               |
| Issue types                  | `User Story` and `Task` from Week 4, applied by the forms and to the existing issues in the same pass; the six labels retire.                                                                                                           | Meeting, C3, C39  |
| MoSCoW                       | A `MoSCoW` single-select issue field on stories replaces the four `moscow:*` labels, which are deleted after the migration.                                                                                                            | D8, C20           |
| Task priority                | A `Priority` single-select issue field, `High`, `Medium`, or `Low`, on tasks; a story keeps `MoSCoW` and carries no priority field.                                                                                                    | C19               |
| Ceremonies                   | Four separately anchored sections: Sprint Planning, Product Backlog Refinement, Estimation, and Retrospective; the planning record is the plan's `### SPRINT-nn` section with `**Planned:**` and `**Actual:**`, and the method is the Scrum Guide. | Meeting, C18, C31, C25 |
| Retrospective                | `reports/week-NN/sprint-retrospective.md`, three sections, actions carrying an `Owner`.                                                                                                                                                | Meeting, C24      |
| Agent instructions           | The team's root `AGENTS.md` names each maintained artifact and the requirements file that checks it.                                                                                                                                   | C27               |
| Syllabus                     | The Week 4 deliverables list and the Submission 4 row name the same artifacts in the same order, as quality requirements.                                                                                                              | Meeting, C28      |
| Deadline                     | Week 4's hard deadline is Saturday 24 October 2026 at 23:59, and the soft deadline stays Thursday 22 October.                                                                                                                          | C40               |

## 1. New Requirements Files (`requirements/`)

All new files are flat in `requirements/`, carry `**Since: W4**` markers, a ToC, `Required` / `Recommended` / `Example` labels, and one full example at the end, in the meeting-booking example the other files already use.

### `architecture-requirements.md`

- **Where The Architecture Lives:** `docs/architecture/README.md` is the only architecture document.
  It carries these parts, in order:
  1. the business goals, each linked to its `TOS-nn`, since the threshold of success is where the goals are measured;
  2. the constraints, each `CON-nn` linked from the product vision, with the requirement it constrains;
  3. the functional requirements, each `FR-nnn` linked;
  4. the quality requirements, each `QR-nn` linked in priority order;
  5. the views, each with its legend;
  6. the architectural decisions, through the index;
  7. the trace, which links `docs/project-plan.md#quality-requirement-testing-plan` once, so the document never restates when a test passes.
- **Views:** Four views, numbered as the diagram rules number them:
  1. the context view, the vision's diagram, linked from [System Context](../../requirements/product-vision-requirements.md#system-context) rather than drawn again;
  2. the container view, `docs/architecture/container.<ext>`, showing the deployed units and what they exchange;
  3. the component view, `docs/architecture/component.<ext>`, showing the components inside one container and the relationships between them;
  4. the sequence view, `docs/architecture/sequence-<core-task>.<ext>`, showing the core task's main actor flow across the containers, with each step numbered.

  Each view is embedded, and each has its source committed beside its image.

- **### Diagrams And Legends For `docs/`**: This heading is the anchor other files link, and it is the sole owner of every diagram rule under `docs/`:
  - every diagram carries a legend that names each shape, colour, and arrow it uses;
  - the image and its source share a directory and a base name, and are updated in one change;
  - the diagram is legible in both themes;
  - the diagrams agree with the document's text and with the vision's boundary;
  - every element the document names in prose appears in a view.
- **Decision Index:** One table, under `## Architectural Decisions`, with these columns in this order:

  | Column     | What it holds                                                                                                                         |
  | ---------- | ------------------------------------------------------------------------------------------------------------------------------------- |
  | `ADR`      | The `ADR-nnn` as link text, linked to its file under `adr/`                                                                           |
  | `Status`   | `Accepted`, `Superseded`, `Deprecated`, or `Rejected`, matching the record                                                            |
  | `Drivers`  | Each `FR-nnn` and `QR-nn` the record addresses, linked, each with its relation word: `satisfies`, `enables`, `constrains`, or `drops` |
  | `Decision` | The record's decision in one line, short enough to scan                                                                               |

  The active records come first, in `ADR-nnn` order, and the inactive ones follow, in `ADR-nnn` order.
  An ADR that addresses several requirements lists them all in one cell, so the index needs no second table and no per-relation columns.

- **Trace Forward:** The drivers are the architecture's projection of requirements, and the requirements remain the only text: an FR and a QR are never restated in the architecture document, only linked.

### `functional-requirements-requirements.md`

- `FR-nnn` takes three digits.
  It is issued once, never renumbered, and never reused.
- Each FR is `docs/functional-requirements/fr/FR-nnn.md`, headed `# FR-nnn: Title`, and `docs/functional-requirements/README.md` is the index table in `FR-nnn` order, with the columns `FR`, `Title`, `Components`, and `Status`.
- Its fields, in this order:
  - `**Status:**`, `Active` or `Dropped`;
  - `**Sources:**`, one or more entries recording why the requirement appeared: the `US-nn`, `DEC-nnn`, `ADR-nnn`, or `CON-nn` that produced it, each linked, or a meeting report by its path and anchor;
  - `**Components:**`, one or more of `frontend`, `backend`, and `infrastructure`;
  - `**Decision:**`, the `DEC-nnn` a customer decision imposed on the behavior, linked, only when one did;
  - `**Changed:**`, each change, recorded as a gap records one, only when it changed;
  - `**Dropped:**`, the date, the reason, and the `DEC-nnn` or `ADR-nnn` when one caused it.
- An FR may be written before or after the stories that need it; it specifies behavior, and its existence does not depend on any issue staying open.
  `**Sources:**` is provenance and is never a list of the stories that must meet the requirement.
- `## Behavior` holds one or more `shall` statements.
  Each names its actor, its condition, and its observable outcome, so a reader can verify it without opening a story.
- `## Acceptance Criteria` holds one `### AC-nn` section per criterion, `AC-01` upward, numbered within the FR and never renumbered or reused there.
  A criterion is a verifiable assertion: a given and an expected result, an example input and output, a configuration table, or a state a reader can observe.
  No scenario notation is required, and a criterion that would need one to be checkable is not yet a criterion.
- An FR's criteria are the team's technical check; a story's are the customer's.
  A story names the FRs and ADRs that specify it in `### Specified by`, per [User Story Requirements](../../requirements/user-stories-requirements.md#the-story).
- Cite a criterion as `FR-012 AC-02`, and link it as `FR-012.md#ac-02`, per [Identifier Rules](../../requirements/general-requirements.md#identifier-rules).
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
- The allowed pairs:

  | Characteristic           | Sub-characteristics                                                                                                                                                    |
  | ------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
  | `functional suitability` | `functional completeness`, `functional correctness`, `functional appropriateness`                                                                                      |
  | `performance efficiency` | `time behaviour`, `resource utilization`, `capacity`                                                                                                                   |
  | `compatibility`          | `co-existence`, `interoperability`                                                                                                                                     |
  | `interaction capability` | `appropriateness recognizability`, `learnability`, `operability`, `user error protection`, `user engagement`, `inclusivity`, `user assistance`, `self-descriptiveness` |
  | `reliability`            | `faultlessness`, `availability`, `fault tolerance`, `recoverability`                                                                                                   |
  | `security`               | `confidentiality`, `integrity`, `non-repudiation`, `accountability`, `authenticity`, `resistance`                                                                      |
  | `maintainability`        | `modularity`, `reusability`, `analysability`, `modifiability`, `testability`                                                                                           |
  | `flexibility`            | `adaptability`, `scalability`, `installability`, `replaceability`                                                                                                      |
  | `safety`                 | `operational constraint`, `risk identification`, `fail safe`, `hazard warning`, `safe integration`                                                                     |

- Under `## Scenario`, six `###` sub-headings follow, in this order: `Source`, `Stimulus`, `Environment`, `Artifact`, `Response`, `Response Measure`.
  These are the quality attribute scenario from lecture 4, written as the reference does.
- A quality requirement about testability names its critical modules by repository path, such as the frontend entry point or the payment module, so the requirement can be checked against the code rather than against a description of it.
  That requirement carries `**Business importance:** High`, because the course's stakeholders include the instructors, who require it; the rule states the reason, so the priority matrix cannot rate it `Low`.
- The quality requirement testing plan is `docs/project-plan.md`'s `## Quality Requirement Testing Plan`, one table of every `QRT-nn` with its `QR-nn`, its `**Passes from:**` sprint, and its `**Status:**`, so a reader sees what is verified and what is not, and when the rest arrives.
  The index does not repeat the tests.
- A QR cites no ADR, and no ADR cites it as a normative dependency: `**Addresses:**` on the ADR is where the two meet.
- **Recommended:** a matrix table whose rows are business importance and whose columns are technical risk, with each cell holding the `QR-nn` links at that pair.

### `quality-requirement-tests-requirements.md`

- A `QRT-nn` is a `## QRT-nn` section inside its `QR-nn` file, numbered within that QR, `QRT-01` upward, and never renumbered or reused there.
  It is cited `QR-01 QRT-02` and linked `QR-01.md#qrt-02`, as an `AC-nn` is scoped to its parent.
- Its first line below the heading is the test in one sentence, and it carries these fields, in this order:
  - `**Level:**`, one of `manual`, `scripted`, `CI`;
  - `**Runs at:**`, the file path of the script or the inspection step, in one line.
- The body is a numbered procedure and one `**Pass when:**` criterion, which restates the QR's response measure in a form a stranger can run.
- Every `QR-nn` has at least one `QRT-nn`.
- A test carries no `**Status:**` and no `**Passes from:**`.
  The quality requirement testing plan carries both: `docs/project-plan.md`'s `## Quality Requirement Testing Plan`, per [Planning Requirements](../../requirements/planning-requirements.md#quality-requirement-testing-plan), is one table whose columns are `Test`, `Requirement`, `Passes from`, and `Status`, one row per `QRT-nn`.
  `Status` is `Planned`, `Implemented`, `Passing`, or `Dropped`, and `Passes from` is exactly one `SPRINT-nn`, linked through the plan.
- A test that cannot be automated within the week stays `Planned` with a later sprint, and the reason is one line above its section in the QR file.
- `Passes from` states when a test must pass; it does not gate the release.
  A released section names a `QR-nn` only when that requirement's test is `Passing` in the sprint, per [Release Requirements](../../requirements/releases-requirements.md#the-changelog), so a release never claims quality it has not verified.
- A `CI` test's `**Runs at:**` names the workflow step that runs it, and it must be green on `main` before the week is submitted, per the product-code CI rule.
- A dropped test's table row says `Dropped`, and its section keeps `**Dropped:**` with the date and the reason, per [Identifier Rules](../../requirements/general-requirements.md#identifier-rules).

### `adr-requirements.md`

- `ADR-nnn` takes three digits, one file per decision at `docs/architecture/adr/ADR-nnn.md`, numbered sequentially across the repository.
  `docs/architecture/adr/TEMPLATE.md` is the shape to copy.
- Its fields, in this order:
  - `**Status:**`, one of `Proposed`, `Accepted`, `Superseded`, `Deprecated`, or `Dropped`;
  - `**Superseded by:**`, only on a superseded record, the `ADR-nnn` linked;
  - `**Dropped:**`, only on a dropped record, the date and the reason;
  - `**Created:**` and `**Updated:**`, where `**Updated:**` changes only when an edit leaves the decision as it was, because a changed decision is a new record that supersedes;
  - `**Components:**`, one or more of `frontend`, `backend`, and `infrastructure`;
  - `**Addresses:**`, a nested list whose groups are `satisfies` (the FRs the decision delivers), `enables` (the FRs it makes possible), `constrains` (the QRs it limits), and `drops` (the FRs and QRs whose behavior the record removes), each entry linked; at least one entry is required, in any group;
  - `**Decision:**`, the `DEC-nnn` whose choice the record documents, one or more, each linked, only when one exists.
- The body sections are `## Context`, `## Considered Options`, `## Decision Outcome`, and `## Consequences`, and `## Considered Options` names each rejected option with why it lost.
  `## Consequences` names a quality attribute the decision accepts that no `QR-nn` covers, and why it has no requirement.
  An option is called an **option**, because "alternative" is reserved for the `ALT-nn` families.
- The record carries the architectural, technology, or functional-behavior reasoning; the `DEC-nnn` it names carries only what the customer decided.
- The record cites no `QRT-nn`: a test proves a requirement, and the decision reaches the test through the requirement it addresses.
- An FR a record drops carries `**Dropped:**` citing that record, and one it changes carries the change under `**Changed:**` citing it; the record itself never lists the artifacts it changed, per [What Cites It](../../requirements/decisions-requirements.md#what-cites-it).
- An active record's row sits in the index's active table, and an inactive record's row in the inactive table below it.

### `sprint-ceremonies-requirements.md`

Four sections, each with its own anchor, and the requirements file that owns each term links these anchors.
The method is the [Scrum Guide](https://scrumguides.org/scrum-guide.html), named here as the source, because the lecture does not teach the ceremonies and the deck's Scrum slides stay commented out.

- **`## Sprint Planning`**: The sprint opens with planning in the plan's `### SPRINT-nn` section, which is the planning record.
  Planning sets the goal, replacing the provisional one, and adds `**Planned:**`, the sum of the selected stories' `Story Points` and the selected tasks' `Ideal Hours`.
  The items stay in the sprint's GitHub milestone, which the section links; the plan does not copy that list.
  When the sprint closes, the section gains `**Actual:**`, the same two sums as completed, and one sentence on what moved out and to which sprint.
  The weekly report names the week's planning in its summary and carries no planning section.
  The team plans `SPRINT-04` first, and every later sprint is planned the same way in its own week.

- **`## Product Backlog Refinement`**: Before planning, the items in the next two sprints are refined until each can be estimated, as the guide's refinement does.
  Refinement produces no document: its evidence is the estimate on the issue, the refined item sitting in the next sprints' GitHub milestones, and the report's summary naming what was refined that week.
  In the first sprint the ceremony runs, planning itself estimates the sprint's items, because the week before had no refinement.
  An issue carried from an earlier week is refined and estimated before it enters a sprint, or it stays unscheduled.
- **`## Estimation`**: Four `Public` single-select issue fields carry the estimate and the order of work, and the issue type each pins to says which it applies to:

  | Field          | Options                                                | Pins to      | Set when              |
  | -------------- | ------------------------------------------------------ | ------------ | --------------------- |
  | `MoSCoW`       | `Must Have`, `Should Have`, `Could Have`, `Won't Have` | `User Story` | the story is written  |
  | `Story Points` | `1`, `2`, `3`, `5`, `8`, `13`, `20`, `40`, `100`       | `User Story` | refinement            |
  | `Ideal Hours`  | `1`, `2`, `4`, `8`                                     | `Task`       | the task is scheduled |
  | `Priority`     | `High`, `Medium`, `Low`                                | `Task`       | the task is scheduled |

  `Story Points` follows the modified Fibonacci sequence; a story above `13SP` and a task above `8H` are split before they are scheduled, and the larger options exist so refinement can record an item it has not split yet.
  A `13SP` story is the largest one scheduled, and it is decomposed into tasks like any story.
  Stories are compared against stories and tasks against tasks.

- **`## Retrospective`**: Every sprint from `SPRINT-04` on ends with `reports/week-NN/sprint-retrospective.md`.
  It is a table with one section per heading:

  | Heading          | Rows                                                                                                                                         |
  | ---------------- | -------------------------------------------------------------------------------------------------------------------------------------------- |
  | `What Went Well` | 3 or more, each one sentence naming what happened                                                                                            |
  | `What Did Not`   | 2 or 3, each with the problem and its root cause                                                                                             |
  | `Actions`        | 3 or 4, each with its `Owner` (a GitHub username), its `Impact` (`High`, `Medium`, `Low`), and 1 or 2 marked as carried into the next sprint |

  The file is a record of its sprint and is not rewritten; the next sprint's file carries the history.
  An action is not an identifier family: it is cited by its file's path and the `#actions` anchor, with the action quoted.

## 2. Edited Requirements Files

| File                                 | Change                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| ------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `general-requirements.md`            | Add `FR-nnn`, `QR-nn`, `QRT-nn`, and `ADR-nnn` to rule 1. `FR-nnn`, `QR-nn`, and `ADR-nnn` are exceptions to rule 5, because a one-per-record file's `#` heading carries the title; `QRT-nn` is the section exception to rule 10, because the testing plan carries its state. Extend rule 7 so an `AC-nn` may belong to an FR and a `QRT-nn` to a QR. Add the one-way rule and the provenance-versus-conformance distinction to [Traceability Into Later Weeks](../../requirements/general-requirements.md#traceability-into-later-weeks), and extend that table: a story names the FRs and ADRs that specify it, an FR records its sources, an ADR addresses its FRs and QRs, a QRT is scheduled by its row in the testing plan, a task names its FRs and ADRs, and the weekly report links its retrospective and `REL-nn`. |
| `repository-requirements.md`         | The Week 4 block gains rule 9 for `actionlint` over `.github/workflows/`, and rule 6 stays about the product's code. A new `## The Pull Request Template` block owns the template's prompts. In `### The Course Materials As An Agent Skill`, the `Recommended` `AGENTS.md` line becomes a required Week 4 rule, per C27. In `### Root README`, a `Since: W4` sentence adds the link to `docs/architecture/README.md` beside the setup link.                                                                                                                                                                                                                                                                                                                                                                    |
| `definition-of-done-requirements.md` | The existing `Since: W4` item names the product-code checks and `actionlint`. The full example's `## Pull Request` list is backfilled with the same items, so the example matches the rule.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| `issue-tracking-requirements.md`     | `## Issue Fields` gains four single-select `Public` fields with their options and the issue type each pins to: `MoSCoW`, `Story Points`, `Ideal Hours`, and `Priority`. The project's table view gains the four columns, and a rule says the fields are set on the existing issues and the six labels retire. The story and task files link here for the definitions.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `user-stories-requirements.md`       | Rule 3's change-comment list gains `Specified by` and the four field values. Rule 4's registry is the `User Story` type, which is applied to the existing stories. Rule 6 names the type as the marker from Week 4, with one sentence for an organization that cannot use types. MoSCoW rule 1 names the `MoSCoW` field, and the six labels retire after the migration. The form and the story gain `### Specified by`, naming `FR-nnn` and `ADR-nnn`, and a new rule says a story is estimated at refinement and scheduled only after that. The `Where Stories Live` preamble says the story stays the record of its need while the behavior lives in the FR.                                                                                                                                                                                                                                                                                                                                                 |
| `task-issues-requirements.md`        | The form gains a `### References` section naming the FRs and ADRs the task works on, as links on `main`, and applies the `Task` type, which is also set on the existing tasks. A scheduled task carries `Ideal Hours` and `Priority`, and a task above `8H` is split before it is scheduled.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| `planning-requirements.md`           | `### SPRINT-nn` gains the `Since: W4` rules: the goal is set at planning and replaces the provisional one, `**Planned:**` sums the selected stories' story points and the selected tasks' ideal hours, and `**Actual:**` is added when the sprint closes. The plan carries `## Quality Requirement Testing Plan` between `## Sprints` and `## Progress Monitoring`, per [Quality Requirement Tests](../../requirements/quality-requirement-tests-requirements.md), and the full example's `SPRINT-04` due date becomes `2026-10-24`. `## Progress Monitoring` stays last, and refinement keeps no register, per C18.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| `decisions-requirements.md` | The technology-choice trigger of [The Decision](../../requirements/decisions-requirements.md#the-decision) links the ADR rule instead of requiring a `DEC-nnn`, and a customer's mandate stays a `CON-nn` citing the decision that records it. [What Cites It](../../requirements/decisions-requirements.md#what-cites-it) links the one-way rule instead of restating it. |
| `product-vision-requirements.md`     | `## System Context` rule 3 becomes a link to the architecture requirements' diagram rules. Rule 2's "source beside it" becomes a link too. The diagram, the boundary agreement, and ruling out the internal views stay here.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| `releases-requirements.md`           | `## The Changelog` gains a `Since: W4` rule: a released section names a `QR-nn` only when that requirement's test is `Passing` in the sprint, linking both, per C42. `REL-04` is its sprint's release, and nothing else changes.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| `weekly-report-requirements.md`      | W4: the retrospective takes a coverage row in the report, and the report's summary names each `QR-nn` whose test is not yet passing and the items refined that week for the next sprints. The report gains no retrospective section and no planning section.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |

No `issue-types-requirements.md` is added: rule 6 of the story file and the form rule of the task file own the type, and [Issue Fields](../../requirements/issue-tracking-requirements.md#issue-fields) owns the pinning, per C21.

## 3. New Guide

`guides/quality-and-architecture.md` follows the shape of `guides/planning-and-tracking.md`: a short preamble, `## What You Produce`, numbered `## Step N:` sections with their `###` sub-sections, and `## Common Mistakes`.
The steps:

1. **Find the quality expectations.**
   A quality attribute workshop: stakeholders, their concerns, and the three ways to measure quality from lecture 4.
2. **Turn a characteristic into a requirement.**
   The ISO/IEC 25010 pair, then the six-part scenario, with a worked example.
3. **Make it testable, and write the test.**
   The response measure that a stranger can run, the `QRT-nn` inside the quality requirement's file, and its row in the testing plan with its sprint and its status.
4. **Prioritize.**
   Business importance against technical risk, and the matrix that results.
5. **Collect the drivers, and write the functional requirements.**
   The behavior a story needs, the components it lands in, its `**Sources:**`, its `shall` statements, and its own criteria, each with an anchor; the story's `### Specified by` names the FRs and ADRs that specify it.
6. **Draw the views.**
   Context, container, component, and the sequence of the main flow, each with its legend.
7. **Write the decision records.**
   Context, the options turned down, the outcome, the consequences, the `**Addresses:**` relations, and the `**Decision:**` it documents.
8. **Index and trace.**
   The quality requirement index, the decision index with its active and inactive tables, the testing plan, and the reading order that goes from a quality requirement to the ADR that answers it.
9. **Answer "why does this line of code exist?".**
   The chain from a commit to a `TOS-nn`, with the task's `### References` section as its first hop.

## 4. `assignments/assignment-4.md`

The header carries the dates: soft Thursday 22 October 2026 at 23:59, hard Saturday 24 October 2026 at 23:59.
The intro continues from Week 3: the minimum usable product is on `main` and the first release is tagged, and this week the product gets quality requirements, a documented architecture, a quality requirement testing plan, and the checks that prove the code.

The numbered parts, in the order the work can succeed, each a rules list and then the week's minima:

1. **Plan The Sprint, Refine The Backlog, And Set The Fields.**
   The plan's `### SPRINT-04` section with its goal replacing the provisional one and `**Planned:**` summing the selected stories' story points and tasks' ideal hours, `SPRINT-04`'s due date set to `2026-10-24`, refinement for `SPRINT-05` and `SPRINT-06` with no document, the four issue fields created and pinned, `MoSCoW` migrated from the old labels and the types set on the existing issues, and every carried issue refined and estimated before it enters the sprint.
2. **Write The Quality Requirements.** `docs/quality/qr/`, at least 3 `QR-nn` files, each with a different characteristic, all six scenario parts, both priorities, and its row in `docs/quality/README.md`.
   One of them is about `maintainability`/`testability`, names the critical modules, and carries `High` business importance.
3. **Write The Quality Requirement Tests And Their Testing Plan.** At least one `QRT-nn` inside each QR's file, and `docs/project-plan.md`'s `## Quality Requirement Testing Plan` with one row per test, its `Passes from` sprint, and its status, with at least one `Passing` this week.
4. **Write The Functional Requirements.** `docs/functional-requirements/` with its index and at least 5 `fr/FR-nnn.md`, each with its `**Sources:**`, its `shall` statements, and its own `### AC-nn` criteria, and each non-`Won't Have` story naming its FRs and ADRs in `### Specified by`.
5. **Write The Architectural Drivers.**
   In `docs/architecture/README.md`: the business goals with their `TOS-nn`, the `CON-nn` links, the FRs, and the QRs in priority order.
6. **Draw The Views.**
   The context view linked, a container view, a component view, and one sequence view of the core task's main flow, each embedded with its source and its legend.
7. **Record The Architectural Decisions.**
   At least 3 `ADR-nnn` files, each `**Addresses:**` at least one FR or QR, each with its rejected options, and the index's active table above its inactive one.
8. **Write The Decision Index And The Trace.**
   The four-column index and the last part of the architecture document, which links `docs/project-plan.md#quality-requirement-testing-plan` once and never restates when a test passes.
9. **Add Continuous Integration For The Product Code.**
   Lint, format or type check, build, and tests on pull requests and on `main`, and `actionlint` over the workflow files, with the Definition of Done's pull request list updated.
10. **Write The Team's `AGENTS.md`.**
    Each maintained artifact path with the requirements file that checks it, so a coding agent reads the rule rather than inferring it.
11. **Carry Out The Week 3 Action Points And Open Questions.**
    They are read from `## Previous action points` and `## Previous open questions` of `reports/week-04/meeting-report.md`, per [Meeting Report](../../requirements/customer-meetings-requirements.md#meeting-report); nothing is copied from Week 3.
12. **Validate With The Customer.**
    Show the quality requirements and the architecture against the drivers, and record each customer change as a `DEC-nnn`.
    In the script, the report, and the transcript.
13. **Cut The `REL-04` Release.**
    The tag on `main`, the changelog's released section, the plan's `REL-04` line, and the week's report, in that order, per [Releases](../../requirements/planning-requirements.md#releases).
    The changelog claims no quality requirement whose test is not `Passing`.
14. **Hold The Sprint Retrospective.** `reports/week-04/sprint-retrospective.md` with its three sections, the row counts, and an `Owner` on every action.
15. **Answer The Two Questions In The Report.**
    How the team's setup prevents free riding, and how a line of code reaches a `TOS-nn` goal.
16. **Report On Your AI Usage.**

The report sections follow Assignment 3: **What Good Looks Like**, **Assignment Report In The Repository** with the coverage table and the repository evidence, **Assignment Report On Moodle** with the wrapper's contents, **Submission Procedure**, and **Checklist**.

The coverage table rows are:

| Deliverable                            | Artifact                                                                                                |
| -------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| Sprint plan and estimates              | `docs/project-plan.md#sprint-04`, with its goal, `**Planned:**`, and `**Actual:**` at the close                    |
| Product backlog refinement             | the estimates on the issues in the `SPRINT-05` and `SPRINT-06` milestones, named in the report's summary            |
| Quality requirements                   | `docs/quality/qr/`, with `docs/quality/README.md` as the index                                                       |
| Quality requirement testing plan       | `docs/project-plan.md#quality-requirement-testing-plan`                                                   |
| Quality requirement tests              | the `QRT-nn` sections in the QR files                                                                     |
| Functional requirements                | `docs/functional-requirements/`, with `README.md` as the index and `fr/` for the records                  |
| Architectural drivers and architecture | `docs/architecture/README.md`, with `architecture/container.<ext>`, `component.<ext>`, and the sequence |
| Architectural decisions                | `docs/architecture/adr/` and the index                                                                  |
| Product-code CI                        | the product workflow, and `actionlint` over the workflow files                                          |
| Team `AGENTS.md`                       | `AGENTS.md`                                                                                             |
| Definition of Done                     | `docs/definition-of-done.md`                                                                            |
| Week 3 action points                   | `## Previous action points` in `reports/week-04/meeting-report.md`                                      |
| Week 3 open questions                  | `## Previous open questions` in the same report                                                         |
| Meeting script                         | `reports/week-04/meeting-script.md`                                                                     |
| Customer validation                    | `reports/week-04/meeting-report.md`, the transcript when there is one, and each story's verdict          |
| `REL-04`                               | the tag, the changelog's released section, and the plan's `REL-04` line                                 |
| Sprint retrospective                   | `reports/week-04/sprint-retrospective.md`                                                               |
| Free-riding and traceability answers   | the summary section of `reports/week-04/README.md`                                                      |
| AI usage                               | `reports/week-04/ai-usage.md`                                                                           |

The **What Good Looks Like** guidance:

- quality requirements a stranger could fail;
- a quality requirement testing plan that says what is verified now and when the rest arrives;
- a priority matrix that does not rate everything `High`, and the mandated testability requirement rated `High` with its reason;
- functional requirements a reviewer can check without opening a story, and a story that names the FRs and ADRs specifying it;
- criteria a checker can run as written, including a table or an example where prose would be vague;
- decision records that name a rejected option and a consequence they accept;
- a legend that makes each diagram readable without the text;
- a sequence view that shows the core task end to end, not a component's internals;
- estimates the team can defend, a `**Planned:**` sum they knew before they started, and an `**Actual:**` they compare it with.

## 5. New Maintainer Decision Log `course/decisions/a4.md`

The file follows the format of `course/decisions/a3.md`: a header paragraph, then `A4-DEC-nnn` entries with `**Status:**`, `**Decision:**`, `**Why:**`, `**Alternatives considered:**`, `**Where it lands:**`, and `**Reverses:**` on the entry that reverses `A3-DEC-014`.

The entries:

1. Week 4 is quality, architecture, product-code CI, and `REL-04`, with the ceremonies arriving here.
2. One flat requirements file per group, and one directory per artifact group that needs more than one file.
3. `FR-nnn` exists, and this entry reverses `A3-DEC-014`, whose "stories are the functional requirements" clause stops holding.
4. An FR is the specification independent of its stories: it names no story, records its `**Sources:**`, and carries its own criteria with anchors.
   There is no feature artifact.
5. `QR-nn`: one file at `docs/quality/qr/QR-nn.md`, one ISO 25010 pair, six scenario parts, a two-level priority, and `docs/quality/README.md` as the index.
6. `QRT-nn`: a `## QRT-nn` section inside its QR's file, with no status and no sprint; `docs/project-plan.md`'s `## Quality Requirement Testing Plan` is the one table that carries both.
7. `ADR-nnn`: MADR-shaped files, the `**Decision:**` field naming the decision it documents, the boundary against `DEC-nnn`, and the five statuses ending in `Dropped`; a quality attribute without a QR goes in `## Consequences`.
8. A decision about architecture, technology, or functional behavior is an ADR or an FR; a customer or scope decision is a `DEC-nnn`; existing entries are not migrated.
   This entry satisfies TASK-066.
9. `docs/architecture/README.md` is the one architecture document, the product vision keeps the context diagram and no second copy exists, and the document carries four views.
10. Diagram and legend rules are owned by `architecture-requirements.md`.
11. The four-column decision index, with the active records first.
12. `Story Points` on the modified Fibonacci sequence, split above `13SP`, and `Ideal Hours` with the `8H` ceiling, both as public issue fields.
13. Issue types replace the story and task labels, are applied to the existing issues in the same pass, and the six labels then retire.
14. `MoSCoW` as an issue field, migrated from the four labels, which then retire.
15. A story carries `### Specified by`, naming `FR-nnn` and `ADR-nnn`, and the FR carries `**Sources:**`; provenance and conformance are different links, and the one-way rule says so in general requirements.
16. `AC-nn` also belongs to an FR, with one `###` section per criterion so it can be linked.
17. Four anchored ceremony sections, the planning record in the plan's `### SPRINT-nn` section with `**Planned:**` and `**Actual:**`, refinement with no register, and the retrospective in `reports/`, which supersedes `A3-DEC-002`'s deferral and the "no new section" clause of the first draft.
18. The method for the ceremonies is the Scrum Guide, not the deck.
19. The retrospective takes a coverage row and has no coverage table of its own, and `A3-DEC-020` extends to it.
20. A task's `### References` section names its FRs and ADRs, which extends `A3-DEC-022`'s chain by one hop.
21. The mandated testability requirement carries `High` business importance, and the rule gives the reason.
22. A release claims only the quality requirements whose tests pass in its sprint, and the rule lives in `releases-requirements.md`.
23. The team's `AGENTS.md` is required from Week 4.
24. The syllabus and router updates.
25. The new identifier families.
26. Assignment 4 is a delta ordered by the order of work.
27. Each artifact group is an index plus a record directory, with no `docs/requirements/` parent.
28. The quality requirement testing plan is a part of the project plan, not a file of its own.
29. The link direction and the provenance-versus-conformance distinction are stated once in general requirements.
30. Week 4's hard deadline is Saturday 24 October 2026.
31. A technology choice is an ADR, and the `DEC-nnn` trigger links it.

## 6. Edited Files Outside `requirements/`

- **`course/syllabus.md`**: The Week 4 deliverables name each artifact by path: the sprint plan and estimates, the quality requirements, the quality requirement tests and their testing plan, the functional requirements, the architectural drivers, the architecture draft with its views, the decision records, product-code CI, the team's `AGENTS.md`, the retrospective, and `REL-04`.
  The Submission 4 row is rewritten from that list, in the same order, and both call the group quality requirements.
  Week 4's hard deadline becomes Saturday 24 October at 23:59, and the exception sentence names Week 4 with Weeks 2 and 3.
  The stray `Verification & Validation` line under Week 5 is moved into the Week 5 lecture line it describes.
- **`README.md`**: The Assignment 4 row in Assignments, the new guide row in The Guides, and the new requirements files in The Rules table.
- **`SKILL.md`**: Matching rows in Where Each Kind Of Work Is Ruled, with the guide beside each requirements link, per its own routing rule: functional requirements, quality requirements and their tests, and the architecture with its decisions.
- **`course/rules.md`**: The new requirements files in Where The Rules Live, and the new guide.
- **`AGENTS.md`**: The `requirements/` table with the six new files, the `docs/` Destination Map with a Week 4 row (`docs/functional-requirements/` with `fr/`, `docs/quality/` with `qr/`, `docs/architecture/README.md` with `container`, `component`, and the sequence diagram, `docs/architecture/adr/`, and `docs/project-plan.md#quality-requirement-testing-plan`), the identifier conventions with the new families and their heading form including an FR's `AC-nn` and a QR's `QRT-nn`, the terminology list with the new words (`functional requirement`, `quality requirement`, `quality requirement test`, `quality requirement testing plan`, `architecture decision record`, `architecturally significant requirement`, `option`, `sprint planning`, `product backlog refinement`, `retrospective`, `provenance`, `conformance`), and the Scrum paragraph rewritten for C4, C19, C31, and C39.
- **`TODO.md`**: The A4 items this work closes are ticked with a note, and the items it decides are recorded where they were asked.

## 7. The Students' `.github/` Files The Rules Cover

These are repository content rather than artifacts, per [Where Artifacts Live In The Repository](../../requirements/general-requirements.md#where-artifacts-live-in-the-repository), and the rules own them.

- **`.github/ISSUE_TEMPLATE/user-story.yml`**: It applies the `User Story` type, it gains the `Specified by` field, and it no longer applies the `user-story` label.
  The type is also set on the existing story issues, and the label retires.
  The form cannot set the issue fields, which are set after the issue is created.
- **`.github/ISSUE_TEMPLATE/task.yml`**: It applies the `Task` type, it gains the `References` field, and it no longer applies the `task` label.
  The type is also set on the existing task issues, and the label retires.
- **`.github/PULL_REQUEST_TEMPLATE.md`**: In the example for [The Pull Request Template](../../requirements/repository-requirements.md#the-pull-request-template), a `## Product` section with these three prompts, each answered:
  - `**FR:**` the `FR-nnn` links this change implements, or `None`;
  - `**ADR:**` the `ADR-nnn` link this change implements, or `None`;
  - `**QR:**` the `QR-nn QRT-nn` this change verifies, linked, or `None`.

  The changelog prompt the template already carries stays.

- **`.github/workflows/`**: The product-code CI workflow: lint, format or type check, build, and tests, on pull requests and on `main`, and an `actionlint` job over `.github/workflows/`, each third-party action pinned per [Pinning Third-Party Actions](../../requirements/repository-requirements.md#pinning-third-party-actions).
- **`AGENTS.md`**: The team's own instruction file, listing each maintained artifact path with the requirements file that checks it, per C27.

## 8. Edge Cases And Failure Modes

- **A story that several FRs name:** Allowed: the story's `### Specified by` lists all of them, and no FR names the story back.
- **An FR that arrives after its story is built:** Allowed: `**Sources:**` cites the story, and the FR starts from the behavior that exists.
- **A QR no ADR answers:** Allowed this week: an ADR that touches the attribute says so in its `## Consequences`, and the testing plan records when the test passes.
- **A test that cannot pass this week:** It stays `Planned` with a later sprint in the testing plan, per [Quality Requirement Tests](../../requirements/quality-requirement-tests-requirements.md), and the release claims no quality it has not verified.
- **A story dropped after its FR exists:** The FR becomes `Dropped` with the reason and the `DEC-nnn`, and a story that still points at it is re-pointed or closed.
- **An ADR that retires an FR's behavior:** The ADR lists the FR under `drops`, and the FR becomes `Dropped` with the `ADR-nnn` in its `**Dropped:**`.
- **A customer decision that changes a quality requirement:** A `DEC-nnn` and a `**Changed:**` on the QR, never an edit with no record.
- **A stack revision:** It is an ADR whose `**Decision:**` names the stack's `DEC-nnn`, which stays as it is.
- **A team that cannot create issue fields:** It declares a deviation, carries the four values as labels, and pins nothing; nothing else in the Week 4 rules changes.
- **One rule in two places:** The legend rule, the CI rule, the estimation rule, the diagram rule, the decision-index rule, and the type rule each have exactly one owner, and every other file links to it.

## 9. Tests And Validation

- `pnpm run format:markdown`, then `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run test:markdown-format`, and `pnpm run test:markdown-rules`.
- `pnpm run check:links --include-fragments`, which checks every heading anchor the new files cite.
- `pnpm run lint:actions` for any workflow change, and `pnpm run check:lectures` only if a deck changes.
- A routing audit: every new file appears in `README.md`, `SKILL.md`, `course/rules.md`, and both of `AGENTS.md`'s tables.
- A cross-reference audit: every `**Since: W4**` rule has an Assignment 4 part, and every assignment part and coverage row has a rule.
- `backlog doctor`, after the task changes.

## 10. Assumptions

- This work lands in the `itpd` course repository only, and no file is created under `docs/` or `reports/`, since those belong to student repositories.
- The Week 4 dates come from the syllabus, and its hard deadline moved to Saturday 24 October 2026 in the design session.
- ISO/IEC 25010:2023 is the standard cited, the Scrum Guide is the ceremony method, and C4 is named as the view style, with no diagram tool mandated.
- The lecture stays as built, and its commented-out Scrum slides are not uncommented here.
- `Story Points` keeps the full modified Fibonacci sequence and splits above `13SP`, because a one-week sprint gives the product a small share of the team's capacity, and refinement must still be able to record a larger item before it is split.
- A task's `Priority` is an issue field of the team's own, because GitHub offers no priority field on an issue, and `High`, `Medium`, `Low` matches the words the quality ratings already use.
- No `glossary.md` artifact is added this week: the new terms join the terminology list in `AGENTS.md`, and a glossary of its own waits for a week that needs one.

## 11. Sources

### The Course Materials This Plan Changes

- [`course/syllabus.md`](../syllabus.md), especially Week 4 and the Submission 4 row: it fixes the week's deliverables and dates.
- [`lectures/lecture-4.typ`](../../lectures/lecture-4.typ): ISO 25010, the six-part scenario and its worked test, the drivers, the ADR, the priority matrix, and the commented-out Scrum material.
- [`assignments/assignment-3.md`](../../assignments/assignment-3.md): the shape Assignment 4 copies.
- [`course/decisions/a3.md`](../decisions/a3.md), especially `A3-DEC-002` (ceremonies deferred to Week 4), `A3-DEC-014` (no functional-requirements file), `A3-DEC-016` (estimation left out of the guide), `A3-DEC-020` (the report's verdicts), `A3-DEC-021` (the assignment as a delta ordered by the work), and `A3-DEC-022` (the one-way chain from a commit to the threshold).
- [`AGENTS.md`](../../AGENTS.md): the layers, the `docs/` destination map, the identifiers, and the Scrum paragraph this plan rewrites.
- [`TODO.md`](../../TODO.md), the A4 section: the MoSCoW field, the testability quality requirement, the sequence diagram, and the two report questions.

### The Student-Facing Requirements This Plan Extends

- [General Requirements](../../requirements/general-requirements.md), [Repository Requirements](../../requirements/repository-requirements.md), [Definition Of Done](../../requirements/definition-of-done-requirements.md), [Issue Tracking](../../requirements/issue-tracking-requirements.md), [User Stories](../../requirements/user-stories-requirements.md), [Task Issues](../../requirements/task-issues-requirements.md), [Planning](../../requirements/planning-requirements.md), [Product Vision](../../requirements/product-vision-requirements.md), [Decisions](../../requirements/decisions-requirements.md), [Customer Meetings](../../requirements/customer-meetings-requirements.md), [Releases](../../requirements/releases-requirements.md), [Weekly Report](../../requirements/weekly-report-requirements.md), and [`course/rules.md`](../rules.md).

### The Format Reference

- The `timeful` checkout at `/home/eyjafjallajokull/Desktop/gh/timeful`: `docs/requirements/README.md`, `docs/requirements/functional/README.md` with `fr/FR-nnn.md`, `docs/requirements/quality/README.md` with `qr/QR-nnn.md` and `qr/TEMPLATE.md`, `docs/design/architecture/README.md`, and `adr/TEMPLATE.md`.
- [MADR 4](https://adr.github.io/madr/), [ISO/IEC 25010:2023](https://www.iso.org/obp/ui/en/#iso:std:iso-iec:25010:ed-2:v1:en), [C4 model](https://c4model.com/), the [Scrum Guide](https://scrumguides.org/scrum-guide.html), and the [Modified Fibonacci sequence](https://framework.scaledagile.com/blog/glossary_term/modified-fibonacci-sequence).

### The Architecture Examples The User Named

- [`EventTicketSystem/Design/Architecture.md`](https://github.com/otrebmuh/EventTicketSystem/blob/2a928d226d43704457ad5be46b1e6b80f5bca8cb/Design/Architecture.md), [`HotelPricingSystem/Design/Architecture.md`](https://github.com/otrebmuh/HotelPricingSystem/blob/433e061f712a8748fdf04a6f767752e12be2f4b9/Design/Architecture.md), and [The Guide](https://github.com/inno-se/the-guide).

### The Prior Iterations Consulted

- [`tmp/itpd-2025/assignments/assignment-4.md`](../../tmp/itpd-2025/assignments/assignment-4.md), for the sprint review, the retrospective's three questions, the grooming, and the 1–2 hour task size.
- [`tmp/swp-2026/assignments/Assignment_04.md`](../../tmp/swp-2026/assignments/Assignment_04.md), for the range of quality requirement evidence it expected.
- The backlog tasks this plan closes or changes: TASK-010 and TASK-066.
