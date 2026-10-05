# Prototype Requirements

These requirements define what a prototype is for, what it must change, and where it is recorded.
[Guide: User Stories And Prototyping](../guides/user-stories-and-prototyping.md) and [Guide: Validating With The Customer](../guides/validating-with-the-customer.md) are the method.

<h2>Table of contents</h2>

- [Where Prototypes Live](#where-prototypes-live)
- [Validation](#validation)

## Where Prototypes Live

**Since: W2**

**Required**

1. A week that tests an idea records it at `reports/week-NN/prototypes.md`.
   It is week evidence, not maintained documentation, so it is not in `docs/`.
2. The file carries, for each prototype:

   - What it is and how to view it: a screenshot in `reports/week-NN/images/`, a view-only external link, or a branch name.
   - Which `US-nn` or `GAP-nn` it tested, any `AC-nn` it exercised, and the question it was built to answer.
     When the risky part is an [assumption](research-requirements.md#assumptions), cite the `US-nn` or `GAP-nn` that rests on it and quote the assumption with a link to its entry; assumptions have no identifier of their own.
   - What the customer said about it.
   - What changed as a result, and where that change is recorded.

3. A prototype may be a paper sketch, a static image, a clickable design, or a code spike.
   Any format is allowed, as long as somebody else can look at it.
4. **Disposable prototype code does not go on `main`.**
   If you vibecode a prototype, do it on a branch, show it from there, and do not merge it.
   Week 2 has no product code, so a Week 2 spike is never merged; from Week 3, a spike is merged only once it has become product code for a story.
   The evidence is the screenshot and `prototypes.md`, not the branch, so the branch is genuinely disposable.
   The one exception is a branch you use as assignment evidence: that branch may not be deleted, per [Branch Protection And Pull Requests](repository-requirements.md#branch-protection-and-pull-requests).
5. Do not commit a prototype to `docs/`.
   It will never be the product, and a directory of discarded prototypes in the maintained documentation is a lie about what the team is building.

**Recommended**

- Say which question the prototype answers, in one line, before you show it.

## Validation

**Since: W2**

A prototype is an instrument for finding out what is wrong.
It is not a showcase, and it is not the product.

These rules apply to every meeting with the customer where you show a prototype, in any week from Week 2.

**Required**

1. Use the four terms precisely, because they answer different questions:

   - **Proof of concept (PoC)**: can this work at all technically?
   - **Prototype**: how will this look, and does this user flow make sense?
   - **Minimum usable product (MUP)**: can a user complete the core tasks without getting frustrated?
     See [Minimum Usable Product Candidate](user-stories-requirements.md#minimum-usable-product-candidate).
   - **Minimum viable product (MVP)**: will people use it?

   A code spike can answer the PoC question or a prototype question; either way it is recorded as a prototype and thrown away.

2. Test the story or assumption you are least sure about, not the parts you are already sure about.
   Name the risky part before you build anything, so you cannot quietly choose the easy thing.
3. Show the prototype to the customer, and record what they said.
   A prototype nobody reacted to has not been tested.
4. **Something must change as a result.**
   Record the change in all four places:

   - The prototype record, per [Where Prototypes Live](#where-prototypes-live).
   - A row in the meeting report's `## Decisions`, per [Meeting Report](customer-meetings-requirements.md#meeting-report).
   - The changed artifact itself: a story issue, per [Where Stories Live](user-stories-requirements.md#where-stories-live), or a constraint, assumption, or document updated in place.
   - The [weekly public report](weekly-report-requirements.md#weekly-public-report), which links the meeting report's `## Decisions`.

5. A prototype is disposable, and none of it is product code.
   The forms it may take are in [Where Prototypes Live](#where-prototypes-live).
6. The prototype does not need to be beautiful, and it does not need to work.
   It needs to be good enough for the customer to react to the thing you are unsure about.

**Do not treat agreement as a result.**
A customer who says "that sounds great" about your own idea has told you almost nothing, and `## Disagreements` in the meeting report will be empty when it should not be.
A prototype that validated everything proved nothing, because you chose the parts you were already sure about.

**Recommended**

- Prototype the riskiest assumption first, and only as long as it takes to get a reaction.
- Test with whoever actually does the job, where that is possible; in this course, the customer is the one who reacts to the prototype.
- Keep the loop short: build something, show it, write down what you learned, change the story.
