# Feature Documentation Requirements

These requirements define the product's feature documentation: where it lives, what an entry carries, and how a feature is cited.
Feature documentation is maintained documentation about the product's capabilities, written for the people who use it and the people who change it.
A feature is a join over records that already have owners, not a record of its own: the need is a story, the behavior is a functional requirement, the decision that shaped it is an architectural decision record, and a name the project uses in its own sense is a glossary term.
The glossary is not a substitute for feature documentation, because a term fixes the meaning of a word while a feature is a capability, per [The Term](glossary-requirements.md#the-term).
Where the page lives in the repository is in [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository), and how a feature is cited is in [Identifier Rules](general-requirements.md#identifier-rules).
[Guide: Quality And Architecture](../guides/quality-and-architecture.md#step-8-document-the-features) is the method.

<h2>Table of contents</h2>

- [Where The Features Live](#where-the-features-live)
- [The Feature Entry](#the-feature-entry)
- [Full Example](#full-example)

## Where The Features Live

**Since: W5**

A **feature** is a capability a user recognises, such as booking and paying in one flow, rescheduling a session, or cancelling one.
It is the name of something the product does, not an artifact about the product, so it gets no identifier and no record of its own.

**Required**

1. The product's features are documented in `docs/features.md`, the one maintained page written for users and for developers.
2. The page is created in Week 5, and it is kept current for the rest of the course.
3. At the end of Week 5 the page carries at least three features, or every feature when the product has fewer.
4. A feature has no identifier family and no `FEAT-nn`, no index of its own, no issue type, and no section in the weekly report.
   Cite one by the path of the page and the entry's `##` heading anchor, such as `docs/features.md#book-and-pay-in-one-flow`, per [Identifier Rules](general-requirements.md#identifier-rules).
5. A capability with no story or no functional requirement is not ready to be documented, and the missing record is written first.

## The Feature Entry

**Since: W5**

An entry gives a user the capability in the user's own words and gives a developer the links to the records that own its facts.
It restates neither.

**Required**

1. Each feature is one `##` section headed with the capability's name in sentence case, so its anchor is `#<capability>`.
   Only the first word, proper nouns, and acronyms are capitalised, as in `## Reschedule a session`.
   The entries form one flat list in the order a reader should meet the product, with no role grouping.
2. The first line under the heading is one sentence in the user's language that says what a user can do, such as `A client can book a slot and pay for it without leaving the booking page.`
   It describes the capability rather than a screen, a table, or a service, and it names no `US-nn`, `FR-nnn`, or `ADR-nnn`.
3. Below the sentence, the entry carries these links, each a `- **Label:** value` bullet, in this order:

   | Field            | What it links                                                                                                                                                            |
   | ---------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
   | `**Stories:**`   | The `US-nn` stories that carry the need, each linked to its issue, per [Where Stories Live](user-stories-requirements.md#where-stories-live)                             |
   | `**Behavior:**`  | The `FR-nnn` files that own the capability's behavior, each linked, per [The Functional Requirement](functional-requirements-requirements.md#the-functional-requirement) |
   | `**Decisions:**` | Optional: the `ADR-nnn` records that shape the capability, each linked, per [The Record](adr-requirements.md#the-record)                                                 |
   | `**Terms:**`     | Optional: the `docs/glossary.md` terms the capability uses in the project's own sense, each linked by its term anchor, per [The Term](glossary-requirements.md#the-term) |

4. An entry restates no behavior an `FR-nnn` owns and no acceptance criterion a story or a requirement carries.
   A reader who wants the behavior follows `**Behavior:**` to the requirement.
5. The page has no `**Users:**` field and no role section: the entry's opening sentence is the user-facing part, and a role grouping would add a taxonomy the course does not require.
6. When the product or a record an entry links changes, update the entry in the same pull request as the change: a new story or requirement adds its link, a superseded record swaps the old link for the new one, and a redefined term updates `**Terms:**`.
   A capability the product gains gets a new entry, and one the product drops is removed from the page.

**Recommended**

- Omit `**Decisions:**` and `**Terms:**` when the feature has nothing to link, rather than writing `None` or `TBD`.

## Full Example

The meeting-booking example, as `docs/features.md` stands at the end of Week 5:

```markdown
# Features

The capabilities this product offers, in the order a user meets them.

## Book and pay in one flow

A client books a slot and pays for it without leaving the booking page.

- **Stories:** [`US-01`](https://github.com/<organization>/<repo>/issues/42)
- **Behavior:** [`FR-001`](functional-requirements/fr/FR-001.md), [`FR-002`](functional-requirements/fr/FR-002.md)
- **Decisions:** [`ADR-001`](architecture/adr/ADR-001.md)
- **Terms:** [`Hold`](glossary.md#hold), [`Booking`](glossary.md#booking)

## Reschedule a session

A client moves a booked session to another time the coach offers.

- **Stories:** [`US-04`](https://github.com/<organization>/<repo>/issues/47)
- **Behavior:** [`FR-004`](functional-requirements/fr/FR-004.md)

## Cancel a session

A client cancels a booked session and is told what happens to the payment.

- **Stories:** [`US-05`](https://github.com/<organization>/<repo>/issues/49)
- **Behavior:** [`FR-005`](functional-requirements/fr/FR-005.md)
- **Decisions:** [`ADR-004`](architecture/adr/ADR-004.md)
```
