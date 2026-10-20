# Functional Requirements Requirements

These requirements define the functional requirements: where they live, the fields a requirement carries, the behavior it states, its acceptance criteria, and the index that lists them.
A functional requirement states one behavior the product must deliver, independently of the story that needed it, so a reader can check the product against it after that story has closed.
A story names the functional requirements and architectural decision records that specify it in its `### Specified by` section, per [User Story Requirements](user-stories-requirements.md#the-story).
How the `FR-nnn` and `AC-nn` identifiers are issued and cited is in [General Requirements](general-requirements.md#identifier-rules).
[Guide: Quality And Architecture](../guides/quality-and-architecture.md) is the method.

<h2>Table of contents</h2>

- [Where Functional Requirements Live](#where-functional-requirements-live)
- [The Functional Requirement](#the-functional-requirement)
- [Behavior](#behavior)
- [Acceptance Criteria](#acceptance-criteria)
- [The Functional Requirements Index](#the-functional-requirements-index)
- [Full Example](#full-example)

## Where Functional Requirements Live

**Since: W4**

A functional requirement is maintained documentation.
It is created in Week 4 in its final place and stays current, per [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository).

**Required**

1. Each functional requirement is `docs/functional-requirements/fr/FR-nnn.md`, a file of its own, headed `# FR-nnn: Title`.
2. `FR-nnn` takes three digits, because a project's functional requirements can pass 99 over the course; it is issued once, never renumbered, and never reused, per [Identifier Rules](general-requirements.md#identifier-rules).
3. One file carries one requirement, its criteria, and its containers: a second behavior that a reader could verify on its own is a second `FR-nnn`, so a citation names one behavior.
4. The functional requirements index is `docs/functional-requirements/README.md`, per [The Functional Requirements Index](#the-functional-requirements-index).

**Recommended**

- Give the requirement an outcome-shaped title, such as `Pay At Booking`, because the index lists the title and the architecture document reaches the requirement through the index.

## The Functional Requirement

**Since: W4**

The requirement states what the product does, and its fields say where it came from, where it runs, and whether it is still active.
The behavior and the criteria are the requirement itself; the fields are its record.

**Required**

1. The file carries these fields, in this order, as a bulleted list, per [Identifier Rules](general-requirements.md#identifier-rules):

   | Field             | What it says                                                                                                                                                                                                          |
   | ----------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
   | `**Status:**`     | `Active` or `Dropped`                                                                                                                                                                                                 |
   | `**Traces to:**`  | One or more origins and constraints, each linked, per rule 2                                                                                                                                                          |
   | `**Containers:**` | One or more names of the C4 deployable units the behavior runs in, from the architecture document's [container view](architecture-requirements.md#container-view), such as `frontend`, `static content`, or `backend` |
   | `**Changed:**`    | Each change, recorded as a gap records one, per [Gap Analysis](research-requirements.md#gap-analysis), only when it changed                                                                                           |
   | `**Dropped:**`    | Only on a dropped requirement: the date, the reason, and the `DEC-nnn` or `ADR-nnn` that caused it, when one did, per [Identifier Rules](general-requirements.md#identifier-rules)                                    |

2. `**Traces to:**` is provenance and constraint: one or more entries recording where the requirement came from and what limits it, each linked.
   The `US-nn`, `DEC-nnn`, `CON-nn`, or meeting report that produced it is an origin, the `ADR-nnn` that constrains it is a constraint, and at least one entry is required.
   Link each origin per [Traceability Into Later Weeks](general-requirements.md#traceability-into-later-weeks).
3. The requirement and the ADR are two records, and each owns one fact: the requirement says where it came from and what limits it, and the ADR's `**Addresses:**` lists the requirement as an architecturally significant requirement it accounts for, per [What It Accounts For](adr-requirements.md#what-it-accounts-for).
   No other field repeats the ADR, and either record can be written first, because neither fact is derived from the other.
4. The requirement has no `**Stories:**` field and does not restate the story.
   The story that produced it is an origin and appears in `**Traces to:**` when the requirement came from one, and the story names the functional requirements and ADRs that specify it in `### Specified by`, per [The Story](user-stories-requirements.md#the-story).
   A story may close and stay closed while its requirement stays `Active`.
5. A functional requirement specifies behavior and never adds a user-facing need.
   A need the customer has not seen is a story first, because a requirement that invents one decides for the customer.
6. A requirement that changed without dropping records each change under `**Changed:**` as a gap records one, per [Gap Analysis](research-requirements.md#gap-analysis).
7. A dropped requirement keeps its file, its title, and its `### AC-nn` sections, so every anchor still resolves; its `**Status:**` becomes `Dropped`, and its `**Dropped:**` field gives the date and the reason, citing the `DEC-nnn` or `ADR-nnn` when one caused the drop, per [Identifier Rules](general-requirements.md#identifier-rules).
8. Each name in `**Containers:**` is a container the [container view](architecture-requirements.md#container-view) lists, spelled as the view spells it.
   It names the containers the behavior runs in, not every container the behavior touches, because a store the requirement writes to is not where the behavior runs.

**Recommended**

- Keep `**Traces to:**` to what the record needs: the story or decision it came from, the constraint that shapes it, and the ADR that limits it, rather than every artifact that mentions it.

**Example**

The fields of a requirement, with its behavior and criteria left out:

```markdown
- **Status:** Active
- **Traces to:** [`US-01`](https://github.com/<organization>/<repo>/issues/42), [`DEC-006`](../../decisions.md#dec-006), [`ADR-001`](../../architecture/adr/ADR-001.md), [`ADR-002`](../../architecture/adr/ADR-002.md)
- **Containers:** `frontend`, `backend`
```

## Behavior

**Since: W4**

`## Behavior` is the requirement's normative content: the statements a reviewer checks the product against.
Each statement is one obligation, so a behavior that changes under a second condition is a second statement.

**Required**

1. `## Behavior` holds one or more `shall` statements.
2. Each statement names its actor, its condition, and its observable outcome, so a reader can verify it without opening a story.
3. Write the statement about the product, not about the work: it names no task issue, sprint, pull request, or library, because those are how the behavior is delivered and not what it is.

**Recommended**

- Order the statements by the flow a reviewer follows, from the trigger to the outcome the reviewer sees.
- State the outcome a reviewer can observe rather than the internal step that produces it, so the statement survives a redesign.

**Example**

The behavior of the requirement in the [full example](#full-example):

```markdown
## Behavior

When a client books a paid slot, the product shall hold the slot while the client pays.

The product shall confirm the booking only after the payment provider reports that the payment settled.

When a hold reaches its expiry without a settled payment, the product shall release the slot and shall not create a meeting link.
```

## Acceptance Criteria

**Since: W4**

An acceptance criterion is the check that tells the team whether the requirement is delivered.
The requirement's criteria are the team's technical check, and a story's criteria are the customer's verdict on the story, per [Acceptance Criteria](user-stories-requirements.md#acceptance-criteria), so a requirement can stay `Active` after its story closes.

**Required**

1. `## Acceptance Criteria` holds one `### AC-nn` section per criterion, `AC-01` upward, numbered within the requirement and never renumbered or reused there, per [Identifier Rules](general-requirements.md#identifier-rules).
2. Every requirement carries at least one criterion, because a requirement that nobody can check is not yet a requirement.
3. A criterion is a verifiable assertion: a given and an expected result, an example input and output, a configuration table, or a state a reader can observe.
4. No scenario notation is required, and a criterion that would need one to be checkable is not yet a criterion.
5. Cite a criterion as `FR-012 AC-02`, and link it as `FR-012.md#ac-02`.

**Recommended**

- Cover the state a reviewer can observe at the edge of the behavior, such as an expired hold or an unpaid booking, because that is where an implementation usually drifts.

**Example**

Two criteria of a requirement, each with its anchor:

```markdown
### AC-01

Given a paid meeting type with one free slot, when a client books that slot, then the slot is not offered to another client while the client pays.

### AC-02

Given a held slot whose payment has not settled, when the hold expires, then the slot is free again and the booking is not confirmed.
```

## The Functional Requirements Index

**Since: W4**

`docs/functional-requirements/README.md` is the group's entry point and its one index.
It lists each requirement with the containers it runs in and whether it is still active, and the architecture document links it as the functional-requirement driver group, per [Drivers](architecture-requirements.md#drivers).

**Required**

1. The index is `docs/functional-requirements/README.md`, with one row per `FR-nnn`, in `FR-nnn` order.
2. Its columns, in this order, are `FR`, `Title`, `Containers`, and `Status`.
3. The `FR` cell is the identifier as link text, linked to its file under `fr/`, such as `[FR-001](fr/FR-001.md)`, and the `Title` cell repeats the title after the colon in the file's heading.
4. The `Containers` cell repeats the names from the requirement's `**Containers:**` field, and the `Status` cell is the requirement's own `Active` or `Dropped`.
5. The index repeats neither the behavior nor the criteria: the file carries them, and the row only finds the requirement.
6. Do not keep a second list of functional requirements in the repository: the index is the list, and each row reaches its requirement.
7. Add the row in the same change as the file, so the index never lists a file that does not exist.

**Recommended**

- Keep the rows in `FR-nnn` order after a requirement drops, so the order survives the status change and the gap shows that a requirement retired.

## Full Example

The index and two requirements in the meeting-booking example, one active and one dropped.

From `docs/functional-requirements/README.md`:

```markdown
# Functional requirements

| FR                     | Title                | Containers            | Status  |
| ---------------------- | -------------------- | --------------------- | ------- |
| [FR-001](fr/FR-001.md) | Pay At Booking       | `frontend`, `backend` | Active  |
| [FR-002](fr/FR-002.md) | Sell Session Bundles | `frontend`, `backend` | Dropped |
```

From `docs/functional-requirements/fr/FR-001.md`, the requirement that a client pays when they book:

```markdown
# FR-001: Pay At Booking

- **Status:** Active
- **Traces to:** [`US-01`](https://github.com/<organization>/<repo>/issues/42), [`DEC-006`](../../decisions.md#dec-006), [`ADR-001`](../../architecture/adr/ADR-001.md), [`ADR-002`](../../architecture/adr/ADR-002.md)
- **Containers:** `frontend`, `backend`

## Behavior

When a client books a paid slot, the product shall hold the slot while the client pays.

The product shall confirm the booking only after the payment provider reports that the payment settled.

When a hold reaches its expiry without a settled payment, the product shall release the slot and shall not create a meeting link.

## Acceptance Criteria

### AC-01

Given a paid meeting type with one free slot, when a client books that slot, then the slot is not offered to another client while the client pays.

### AC-02

Given a held slot whose payment has not settled, when the hold expires, then the slot is free again and the booking is not confirmed.
```

From `docs/functional-requirements/fr/FR-002.md`, dropped with the story it came from:

```markdown
# FR-002: Sell Session Bundles

- **Status:** Dropped
- **Traces to:** [`US-09`](https://github.com/<organization>/<repo>/issues/50)
- **Containers:** `frontend`, `backend`
- **Dropped:** 2026-10-22, because [`BND-03`](../../product-vision.md#bnd-03) excludes selling bundles and no user we met asked to pay for sessions in advance.

## Behavior

When a coach offers a bundle of ten sessions, the product shall sell the bundle as one payment.

## Acceptance Criteria

### AC-01

Given a bundle of ten sessions, when a client pays for it, then the client can book ten sessions without paying again.
```
