# Assignment 4: Quality, Requirements, Architecture, And The Fourth Release

**This week's deadline:**

- Hard deadline: Saturday 24 October 2026, 23:59.

There is no soft deadline.
See [Deadlines And Submission](../course/rules.md#deadlines-and-submission).

One submission per team.

Week 3 ended with a minimum usable product on `main` and its first release tagged.
This week the product gets the requirements behind it and the architecture that answers them: testable quality requirements, the container view of what the product runs as, the functional requirements behind the stories, the architectural decision records (ADRs), and the architecture document that links the drivers to the ADRs.
The issues opened in Weeks 2 and 3 are converted to the new shape in one pass, so the tracker reads one way rather than two.
The week also carries the sprint's ceremonies and the fourth release.

What you hand in is a set of requirements a stranger could fail, an architecture a reader can walk from a driver to the ADR that answers it, and the sprint records behind both, released as `REL-04`.

The tools the course suggests, from meeting transcripts to a coding agent, are in [Course Tooling](../course/tooling.md).

<h2>Table of contents</h2>

- [Objectives](#objectives)
- [Part 1: Plan The Sprint, Refine The Backlog, And Set The Fields](#part-1-plan-the-sprint-refine-the-backlog-and-set-the-fields)
- [Part 2: Write The Quality Requirements](#part-2-write-the-quality-requirements)
- [Part 3: Draw The Container View](#part-3-draw-the-container-view)
- [Part 4: Write The Functional Requirements](#part-4-write-the-functional-requirements)
- [Part 5: Link The Drivers Into The Architecture](#part-5-link-the-drivers-into-the-architecture)
- [Part 6: Record The Architectural Decisions And Their Index](#part-6-record-the-architectural-decisions-and-their-index)
- [Part 7: Bring The Existing Issues To The Week 4 Shape](#part-7-bring-the-existing-issues-to-the-week-4-shape)
- [Part 8: Write The Glossary And The Team's AGENTS.md](#part-8-write-the-glossary-and-the-teams-agentsmd)
- [Part 9: Carry Out The Week 3 Action Points And Open Questions](#part-9-carry-out-the-week-3-action-points-and-open-questions)
- [Part 10: Validate With The Customer](#part-10-validate-with-the-customer)
- [Part 11: Cut The REL-04 Release](#part-11-cut-the-rel-04-release)
- [Part 12: Close The Sprint And Hold The Retrospective](#part-12-close-the-sprint-and-hold-the-retrospective)
- [Part 13: Report On Your AI Usage](#part-13-report-on-your-ai-usage)
- [What Good Looks Like](#what-good-looks-like)
- [Assignment Report In The Repository](#assignment-report-in-the-repository)
- [Assignment Report On Moodle](#assignment-report-on-moodle)
  - [Submission Procedure](#submission-procedure)
- [Checklist](#checklist)

## Objectives

By the end of this week you should be able to show a reader:

- The product's quality expectations, each as an ISO/IEC 25010:2023 pair and a six-part quality attribute scenario a reviewer could fail.
- The quality requirements index as the priority matrix, sorted by value to the customer and by the technical risk of achieving and testing them.
- The container view: the applications and data stores the product runs as, their technologies, what each one does, and the record that decides the split.
- The functional requirements behind the stories: the behavior, the containers it runs in, where it came from, and its own acceptance criteria.
- An architecture document that links the drivers to the sections and files that hold them, and an ADR index that maps each record to the drivers it answers.
- The architectural decision records themselves: the context, the options turned down, the outcome, and the quality attributes they accept with the requirement that covers each.
- Every issue from Weeks 2 and 3 brought to the Week 4 shape in one pass: typed, prioritised, with checkbox criteria, and with each story and open task naming the functional requirements and architectural decision records that specify it.
- A sprint with a goal, a planned velocity known before the work started, an actual velocity to compare it with, and a retrospective to carry forward.
- The glossary that fixes the project's words, and the team's `AGENTS.md` that tells an agent how the repository works.
- Each story shown to the customer against its acceptance criteria, with each verdict recorded as a `DEC-nnn`.
- The fourth release: the tagged version, its changelog section, and the plan's `REL-04` line.

## Part 1: Plan The Sprint, Refine The Backlog, And Set The Fields

The rules:

- The plan's `### SPRINT-nn` section carries the sprint's goal, its `**Due:**` field, its `**Sprint Backlog:**` link, `**Planned Velocity:**`, and `**Actual Velocity:**`: [Sprints](../requirements/planning-requirements.md#sprints).
- The sprint opens with planning, and the items in the next two sprints are refined before it: [Sprint Planning](../requirements/sprint-ceremonies-requirements.md#sprint-planning) and [Product Backlog Refinement](../requirements/sprint-ceremonies-requirements.md#product-backlog-refinement).
- The estimate, the priority, and the order of work are three single-select issue fields, each pinned to its issue type: [Estimation](../requirements/sprint-ceremonies-requirements.md#estimation) and [Issue Fields](../requirements/issue-tracking-requirements.md#issue-fields).
- The project's table view shows the five fields beside the assignees and the milestone: [GitHub Projects](../requirements/issue-tracking-requirements.md#github-projects).
- An issue carried from an earlier week is refined before it enters a sprint, and a story among them is estimated, or it stays unscheduled: [Product Backlog Refinement](../requirements/sprint-ceremonies-requirements.md#product-backlog-refinement).

This week:

1. Plan `SPRINT-04` in `docs/project-plan.md`: replace its provisional goal with the sprint's goal, and set `**Planned Velocity:**` to the story points of the stories you selected, computed by hand from their `Story Points`.
2. Set `SPRINT-04`'s `**Due:**` field and its GitHub milestone's due date to `2026-10-24`.
3. Move `SPRINT-05` to `SPRINT-09`: their `**Due:**` fields and GitHub milestones become `2026-10-31`, `2026-11-07`, `2026-11-14`, `2026-11-21`, and `2026-11-28`.
4. Refine the items in the `SPRINT-05` and `SPRINT-06` milestones until each is ready to schedule.
   Refinement produces no document, and its evidence is the `Story Points` on each story.
5. Create the `MoSCoW`, `Story Points`, and `Priority` fields, each single-select, `Public`, and pinned to its issue type, and show them in the project's table view beside the two role fields, the assignees, and the milestone.
   The type and the `MoSCoW` value go on every issue you already have in [Part 7](#part-7-bring-the-existing-issues-to-the-week-4-shape), so the `moscow:*` labels carry the priority until that pass replaces them.
6. Refine each issue carried from an earlier week before it enters the sprint.
   A story among them is estimated, or it stays unscheduled.
7. A story larger than `13` story points is split before it is estimated or scheduled.

The method is in [Guide: Planning And Tracking](../guides/planning-and-tracking.md).

## Part 2: Write The Quality Requirements

The rules:

- The requirements are `docs/quality-requirements/qr/`, one file per `QR-nn`, and `docs/quality-requirements/README.md` is the index: [Where Quality Requirements Live](../requirements/quality-requirements-requirements.md#where-quality-requirements-live).
- Each requirement carries one ISO/IEC 25010:2023 characteristic and sub-characteristic pair, its two priorities, and its outcome in one sentence a reviewer could fail: [The Quality Requirement](../requirements/quality-requirements-requirements.md#the-quality-requirement) and [The Allowed Pairs](../requirements/quality-requirements-requirements.md#the-allowed-pairs).
- Its body is the six-part quality attribute scenario: [The Quality Attribute Scenario](../requirements/quality-requirements-requirements.md#the-quality-attribute-scenario).
- The index is the priority matrix, and it sorts active records first, then business importance, then technical risk: [The Quality Requirements Index](../requirements/quality-requirements-requirements.md#the-quality-requirements-index).
- One requirement is about `Maintainability` / `Testability`, names its critical modules by repository path, and carries `High` business importance: [The Quality Requirement](../requirements/quality-requirements-requirements.md#the-quality-requirement).

This week:

1. Write at least 3 `QR-nn` files under `docs/quality-requirements/qr/`, each with a different characteristic, all six scenario parts, and both priorities.
2. Write the mandated `Maintainability` / `Testability` requirement, naming the frontend entry point and the payment module by repository path, and rate it `High` business importance.
3. Add each requirement's row to `docs/quality-requirements/README.md`, with the columns and the sort the matrix requires.
4. Do not rate everything `High`: a matrix where every row is `High` says nothing about what to do first.

The method is in [Step 1: Find The Quality Expectations](../guides/quality-and-architecture.md#step-1-find-the-quality-expectations), [Step 2: Turn A Characteristic Into A Requirement](../guides/quality-and-architecture.md#step-2-turn-a-characteristic-into-a-requirement), and [Step 3: Prioritize](../guides/quality-and-architecture.md#step-3-prioritize).

## Part 3: Draw The Container View

The rules:

- `docs/architecture/README.md` is one document, with `## Container View` and `### Container Responsibilities` inside it: [Where The Architecture Lives](../requirements/architecture-requirements.md#where-the-architecture-lives), [Container View](../requirements/architecture-requirements.md#container-view), and [Container Responsibilities](../requirements/architecture-requirements.md#container-responsibilities).
- The view shows at least two containers, each an application or a data store the team deploys or rents, labelled with its technology, and the external systems it calls: [Container View](../requirements/architecture-requirements.md#container-view).
- The responsibilities table has one row per container, with two to five responsibilities each, and at least one says what data or state the container owns: [Container Responsibilities](../requirements/architecture-requirements.md#container-responsibilities).
- Every diagram carries a legend, labels each arrow with what crosses it, and is committed as an image with its source beside it: [Diagrams And Legends](../requirements/architecture-requirements.md#diagrams-and-legends).
- The record that decides the stack and the split names every container the view lists: [The Record](../requirements/adr-requirements.md#the-record).
- The view is the set the functional requirements draw their containers from, spelled the same: [The Functional Requirement](../requirements/functional-requirements-requirements.md#the-functional-requirement).

This week:

1. Open `docs/architecture/README.md` with one sentence that links `docs/product-vision.md` as the scope it serves, then add `## Container View`.
2. Decide the containers: each application or data store you deploy or rent, its technology, and the external systems it calls.
   A product that genuinely runs as one container says so in one sentence instead of splitting itself.
3. Commit the diagram at `docs/architecture/container.<ext>` with its source beside it, embed it in the section, and add `## Diagrams And Legends` with the legend, the tool, and each image's source.
4. Add `### Container Responsibilities` with one row per container, two to five responsibilities each, one of them the data or state the container owns.
5. Add the link to the record that decides the split and the stack in [Part 6](#part-6-record-the-architectural-decisions-and-their-index), once that record exists.

The method is in [Draw The Container View](../guides/quality-and-architecture.md#draw-the-container-view).

## Part 4: Write The Functional Requirements

The rules:

- The requirements are `docs/functional-requirements/fr/FR-nnn.md`, one file per requirement, and `docs/functional-requirements/README.md` is the index: [Where Functional Requirements Live](../requirements/functional-requirements-requirements.md#where-functional-requirements-live) and [The Functional Requirements Index](../requirements/functional-requirements-requirements.md#the-functional-requirements-index).
- Each carries its `**Status:**`, its `**Traces to:**`, its `**Containers:**`, the rest only when they apply: [The Functional Requirement](../requirements/functional-requirements-requirements.md#the-functional-requirement).
- Each `**Containers:**` name comes from the container view, spelled the same, and names the containers the behavior runs in rather than every container it touches: [The Functional Requirement](../requirements/functional-requirements-requirements.md#the-functional-requirement).
- `## Behavior` carries one or more `shall` statements, each naming its actor, its condition, and its observable outcome: [Behavior](../requirements/functional-requirements-requirements.md#behavior).
- `## Acceptance Criteria` carries one `### AC-nn` section per criterion, and the criterion is the team's technical check: [Acceptance Criteria](../requirements/functional-requirements-requirements.md#acceptance-criteria).

This week:

1. Write at least 5 `FR-nnn` files under `docs/functional-requirements/fr/`, each with its `**Traces to:**`, its `**Containers:**`, its `shall` statements, and at least one `### AC-nn` criterion.
2. Add each requirement's row to `docs/functional-requirements/README.md`, in `FR-nnn` order.
3. Do not restate the story in the requirement, and do not keep a second list of stories in the repository.

The method is in [Step 4: Write The Functional Requirements](../guides/quality-and-architecture.md#step-4-write-the-functional-requirements).

## Part 5: Link The Drivers Into The Architecture

The rules:

- `docs/architecture/README.md` is the one architecture document: it opens with one sentence linking `docs/product-vision.md` as the scope it serves, and its parts are in the order the rule gives, with `## Drivers` above `## Container View`: [Where The Architecture Lives](../requirements/architecture-requirements.md#where-the-architecture-lives).
- `## Drivers` links the threshold of success in full, the vision's `## Constraints` section, the functional requirements index, and the quality requirements index, and names no `TOS-nn`, `CON-nn`, `FR-nnn`, or `QR-nn` of its own: [Drivers](../requirements/architecture-requirements.md#drivers).
- The vision links the architecture document as a whole, and keeps its goal, stakeholders, constraints, boundary, and system context: [Where The Vision Lives](../requirements/product-vision-requirements.md#where-the-vision-lives).
- The architecture document carries no trace section: the links between the artifacts are the trace: [Traceability Into Later Weeks](../requirements/general-requirements.md#traceability-into-later-weeks).

This week:

1. Add `## Drivers` above `## Container View`, with its four entries, each linking the section or file that holds its group.
2. Link `docs/architecture/README.md` from `docs/product-vision.md`, and move no part of the vision into the architecture document.

The method is in [Step 5: Link The Drivers](../guides/quality-and-architecture.md#step-5-link-the-drivers).

## Part 6: Record The Architectural Decisions And Their Index

The rules:

- Each record is `docs/architecture/adr/ADR-nnn.md`, and `docs/architecture/adr/TEMPLATE.md` is the shape to copy: [Where Architectural Decision Records Live](../requirements/adr-requirements.md#where-architectural-decision-records-live).
- A record carries its status, its containers, its `**Addresses:**`, and its `**Decision:**` field, and its body is the MADR shape: [The Record](../requirements/adr-requirements.md#the-record).
- The record that decides the stack and the split names every container the view lists, and the view's opening sentence links it: [The Record](../requirements/adr-requirements.md#the-record).
- `**Addresses:**` lists the functional requirements and quality requirements the record accounts for, and there is no `ASR` field: [What It Accounts For](../requirements/adr-requirements.md#what-it-accounts-for).
- The ADR index is one table under `## Architectural Decisions`, with the active records above the inactive ones: [Architectural Decisions](../requirements/architecture-requirements.md#architectural-decisions).

This week:

1. Write at least 3 `ADR-nnn` files, each `**Addresses:**` at least one functional or quality requirement, each naming the options it turned down, and each naming the quality attributes it accepts with the `QR-nn` that covers each.
2. One of the records decides the stack and the container split: name every container in its `**Containers:**`, and add its link to the `## Container View` sentence in [Part 3](#part-3-draw-the-container-view).
3. Write the ADR index: one table with its four columns, the active records above the inactive ones, and each `Addresses` cell naming the drivers the record answers.
4. The three minimum records are `Accepted` before submission.

The method is in [Step 6: Write The Architectural Decision Records](../guides/quality-and-architecture.md#step-6-write-the-architectural-decision-records) and [Step 7: Index The Architectural Decision Records](../guides/quality-and-architecture.md#step-7-index-the-architectural-decision-records).

## Part 7: Bring The Existing Issues To The Week 4 Shape

The rules:

- Every story's acceptance criteria are checkboxes, and the accountable member ticks each one once it is verified: [Acceptance Criteria](../requirements/user-stories-requirements.md#acceptance-criteria).
- Every story except a `Won't Have` names the functional requirements and the architectural decision records that specify it, in `### Specified by`, and every open task names what it works on in `### Requirements`, or says it serves none: [The Story](../requirements/user-stories-requirements.md#the-story) and [The Issue Form](../requirements/task-issues-requirements.md#the-issue-form).
- A story is marked by the `User Story` issue type and its priority by the `MoSCoW` field, and a task by the `Task` type: [Where Stories Live](../requirements/user-stories-requirements.md#where-stories-live) and [Issue Fields](../requirements/issue-tracking-requirements.md#issue-fields).
- The pass is the one-time catch-up, so no issue carries a change comment for it: [The Story](../requirements/user-stories-requirements.md#the-story) and [Acceptance Criteria](../requirements/user-stories-requirements.md#acceptance-criteria).

This week:

Do the pass after [Part 6](#part-6-record-the-architectural-decisions-and-their-index), because the two lists name requirements and records that do not exist before it, and before the meeting in [Part 10](#part-10-validate-with-the-customer).
It is one change, merged once, rather than a pull request per issue.

1. Set the `User Story` type and a `MoSCoW` value on every story, and the `Task` type on every task, then retire the `user-story`, `task`, and four `moscow:*` labels.
2. Convert every story's acceptance criteria to `- [ ] AC-nn: <criterion>`, keeping each `AC-nn`.
3. Add `### Specified by` to every story other than a `Won't Have`, including the stories that closed in Weeks 2 and 3, naming each `FR-nnn` and `ADR-nnn` that specifies it.
4. Add `### Requirements` to every open task, including the ones opened in Weeks 2 and 3, naming each `FR-nnn` and `ADR-nnn` it works on, or the line saying it serves none.

## Part 8: Write The Glossary And The Team's AGENTS.md

The rules:

- `docs/glossary.md` is the project's ubiquitous language, with at least three terms, each a `### Term` section under a domain heading: [Where The Glossary Lives](../requirements/glossary-requirements.md#where-the-glossary-lives) and [The Term](../requirements/glossary-requirements.md#the-term).
- The repository root carries `AGENTS.md`, stating the team's layout, checks, conventions, and the files an agent must not edit: [Where The Instructions Live](../requirements/agent-instructions-requirements.md#where-the-instructions-live) and [What It States](../requirements/agent-instructions-requirements.md#what-it-states).
- The team's `AGENTS.md` links the course repository's `SKILL.md` once as the router to the course rules, and maps no artifact path to a requirements file: [What It States](../requirements/agent-instructions-requirements.md#what-it-states).

This week:

1. Write `docs/glossary.md` with at least three terms, each with its definition and, where an artifact defines it, a link to that artifact.
2. Write `AGENTS.md` in the repository root, with the team's layout, checks, conventions, and off-limits files, and one line linking the course `SKILL.md` by its GitHub URL.

## Part 9: Carry Out The Week 3 Action Points And Open Questions

The rules:

- Read the action points the Week 3 report recorded, with their owners and due weeks: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).
- Cite an action point by its report and anchor: [Identifier Rules](../requirements/general-requirements.md#identifier-rules).
- Record each outcome in the Week 4 meeting report, since the Week 3 report is not edited: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).
- Carry each outcome into the artifact it changed: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).
- Close each Week 3 open question, or carry it forward: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).

This week:

The Week 3 action points are the rows of `## Action points` in `reports/week-03/meeting-report.md` that are due in Week 4.
They are due now, and at the latest before the meeting in [Part 10](#part-10-validate-with-the-customer).

1. Carry out each action point, or find out why it cannot be done.
2. Carry the outcome into the artifact it affects.
3. Put each row of `## Open questions` in `reports/week-03/meeting-report.md` to the customer in [Part 10](#part-10-validate-with-the-customer), unless the work since has answered it.

## Part 10: Validate With The Customer

The rules:

- The weekly meeting is the sprint's Sprint Review, so the meeting and the ceremony are one event: [Sprint Review](../requirements/sprint-ceremonies-requirements.md#sprint-review) and [Every Meeting](../requirements/customer-meetings-requirements.md#every-meeting).
- The team schedules the meeting with the customer, and it may be held on the Friday of the week: [Every Meeting](../requirements/customer-meetings-requirements.md#every-meeting).
- Prepare in writing, assign the roles, and let the customer decide the scope: [Every Meeting](../requirements/customer-meetings-requirements.md#every-meeting).
- Ask the permission questions before you record: [Permission Questions](../requirements/customer-meetings-requirements.md#permission-questions).
- Write the script before the meeting, state its target in one sentence, and ask only questions that serve it: [Meeting Script](../requirements/customer-meetings-requirements.md#meeting-script).
- Write the report in the team's own words: [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).
- Give each decision a `DEC-nnn` entry, list it in the report, and cite it from what it changed: [Decision Requirements](../requirements/decisions-requirements.md).
- Produce the report, and a transcript when the meeting was recorded or held in writing: [Where Meeting Artifacts Live](../requirements/customer-meetings-requirements.md#where-meeting-artifacts-live).
- Clean and sanitize a transcript before you publish it: [Meeting Transcript](../requirements/customer-meetings-requirements.md#meeting-transcript).
- Name the customer `Customer`, and keep personal data out of the repository: [Sensitive Information Reference](../requirements/visibility-requirements.md#sensitive-information-reference).
- Show each finished story against its acceptance criteria, one `AC-nn` at a time, and record each verdict: [Showing Working Software](../requirements/customer-meetings-requirements.md#showing-working-software).
- Add a comment to each story issue the meeting changed or accepted: [Where Stories Live](../requirements/user-stories-requirements.md#where-stories-live).

This week:

1. The meeting has to settle whether the quality requirements and the architecture answer the drivers, and what comes next.
2. In `reports/week-04/meeting-script.md`, `## Agenda` shows the working software, then the quality requirements and the architecture against the drivers, and asks for the customer's verdict on each story.
3. Show each finished story against its acceptance criteria, one `AC-nn` at a time; an accepted story closes, and a rejected one stays open with its rework tasks.
4. Record each change the customer made as a `DEC-nnn`.
5. `reports/week-04/meeting-report.md` closes the Week 3 action points and open questions in `## Previous action points` and `## Previous open questions`, and carries at least two rows in `## Action points`, each due inside Week 5.

The method is in [Guide: Validating With The Customer](../guides/validating-with-the-customer.md).

## Part 11: Cut The REL-04 Release

The rules:

- The changelog is `CHANGELOG.md`, following Keep a Changelog, with an `[Unreleased]` section during development: [The Changelog](../requirements/releases-requirements.md#the-changelog).
- Version with Semantic Versioning, prefix tags with `v`, and point each tag at a commit on `main`: [Versioning And Tags](../requirements/releases-requirements.md#versioning-and-tags).
- Title the release with its tag, and move the released entries into a dated section linked to the release: [Cutting A Release](../requirements/releases-requirements.md#cutting-a-release).
- This week's release is `REL-04`, cut at the sprint's end, on the state after the meeting and any same-week rework: [Releases](../requirements/planning-requirements.md#releases).

This week:

1. Keep `CHANGELOG.md` current through the week, with an `[Unreleased]` entry for each user-visible change.
2. After the meeting and any rework, merge the sprint's pull requests, push the tag on that commit, and protect the tag from being moved or deleted.
3. Merge what links the tag after it exists, in this order: the changelog's released section, the plan's `REL-04` line, and the week's report.

## Part 12: Close The Sprint And Hold The Retrospective

The rules:

- At the close, the sprint section gains `**Actual Velocity:**`, the points of the completed stories and one sentence on what moved out and to which sprint: [Sprints](../requirements/planning-requirements.md#sprints).
- Every sprint from `SPRINT-04` on ends with `reports/week-NN/sprint-retrospective.md`: [Retrospective](../requirements/sprint-ceremonies-requirements.md#retrospective).
- The file carries `## What Went Well`, `## What Did Not`, `## Actions`, and `## Carried Actions`, with the row counts and the columns the rule gives: [Retrospective](../requirements/sprint-ceremonies-requirements.md#retrospective).
- An action is not an identifier family: cite it by the file's path and the `#actions` anchor, with the action quoted: [Identifier Rules](../requirements/general-requirements.md#identifier-rules).

This week:

1. Set `**Actual Velocity:**` in `### SPRINT-04` from the completed stories, computed by hand from their `Story Points`.
2. Write `reports/week-04/sprint-retrospective.md` with its four sections, 3 or more things that went well, 2 or 3 that did not with their root causes, and 3 or 4 actions, each with its `Reason` and its `Carried` flag.
3. Its `## Carried Actions` section says that this is the first retrospective, rather than carrying an empty table.

The method is in [Guide: Planning And Tracking](../guides/planning-and-tracking.md).

## Part 13: Report On Your AI Usage

The rules:

- Name the tools you used, what for, and what you did with their output: [AI Usage Report](../requirements/weekly-report-requirements.md#ai-usage-report).

## What Good Looks Like

Assume your weekly public report is read by someone who does not know your project.
A strong submission has:

- **Quality requirements a stranger could fail.**
  Each one names its characteristic, its scenario's six parts, and a response measure that runs.
  "The page is fast" is not a requirement.
- **A priority matrix that sorts.**
  Not everything is `High`, and the mandated testability requirement is `High` with the reason the rule gives: the instructors are stakeholders, and the course is part of the business.
- **A container view a reader could deploy from.**
  Each box is an application or a data store the team hosts or rents, labelled with its technology, and the responsibilities table says what each one is for and what data it owns; the view links the record that decides the split.
- **Functional requirements a reviewer can check without opening a story.**
  Each has its `shall` statements, its containers, and its own criteria, and its `**Traces to:**` names where it came from and what limits it.
- **A story that names its specification.**
  `### Specified by` lists the functional requirements and records that specify it, and a closed story can still rest on an active requirement.
- **Criteria a checker can run as written.**
  A table or an example where prose would be vague, and a tick only once the criterion is verified.
- **A catch-up with no leftovers.**
  No earlier story or open task is left in the old shape, and no issue carries a change comment for the conversion, because the pass is recorded once.
- **A drivers section that points, and an ADR index that maps.**
  The drivers section says where the drivers live, and each driver meets the record that answers it in the ADR index's `Addresses` column, so the two lists cannot drift.
  The architecture links the vision rather than copying it.
- **Architectural decision records that answer for something.**
  Each names a rejected option, the requirements it `**Addresses:**`, and the quality attributes it accepts with the `QR-nn` that covers each.
- **A chain a reader can walk.**
  From a task's `### Requirements` through the functional requirement and the architectural decision record to the `TOS-nn` behind it, with no document restating the chain.
- **Estimates the team can defend.**
  A `**Planned Velocity:**` the team knew before it started, an `**Actual Velocity:**` it compares with the plan, and both computed from the stories' `Story Points`.
- **A glossary and an `AGENTS.md` worth reading.**
  The glossary fixes the project's words, and the `AGENTS.md` tells an agent how the repository works instead of letting it guess.

## Assignment Report In The Repository

Write `reports/week-04/README.md`, per [Weekly Public Report](../requirements/weekly-report-requirements.md#weekly-public-report).
This week it also carries:

1. In the summary, the release, `REL-04` and its tag, and what moved out of the sprint.
2. The customer-meeting outcome: each story shown and whether the customer accepted or rejected it, each citing its `DEC-nnn`.
3. The coverage table, with these rows:

| Deliverable                | Artifact                                                                                              |
| -------------------------- | ----------------------------------------------------------------------------------------------------- |
| Sprint plan and estimates  | `docs/project-plan.md#sprint-04`, with its goal, its planned velocity, and its actual velocity        |
| Product backlog refinement | the `SPRINT-05` and `SPRINT-06` milestone issues, with the `Story Points` on each                     |
| Issue catch-up             | the issue lists filtered by the `User Story` and `Task` types                                         |
| Quality requirements       | `docs/quality-requirements/qr/`, with `docs/quality-requirements/README.md` as the priority matrix    |
| Functional requirements    | `docs/functional-requirements/`, with `README.md` as the index and `fr/` for the records              |
| Container view             | `docs/architecture/README.md#container-view`, its image and source, and `#container-responsibilities` |
| Architecture and drivers   | `docs/architecture/README.md`, with the drivers it links and the ADR index                            |
| Architectural decisions    | `docs/architecture/adr/` and the ADR index                                                            |
| Glossary                   | `docs/glossary.md`                                                                                    |
| Team `AGENTS.md`           | `AGENTS.md`                                                                                           |
| Repository surfaces        | the five field columns in the project view, and the docs site linking the new `docs/` pages           |
| Week 3 action points       | `## Previous action points` in `reports/week-04/meeting-report.md`                                    |
| Week 3 open questions      | `## Previous open questions` in the same report                                                       |
| Meeting script             | `reports/week-04/meeting-script.md`                                                                   |
| Customer validation        | `reports/week-04/meeting-report.md`, the transcript when there is one, and each story's verdict       |
| `REL-04`                   | the tag, the changelog's released section, and the plan's `REL-04` line                               |
| Sprint retrospective       | `reports/week-04/sprint-retrospective.md`                                                             |
| AI usage                   | `reports/week-04/ai-usage.md`                                                                         |

If the customer refused publication of the transcript, that row says so and points at the Moodle submission instead.

4. Repository evidence: one merged pull request that closed its task issue, and the latest green link-check and Markdown-check runs on `main`.
5. `## Deviations`: anything you did differently from this assignment, per [Declaring Deviations](../requirements/weekly-report-requirements.md#declaring-deviations).

## Assignment Report On Moodle

Create one PDF, per [Private Submission Wrapper](../requirements/weekly-report-requirements.md#private-submission-wrapper).
Keep it to two pages, and put nothing in it except the following.
A transcript under item 5 goes in an appendix, which the two pages do not count.

1. Project name and the team number.
2. A table of team members: GitHub username, real name, and university email.
3. A permalink to `reports/week-04/README.md` at the full commit hash.
4. A link to the validation meeting recording, accessible to instructors, or one line saying why there is none: the customer refused recording, or the meeting was held in writing.
5. The meeting transcript, if the customer refused to let you publish it.
6. One line confirming that no private-only material was committed to the repository.

### Submission Procedure

- Merge `reports/week-04/README.md` and every file it links into `main`.
- Take the permalink and the snapshot from that `main` commit, per [Permalinks And Snapshots](../requirements/repository-requirements.md#permalinks-and-snapshots).
- Submit the PDF and the snapshot through Moodle.

## Checklist

- [ ] `SPRINT-04` planned with its goal, its `**Due:**` field, its `**Sprint Backlog:**` link, and its `**Planned Velocity:**`, and the later sprints' `**Due:**` fields and GitHub milestones moved to the five Saturdays ([Part 1](#part-1-plan-the-sprint-refine-the-backlog-and-set-the-fields)).
- [ ] The `SPRINT-05` and `SPRINT-06` items refined, with the `Story Points` on each story ([Part 1](#part-1-plan-the-sprint-refine-the-backlog-and-set-the-fields)).
- [ ] The three issue fields created, `Public`, pinned, and shown in the project's table view ([Part 1](#part-1-plan-the-sprint-refine-the-backlog-and-set-the-fields)).
- [ ] 3 or more `QR-nn` files under `docs/quality-requirements/qr/`, each with a different characteristic, the six scenario parts, and its row in `docs/quality-requirements/README.md` ([Part 2](#part-2-write-the-quality-requirements)).
- [ ] The `Maintainability` / `Testability` requirement names its critical modules and carries `High` business importance ([Part 2](#part-2-write-the-quality-requirements)).
- [ ] The container view: `docs/architecture/README.md` with `## Container View`, its image and source, `### Container Responsibilities`, and `## Diagrams And Legends` ([Part 3](#part-3-draw-the-container-view)).
- [ ] 5 or more `FR-nnn` files under `docs/functional-requirements/fr/`, each with its `**Traces to:**`, its `**Containers:**`, its `shall` statements, and its own criteria, and its row in the index ([Part 4](#part-4-write-the-functional-requirements)).
- [ ] `docs/architecture/README.md` opens with the vision link, and its `## Drivers` links the four holders and names no requirement of its own ([Part 5](#part-5-link-the-drivers-into-the-architecture)).
- [ ] `docs/product-vision.md` links `docs/architecture/README.md`, and the vision keeps the goal, stakeholders, constraints, boundary, and system context ([Part 5](#part-5-link-the-drivers-into-the-architecture)).
- [ ] 3 or more `ADR-nnn` files, each `**Addresses:**` at least one requirement, each with its options turned down and its accepted quality attributes covered by a `QR-nn` ([Part 6](#part-6-record-the-architectural-decisions-and-their-index)).
- [ ] The ADR index with its four columns, active records above inactive ones, and each active record `Accepted` ([Part 6](#part-6-record-the-architectural-decisions-and-their-index)).
- [ ] The record that decides the split and the stack names every container in the view ([Part 6](#part-6-record-the-architectural-decisions-and-their-index)).
- [ ] Every issue from Weeks 2 and 3 in the Week 4 shape: the two types and a `MoSCoW` on every story, checkbox criteria, every story other than a `Won't Have` naming its `### Specified by`, every open task's `### Requirements`, and the six labels retired ([Part 7](#part-7-bring-the-existing-issues-to-the-week-4-shape)).
- [ ] `docs/glossary.md` with 3 or more terms, and a root `AGENTS.md` linking the course `SKILL.md` once ([Part 8](#part-8-write-the-glossary-and-the-teams-agentsmd)).
- [ ] Each Week 3 action point's outcome in `## Previous action points`, and in the artifact it changed ([Part 9](#part-9-carry-out-the-week-3-action-points-and-open-questions)).
- [ ] Each Week 3 open question answered or carried forward in `## Previous open questions` ([Part 9](#part-9-carry-out-the-week-3-action-points-and-open-questions)).
- [ ] `reports/week-04/meeting-script.md` ([Part 10](#part-10-validate-with-the-customer)).
- [ ] `reports/week-04/meeting-report.md`, with a `DEC-nnn` for each story shown and 2 or more action points due in Week 5 ([Part 10](#part-10-validate-with-the-customer)).
- [ ] `reports/week-04/meeting-transcript.md`, if the meeting was recorded or held in writing ([Part 10](#part-10-validate-with-the-customer)).
- [ ] The fourth release tagged, and the changelog's released section, the plan's `REL-04` line, and `reports/week-04/README.md` merged after the tag ([Part 11](#part-11-cut-the-rel-04-release)).
- [ ] `**Actual Velocity:**` set in `### SPRINT-04`, and `reports/week-04/sprint-retrospective.md` with its four sections and its first-retrospective `## Carried Actions` ([Part 12](#part-12-close-the-sprint-and-hold-the-retrospective)).
- [ ] `reports/week-04/ai-usage.md` ([Part 13](#part-13-report-on-your-ai-usage)).
- [ ] `reports/week-04/README.md` ([Assignment Report In The Repository](#assignment-report-in-the-repository)).
- [ ] Everything merged into `main`, with the permalink and the snapshot taken from that commit ([Submission Procedure](#submission-procedure)).
- [ ] PDF ready, and the permalink opened in a browser at the full commit hash ([Assignment Report On Moodle](#assignment-report-on-moodle)).
