# Assumption Requirements

These requirements define an assumption: where it lives, what counts as one, what rests on it, and how it is checked and settled.
[Guide: From Comparison To Value Proposition](../guides/comparison-and-synthesis.md#step-6-write-down-what-you-are-assuming) and [Guide: User Stories And Prototyping](../guides/user-stories-and-prototyping.md#step-5-choose-what-to-prototype) are the method.
How the `ASM-nn` identifier is issued and cited is in [General Requirements](general-requirements.md#identifier-rules).

<h2>Table of contents</h2>

- [Where Assumptions Live](#where-assumptions-live)
- [The Assumption](#the-assumption)
- [What Rests On It](#what-rests-on-it)
- [Checking And Settling](#checking-and-settling)
- [Full Example](#full-example)

## Where Assumptions Live

**Since: W1**

**Required**

1. The assumptions are maintained documentation in `docs/assumptions.md`.
2. Each assumption is a section of its own, headed `## ASM-nn`, per [Identifier Rules](general-requirements.md#identifier-rules).
3. The file stays current for the rest of the course, per [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository).

## The Assumption

**Since: W1**

An assumption is something you believe about the problem, the users, or the constraints that you have not verified.

**Required**

1. Record an assumption only when something rests on it: a gap, a value proposition, or a story that would be wrong if the assumption turned out false.
   A belief that nothing rests on is not worth tracking.
2. State it as a belief that can turn out false, in one sentence.
3. A condition you cannot change is a [constraint](product-vision-requirements.md#constraints), not an assumption.

Assumptions are not questions for the customer.
The customer decides the scope; you are responsible for knowing which of your beliefs the scope rests on, and for finding out which of them are wrong.
The ones you cannot settle yourself belong in the meeting report's open questions, where the customer answers them for you.
See [Meeting Report](customer-meetings-requirements.md#meeting-report).

## What Rests On It

**Since: W1**

**Required**

1. A gap or a value proposition that rests on an assumption cites its `ASM-nn` under `**Rests on:**`, per [Gap Analysis](research-requirements.md#gap-analysis) and [Value Proposition And Differentiation](research-requirements.md#value-proposition-and-differentiation).
2. The entry does not list what rests on it.
   A link between two artifacts is recorded once, in the artifact that rests on the other.

**Since: W2**

3. A story that rests on an assumption cites its `ASM-nn` in its `Rests on` list, per [The Story](user-stories-requirements.md#the-story).

## Checking And Settling

**Since: W1**

**Required**

1. Each assumption has a `**Status:**` as its first field: `Open`, `Confirmed`, `Refuted`, or `Dropped`.
   An assumption starts `Open`.
2. Each assumption says, under `**How to check:**`, how it could be checked and in which week.
3. When a decision or a check settles an assumption, change its status to `Confirmed` or `Refuted` and add an `**Outcome:**` that says what was found and links the evidence that settled it.
   A decision with an entry is cited by its `DEC-nnn`, per [What Cites It](decisions-requirements.md#what-cites-it).
4. A refuted assumption keeps its entry, and `Refuted` is final.
   Change what rested on it, and record that change where the artifact records its changes.
   The entry stays `Refuted` after nothing rests on it any more, because what was found matters more than what still cites it.
5. An `Open` or `Confirmed` assumption that nothing rests on any more is `Dropped`, per [Identifier Rules](general-requirements.md#identifier-rules).
   Search `docs/research/` and the story issues for its `ASM-nn` to find what still rests on it.

**Recommended**

- Check the assumption you are least sure about first, and check it the cheapest way you can.
  A prototype is usually that way, per [Validation](prototypes-requirements.md#validation).

## Full Example

`docs/assumptions.md` after the Week 2 validation meeting:

```markdown
# Assumptions

## ASM-01

Experts will upload materials per meeting type instead of sending them in chat after booking.

- **Status:** Open
- **How to check:** run the materials prototype with two tutors in Week 2.

## ASM-02

Clients will pay at booking rather than on the day.

- **Status:** Confirmed
- **How to check:** only the customer can settle it, so it is an [open question](../reports/week-01/meeting-report.md#open-questions) carried into the Week 2 validation meeting.
- **Outcome:** the customer will not accept a hold that confirms without payment, per [`DEC-006`](decisions.md#dec-006).

## ASM-03

Clients open the booking link on a phone.

- **Status:** Open
- **How to check:** ask two experts where their last ten bookings came from, in Week 2.
```
