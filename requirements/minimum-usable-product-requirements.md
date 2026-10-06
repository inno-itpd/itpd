# Minimum Usable Product Requirements

These requirements define the minimum usable product candidate: where it is recorded, what it must contain, and the customer's verdict on it.
The stories it is made of, and their priorities, are in [User Story Requirements](user-stories-requirements.md).
[Step 4: Prioritize, Then Pick The First Thing To Build](../guides/user-stories-and-prototyping.md#step-4-prioritize-then-pick-the-first-thing-to-build) is the method.

<h2>Table of contents</h2>

- [Where The Candidate Lives](#where-the-candidate-lives)
- [The Candidate](#the-candidate)
- [Full Example](#full-example)

## Where The Candidate Lives

**Since: W2**

**Required**

1. Record the candidate in the [weekly public report](weekly-report-requirements.md#weekly-public-report), under the heading the assignment names.
2. The record gives the core task, then the `US-nn` of each story with its issue linked, and the `DEC-nnn` of the customer's verdict on it once they have given it.

## The Candidate

**Since: W2**

A **minimum usable product (MUP)** is the smallest product in which a user can complete the core tasks without getting frustrated.
The candidate is your proposal for it, made before any product code exists, so the customer can argue with it while it is still cheap to change.

**Required**

1. Name the **core task** the candidate serves: one thing a user does from start to finish, written in one line.
2. The candidate is a non-empty subset of your `Must Have` stories that together let a user complete that core task end to end.
   Stories that cover only part of the task are not a candidate.
3. Every story in the candidate is needed: without any one of them, the core task no longer completes.
4. The candidate is a proposal, not a commitment.
   The customer's verdict on it is a [decision](decisions-requirements.md#the-decision), and the candidate cites its `DEC-nnn`.
5. A story the verdict drops from the candidate keeps its priority unless the customer also changed it.
   A priority change is recorded per [MoSCoW Prioritization](user-stories-requirements.md#moscow-prioritization).

**Recommended**

- Two or three stories that a user can finish in one sitting.
  A long candidate is a postponement, not a priority.

## Full Example

The `## Minimum Usable Product Candidate` section of `reports/week-02/README.md`, after the customer's verdict:

```markdown
## Minimum Usable Product Candidate

Core task: a client goes from the coach's booking link to a paid, confirmed booking.

- [`US-10`: Choose a free slot](https://github.com/<organization>/<repo>/issues/51)
- [`US-01`: Pay at booking](https://github.com/<organization>/<repo>/issues/42)

Customer's verdict: [`DEC-007`](../../docs/decisions.md#dec-007).
```
