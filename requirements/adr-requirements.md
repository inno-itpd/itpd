# Architectural Decision Record Requirements

These requirements define the architectural decision record: where it lives, the fields its file carries, the four body sections, and the requirements it accounts for.
The ADR index that lists the records is in [Architecture Requirements](architecture-requirements.md#architectural-decisions), the customer decisions a record may cite are in [Decision Requirements](decisions-requirements.md#the-decision), and the requirements a record names are in [Functional Requirements](functional-requirements-requirements.md#the-functional-requirement) and [Quality Requirements](quality-requirements-requirements.md#the-quality-requirement).
How the `ADR-nnn` identifier is issued and cited is in [General Requirements](general-requirements.md#identifier-rules).
[Guide: Quality And Architecture](../guides/quality-and-architecture.md) is the method.

<h2>Table of contents</h2>

- [Where Architectural Decision Records Live](#where-architectural-decision-records-live)
- [The Record](#the-record)
- [What It Accounts For](#what-it-accounts-for)
- [Full Example](#full-example)

## Where Architectural Decision Records Live

**Since: W4**

An **architectural decision record** (ADR) is the record of one architectural choice: the problem it answers, the options it turned down, the option it chose, and what that choice costs.
It keeps the reasoning where a reader meets it once, instead of in a commit message or a conversation.

**Required**

1. `ADR-nnn` takes three digits, because the decision set grows with every record and can pass 99, per [Identifier Rules](general-requirements.md#identifier-rules).
2. One record is one file at `docs/architecture/adr/ADR-nnn.md`, headed `# ADR-nnn: Title`, and the numbers run sequentially across the repository rather than per component.
   The `#` heading carries the identifier and the title, which is the exception rule 5 of [Identifier Rules](general-requirements.md#identifier-rules) gives a file that is its own record.
3. `docs/architecture/adr/TEMPLATE.md` is the shape to copy, so a new record starts from the template and the template itself is left unfilled.
4. The record is maintained documentation, created in `docs/` in its final place and kept current, per [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository).
5. Every record is listed in the architecture document's ADR index, and its row is written with it, per [Architectural Decisions](architecture-requirements.md#architectural-decisions).
6. Write a record for a choice that is architectural, technological, or about functional behavior, because a reader would otherwise have to reconstruct it from the code.
7. A choice the team made is a record rather than a `DEC-nnn`, per [The Decision](decisions-requirements.md#the-decision), and a mandate the customer gave stays a customer-given [constraint](product-vision-requirements.md#constraints) whose `**Decision:**` cites the `DEC-nnn` that records it.

**Recommended**

- Write the record when the choice is made, so `## Context` describes a problem rather than a justification written after the fact.

## The Record

**Since: W4**

The record follows the [MADR 4](https://adr.github.io/madr/) shape in the `itpd` form: a heading, a bulleted field list, and four body sections.

**Required**

1. The heading is `# ADR-nnn: Title`, and the title is short enough to recognise the record in the ADR index.
2. The fields follow the heading as a bulleted list, in this order, per [Identifier Rules](general-requirements.md#identifier-rules) rule 9:

   | Field                | What it says                                                                                                                                                                                                       |
   | -------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
   | `**Status:**`        | One of `Proposed`, `Accepted`, `Superseded`, `Deprecated`, or `Dropped`, in the meanings below                                                                                                                     |
   | `**Superseded by:**` | Only on a superseded record: the `ADR-nnn` that replaces it, linked                                                                                                                                                |
   | `**Dropped:**`       | Only on a dropped record: the date and the reason, in the form [Identifier Rules](general-requirements.md#identifier-rules) rule 11 gives                                                                          |
   | `**Created:**`       | The date the record was created                                                                                                                                                                                    |
   | `**Updated:**`       | The date of the last edit that left the decision as it was, because a changed decision is a new record that supersedes this one                                                                                    |
   | `**Containers:**`    | One or more container names from the architecture document's [container view](architecture-requirements.md#container-view), the C4 applications and data stores such as `frontend`, `static content`, or `backend` |
   | `**Addresses:**`     | The requirements the record accounts for: one or more `FR-nnn` and `QR-nn`, each linked, with no relation word, per [What It Accounts For](#what-it-accounts-for)                                                  |
   | `**Decision:**`      | The `DEC-nnn` whose choice the record documents, one or more, each linked, only when one exists, per [The Decision](decisions-requirements.md#the-decision)                                                        |

3. The status values mean:

   | Status       | Meaning                                                                          |
   | ------------ | -------------------------------------------------------------------------------- |
   | `Proposed`   | The record is written and the team has not agreed it yet                         |
   | `Accepted`   | The record is the choice in force                                                |
   | `Superseded` | A later record replaces it, and `**Superseded by:**` names that record           |
   | `Deprecated` | The choice still stands but is not to be followed, and no record replaces it yet |
   | `Dropped`    | The team abandoned it, and `**Dropped:**` gives the date and the reason          |

4. Which statuses are active, and where the record's row sits in the index, follow the index's own rule, per [Architectural Decisions](architecture-requirements.md#architectural-decisions).
5. A superseded record keeps its fields and its body, and the decision itself is not edited, because a changed decision is a new record that supersedes this one.
6. The body carries these sections, in this order:

   - `## Context`: the problem and the forces around it, such as the requirements, the constraints, and the technical facts that make the choice a decision.
   - `## Considered Options`: each option considered, and for each one turned down, why it lost.
   - `## Decision Outcome`: the option chosen, and why it beats the others.
   - `## Consequences`: what the choice gives and costs, and each quality attribute it accepts with the `QR-nn` that covers it.

7. An option is called an **option**, because "alternative" is reserved for the `ALT-nn` family, per [Alternatives](research-requirements.md#alternatives).
8. `## Consequences` names each quality attribute the decision accepts and the `QR-nn` that covers it, linked.
   A record that accepts a quality attribute with no `QR-nn` is not ready, so the team either writes that requirement or changes the decision.
9. The record carries the architectural, technology, or functional-behavior reasoning, and the `DEC-nnn` it names carries only what the customer decided.
   The stack is a record: it states the stack and justifies it, and it may cite the `DEC-nnn` that records the customer's mandate.
10. The record that decides the stack and the container split names every container the [container view](architecture-requirements.md#container-view) lists, all of them, and the view's opening sentence links it.
    A container added later is decided by a record that names it, and the table, the diagram, and that record change in one change.

**Recommended**

- Start `## Decision Outcome` with the chosen option's name, so the ADR index's `Decision` cell can be read from it.

**Example**

The field list of a record that a later decision replaced, with its body left out:

```markdown
- **Status:** Superseded
- **Superseded by:** [ADR-001](ADR-001.md)
- **Created:** 2026-10-08
- **Updated:** 2026-10-15
- **Containers:** `frontend`
- **Addresses:** [`FR-001`](../../functional-requirements/fr/FR-001.md)
```

## What It Accounts For

**Since: W4**

An **architecturally significant requirement** (ASR) is a requirement that affects the architecture and the quality of the software system.
A record accounts for one by naming it in `**Addresses:**`, so the `**Addresses:**` lists of a repository's records are the set of architecturally significant requirements.

**Required**

1. `**Addresses:**` lists the requirements the record accounts for: one or more `FR-nnn` and `QR-nn`, each linked, and at least one.
2. The list names no relation word such as `satisfies`, `enables`, or `constrains`: a record either accounts for a requirement or it does not, and the reasoning belongs in `## Context` and `## Consequences`.
3. The list is the set of requirements, not the artifacts the decision changed: a requirement the record drops is still listed, because the record is answerable for the removal, and that requirement records the `ADR-nnn` in its own `**Dropped:**`, per [The Functional Requirement](functional-requirements-requirements.md#the-functional-requirement).
   A requirement the record only words differently is not listed.
4. The requirement's own side is its file's rule, not this one: [The Functional Requirement](functional-requirements-requirements.md#the-functional-requirement) says that a functional requirement names the record that constrains it in `**Traces to:**`, and [The Quality Requirement](quality-requirements-requirements.md#the-quality-requirement) says that a quality requirement names no record at all.
5. The chain from a task through the requirements and the records to the threshold of success, and the search that finds the records for one requirement, are in [Traceability Into Later Weeks](general-requirements.md#traceability-into-later-weeks).

**Recommended**

- Write `**Addresses:**` before the body, because naming the requirements first keeps `## Context` about the problem they pose and `## Consequences` about the quality they demand.

## Full Example

`docs/architecture/adr/ADR-001.md` in the meeting-booking example, after Week 4.

```markdown
# ADR-001: Pay Through The Payment Provider's Hosted Checkout

- **Status:** Accepted
- **Created:** 2026-10-08
- **Updated:** 2026-10-08
- **Containers:** `frontend`, `backend`
- **Addresses:** [`FR-001`](../../functional-requirements/fr/FR-001.md), [`QR-01`](../../quality-requirements/qr/QR-01.md)
- **Decision:** [`DEC-006`](../../decisions.md#dec-006)

## Context

A client books a slot and pays for it, and the product must never store a card number.
Nobody on the team has handled card data, and a booking confirmed before its payment settles is the unpaid booking [`GAP-01`](../../research/gap-analysis.md#gap-01) describes.
The customer settled that a booking is confirmed only after the client has paid, per [`DEC-006`](../../decisions.md#dec-006).

## Considered Options

- **The provider's hosted checkout page.**
  The provider takes the card details on its own page, and the product receives a redirect and a payment notification.
- **An embedded payment form.**
  The form looks like the product, but the card details pass through the frontend, which widens what the team must secure and audit.
- **A manual bank transfer.**
  The client pays outside the product, so nothing in the product can confirm that the money arrived.

## Decision Outcome

Chosen option: the provider's hosted checkout page, because it keeps the card details out of the product and gives the backend a settled payment to confirm the booking on.
The record documents the customer's [`DEC-006`](../../decisions.md#dec-006): the booking is confirmed when the provider reports the payment, not when the client submits the form.

## Consequences

- **Performance Efficiency:** the client pays on a page the provider serves, so the booking page carries no payment assets and the two-second bar of [`QR-01`](../../quality-requirements/qr/QR-01.md) stays reachable.
- **Cost:** the client leaves the product for the provider's page, so the booking and its held slot must survive the redirect.
- **Cost:** the team controls none of the checkout page's wording or layout, and the provider charges a fee on every payment.
```
