# User Story Requirements

These requirements define a user story: where it lives, what it must say, its acceptance criteria, its priority, and the minimum usable product candidate the priorities produce.
[Guide: User Stories And Prototyping](../guides/user-stories-and-prototyping.md) is the method.
How the `US-nn` and `AC-nn` identifiers are cited is in [General Requirements](general-requirements.md#identifier-rules).

<h2>Table of contents</h2>

- [Where Stories Live](#where-stories-live)
- [The Story](#the-story)
- [Acceptance Criteria](#acceptance-criteria)
- [MoSCoW Prioritization](#moscow-prioritization)
- [Minimum Usable Product Candidate](#minimum-usable-product-candidate)
- [Full Example](#full-example)

## Where Stories Live

**Since: W2**

User stories are created in Week 2 and stay current for the rest of the course.
Each story is a GitHub issue, and the `user-story` label identifies story issues.

**Required**

1. Every story is one GitHub issue, opened from the [issue form](repository-requirements.md#issue-tracking).
   It carries:

   - The title `US-nn: <story title>`.
   - The story statement and its `Traces to` list, per [The Story](#the-story).
   - The acceptance criteria, each starting with its `AC-nn`, per [Acceptance Criteria](#acceptance-criteria).
   - The priority reason, in the form's `Priority reason` field, and one `moscow:*` label, per [MoSCoW Prioritization](#moscow-prioritization).
   - The `user-story` label, applied by the form.
      <!-- Alternatively, allow issue type -->
   - Optionally, notes and a checklist of the remaining work, so a contributor can work without leaving the issue.

2. A story you intend to build stays open until it is delivered, then closes as completed.
   A `Won't Have` story is closed as not planned, with a comment naming the reason.
   A closed story stays in the list; the closing comment and the close date are its record.
3. The issue is the record of change.
   A change that follows a customer meeting adds a dated comment saying what changed, naming any `AC-nn` that changed, and linking the meeting report.
   Do not delete an issue or rewrite its body to hide a change; the edit history and the comment are the record.
4. The **registry of identifiers** is the issue list filtered by the `user-story` label.
   It shows open and closed issues, so a `Won't Have` story keeps its `US-nn` and stays findable after it closes.
5. Do not keep a second list of stories in the repository.
   The issue is the source of truth for the requirement and its criteria.

**Recommended**

- Keep each story short enough to read in one sitting.

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
   It does not carry what only the team decides, such as a screen, a button, a component, or a library; naming the design decides it for whoever builds the story.
   It may carry a specific that the user or the customer has settled, such as the external system the user already works with.
   Such a specific goes in an acceptance criterion, or in a [constraint](product-vision-requirements.md#constraints) when it holds for the whole product, and goes in the story statement only when the specific thing is itself the need.
4. Every story carries a `Traces to` list.
   It contains exactly one `VP-nn`, the value proposition the story supports, and, optionally, the story's origins: the `GAP-nn` it closes, a customer decision in a meeting report, a team decision in the weekly public report, or an action point it carries out.
   The `VP-nn` is how a story traces to the product vision, so the `VP-nn` of every story except a `Won't Have` story is one the vision's [goal](product-vision-requirements.md#goal) traces to.
   A story you intend to build that supports no such value proposition is outside the vision: add its `VP-nn` to the goal as a team decision, or make the story `Won't Have`.
   Cite each entry as [Identifier Rules](general-requirements.md#identifier-rules) says.
   A need from outside the Week 1 research is handled per [Traceability Into Later Weeks](general-requirements.md#traceability-into-later-weeks).
5. Every story except a `Won't Have` story is small enough to build and verify in one week.
   A need larger than that is written as two or more stories.

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

**Recommended**

- Make the pair of criteria cover the happy path and one failure, empty, or edge case.

## MoSCoW Prioritization

**Since: W2**

A priority is a decision about what to build first and what not to build at all, and the customer can argue with it only if it is written down with its reason.
Every priority is relative to the product you intend to finish in this course.

**Required**

1. Every [story](#the-story) carries exactly one priority, as one `moscow:*` label:

   - `Must Have`, labelled `moscow:must`: the product is not the product without it.
   - `Should Have`, labelled `moscow:should`: important, and the product is still coherent without it.
   - `Could Have`, labelled `moscow:could`: valuable, and the first thing to cut.
   - `Won't Have`, labelled `moscow:won't`: a need you have deliberately excluded.

2. Every story carries a **priority reason** in the issue form's `Priority reason` field.
   The reason says why the story has this priority and not the one above or below it, and names the [constraint](product-vision-requirements.md#constraints) when one drives it.
   A reason that restates the definition of the label is not a reason.
3. Not every story you intend to build is `Must Have`: at least one of them is `Should Have` or `Could Have`.
   A list where everything is `Must Have` says nothing about what to build first.
4. A story you drop after writing it becomes `Won't Have`.
   It keeps its `US-nn` and its statement, and its issue closes as [Where Stories Live](#where-stories-live) says.
5. The priorities do not contradict the [boundary](product-vision-requirements.md#boundary).
   No story you intend to build is something the boundary excludes.
   A `Won't Have` reason that rests on the boundary quotes the boundary item.
   The two are independent otherwise: a boundary item is a decision about the whole product and needs no matching story, and a `Won't Have` story is one written need that you excluded and need not appear in the boundary.
6. A priority that changes is recorded where the change was made.
   The story issue gets a dated comment naming the old label, the new label, and the reason, and its priority reason is updated.
   A change the customer decided is recorded per [Meeting Report](customer-meetings-requirements.md#meeting-report).
   A change the team decided is cited from the weekly public report's `#decisions`, per [Identifier Rules](general-requirements.md#identifier-rules).
7. The `Must Have` stories you would build first are the [minimum usable product candidate](#minimum-usable-product-candidate).

**Recommended**

- Test a `Must Have` by removing it: if the product is still the product without it, it is a `Should Have`.
- Write the reason as a comparison with a neighbouring story or with the core task, because that is what the customer will argue with.

**Example**

A `Could Have` reason; the `Must Have` one is in the [full example](#full-example).

```markdown
## Priority reason

Could Have: a reminder email reduces no-shows, but a client who paid already has the link, so the core task finishes without it.
```

## Minimum Usable Product Candidate

**Since: W2**

A **minimum usable product (MUP)** is the smallest product in which a user can complete the core tasks without getting frustrated.
The candidate is your proposal for it, made before any product code exists, so the customer can argue with it while it is still cheap to change.

**Required**

1. Name the **core task** the candidate serves: one thing a user does from start to finish, written in one line.
2. The candidate is a strict, non-empty subset of your `Must Have` stories that together let a user complete that core task end to end.
   Stories that cover only part of the task are not a candidate.
3. Name one story **inside the candidate** to drop first if you ran out of time.
   Without it, the rest of the candidate must still complete the core task; if no story can go, say why.
4. Record the candidate per [Weekly Public Report](weekly-report-requirements.md#weekly-public-report).
5. The candidate is a proposal, not a commitment.
   The customer's verdict on it is recorded per [Meeting Report](customer-meetings-requirements.md#meeting-report).

**Recommended**

- Two or three stories that a user can finish in one sitting.
  A long candidate is a postponement, not a priority.

## Full Example

Issue #42, a `Must Have` story:

```markdown
Title: US-01: Pay at booking
Labels: moscow:must, user-story

As a coach who sells sessions online, I want a client to pay when they book,
so that an unpaid slot does not block a paying one for the rest of the week.

## Traces to

- `VP-01`
- `GAP-01`

## Priority reason

Must Have: without it, an unpaid booking still holds a slot, which is the GAP-01 problem itself; the reminder email can wait, because a client who paid already has the link.

## Acceptance criteria

1. `AC-01`: Given a paid meeting type with one free slot, when a client books that slot, then the slot is held
   while the client pays and is released back to the calendar when the hold expires.
2. `AC-02`: Given a client who does not finish payment, when the hold expires, then the booking is not confirmed
   and no meeting link is created.

## Notes

The customer confirmed on 2026-10-06 that payment happens before confirmation, which retired the pay-later
assumption in [the assumptions table](https://github.com/<organization>/<repo>/blob/main/docs/research/value-proposition.md#assumptions).

Comment, 2026-10-06: `AC-02` added after [the validation meeting](https://github.com/<organization>/<repo>/blob/main/reports/week-02/meeting-report.md#decisions).
The customer will not accept a hold that confirms without payment, and the first version of the story only had `AC-01`, which said the slot is held.
```

Issue #50, a `Won't Have` story, closed as not planned:

```markdown
Title: US-09: Sell session bundles
Labels: moscow:won't, user-story

As a coach, I want to sell a bundle of ten sessions, so that a returning client pays once.

## Traces to

- `VP-01`
- `GAP-01`

## Priority reason

Won't Have: the boundary item "Sell recurring subscriptions or bundles" excludes it, and no user we met has asked to pay for sessions in advance.

Closing comment: Not planned, for the priority reason above.
```
