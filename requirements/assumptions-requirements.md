# Assumption Requirements

These requirements define an assumption: where it lives, what counts as one, what it supports, and how it is checked and settled.
[Guide: From Comparison To Value Proposition](../guides/comparison-and-synthesis.md#step-6-write-down-what-you-are-assuming) and [Guide: User Stories And Prototyping](../guides/user-stories-and-prototyping.md#step-5-choose-what-to-prototype) are the method.
How the `ASM-nn` identifier is issued and cited is in [General Requirements](general-requirements.md#identifier-rules).

<h2>Table of contents</h2>

- [Where Assumptions Live](#where-assumptions-live)
- [The Assumption](#the-assumption)
- [Supports](#supports)
- [Checking And Settling](#checking-and-settling)
- [Full Example](#full-example)

## Where Assumptions Live

**Since: W1**

**Required**

1. The assumptions are maintained documentation in `docs/assumptions.md`.
2. Each assumption is a section of its own, headed `## ASM-nn: <the assumption>`, per [Identifier Rules](general-requirements.md#identifier-rules).
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

## Supports

**Since: W1**

**Required**

1. Each assumption names, under `**Supports:**`, the `GAP-nn` or `VP-nn` it supports, and links each one to its section.
2. The entry does not list stories.
   A link between two artifacts is recorded once, in the later one.

**Since: W2**

3. A story that rests on an assumption cites its `ASM-nn` in its `Traces to` list, per [The Story](user-stories-requirements.md#the-story).

## Checking And Settling

**Since: W1**

**Required**

1. Each assumption says, under `**How to check:**`, how it could be checked and in which week.
2. Each assumption has a `**Status:**`: `Open`, `Confirmed`, `Refuted`, or `Dropped`.
   An assumption starts `Open`.
3. When a [decision](general-requirements.md#artifact-concepts-and-terminology) or a check settles an assumption, change its status to `Confirmed` or `Refuted` and add an `**Outcome:**` that says what was found and links the evidence that settled it.
4. A refuted assumption keeps its entry.
   Change what rested on it, and record that change where the artifact records its changes.
5. An assumption that nothing rests on any more is `Dropped`, per [Identifier Rules](general-requirements.md#identifier-rules).

**Recommended**

- Check the assumption you are least sure about first, and check it the cheapest way you can.
  A prototype is usually that way, per [Validation](prototypes-requirements.md#validation).

## Full Example

`docs/assumptions.md` after the Week 2 validation meeting:

```markdown
# Assumptions

## ASM-01: Experts will upload materials per meeting type instead of sending them in chat after booking

**Supports:** [GAP-01](research/gap-analysis.md#gap-01-bookings-that-arrive-unpaid-and-unprepared), [VP-01](research/value-proposition.md#vp-01-one-link-that-carries-the-whole-booking).
**How to check:** run the materials prototype with two tutors in Week 2.
**Status:** Open

## ASM-02: Clients will pay at booking rather than on the day

**Supports:** [VP-01](research/value-proposition.md#vp-01-one-link-that-carries-the-whole-booking).
**How to check:** only the customer can settle it, so it is an [open question](../reports/week-01/meeting-report.md#open-questions) carried into the Week 2 validation meeting.
**Status:** Confirmed
**Outcome:** the customer will not accept a hold that confirms without payment, decided in [the validation meeting](../reports/week-02/meeting-report.md#decisions).

## ASM-03: Clients open the booking link on a phone

**Supports:** [VP-01](research/value-proposition.md#vp-01-one-link-that-carries-the-whole-booking).
**How to check:** ask two experts where their last ten bookings came from, in Week 2.
**Status:** Open
```
