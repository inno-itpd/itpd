# Decision Requirements

These requirements define a decision: which decisions get an entry, where it lives, what its entry says, what cites it, and how it is reversed.
[Guide: Validating With The Customer](../guides/validating-with-the-customer.md#step-6-trace-what-changed) is the method for recording what a meeting decided.
How the `DEC-nnn` identifier is issued and cited is in [General Requirements](general-requirements.md#identifier-rules).

<h2>Table of contents</h2>

- [Where Decisions Live](#where-decisions-live)
- [The Decision](#the-decision)
- [What Cites It](#what-cites-it)
- [Reversing A Decision](#reversing-a-decision)
- [Full Example](#full-example)

## Where Decisions Live

**Since: W1**

**Required**

1. The decisions are maintained documentation in `docs/decisions.md`.
2. Each decision is a section of its own, headed `## DEC-nnn`, per [Identifier Rules](general-requirements.md#identifier-rules), and the sections are in identifier order.
3. A decision that changes is a new decision, per [Reversing A Decision](#reversing-a-decision), so the decision an entry states is never reworded once it is on `main`.
4. The file stays current for the rest of the course, per [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository): every new decision that needs an entry, per [The Decision](#the-decision), gets one, and every reversal updates a status.
5. A meeting report lists the decisions its meeting made, per [Meeting Report](customer-meetings-requirements.md#meeting-report).
   The entry is the decision's only full record.

## The Decision

**Since: W1**

A [decision](general-requirements.md#artifact-concepts-and-terminology) is a conclusion that changes or explicitly settles what you build.

**Required**

1. A decision gets an entry when any of these holds:

   - The customer made it, in a meeting or outside one.
   - It was made in a meeting with the customer, including one the team made and the customer did not contest.
   - It changes more than one artifact, an artifact that does not exist yet, or no artifact at all.
   - It changes the product vision's goal, a constraint, or a boundary item, or it is a technology choice.
     A technology choice the team made is a team decision, not a constraint, per [Constraints](product-vision-requirements.md#constraints).
   - It reverses a decision that has an entry.

2. Any other decision is a team decision that changes one artifact that already exists, and it needs no entry.
   It is recorded with its reason where that artifact records its changes, per [What Cites It](#what-cites-it).
   A team may still give it an entry, and the artifact then cites the entry's `DEC-nnn`.
3. The first line under the heading states what was decided, in one sentence, not what was discussed.
4. One entry records one decision.
   A verdict that accepts several stories at once is one decision, per [Showing Working Software](customer-meetings-requirements.md#showing-working-software).
5. Each entry has these fields, in this order:

   | Field          | What it says                                                                                                                                                                                                               |
   | -------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
   | `**Status:**`  | `Active`, or `Reversed by DEC-nnn` with the reversing entry linked, per [Reversing A Decision](#reversing-a-decision)                                                                                                      |
   | `**Date:**`    | The date the decision was made                                                                                                                                                                                             |
   | `**Made by:**` | `Customer`; `Team`; or `Team, not contested` when the team decided in a meeting and the customer did not object                                                                                                            |
   | `**Source:**`  | Where it was made: a meeting decision links its meeting report, and any other decision says where in words, such as "team discussion" or "customer by email", and links the place only when it is public, such as an issue |
   | `**Why:**`     | The reason; a decision that confirmed the current direction says so, and says what it confirmed                                                                                                                            |

6. A decision made in a private channel is recorded in the team's own words, without quoting or linking the channel, per [Sensitive Information Reference](visibility-requirements.md#sensitive-information-reference).

**Example**

```markdown
## DEC-001

Build paid bookings, not the calendar view.

- **Status:** Active
- **Date:** 2026-09-29
- **Made by:** Customer
- **Source:** [the kickoff meeting](../reports/week-01/meeting-report.md)
- **Why:** every alternative already has a calendar view, and the paid booking flow is the part they leave half-done.
```

The whole file is in [Full Example](#full-example).

**Recommended**

- Write the entries in the same pull request as the meeting report, while the meeting is fresh.
- Write the reason the customer gave, not "the customer said so".
  A `**Why:**` nobody could argue with explains nothing.
- Keep the discussion in the meeting report, and only the reason in the entry.

## What Cites It

**Since: W1**

**Required**

1. The entry does not list what the decision changed.
   A link between two artifacts is recorded once, in the artifact that rests on the other, as for an [assumption](assumptions-requirements.md#what-rests-on-it).
2. Each artifact the decision changed cites its `DEC-nnn`, linked, where that artifact records its changes:

   - A dropped item, such as a `GAP-nn` or a `VP-nn`, in the reason it was dropped, per [Identifier Rules](general-requirements.md#identifier-rules).
   - A `GAP-nn` or `VP-nn` the decision changed without dropping it, under its `**Changed:**`, per [Gap Analysis](research-requirements.md#gap-analysis).
   - A settled assumption, in its `**Outcome:**`, per [Checking And Settling](assumptions-requirements.md#checking-and-settling).

3. A decision that changes an artifact which does not exist yet is cited when that artifact is written.
4. To find what a decision changed, search the repository and the issues for its `DEC-nnn`.
   A decision that nothing cites, and whose `**Why:**` does not say it confirmed the current direction, has not changed anything yet.
5. A decision without an entry is recorded by its reason, which stands where the `DEC-nnn` would: in a dropped item's reason, in its `**Changed:**` bullet, or in a story's change comment.

**Example**

```markdown
- **Changed:**
  - Narrowed to experts who take bookings online, because the in-person studios we checked already have a front desk that handles them.
```

**Since: W2**

6. The Week 2 artifacts cite a decision in the same way:

   - A story, in its `Traces to` list when the decision is its origin, per [The Story](user-stories-requirements.md#the-story), and in the comment that records each change, per [Where Stories Live](user-stories-requirements.md#where-stories-live).
   - A `CON-nn` or a `BND-nn` in the product vision, in the field that records the decision, per [Constraints](product-vision-requirements.md#constraints) and [Boundary](product-vision-requirements.md#boundary).
   - The [minimum usable product candidate](user-stories-requirements.md#minimum-usable-product-candidate), which cites the customer's verdict on it.

## Reversing A Decision

**Since: W1**

**Required**

1. A decision is reversed by a new decision, never by editing the old one.
   The new entry's `**Why:**` names the `DEC-nnn` it reverses, linked, and says why.
2. The reversed entry keeps its heading, its statement, and its fields, and its `**Status:**` becomes `Reversed by DEC-nnn`, linked to the new entry.
   This is how a decision is dropped, per [Identifier Rules](general-requirements.md#identifier-rules).
3. An artifact that cited the reversed decision and changes because of the new one cites the new `DEC-nnn`, and records the change as that artifact records its changes.

**Example**

```markdown
## DEC-002

Drop multi-expert scheduling.

- **Status:** Reversed by [DEC-011](#dec-011)
- **Date:** 2026-09-29
- **Made by:** Customer
- **Source:** [the kickoff meeting](../reports/week-01/meeting-report.md)
- **Why:** the experts work alone, so nobody needs two of them booked at once.

## DEC-011

Schedule two experts for a group session.

- **Status:** Active
- **Date:** 2026-10-27
- **Made by:** Customer
- **Source:** [the Week 5 validation meeting](../reports/week-05/meeting-report.md)
- **Why:** reverses [DEC-002](#dec-002), because the customer signed a studio whose group sessions always need two coaches.
```

## Full Example

`docs/decisions.md` after the Week 2 validation meeting:

```markdown
# Decisions

## DEC-001

Build paid bookings, not the calendar view.

- **Status:** Active
- **Date:** 2026-09-29
- **Made by:** Customer
- **Source:** [the kickoff meeting](../reports/week-01/meeting-report.md)
- **Why:** every alternative already has a calendar view, and the paid booking flow is the part they leave half-done.

## DEC-002

Drop multi-expert scheduling.

- **Status:** Active
- **Date:** 2026-09-29
- **Made by:** Customer
- **Source:** [the kickoff meeting](../reports/week-01/meeting-report.md)
- **Why:** the experts work alone, so nobody needs two of them booked at once.

## DEC-003

Keep the web link for delivery.

- **Status:** Active
- **Date:** 2026-09-29
- **Made by:** Team, not contested
- **Source:** [the kickoff meeting](../reports/week-01/meeting-report.md)
- **Why:** confirms the current direction: `VP-01` rests on one link that carries the whole booking, and the customer raised no objection to it.

## DEC-004

Deploy on a single small VPS.

- **Status:** Active
- **Date:** 2026-09-29
- **Made by:** Customer
- **Source:** [the kickoff meeting](../reports/week-01/meeting-report.md)
- **Why:** the customer will run the product after the course and pays for one small server, not for a hosted platform.

## DEC-005

Take payment through the payment provider's hosted checkout page.

- **Status:** Active
- **Date:** 2026-10-02
- **Made by:** Team
- **Source:** team discussion in [issue #31](https://github.com/<organization>/<repo>/issues/31)
- **Why:** nobody on the team has handled card data, and a hosted page keeps it out of the product.

## DEC-006

Confirm a booking only after the client has paid.

- **Status:** Active
- **Date:** 2026-10-06
- **Made by:** Customer
- **Source:** [the validation meeting](../reports/week-02/meeting-report.md)
- **Why:** a hold that confirms without payment is the unpaid booking `GAP-01` describes, and the customer will not accept it.

## DEC-007

Accept the minimum usable product candidate as proposed.

- **Status:** Active
- **Date:** 2026-10-06
- **Made by:** Customer
- **Source:** [the validation meeting](../reports/week-02/meeting-report.md)
- **Why:** confirms the current direction: the candidate's stories take a client from the link to a paid, confirmed booking, and the customer named nothing the core task is missing.
```
