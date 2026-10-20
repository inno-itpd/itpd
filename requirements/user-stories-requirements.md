# User Story Requirements

These requirements define a user story: where it lives, its issue form, what it must say, its acceptance criteria, its priority, and the `Responsible` and `Accountable` values and the matching assignees it carries when it is scheduled.
[Guide: User Stories And Prototyping](../guides/user-stories-and-prototyping.md) is the method.
How the `US-nn` and `AC-nn` identifiers are cited is in [General Requirements](general-requirements.md#identifier-rules).

<h2>Table of contents</h2>

- [Where Stories Live](#where-stories-live)
- [The Issue Form](#the-issue-form)
- [The Story](#the-story)
- [Acceptance Criteria](#acceptance-criteria)
- [MoSCoW Prioritization](#moscow-prioritization)
- [The Responsible And Accountable Values](#the-responsible-and-accountable-values)
- [Full Example](#full-example)

## Where Stories Live

**Since: W2**

User stories are created from Week 2 onward and stay current for the rest of the course.
Each story is a GitHub issue of type `User Story`, per rule 6 below.

**Required**

1. Every story is one GitHub issue, opened from the [issue form](#the-issue-form).
   It carries:

   - The title `US-nn: <story title>`.
   - The story statement, its `Value proposition`, its `Traces to` list when it has an origin, and its `Rests on` list when it rests on an assumption, per [The Story](#the-story).
   - The `Specified by` list, naming the `FR-nnn` and `ADR-nnn` that specify it, per [The Story](#the-story).
   - The acceptance criteria, each starting with its `AC-nn`, per [Acceptance Criteria](#acceptance-criteria).
   - The priority reason, in the form's `Priority reason` field, and its `MoSCoW` value, per [MoSCoW Prioritization](#moscow-prioritization).
   - The `User Story` issue type, applied by the form, per rule 6.
   - Optionally, notes and a list of its task issues, per [The Issue Form](#the-issue-form), so a contributor can work without leaving the issue.

2. A story you intend to build stays open until the customer accepts it, per [Showing Working Software](customer-meetings-requirements.md#showing-working-software), then closes as completed.
   The closing comment cites the `DEC-nnn` of the verdict that accepted it, and the verdict comment may be the closing comment.
   A story the customer rejected stays open, and closing its tasks does not close it.
   The rework is a new task issue, per [Closing A Task](task-issues-requirements.md#closing-a-task).
   A `Won't Have` story is closed as not planned, with a comment naming the reason.
   When the story was dropped, the comment that records the priority change may be the closing comment.
   A closed story stays in the list; the closing comment and the close date are its record.
3. The issue is the record of change.
   Edit the body so it always states the current story, and add a comment for each change to a story part: the title, the statement, the `Value proposition`, `Traces to`, `Rests on`, `Specified by`, the acceptance criteria, the `MoSCoW` value, the `Story Points` value, or the priority reason.
   The comment says what changed, names each `AC-nn` that changed, gives the reason, and links the `DEC-nnn` of the decision behind it when that decision has an entry, per [What Cites It](decisions-requirements.md#what-cites-it).
   GitHub dates the comment, so the comment does not need a typed date.
   No comment is needed for edits made before the first meeting with the customer that shows the story, for notes and the list of tasks, for a [formatting-only change](general-requirements.md#where-artifacts-live-in-the-repository), for moving an `ASM-nn` from `Traces to` into `Rests on`, which leaves the link unchanged, or for a criterion's tick, per [Acceptance Criteria](#acceptance-criteria).
   Do not delete an issue or rewrite its body to hide a change; the edit history and the comment are the record.
4. The **registry of identifiers** is the issue list filtered by the `User Story` type.
   It shows open and closed issues, so a `Won't Have` story keeps its `US-nn` and stays findable after it closes.
   A new story takes the next free `US-nn`: one above the highest `US-nn` in the registry, open and closed issues alike.
   The `US-nn` is not the issue number, because issues and pull requests share one sequence of numbers.
   A `US-nn` is issued when its issue is opened.
   When two story issues were opened with the same `US-nn`, the one opened later was never issued it, and it takes the next free `US-nn` in its title before any artifact cites it.
5. Do not keep a second list of stories in the repository.
   The issue is the source of truth for the requirement and its criteria.
6. A story is marked by the `User Story` **issue type**, and its priority is carried by the `MoSCoW` **issue field**, not by a label.
   The form applies the type, and the team sets the field after the issue is created, per [Issue Fields](issue-tracking-requirements.md#issue-fields).
   The type is also set on the stories that already exist, and the `user-story` and `moscow:*` labels retire with it, per [Issue Fields](issue-tracking-requirements.md#issue-fields).

**Recommended**

- Keep each story short enough to read in one sitting.

## The Issue Form

**Since: W2**

The rules every issue shares, such as disabling blank issues, are in [Issue Tracking](issue-tracking-requirements.md).

**Required**

1. Add `.github/ISSUE_TEMPLATE/user-story.yml`, an Issue Form with a field for each part of a story issue listed in [Where Stories Live](#where-stories-live), and the `User Story` issue type applied by the form.
   The statement, the `Value proposition` form field, and the `Priority reason` form field are required, and the `Traces to`, `Rests on`, and `Specified by` lists are optional.
   `Value proposition` is a single-line input that takes one `VP-nn`, and `Traces to`, `Rests on`, and `Specified by` take one entry per line.
   The acceptance criteria form field is optional, per [Acceptance Criteria](#acceptance-criteria), and it prefills `- [ ] AC-01: `, so whoever fills in the form starts from the checklist.
2. Create the `User Story` issue type and the `MoSCoW` issue field, per [Issue Fields](issue-tracking-requirements.md#issue-fields).
   The form applies the type, and the team sets the field on the issue after it is created.
3. A story issue is never a pull request's issue.
   A story closes only on the customer's acceptance, per [Where Stories Live](#where-stories-live), and GitHub closes on merge an issue that a pull request names with a closing keyword, that its branch was created from, or that its Development sidebar links.
   Work on a story is done in [task issues](task-issues-requirements.md#where-task-issues-live).

**Recommended**

- Put the URL pattern in the descriptions of the `Value proposition`, `Traces to`, `Rests on`, and `Specified by` fields in `user-story.yml`, so whoever fills in the form sees it.
- List a story's tasks in its body as a bullet list, such as `- #12`, so GitHub renders each task's title and whether it is open or closed.
  Use the list rather than GitHub sub-issues: a sub-issue has one parent, so a task that serves several stories could sit under only one of them.
  Closing the last task does not close the story.

## The Story

**Since: W2**

A user story is a small, checkable statement of one thing a user needs.
A user is any actor with a goal: the person the product serves, and the operator or administrator who keeps it running.
Its job is to make one need concrete enough that a reviewer can tell whether you delivered it.

**Required**

1. Write **8 or more** user stories, and keep at least **5 of them** something other than `Won't Have`.
   Fewer do not cover a product, and more leaves no week to change them once something turns out to be wrong.
   Every story that is not [`Won't Have`](#moscow-prioritization) is one you intend to build.
2. Every story gets a stable ID `US-01`, `US-02`, and so on, per [Identifier Rules](general-requirements.md#identifier-rules).
3. Every story is a statement of a user's need, not a description of a solution.
   "As a coach, I want a client to pay when they book, so that an unpaid slot does not block a paying one for the rest of the week" is a need.
   "Add a payment page" is a feature you have already designed.
   A story states the problem precisely and leaves the solution open.
   Its statement does not carry what only the team decides, such as a screen, a button, a component, or a library; naming the design decides it for whoever builds the story.
   It may carry a specific that the user or the customer has settled, such as the external system the user already works with.
   Such a specific goes in an acceptance criterion, or in a [constraint](product-vision-requirements.md#constraints) when it holds for the whole product, and goes in the story statement only when the specific thing is itself the need.
   An [acceptance criterion](#acceptance-criteria) may name the screen, the field, or the system state an observer checks, because that is what makes it runnable.
4. Every story names exactly one `VP-nn` in its `Value proposition` field, the value proposition the story supports.
   A story with an origin carries a `Traces to` list of its origins: the `GAP-nn` it closes, the `DEC-nnn` of a decision, or an action point it carries out, and no other origin.
   A `GAP-nn` in `Traces to` is one that the story's `VP-nn` names under `**Closes:**`, so the story, its value proposition, and its gap form one chain.
   A story that rests on an [assumption](assumptions-requirements.md#what-rests-on-it) carries a separate `Rests on` list, naming the `ASM-nn` of each assumption it rests on, as a gap or a value proposition does.
   The `VP-nn` is how a story traces to the product vision, so the `VP-nn` of every story except a `Won't Have` story is one the vision's [goal](product-vision-requirements.md#goal) traces to.
   A story you intend to build that supports no such value proposition is outside the vision: add its `VP-nn` to the goal as a [team decision](decisions-requirements.md#the-decision), or make the story `Won't Have`.
   Cite the `VP-nn` and each entry of both lists as [Identifier Rules](general-requirements.md#identifier-rules) says, and link each Week 1 identifier per [Traceability Into Later Weeks](general-requirements.md#traceability-into-later-weeks).
   Link each file on `main`, per [Linking A File From An Issue Or A Pull Request](issue-tracking-requirements.md#linking-a-file-from-an-issue-or-a-pull-request).
   A need from outside the Week 1 research is handled per [Traceability Into Later Weeks](general-requirements.md#traceability-into-later-weeks).
5. Every story except a `Won't Have` story is small enough to build and verify in one week.
   A need larger than that is written as two or more stories.

**Since: W4**

6. Every story except a `Won't Have` story names the [functional requirements](functional-requirements-requirements.md#the-functional-requirement) and [architectural decision records](adr-requirements.md#the-record) that specify it, in `### Specified by` on the issue, each linked on `main`.
   A story may be specified by several of them, and no requirement names the story back, because the list is the story's conformance rather than an origin, per the link model of [Traceability Into Later Weeks](general-requirements.md#traceability-into-later-weeks).
7. The list is backfilled on every story that has one, including the stories that closed before it existed, and the backfill needs no change comment, because the one-time catch-up is recorded once in [Assignment 4](../assignments/assignment-4.md).
   A closed story is reopened when a new related task is linked to it, and closes again on its verdict, per [Where Stories Live](#where-stories-live).

**Recommended**

- Keep stories small enough that one person can finish one in a few days.
- Write the story that is least likely to be built.
  A story you never write is a decision you made without noticing.

## Acceptance Criteria

**Since: W2**

An acceptance criterion is the check that tells a reviewer whether a [story](#the-story) was delivered.

**Required**

1. Every story except a `Won't Have` story carries **at least two acceptance criteria**, and each one must be observable and pass/fail.
   Any notation is allowed, including `Given`/`When`/`Then`; the rules are that somebody other than you can run the check and get the same answer.
   "Works well" is not a criterion.
   A `Won't Have` story is not built, so it may carry none.
2. Every acceptance criterion carries a stable ID `AC-01`, `AC-02`, and so on, numbered within its story and written at the start of the criterion.
   The ID is unique inside its story issue and is never renumbered or reused there.
   A criterion edited in place keeps its ID, a criterion that is removed retires its ID, and a criterion added later takes the next free number.
   Cite a specific criterion from another artifact by its `AC-nn` together with its story issue: a link to the issue, or its `US-nn` when the issue is already linked.
   The notation is not fixed, as long as the reference identifies both the story and the criterion.
3. Write each criterion as a checklist item, `- [ ] AC-01: <criterion>`, one item per criterion.
   The form prefills the first one, per [The Issue Form](#the-issue-form).

**Since: W4**

4. The accountable member ticks a criterion, `- [x] AC-01: <criterion>`, once it is verified, per [The Responsible And Accountable Values](#the-responsible-and-accountable-values).
   A tick is state rather than a rewrite of the story: it needs no change comment, and it is not the customer's acceptance, because the story still closes on the customer's verdict, per [Where Stories Live](#where-stories-live).
5. The one-time catch-up converts the criteria of every story written before Week 4 to checkboxes, and it needs no change comment either, because it is recorded once in [Assignment 4](../assignments/assignment-4.md) rather than issue by issue.

**Recommended**

- Make the pair of criteria cover the happy path and one failure, empty, or edge case.

## MoSCoW Prioritization

**Since: W2**

A priority is a decision about what to build first and what not to build at all, and the customer can argue with it only if it is written down with its reason.
Every priority is relative to the product you intend to finish in this course.

**Required**

1. Every [story](#the-story) carries exactly one priority, as its `MoSCoW` issue field, per [Issue Fields](issue-tracking-requirements.md#issue-fields):

   - `Must Have`: the product is not the product without it.
   - `Should Have`: important, and the product is still coherent without it.
   - `Could Have`: valuable, and the first thing to cut.
   - `Won't Have`: a need you have deliberately excluded.

2. Every story carries a **priority reason** in the issue form's `Priority reason` field.
   The reason says why the story has this priority and not the one above or below it, and cites the `CON-nn` of the [constraint](product-vision-requirements.md#constraints) that drives it, linked, when one does.
   A reason that restates the definition of the priority is not a reason.
3. Not every story you intend to build is `Must Have`: at least one of them is `Should Have` or `Could Have`.
   A list where everything is `Must Have` says nothing about what to build first.
4. A story you drop after writing it becomes `Won't Have`.
   It keeps its `US-nn` and its statement, and its issue closes as [Where Stories Live](#where-stories-live) says.
5. The priorities do not contradict the [boundary](product-vision-requirements.md#boundary).
   No story you intend to build is something the boundary excludes.
   A `Won't Have` reason that rests on the boundary cites the item's `BND-nn`, linked.
   The two are independent otherwise: a boundary item is a decision about the whole product and needs no matching story, and a `Won't Have` story is one written need that you excluded and need not appear in the boundary.
6. To change a priority, change the `MoSCoW` value and the priority reason together, and record the change per [Where Stories Live](#where-stories-live).
   The comment names the old priority and the new one.
7. The `Must Have` stories you would build first are the [minimum usable product candidate](minimum-usable-product-requirements.md#the-candidate).

**Recommended**

- Test a `Must Have` by removing it: if the product is still the product without it, it is a `Should Have`.
- Write the reason as a comparison with a neighbouring story or with the core task, because that is what the customer will argue with.

**Example**

A `Could Have` reason; the `Must Have` one is in the [full example](#full-example).

```markdown
### Priority reason

Could Have: a reminder email reduces no-shows, but a client who paid already has the link, so the core task finishes without it.
```

## The Responsible And Accountable Values

**Since: W3**

The two values say which two members maintain and verify a story, and the milestone the story is assigned to says when the team plans to finish it.
The story's assignees name the same two members, because a GitHub assignee carries no role of its own.
They and the assignees are set on the issue after it is created, so no issue form change is needed.
The fields themselves, their options, and their visibility are defined in [Issue Fields](issue-tracking-requirements.md#issue-fields), and the assignee rule in [Assignees](issue-tracking-requirements.md#assignees).
When the story is estimated, and what its `Story Points` value means, is [Estimation](sprint-ceremonies-requirements.md#estimation).

**Required**

1. The team schedules the story by assigning it to its sprint's GitHub milestone, per [Sprints](planning-requirements.md#sprints), and sets the two values in the same act: `Responsible` and `Accountable` name two different members, and the same two members are the story's assignees, per [Assignees](issue-tracking-requirements.md#assignees).
2. On a story, the responsible member maintains the story and its acceptance criteria; the accountable member verifies that it is ready to be shown, with every criterion runnable and every link on the issue resolving, per [the story items of the Definition of Done](definition-of-done-requirements.md#the-story).
3. A reschedule or a change of hands moves the story to the later sprint's milestone and updates the values and the assignees; an open story the team has not scheduled carries none and no milestone, and an already closed story needs none.

## Full Example

Issue #42, a `Must Have` story:

```markdown
Title: US-01: Pay at booking
Type: User Story
MoSCoW: Must Have
Story Points: 3

### Story

As a coach who sells sessions online, I want a client to pay when they book, so that an unpaid slot does not block a paying one for the rest of the week.

### Value proposition

[`VP-01`](https://github.com/<organization>/<repo>/blob/main/docs/research/value-proposition.md#vp-01)

### Traces to

- [`GAP-01`](https://github.com/<organization>/<repo>/blob/main/docs/research/gap-analysis.md#gap-01)

### Rests on

- [`ASM-02`](https://github.com/<organization>/<repo>/blob/main/docs/assumptions.md#asm-02)

### Specified by

- [`FR-001`](https://github.com/<organization>/<repo>/blob/main/docs/functional-requirements/fr/FR-001.md)
- [`ADR-001`](https://github.com/<organization>/<repo>/blob/main/docs/architecture/adr/ADR-001.md)

### Priority reason

Must Have: without it, an unpaid booking still holds a slot, which is the GAP-01 problem itself; the reminder email can wait, because a client who paid already has the link.

### Acceptance criteria

- [ ] AC-01: Given a paid meeting type with one free slot, when a client books that slot, then the slot is held while the client pays.
- [ ] AC-02: Given a held slot whose client has not paid, when the hold expires, then the slot is released back to the calendar.
- [ ] AC-03: Given a client who does not finish payment, when the hold expires, then the booking is not confirmed and no meeting link is created.

### Notes

Payment happens before confirmation, so there is no pay-later path.
```

A comment on issue #42, added after the validation meeting:

```markdown
Added `AC-03`, per [`DEC-006`](https://github.com/<organization>/<repo>/blob/main/docs/decisions.md#dec-006).
The customer will not accept a hold that confirms without payment, and `AC-01` and `AC-02` covered the hold but not the confirmation.
The same decision settles [`ASM-02`](https://github.com/<organization>/<repo>/blob/main/docs/assumptions.md#asm-02), which this story rests on, as `Confirmed`.
```

Issue #50, a `Won't Have` story, closed as not planned:

```markdown
Title: US-09: Sell session bundles
Type: User Story
MoSCoW: Won't Have

### Story

As a coach, I want to sell a bundle of ten sessions, so that a returning client pays once.

### Value proposition

[`VP-01`](https://github.com/<organization>/<repo>/blob/main/docs/research/value-proposition.md#vp-01)

### Traces to

- [`GAP-01`](https://github.com/<organization>/<repo>/blob/main/docs/research/gap-analysis.md#gap-01)

### Priority reason

Won't Have: [`BND-03`](https://github.com/<organization>/<repo>/blob/main/docs/product-vision.md#bnd-03) excludes selling bundles, and no user we met has asked to pay for sessions in advance.
```

The closing comment on issue #50:

```markdown
Not planned, for the priority reason above.
```
