# Architecture Requirements

These requirements define the architecture document: where it lives, the drivers it links, the decision index that maps each record to the requirements it answers, and what makes a requirement architecturally significant.
The record an index row points at is specified in [Architectural Decision Record Requirements](adr-requirements.md), the requirements the index names are in [Functional Requirements](functional-requirements-requirements.md) and [Quality Requirements](quality-requirements-requirements.md), and the scope the document serves stays in [Product Vision Requirements](product-vision-requirements.md).
How the `ADR-nnn`, `FR-nnn`, and `QR-nn` identifiers are issued and cited is in [General Requirements](general-requirements.md#identifier-rules).
[Guide: Quality And Architecture](../guides/quality-and-architecture.md) is the method.

<h2>Table of contents</h2>

- [Where The Architecture Lives](#where-the-architecture-lives)
- [Drivers](#drivers)
- [Architecturally Significant Requirements](#architecturally-significant-requirements)
- [Architectural Decisions](#architectural-decisions)
- [Full Example](#full-example)

## Where The Architecture Lives

**Since: W4**

The architecture document records what the software system is made of, and it points at the requirements that shaped that structure instead of restating them.

**Required**

1. `docs/architecture/README.md` is the only architecture document, and it is created in Week 4 in its final place.
   It is maintained documentation and stays current, per [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository).
2. It opens with one sentence that links `docs/product-vision.md` as the scope it serves, and then carries these parts, in this order:

   - `## Drivers`, per [Drivers](#drivers): the four groups of requirements that drive the architecture.
   - `## Architectural Decisions`, per [Architectural Decisions](#architectural-decisions): the decision index.

3. It carries no trace section, because the chain from a story to the threshold of success is the links between the artifacts and no document restates it, per [Traceability Into Later Weeks](general-requirements.md#traceability-into-later-weeks).
4. `## Views` is Assignment 5's, and it is added between `## Drivers` and `## Architectural Decisions`, so the final order is drivers, views, and decisions.
   It carries `### Diagrams And Legends` at its end; [the Assignment 5 plan](../course/plans/a5-plan.md) says what the views, their paths, and their sources are.
5. The goal, stakeholders, boundary, constraints, and system context stay in `docs/product-vision.md`, and the context diagram stays embedded there.
   Week 4 moves no section, so a link to `docs/product-vision.md#constraints`, `#boundary`, or `#system-context` keeps resolving.
6. The vision links `docs/architecture/README.md` as a whole, per [Where The Vision Lives](product-vision-requirements.md#where-the-vision-lives), so the two documents point at each other and neither copies the other.

**Recommended**

- Keep the opening sentence to the scope alone, so a reader who stops after it knows what the document is for and meets the drivers immediately after.

## Drivers

**Since: W4**

An **architectural driver** is a requirement or a goal that shapes the architecture: a business goal the product serves, a constraint it lives inside, behavior it must deliver, or quality it must meet.
`## Drivers` says where each group of them lives and links it, so the section names no item of its own.

**Required**

1. `## Drivers` carries four entries, in this order, as a bulleted list rather than a table, and each entry links the holder of its group:

   - The **business goals** link `docs/threshold-of-success.md` in full, because a goal is its own `## TOS-nn` section and the threshold owns the statement, per [The Threshold Of Success](planning-requirements.md#the-threshold-of-success).
   - The **constraints** link `docs/product-vision.md#constraints`, whose `### CON-nn` sections are the constraints, per [Constraints](product-vision-requirements.md#constraints).
   - The **functional requirements** link `docs/functional-requirements/README.md`, the group's index, per [The Functional Requirements Index](functional-requirements-requirements.md#the-functional-requirements-index).
   - The **quality requirements** link `docs/quality-requirements/README.md`, which is the group's index and the priority matrix, per [The Quality Requirements Index](quality-requirements-requirements.md#the-quality-requirements-index).

2. The section names no `TOS-nn`, `CON-nn`, `FR-nnn`, or `QR-nn`, and it restates no goal, constraint, or requirement: an entry says which group it is and links the group.
3. The section is not a table, because the decision index's `Addresses` column is the one table that maps a requirement to the record that answers it, per [Architectural Decisions](#architectural-decisions).
4. The boundary and the system context are scope rather than drivers, so the section links neither of them, and the opening sentence links the vision for both.
5. A requirement that no record answers yet is still reached through the index its group owns, so nothing dangles from the drivers section.

**Recommended**

- Write one line per entry, so the section stays a map of where the drivers live rather than an argument about them.

**Example**

The four entries in `docs/architecture/README.md` of the meeting-booking example:

```markdown
- **Business goals:** [the threshold of success](../threshold-of-success.md) holds the goals the architecture serves.
- **Constraints:** the product vision's [constraints section](../product-vision.md#constraints) holds the conditions the architecture lives inside.
- **Functional requirements:** the [functional requirements index](../functional-requirements/README.md) holds the behavior the architecture must deliver.
- **Quality requirements:** the [quality requirements index](../quality-requirements/README.md) holds the quality the architecture must meet, and it is also the priority matrix.
```

## Architecturally Significant Requirements

**Since: W4**

An architecturally significant requirement is one the architecture answers, and the course marks it with a record rather than with a field on the requirement.
This section says how the architecture document reaches those requirements; the definition and the link model are in [What It Accounts For](adr-requirements.md#what-it-accounts-for).

**Required**

1. The architecture document carries no list of architecturally significant requirements: the decision index's `Addresses` column is where each of them appears, linked, record by record, per [Architectural Decisions](#architectural-decisions).
2. No requirement carries an `ASR` field or marker of its own: [The Functional Requirement](functional-requirements-requirements.md#the-functional-requirement) and [The Quality Requirement](quality-requirements-requirements.md#the-quality-requirement) say what each family carries, and neither includes one.
3. A requirement that no record names yet is still reached through the index its group owns, which the drivers section links, per [Drivers](#drivers).
4. To find the records that account for one requirement, search the records' `**Addresses:**` fields, per [Traceability Into Later Weeks](general-requirements.md#traceability-into-later-weeks).

**Recommended**

- Read the index against the quality requirements index, so a quality attribute the team is judged on has a record behind it.

## Architectural Decisions

**Since: W4**

The decision index is one table under `## Architectural Decisions` in `docs/architecture/README.md`.
It lists the records, and it is the one place where a requirement meets the record that answers it.

**Required**

1. The index is one table, with these columns in this order:

   | Column      | What it holds                                                                                           |
   | ----------- | ------------------------------------------------------------------------------------------------------- |
   | `ADR`       | The `ADR-nnn` as link text, linked to its file under `adr/`                                             |
   | `Status`    | The record's status, matching its `**Status:**` field, per [The Record](adr-requirements.md#the-record) |
   | `Addresses` | Each `FR-nnn` and `QR-nn` the record accounts for, each linked                                          |
   | `Decision`  | The record's decision in one line, short enough to scan                                                 |

2. The `Status` column repeats the record's own `**Status:**` field, per [The Record](adr-requirements.md#the-record).
   `Proposed` and `Accepted` are active, and `Superseded`, `Deprecated`, and `Dropped` are inactive.
3. The active rows come first, in `ADR-nnn` order, and the inactive rows follow, in `ADR-nnn` order.
4. The `Addresses` cell names each `FR-nnn` and `QR-nn` the record accounts for, each linked, and a record that accounts for several requirements lists them all in that one cell.
   It is the one map from a requirement to the record that answers it, so no separate driver table is added.
5. A record whose status, `Addresses`, or decision changes is re-indexed in the same change, and a record written later gets its row in the same change.

**Recommended**

- Keep the `Decision` cell to the chosen option's name, so a reader can scan the index and open only the records that matter to them.

## Full Example

`docs/architecture/README.md` in the meeting-booking example, after Week 4: the opening sentence that links the scope, the four drivers, and the decision index, with three active records above one inactive one.

```markdown
# Architecture

This document records the architecture of the meeting-booking product, and [the product vision](../product-vision.md) is the scope it serves.

## Drivers

- **Business goals:** [the threshold of success](../threshold-of-success.md) holds the goals the architecture serves.
- **Constraints:** the product vision's [constraints section](../product-vision.md#constraints) holds the conditions the architecture lives inside.
- **Functional requirements:** the [functional requirements index](../functional-requirements/README.md) holds the behavior the architecture must deliver.
- **Quality requirements:** the [quality requirements index](../quality-requirements/README.md) holds the quality the architecture must meet, and it is also the priority matrix.

## Architectural Decisions

| ADR                       | Status     | Addresses                                                                                       | Decision                                             |
| ------------------------- | ---------- | ----------------------------------------------------------------------------------------------- | ---------------------------------------------------- |
| [ADR-001](adr/ADR-001.md) | Accepted   | [FR-001](../functional-requirements/fr/FR-001.md), [QR-01](../quality-requirements/qr/QR-01.md) | Pay through the payment provider's hosted checkout   |
| [ADR-002](adr/ADR-002.md) | Accepted   | [FR-001](../functional-requirements/fr/FR-001.md)                                               | Hold a slot in the backend until its payment settles |
| [ADR-003](adr/ADR-003.md) | Accepted   | [QR-01](../quality-requirements/qr/QR-01.md)                                                    | Return a month of free slots in one request          |
| [ADR-004](adr/ADR-004.md) | Superseded | [FR-001](../functional-requirements/fr/FR-001.md)                                               | Call the payment provider's API from the frontend    |
```
