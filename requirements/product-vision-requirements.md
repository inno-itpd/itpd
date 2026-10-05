# Product Vision Requirements

The product vision is the one page a reader can hold to understand what the team decided to build and why.
It turns the Week 1 research into something you can be held to.
These requirements define where it lives and what each of its parts must say.
[Guide: User Stories And Prototyping](../guides/user-stories-and-prototyping.md) is the method.

<h2>Table of contents</h2>

- [Where The Vision Lives](#where-the-vision-lives)
- [Goal](#goal)
- [Stakeholders](#stakeholders)
- [Constraints](#constraints)
- [Boundary](#boundary)
- [System Context](#system-context)
- [Full Example](#full-example)

## Where The Vision Lives

**Since: W2**

The product vision is maintained documentation that says what the team decided to build, what it will not do, and what limits it.
It is created once, in its final place, and then stays current.

**Required**

1. `docs/product-vision.md` is the only file that carries the product vision.
2. It carries these parts, and the linked rule says what each one must say:

   - The **goal**, per [Goal](#goal), linking each `VP-nn` section in `docs/research/value-proposition.md` rather than restating it.
   - The **stakeholders**, per [Stakeholders](#stakeholders).
   - The **constraints**, per [Constraints](#constraints).
   - The **boundary**, per [Boundary](#boundary).
   - The **system context diagram**, per [System Context](#system-context), committed here or linked view-only from here.
   - Links to the [user stories](user-stories-requirements.md#where-stories-live) and to the current week's report.

3. When the product or the decisions change, update this file.
   It is maintained documentation, not a Week 2 submission, so a contradiction with the stories is a bug rather than a historical record.

## Goal

**Since: W2**

**Required**

1. The vision states the **goal** of the product: what it must achieve.
2. The goal traces to at least one `VP-nn` from your [value proposition](research-requirements.md#value-proposition-and-differentiation).
   A goal that supports no value proposition is a feature you would like, which is a different thing.
3. Keep it short.
   A vision that has grown into a specification has become the stories, and the two then drift apart.

## Stakeholders

**Since: W2**

Stakeholders are everyone whose interests the product touches, which is wider than the people who use it.

**Required**

1. Name the stakeholders: who the product is for, who operates it, who pays for it, and who is affected by it without using it.
   Your customer is one of the stakeholders.

## Constraints

**Since: W2**

A constraint is a condition your product has to live inside.
An assumption is a belief about the problem that you have not verified.
Keeping the two apart is the whole point of this section: a constraint you cannot change, and an assumption you can be wrong about.

**Required**

1. Record every constraint under one of four sources:

   - **Customer-given**: something the customer or the project catalog imposed, including a language, platform, or deployment mandate that came with the project.
   - **Team-given**: a condition that comes from the team itself, such as its size and its skills.
   - **Environmental**: a condition the setting imposes, such as the weeks left in the course, the academic calendar, or the tools the course provides or requires.
   - **Derived**: something that follows from the other three, such as a consequence of a deployment mandate for the target device.

2. For each constraint, say what it costs you.
   A constraint that costs nothing is not yet understood.
3. An assumption is not a constraint and does not belong in this section.
   Assumptions live in [Assumptions](research-requirements.md#assumptions) and are checked through [Validation](prototypes-requirements.md#validation).
4. Do not list a constraint you chose and then describe it as imposed.
   A technology choice is a decision, and a decision is not a constraint.
   Record it in the week's `## Decisions` table, per [a decision](general-requirements.md#artifact-concepts-and-terminology), and let its `Changes` entry name where the choice shows.

**Recommended**

- Say which constraints are negotiable and who you would have to ask.
- Note the constraints that your research in Week 1 did not anticipate.

## Boundary

**Since: W2**

The **boundary** of a product is the line between what the product is responsible for and what its environment does: the people, the organisations, and the other systems around it.
The [system context diagram](#system-context) draws that line, with the product inside and the actors and external systems outside.
The boundary list writes down the parts of the line somebody could argue with: the jobs a user, the customer, or a competitor could expect of the product that it will not do, and who does each of them instead.
The goal and the stories already say what is inside, so the list states only what is outside.

The list and the diagram are two views of one decision, and they have to agree.
That agreement is what makes the scope checkable:

- The customer can disagree with the scope item by item, instead of with a general impression.
- A reviewer can check the context diagram against the list, per [System Context](#system-context).
- A reviewer can check the stories and their priorities against the list, per [MoSCoW Prioritization](user-stories-requirements.md#moscow-prioritization).
- A story writer can tell a fact about the problem from a design choice: a specific that sits outside the boundary, such as the calendar a user already works with, belongs to the problem.

**Required**

1. State the boundary as a list of things the product will not do, one item each.
   An item names a job somebody could expect the product to do, not a quality such as "will not be slow".
2. Each item says who handles that job instead:

   - An external system or an external actor, which then appears on the context diagram.
   - The user, by hand.
   - Nobody, when the need is deliberately left unserved.

3. Each item says why it is outside: the [constraint](#constraints) that forces it, named; the customer decision that settled it, linked to the meeting report's `## Decisions`; or the team's own reasoning.
4. An item is cited by its "will not" text, because boundary items are not an identifier family.
   A customer decision that moves an item in or out of the boundary is recorded per [Meeting Report](customer-meetings-requirements.md#meeting-report).

**Recommended**

- Include at least one item the customer might want.
  A boundary that excludes nothing anybody wanted has decided nothing.
- Look for items in three places: what the alternatives you did not follow do, the jobs the external systems already do, and every "no" the customer said at the kickoff.

**Example**

| The product will not                    | Handled by    | Why                                                           |
| --------------------------------------- | ------------- | ------------------------------------------------------------- |
| Host the video call                     | Video service | The single-term course constraint: video stays an integration |
| Schedule more than one expert at a time | Nobody        | Customer decision at the kickoff: the experts work alone      |
| Sell recurring subscriptions or bundles | Nobody        | Team reasoning: no user we met pays for sessions in advance   |

## System Context

**Since: W2**

The system context diagram is the picture of the [boundary](#boundary): the product as one box, and everything it exchanges data with around it.

**Required**

1. Draw a **system context diagram** showing the product, the external actors, and the external systems it exchanges data with.
   The diagram must be a picture, not a description of one.
2. Any format is allowed, as long as the diagram itself is committed, or linked view-only, and the surrounding text says what it must show.
   Describe the external actors in prose next to the diagram, and do not duplicate the diagram in text.
3. Do not draw a use case diagram here, and do not draw components, containers, or an internal structure.
   The context diagram is the one that stays true as the product changes.
4. The diagram agrees with the boundary list:

   - Every external system or actor that a boundary item says handles a job appears on the diagram.
   - Everything on the diagram exchanges something with the product.
     Nothing on it does a job the product claims for itself, and nothing on it does a job the boundary leaves to nobody.

**Recommended**

- Draw the boundary itself, as a frame or a box around the product, so the line the list describes is visible.
- Reference the diagram from the vision only, so there is one version of it.

## Full Example

```markdown
# Product vision

Meeting booking app

## Goal

An independent expert can send one link where a client books a time, pays, and receives the meeting link and materials, without assembling the same session from three tools.

**Supports:** [VP-01](research/value-proposition.md#vp-01-one-link-that-carries-the-whole-booking).

## Stakeholders

- **Independent expert** (tutor, coach, or consultant) who sells sessions: the primary user.
- **Client**: books and pays, and uses the product once.
- **Customer**: decides the scope.

## Constraints

| Constraint                       | Source         | What it costs                             |
| -------------------------------- | -------------- | ----------------------------------------- |
| Deployed on a single small VPS   | Customer-given | No failover during a demo                 |
| Built and maintained by 3 people | Team-given     | No component may need a second expert     |
| Single-term course               | Environmental  | Payment and video stay integrations       |
| Payment provider sandbox only    | Derived        | No live charges, so real fees go untested |

## Boundary

| The product will not                    | Handled by    | Why                                                           |
| --------------------------------------- | ------------- | ------------------------------------------------------------- |
| Host the video call                     | Video service | The single-term course constraint: video stays an integration |
| Schedule more than one expert at a time | Nobody        | Customer decision at the kickoff: the experts work alone      |
| Sell recurring subscriptions or bundles | Nobody        | Team reasoning: no user we met pays for sessions in advance   |

## Context

![System context diagram](architecture/context.svg)

The independent experts and their clients are the actors.
The external systems are the calendar, the payment provider, and the video service.
The video service is on the diagram because the boundary hands it the call, and nothing on the diagram does a job the boundary leaves to nobody.

## Where The Detail Lives

- [User stories](https://github.com/<organization>/<repo>/issues?q=label%3Auser-story)
- [Week 2 report](../reports/week-02/README.md)
```
