# Guide: Quality And Architecture

How to find what the stakeholders expect of the product, write it as quality and functional requirements, and document the architecture and the decisions that answer it.

This week the product gets quality requirements, functional requirements, a documented architecture, and the architectural decision records behind it.
The rules are in [Quality Requirement Requirements](../requirements/quality-requirements-requirements.md), [Functional Requirement Requirements](../requirements/functional-requirements-requirements.md), [Architecture Requirements](../requirements/architecture-requirements.md), and [ADR Requirements](../requirements/adr-requirements.md), and the glossary is in [Glossary Requirements](../requirements/glossary-requirements.md).
This guide is the method: finding the quality expectations, writing each one so a reviewer can fail it, and keeping the links between the requirements, the drivers, and the decisions pointing one way.

**Timebox:** about two days, most of it in the quality attribute workshop and the first three decision records.
The requirements are cheapest to change now, before a test or a decision rests on them.

<h2>Table of contents</h2>

- [What You Produce](#what-you-produce)
- [Step 1: Find The Quality Expectations](#step-1-find-the-quality-expectations)
  - [Start From The Stakeholders](#start-from-the-stakeholders)
  - [Separate The Quality From The Function](#separate-the-quality-from-the-function)
  - [Measure Quality Three Ways](#measure-quality-three-ways)
  - [Run The Quality Attribute Workshop](#run-the-quality-attribute-workshop)
- [Step 2: Turn A Characteristic Into A Requirement](#step-2-turn-a-characteristic-into-a-requirement)
  - [Start With The Outcome](#start-with-the-outcome)
  - [Pick One Pair From The Allowed Table](#pick-one-pair-from-the-allowed-table)
  - [Write The Six Parts](#write-the-six-parts)
  - [Make The Response Measure Runnable](#make-the-response-measure-runnable)
  - [Write The Testability Requirement Against The Code](#write-the-testability-requirement-against-the-code)
- [Step 3: Prioritize](#step-3-prioritize)
  - [Rate The Value To The Customer](#rate-the-value-to-the-customer)
  - [Rate The Difficulty Of Achieving And Testing It](#rate-the-difficulty-of-achieving-and-testing-it)
  - [Let The Index Sort, Not The Rating](#let-the-index-sort-not-the-rating)
- [Step 4: Write The Functional Requirements](#step-4-write-the-functional-requirements)
  - [Start From The Behavior A Story Needs](#start-from-the-behavior-a-story-needs)
  - [Name The Containers](#name-the-containers)
  - [Record Where It Came From](#record-where-it-came-from)
  - [Write Shall Statements](#write-shall-statements)
  - [Give It Its Own Criteria](#give-it-its-own-criteria)
  - [Point The Story Back At It](#point-the-story-back-at-it)
- [Step 5: Link The Drivers](#step-5-link-the-drivers)
  - [Link Each Group Where It Lives](#link-each-group-where-it-lives)
  - [Name No Requirement Of Your Own](#name-no-requirement-of-your-own)
  - [Open By Linking The Scope](#open-by-linking-the-scope)
- [Step 6: Write The Decision Records](#step-6-write-the-decision-records)
  - [Write The Context As The Forces](#write-the-context-as-the-forces)
  - [Name The Options You Turned Down](#name-the-options-you-turned-down)
  - [State The Outcome](#state-the-outcome)
  - [Write The Consequences Against The Quality Requirements](#write-the-consequences-against-the-quality-requirements)
  - [Name The Requirements It Answers](#name-the-requirements-it-answers)
  - [Name The Decision It Documents](#name-the-decision-it-documents)
- [Step 7: Index The Decisions](#step-7-index-the-decisions)
  - [Keep The Quality Requirements Index Sorted](#keep-the-quality-requirements-index-sorted)
  - [Keep One Decision Index](#keep-one-decision-index)
  - [Read From The Requirement To The Record](#read-from-the-requirement-to-the-record)
  - [Search From The Record To The Requirement](#search-from-the-record-to-the-requirement)
  - [Leave The Chain To The Links](#leave-the-chain-to-the-links)
- [Common Mistakes](#common-mistakes)

## What You Produce

- `docs/quality-requirements/`, with `qr/` for the records and `README.md` for the index: the testable quality requirements and the priority matrix that orders them, per [Quality Requirement Requirements](../requirements/quality-requirements-requirements.md).
- `docs/functional-requirements/`, with `fr/` for the records and `README.md` for the index: the behavior the product must have, written so a reviewer can check it without opening a story, per [Functional Requirement Requirements](../requirements/functional-requirements-requirements.md).
- `docs/architecture/README.md`: the drivers that shape the architecture and the decision index, per [Architecture Requirements](../requirements/architecture-requirements.md).
- `docs/architecture/adr/`: one record per decision, with the options it turned down and the requirements it accounts for, per [ADR Requirements](../requirements/adr-requirements.md).
- `docs/glossary.md`: the project's own terms, each defined once, per [Where The Glossary Lives](../requirements/glossary-requirements.md#where-the-glossary-lives) and [The Term](../requirements/glossary-requirements.md#the-term).

The requirements say what the product must do and how well, the architecture says what the team decided in order to get that, and the indexes are where the two meet.

## Step 1: Find The Quality Expectations

A **quality attribute** is a property of the software that a stakeholder can notice and cares about: how fast it answers, how often it is up, how safely it fails, how hard it is to change.
The ISO/IEC 25010 model names the attributes as characteristics and sub-characteristics, and the work of this step is finding which of them matter for this product and to whom.

### Start From The Stakeholders

The course has four stakeholder groups, and each one sees a different product: the customer pays for it and accepts it, the users live with it, the team maintains it, and the instructors require the work.
Each group carries explicit expectations, such as a booking that must not double-book, and implied ones, such as a page that must not lose a form when the browser reloads.
The implied ones are the reason the session exists, because nobody writes them down and everybody notices when they are missing.

A stakeholder may not know how to describe the quality they want, so help them.
Ask what they would stop using the product over, what they would not trust, and what happened the last time a similar product let them down.
The answer is usually an occasion with a number in it, and an occasion is what Step 2 can turn into a scenario.

### Separate The Quality From The Function

Function is what the product does, and quality is how well it does it.
"A coach can reschedule a session" is function and belongs in a functional requirement, and "a reschedule is saved before the page returns, and a client sees the new time in under a second" is quality.
The quick test is whether a product could satisfy the statement and still be too slow, too insecure, or impossible to maintain; if it could, the statement is functional.

The same test catches a quality requirement that is hiding a feature.
"The system shall provide an audit log" is a function with a screen, and "every change to a booking names the account that made it within one second" is the quality the log was for.
Write the quality, and let the ADR decide whether a log is how to get it.

### Measure Quality Three Ways

The lecture gives three ways to measure the quality of a product version, and the week uses the third one.

1. **Ask the stakeholders to judge the version.**
   They are the best assessors of their own needs, and the answer comes too late: the quality had to be built into the sprint, and a version shown at the end cannot be changed cheaply.
2. **Take the attributes from the existing model.**
   The model is complete, free, and too abstract to measure: the standard's definition of `Capacity` does not say how many clients this product must hold at once.
3. **Agree with the stakeholders on testable quality requirements.**
   The team and the customer can both run the check, the price can be estimated from the decisions the requirement forces, and the result can be written into the meeting's agreement.

The first two ways are how the third one starts rather than alternatives to it: the stakeholders' reaction is the source, and the model is the vocabulary.

### Run The Quality Attribute Workshop

A **quality attribute workshop** is the session that turns the concerns into candidate scenarios.
The lecture names its moves: identify and clarify the architectural drivers with the stakeholders and the architect, then generate, prioritize, verify, and refine the scenarios against those drivers.

- **Who is in the room.**
  Every stakeholder group at least once.
  The customer's reaction carries the most weight, and the team's maintenance concern counts too, because the team is the group that has to live with the architecture after the course.
- **Generate more than you keep.**
  Ask each stakeholder for a concrete occasion, such as the last time the product felt slow or the last time they did not trust a number on the screen.
  A number that arrives with a story is a number the team can defend later.
- **Verify each candidate.**
  Is it consistent with the boundary and the constraints, can the stack reach it, and can somebody measure it?
  A candidate that fails one of the three is refined rather than deleted, because the concern behind it is real.
- **Refine until it can be measured.**
  Replace "fast" with the action, its condition, and the number: a coach's calendar loads in under two seconds on the course network.
- **Keep the list short.**
  Three to six candidates reach a requirement, and the rest stay in the workshop notes as the next conversation.

The workshop produces a list, not a file: one sentence per candidate, the stakeholder who raised it, and the characteristic it sounds like.
Step 2 writes the records from that list.

## Step 2: Turn A Characteristic Into A Requirement

A **quality requirement** is one testable statement about how well the product does something, and its file is one record.
Its fields are in [The Quality Requirement](../requirements/quality-requirements-requirements.md#the-quality-requirement), and this step is how to fill them so the requirement can be failed.

### Start With The Outcome

A QR is one file at `docs/quality-requirements/qr/QR-nn.md`, and [Where Quality Requirements Live](../requirements/quality-requirements-requirements.md#where-quality-requirements-live) fixes the path and the index.
The file opens with the outcome in one sentence below the heading, and that sentence is what a reviewer checks the rest of the record against.
Write it as something that can be false: "two clients can never hold the same place" names a state the product can fail, and "the booking experience is reliable" does not.

### Pick One Pair From The Allowed Table

Every QR declares one characteristic and one sub-characteristic from the ISO/IEC 25010:2023 model, and [The Allowed Pairs](../requirements/quality-requirements-requirements.md#the-allowed-pairs) lists the pairs the course accepts.
The pair is the classification, not the requirement: `Reliability` / `Availability` tells a reader the area, and the scenario says what availability means for this product.
Choose the pair that names the concern, and split the concern that needs two.
Several QRs may share a characteristic, and the pair exists so the requirements stay comparable in the index.

### Write The Six Parts

The **quality attribute scenario** has six parts, in the order the lecture gives them, and [The Quality Attribute Scenario](../requirements/quality-requirements-requirements.md#the-quality-attribute-scenario) owns the order and the sub-headings.

- **Source** is who or what produces the stimulus: a client, an operator, a scheduled job, or an external provider.
- **Stimulus** is the event that arrives: a booking request, a provider timeout, or a deployment.
- **Environment** is the state the system is in when it arrives: normal load, the peak, a cold start, or a partial outage.
- **Artifact** is what is stimulated: the whole system, or the part the requirement is about.
- **Response** is what the system does, stated as something an observer can see.
- **Response Measure** is the number, threshold, or state that decides pass or fail.

Each part names something a reader can picture, and none of them names a design.
"The backend retries three times" is a design, and "the booking is confirmed once, despite the provider's timeout" is a response.

```text
Source:            A client submitting a booking.
Stimulus:          Two bookings for the last place arrive within 200 ms of each other.
Environment:       Normal operation, one backend instance.
Artifact:          The booking endpoint and the slot store.
Response:          One booking is confirmed, the other is refused with the session's current state.
Response Measure:  Exactly one confirmation per place, and the refused client sees the result in under two seconds.
```

### Make The Response Measure Runnable

The `Response Measure` is what makes the requirement a requirement: a time, a percentage, a count, a state, or the exit code of a command somebody can run.
Write the measure first and the other five parts around it, because the number decides what the scenario is about, and a scenario written the other way usually ends in an adjective.
Write the threshold this product needs rather than the industry's usual number, because the number is a promise the customer can hold the team to.
If nobody can say how the value would be measured, the measure is not ready: name the interval in the requirement's own words, such as "measured from the booking request to the confirmation email", so a reader knows what the clock covers.

### Write The Testability Requirement Against The Code

One quality requirement is about `Maintainability` / `Testability`, and its response is about the product's own source rather than about what a user sees.
That requirement names the critical modules by repository path, such as the frontend entry point `frontend/src/main.tsx` or the payment module `backend/src/payments/checkout.ts`, so a checker can open the repository and look.
A requirement that says "the code is testable" can only be checked against a description; one that names the modules can be checked against the code.

Its business importance is `High`, because the instructors are stakeholders and they require it: the course is part of the business the product serves.
Naming the modules is also the first architectural claim of the week, because the list says where the team believes the risk is, and the ADRs that follow either accept that claim or change it.

## Step 3: Prioritize

Each QR carries two ratings, and they answer different questions: one says what the requirement is worth, and the other says what it costs to get and to show.
The index sorts by them, so the ratings are the only thing that turns the matrix into a queue.

### Rate The Value To The Customer

`Business importance` is the value to the customer: what the product, or the customer's trust in it, loses when the quality is missing.
Rate it against the customer's own sentences rather than against how interesting the attribute is to the team.
A `High` that nobody can defend with a customer sentence is a preference, and the meeting is where the sentence comes from.

Keep the reason where the requirement was settled, in that meeting's report or in the decision the customer made, because the QR's own fields carry the rating rather than its argument.

### Rate The Difficulty Of Achieving And Testing It

`Technical risk` is how hard the attribute is to achieve and to test in this product, and it has two halves.
The first is engineering: a provider the team has never integrated, a load the stack has not seen, a consistency problem the team can describe but not solve.
The second is measurement: a quality nobody knows how to check is as risky as one nobody knows how to build, because a requirement the team cannot show is a requirement it cannot claim.

Rate it from what the team knows now, and revise it when a decision or a probe changes the answer.
An attribute stays important after the team has retired its risk, which is why the two ratings are separate.

### Let The Index Sort, Not The Rating

The two ratings are useful together.
High importance and high risk sits at the top of the index, so the requirement that needs a decision earliest is read first.
High importance and low risk is the next win once the hard decisions are made, and low importance with high risk is the one to drop or defer.
The index sorts active records first, then business importance from High to Low, then technical risk from High to Low, and [The Quality Requirements Index](../requirements/quality-requirements-requirements.md#the-quality-requirements-index) owns the order and the columns.

The `Status` column is the record's own `Active` or `Dropped`, not a second lifecycle.
A dropped requirement keeps its row and sorts below the active ones, because the index is also the account of what the team decided not to have.
A matrix that rates everything `High` sorts nothing, and the next question is always which `High` the customer would trade for another.

## Step 4: Write The Functional Requirements

A **functional requirement** is the behavior the product must have, written once and owned independently of the story that needed it.
Its path and index are in [Where Functional Requirements Live](../requirements/functional-requirements-requirements.md#where-functional-requirements-live), and its fields are in [The Functional Requirement](../requirements/functional-requirements-requirements.md#the-functional-requirement).

### Start From The Behavior A Story Needs

Read the story for the need, and write the behavior the system must have for the need to be met.
An FR that repeats the story's three lines adds a second copy of the same fact, and one that says what the system does when a client books a held slot adds what the story left open.
One FR may serve several stories and one story may need several FRs, because the story is the need and the FR is the behavior.

Start from the stories the sprint is about to build, and add the closed stories whose behavior the product already has: the index is the product's behavior, not the sprint's.

### Name The Containers

`**Containers:**` names the deployable units the behavior lands in, such as `frontend`, `backend`, or `static content`.
The list is the first sketch of the architecture, because a behavior that runs in two containers is a behavior with a call between them.
Name what the behavior needs rather than every container in the system: an FR whose containers are all of them says nothing about where the work goes.

### Record Where It Came From

`**Traces to:**` is provenance and constraint at once.
The story that produced the requirement, the decision that imposed it, and the constraint that shapes it are origins; the ADR that constrains it is a constraint.
Write the origin when the FR is created, and add the ADR that changes it when one does, so a reader who follows the link reaches the reason instead of asking the team.

The FR and the ADR each own one fact about the same relationship: the FR says which ADR constrains it, and the ADR says which requirements it accounts for.
Neither is derived from the other, so a record may be written before or after the requirement it answers.

### Write Shall Statements

`## Behavior` holds the requirement's `shall` statements, per [Behavior](../requirements/functional-requirements-requirements.md#behavior).
Each one names its actor, its condition, and an observable outcome, so a reader can verify it without opening a story.
"The system shall reject a booking whose place is already taken" is checkable, and "the system shall handle concurrent bookings" is not.

Write the product as the subject and the present tense, so the statement reads the same in a later week, when the story that needed it is closed.
A statement that begins "the user can" is the story's need wearing the requirement's clothes: keep the need in the story and write the system's response here.

```markdown
## Behavior

When two clients book the last place in the same second, the system shall confirm the first booking and refuse the second with the session's current state.
```

### Give It Its Own Criteria

An FR carries its own `### AC-nn` criteria, numbered from `AC-01`, and [Acceptance Criteria](../requirements/functional-requirements-requirements.md#acceptance-criteria) fixes their shape.
They are the team's technical check that the behavior is what the requirement says, and they are not the story's criteria, which are the customer's: a criterion here may name a table, an example input and output, or a stored state that no customer would check.

Each criterion is a section rather than a line, because one criterion is cited on its own: `FR-012 AC-02` links as `FR-012.md#ac-02`, so a task or a decision can point at the check it means.
A criterion that needs a scenario notation to be checkable is not yet a criterion, and an example is often the shortest way to make it one.

```markdown
### AC-02

Given two booking requests for the last place, when both arrive before either is confirmed, then exactly one is confirmed and the other receives the session's remaining places.
```

### Point The Story Back At It

The story carries `### Specified by`, naming the FRs and ADRs that specify it, and that section is the one place the story and the requirement meet.
Point it at every story, including the ones that closed in Weeks 2 and 3: a closed story whose behavior is in the product still needs to name the requirement the behavior belongs to.

The story is where a reader arrives first, and the link is what carries them from the need to the behavior.
When a closed story gains a related task, reopen it, update `### Specified by`, and close it again, so the new work and the requirement are joined at the story.

## Step 5: Link The Drivers

The architecture document is `docs/architecture/README.md`, and [Where The Architecture Lives](../requirements/architecture-requirements.md#where-the-architecture-lives) fixes what it carries.
It opens by linking the product vision as the scope it serves, and then its [Drivers](../requirements/architecture-requirements.md#drivers) section points at the four groups that drive the architecture: the business goals, the constraints, the functional requirements, and the quality requirements.

### Link Each Group Where It Lives

Each group is already written somewhere, so the drivers section links its holder rather than repeating it:

- The **business goals** link `docs/threshold-of-success.md` in full, because each goal is its own `TOS-nn` section and the threshold owns the statement.
- The **constraints** link `docs/product-vision.md#constraints`, where the `CON-nn` sections live.
- The **functional requirements** link `docs/functional-requirements/README.md`.
- The **quality requirements** link `docs/quality-requirements/README.md`, which is also the priority matrix.

The boundary and the system context are the scope the architecture serves rather than drivers of it, which is why the opening sentence links the vision for both.

### Name No Requirement Of Your Own

The section names no `TOS-nn`, `CON-nn`, `FR-nnn`, or `QR-nn`.
A name there would put the same fact in two places: the threshold owns the goal, the vision owns the constraint, and the indexes own the requirements.
The second copy drifts the week one of them changes.

The specific requirements appear once, in the decision index's `Addresses` column, where each record names what it answers.
A requirement no record answers is still reached through its index, so the drivers section leaves nothing dangling.
The section stays a map of where each group lives, and the index carries the detail.

### Open By Linking The Scope

The first sentence links `docs/product-vision.md` as the scope the architecture serves, and the vision links the architecture back.
The goal, the stakeholders, the boundary, the constraints, and the system context stay in the vision, so the two documents point at each other and neither copies the other.

Link the vision as a whole rather than a section at a time, because a section link moves the scope into the architecture one piece at a time.

## Step 6: Write The Decision Records

An **architectural decision record** is the reasoning for one decision, in a uniform shape, so a reader can see what was decided, what else was considered, and what the choice costs.
Its path is in [Where Architectural Decision Records Live](../requirements/adr-requirements.md#where-architecture-decision-records-live), and its fields are in [The Record](../requirements/adr-requirements.md#the-record).

### Write The Context As The Forces

`## Context` states the forces the decision had to satisfy: the requirement, the constraint, the deadline, the stack, and what the team knew at the time.
Name the requirement that forced the decision by its identifier, and keep the context to what was true before the choice.
A context that says "we needed an architecture" gives the reader nothing to reason with, and a context that already argues for the option has done the next section's job.

### Name The Options You Turned Down

`## Considered Options` names each option the team rejected and why it lost: the cost, the quality it could not meet, the constraint it broke, or the risk the team would not take.
A record with one option and no rejected one is a note rather than a decision, because the second option was always there: keep the current stack, or do nothing.
Call it an **option**, because "alternative" is reserved for the `ALT-nn` family from Week 1 and a reader who sees the word expects the research.
State the rejected option as a real choice the team could have made, and not as a straw man that was never on the table.

### State The Outcome

`## Decision Outcome` states the option the team chose and why it beat the others, in the same terms as the context.
It is the one paragraph a reader can quote, so write it as a decision rather than as a plan: "the booking state lives in one service and the calendar is a read model" is a decision, and "we will build a booking service" is a task.

### Write The Consequences Against The Quality Requirements

`## Consequences` names each quality attribute the decision accepts and the `QR-nn` that covers it, linked.
The section is where a gap shows: a decision that accepts an attribute with no QR either needs the QR or needs a different decision.

Write what gets harder as well as what gets easier, because a record whose consequences are all positive has not been read by the person who has to live with it.
The consequence is the effect, not the work: "the calendar lags the booking by a minute" is a consequence, and "update the calendar job" is a task.

```markdown
## Consequences

The booking state is written in one place, so a retry cannot confirm twice, and [`QR-02`](../quality-requirements/qr/QR-02.md) covers the duplicate it prevents.

The calendar is a read model, so a calendar change reaches the booking page a minute late, and [`QR-04`](../quality-requirements/qr/QR-04.md) covers the delay.
```

### Name The Requirements It Answers

`**Addresses:**` lists the ASRs the record accounts for, and [What It Accounts For](../requirements/adr-requirements.md#what-it-accounts-for) fixes that list.
An **architecturally significant requirement** is a requirement that affects the architecture and the quality of the system, so the list holds the `FR-nnn` and `QR-nn` links the decision is responsible for, per [Architecturally Significant Requirements](../requirements/architecture-requirements.md#architecturally-significant-requirements).

Name the requirement the decision answers, not the artifact it changed: a record that lists a meeting report or a story has answered nothing.
A requirement the record drops is still listed, because the decision answers for the removal, and the requirement's own `**Dropped:**` cites the record.
A requirement the record only words differently is not listed, because the decision left it as it was.

### Name The Decision It Documents

`**Decision:**` names the `DEC-nnn` whose choice the record documents, linked, when one exists.
The customer's decision says what they decided, and the record says how the team will do it and why, so the two are different facts.
A purely technical choice the team made has no `DEC-nnn`, and the field is left out rather than filled with a decision the customer did not make.

The stack is the case to get right: the record states the stack and justifies it, and its `**Decision:**` names the customer's mandate when there is one.

## Step 7: Index The Decisions

Two indexes make the week readable: the quality requirements index, which is the priority matrix, and the decision index, which is the one table that maps a requirement to the record that answers it.

### Keep The Quality Requirements Index Sorted

`docs/quality-requirements/README.md` is one row per `QR-nn`, with the `QR`, `Outcome`, `Business importance`, `Technical risk`, `Characteristic`, `Sub-characteristic`, and `Status` columns that [The Quality Requirements Index](../requirements/quality-requirements-requirements.md#the-quality-requirements-index) fixes.
It is the group's entry point and the priority matrix, not a second list beside them.

The sort is the method: active records first, then business importance from High to Low, then technical risk from High to Low, with `QR-nn` order breaking a tie.
Re-sort the table when a rating changes, so its top row is always the next conversation the team should have.
The `Status` column is the record's own state, so the table never disagrees with the file it summarises.

### Keep One Decision Index

The [Architectural Decisions](../requirements/architecture-requirements.md#architectural-decisions) section of `docs/architecture/README.md` holds one table with the `ADR`, `Status`, `Addresses`, and `Decision` columns.
Its `Addresses` column is the one map from a requirement to the record that answers it, so no separate driver table exists beside it.
The records in force come first and the inactive ones follow, which makes the index read as the set of decisions the architecture currently rests on.

A row's `Decision` is one line, short enough to scan: it is the reason to open the file, and the file carries the reasoning.

### Read From The Requirement To The Record

The reading order from a quality requirement to the ADR that answers it runs through the indexes:

1. Open `docs/quality-requirements/README.md` and find the QR's row.
2. Read the decision index's `Addresses` column for the row that names the QR.
3. Open the ADR that row links.

Every hop is a link that already exists, so the reader needs no trace document to follow the path.
The same walk works for a functional requirement, whose row is in [The Functional Requirements Index](../requirements/functional-requirements-requirements.md#the-functional-requirements-index) and whose record is the one that names it in `Addresses`.
When a requirement has no record, the walk ends at the index: it is a requirement no decision has shaped yet, which is allowed.

### Search From The Record To The Requirement

A QR cites no ADR, so the reverse direction is a search rather than a link: search the ADR files' `**Addresses:**` lists for the identifier.

```bash
grep -rn "QR-03" docs/architecture/adr/
```

The same search works for an `FR-nnn`.
The search is the design rather than a workaround for a missing link: each side owns one fact, and the other direction is a query, so the two can never disagree.

### Leave The Chain To The Links

The chain is already made by the links, and no document restates it.

A task's `### Requirements` names the FR and the ADR it works on, the FR's `**Traces to:**` names the ADR that constrains it, and the ADR's `**Addresses:**` names the requirement it answers.
The architecture document reaches the threshold of success through its drivers, and the story's `### Specified by` names the same FR and ADR from the other side.
Follow those links once each from a task, and you arrive at a goal the customer set without any document written to carry you.
A trace section or a matrix table would be a second copy of those facts, and it would be stale the first week a requirement moved; the links are the trace, and the search is the way back.

## Common Mistakes

- **A quality requirement nobody could fail.**
  "The system shall be secure" passes every review and tests nothing; write the response measure a reviewer could fail it against.
- **A scenario that names the design.**
  "The backend retries three times" is a tactic, and the requirement is the response the user sees; the tactic belongs in an ADR.
- **A priority matrix where everything is `High`.**
  It sorts nothing, and the first row is a coin toss; rate the value and the difficulty separately, so the order means something.
- **A functional requirement that is the story again.**
  If the FR repeats the story's three lines, the team maintains the same fact twice; write the behavior the story left open, not the need again.
- **A drivers section that lists the requirements.**
  Naming a `TOS-nn` or a `QR-nn` there puts a second copy of a fact the threshold or the index owns; link each group once and leave the names to the decision index.
- **An ADR with one option and no consequences.**
  It records what the team did without the reasoning that makes it a decision; name the option you turned down and the quality the choice costs.
- **A trace document.**
  A section or a table that restates the chain is stale the first week a requirement moves; follow the links instead.
