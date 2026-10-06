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
   - The **constraints**, each a `CON-nn` section, per [Constraints](#constraints).
   - The **boundary**, each item a `BND-nn` section, per [Boundary](#boundary).
   - The **system context diagram**, per [System Context](#system-context), committed at `docs/architecture/context.<ext>`, with its source beside it when it has one, and embedded here as an image.
   - Links to the [user stories](user-stories-requirements.md#where-stories-live) and to the current week's report.

3. When the product or the decisions change, update this file.
   It is maintained documentation, not a Week 2 submission, so a contradiction with the stories is a bug rather than a historical record.

## Goal

**Since: W2**

**Required**

1. The vision states the **goal** of the product: what it must achieve.
2. The goal traces to at least one `VP-nn` from your [value proposition](research-requirements.md#value-proposition-and-differentiation).
   A goal that supports no value proposition is a feature you would like, which is a different thing.
3. State it in one sentence.
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

1. Record each constraint as a section of its own, headed `### CON-nn` under `## Constraints`, per [Identifier Rules](general-requirements.md#identifier-rules), with the condition stated on its first line.
2. Its fields, in this order:

   | Field                | What it says                                                                                                               |
   | -------------------- | -------------------------------------------------------------------------------------------------------------------------- |
   | `**Status:**`        | `Active` or `Dropped`                                                                                                      |
   | `**Source:**`        | One of the four sources in rule 3                                                                                          |
   | `**What it costs:**` | What the constraint costs you; a constraint that costs nothing is not yet understood                                       |
   | `**Decision:**`      | The `DEC-nnn`, linked, of the decision that imposed it, only when one did                                                  |
   | `**Changed:**`       | Each change, recorded as a gap records it, per [Gap Analysis](research-requirements.md#gap-analysis), only when it changed |
   | `**Dropped:**`       | Only on a dropped constraint, per [Identifier Rules](general-requirements.md#identifier-rules)                             |

3. The four sources:

   - **Customer-given**: something the customer or the project catalog imposed, including a language, platform, or deployment mandate that came with the project.
   - **Team-given**: a condition that comes from the team itself, such as its size and its skills.
   - **Environmental**: a condition the setting imposes, such as the weeks left in the course, the academic calendar, or the tools the course provides or requires.
   - **Derived**: something that follows from the other three, such as a consequence of a deployment mandate for the target device.

4. An assumption is not a constraint and does not belong in this section.
   Assumptions live in `docs/assumptions.md`, per [Assumption Requirements](assumptions-requirements.md), and are checked through [Validation](prototypes-requirements.md#validation).
5. A technology choice the team made is a [decision](decisions-requirements.md#the-decision), not a constraint.
   Record it as a decision, cite its `DEC-nnn` where the choice shows, and do not list it here as if it were imposed.
   A mandate the customer gave, such as a platform or a deployment target, is a customer-given constraint, and its `**Decision:**` cites the `DEC-nnn` that records it.

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

1. Record each thing the product will not do as a section of its own, headed `### BND-nn` under `## Boundary`, per [Identifier Rules](general-requirements.md#identifier-rules).
   Its first line names one job somebody could expect the product to do, not a quality such as "will not be slow".
2. Its fields, in this order:

   | Field             | What it says                                                                                                                                                                                 |
   | ----------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
   | `**Status:**`     | `Active` or `Dropped`                                                                                                                                                                        |
   | `**Handled by:**` | Who handles the job instead: an external system or an external actor, which then appears on the context diagram; the user, by hand; or `Nobody`, when the need is deliberately left unserved |
   | `**Why:**`        | Why it is outside: the `CON-nn` that forces it, linked; the `DEC-nnn` of the decision that settled it, linked; or the team's own reasoning                                                   |
   | `**Changed:**`    | Each change, recorded as a gap records it, per [Gap Analysis](research-requirements.md#gap-analysis), only when it changed                                                                   |
   | `**Dropped:**`    | Only on a job the product now does, per [Identifier Rules](general-requirements.md#identifier-rules)                                                                                         |

3. Cite a boundary item by its `BND-nn`, linked.
4. A decision that moves a job into or out of the boundary is a [decision](decisions-requirements.md#the-decision) with an entry.
   A job moved out is a new `BND-nn` whose `**Why:**` cites it.
   A job moved in keeps its `BND-nn`, marked as dropped, and its `**Dropped:**` cites it.

**Recommended**

- Include at least one item the customer might want.
  A boundary that excludes nothing anybody wanted has decided nothing.
- Look for items in three places: what the alternatives you did not follow do, the jobs the external systems already do, and every "no" the customer said at the kickoff.

**Example**

```markdown
### BND-02

Schedule more than one expert at a time.

- **Status:** Active
- **Handled by:** Nobody
- **Why:** [`DEC-002`](decisions.md#dec-002): the experts work alone.
```

## System Context

**Since: W2**

The system context diagram is the picture of the [boundary](#boundary): the product as one box, and everything it exchanges data with around it.

**Required**

1. Draw a **system context diagram** showing the product, the external actors, and the external systems it exchanges data with.
   The diagram must be a picture, not a description of one.
2. Commit the diagram at `docs/architecture/context.<ext>` as an image that GitHub renders, such as SVG or PNG, and embed it in `docs/product-vision.md` with an image link.
   A view-only link does not replace the embedded image, because it is not in the commit you submit.
   Describe the external actors in prose next to the diagram, and do not duplicate the diagram in text.
3. The embedded diagram renders correctly on GitHub, legible in both the light and the dark theme.
   A transparent image with dark lines disappears on the dark theme, so give it a background.
   Check it on the rendered permalink, per [Permalinks And Snapshots](repository-requirements.md#permalinks-and-snapshots).
4. The tool and the source format are the team's choice.
   When the tool saves the diagram as a file, such as Mermaid, PlantUML, D2, draw.io, or Excalidraw, commit that source beside the image with the same name, for example `docs/architecture/context.mmd` beside `docs/architecture/context.svg`, so the diagram is versioned and can be read as text.
   Update the source and the image in the same change, so they never disagree.
   A view-only link to a board may be added, but it does not replace a committed source.
5. Do not draw a use case diagram here, and do not draw components, containers, or an internal structure.
   The context diagram is the one that stays true as the product changes.
6. The diagram agrees with the boundary list:

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

**Supports:** [VP-01](research/value-proposition.md#vp-01).

## Stakeholders

- **Independent expert** (tutor, coach, or consultant) who sells sessions: the primary user.
- **Client**: books and pays, and uses the product once.
- **Customer**: decides the scope.

## Constraints

### CON-01

Deployed on a single small VPS.

- **Status:** Active
- **Source:** Customer-given
- **What it costs:** no failover during a demo.
- **Decision:** [`DEC-004`](decisions.md#dec-004)

### CON-02

Built and maintained by 3 people.

- **Status:** Active
- **Source:** Team-given
- **What it costs:** no component may need a second expert.

### CON-03

Single-term course.

- **Status:** Active
- **Source:** Environmental
- **What it costs:** payment and video stay integrations.

### CON-04

Payment provider sandbox only.

- **Status:** Active
- **Source:** Derived
- **What it costs:** no live charges, so real fees go untested.

## Boundary

### BND-01

Host the video call.

- **Status:** Active
- **Handled by:** Video service
- **Why:** [`CON-03`](#con-03): video stays an integration.

### BND-02

Schedule more than one expert at a time.

- **Status:** Active
- **Handled by:** Nobody
- **Why:** [`DEC-002`](decisions.md#dec-002): the experts work alone.

### BND-03

Sell recurring subscriptions or bundles.

- **Status:** Active
- **Handled by:** Nobody
- **Why:** team reasoning: no user we met pays for sessions in advance.

## Context

![System context diagram](architecture/context.svg)

The independent experts and their clients are the actors.
The external systems are the calendar, the payment provider, and the video service.
The video service is on the diagram because `BND-01` hands it the call, and nothing on the diagram does a job the boundary leaves to nobody.

## Where The Detail Lives

- [User stories](https://github.com/<organization>/<repo>/issues?q=label%3Auser-story)
- [Week 2 report](../reports/week-02/README.md)
```
