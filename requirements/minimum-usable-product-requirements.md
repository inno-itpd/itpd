# Minimum Usable Product Requirements

These requirements define the minimum usable product candidate: where it is recorded, what it must contain, how it is built, delivered, and released, and the customer's verdict on it.
The stories it is made of, and their priorities, are in [User Story Requirements](user-stories-requirements.md).
[Step 4: Prioritize, Then Pick The First Thing To Build](../guides/user-stories-and-prototyping.md#step-4-prioritize-then-pick-the-first-thing-to-build) is the method.

<h2>Table of contents</h2>

- [Where The Candidate Lives](#where-the-candidate-lives)
- [The Candidate](#the-candidate)
- [Building, Delivering, And Releasing The Candidate](#building-delivering-and-releasing-the-candidate)
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

## Building, Delivering, And Releasing The Candidate

**Since: W3**

Week 3 is where the candidate stops being a proposal: its stories are built into one working slice on `main`, shown to the customer against their acceptance criteria, and released as the sprint's release, `REL-03`.

**Required**

1. The week's build scope is exactly the candidate's stories: a `Must Have` story outside the candidate is not owed in Week 3.
2. Build the candidate's stories into one working slice merged into `main`, through task issues and one pull request per task, per [Closing A Task](task-issues-requirements.md#closing-a-task).
   Merge each pull request before the customer meeting: nothing is left on a branch, and the slice is not partially merged.
3. The slice is **working** when a clean checkout completes the core task end to end by following `docs/setup.md`, which the root README links, per [Setup And Run Instructions](repository-requirements.md#setup-and-run-instructions).
4. Show each finished story against its acceptance criteria, one `AC-nn` at a time, at the weekly meeting, per [Showing Working Software](customer-meetings-requirements.md#showing-working-software): each verdict is a `DEC-nnn` naming the `US-nn`, and it either closes the story or leaves it open with its rework tasks, per [Where Stories Live](user-stories-requirements.md#where-stories-live) and [Closing A Task](task-issues-requirements.md#closing-a-task).
5. A candidate story the team will not finish by the deadline moves out of the candidate only with the customer's decision, at the Week 3 meeting or in the same week's written exchange with the customer, recorded as a `DEC-nnn` naming the story.
   When the remaining stories no longer complete the core task end to end, the same decision re-scopes the core task by editing the first sentence of the active milestone's description, per [Milestones](planning-requirements.md#milestones).
   The story issue records what moved and why, per [Where Stories Live](user-stories-requirements.md#where-stories-live), and the Week 3 report names what shipped and what moved out.
6. The week's release is `REL-03`, the sprint's final release: cut on the product state after the customer meeting and any same-week rework, per [Releases](planning-requirements.md#releases).
   The tag is pushed first, then the changelog's released section, the plan's `REL-03` line, and the week's report merge after it, so every link resolves.
7. Deployment is not required in Week 3: the production deployment arrives in Week 5.

## Full Example

The `## Minimum Usable Product Candidate` section of `reports/week-02/README.md`, after the customer's verdict:

```markdown
## Minimum Usable Product Candidate

Core task: a client goes from the coach's booking link to a paid, confirmed booking.

- [`US-10`: Choose a free slot](https://github.com/<organization>/<repo>/issues/51)
- [`US-01`: Pay at booking](https://github.com/<organization>/<repo>/issues/42)

Customer's verdict: [`DEC-007`](../../docs/decisions.md#dec-007).
```
