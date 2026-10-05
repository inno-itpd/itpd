# Process Requirements

These requirements define the product work itself: what counts as good research, what a gap is, what makes a value proposition worth building on, what a product vision and a user story have to say, and how the identifiers you create in one week are used in later weeks.
Use [Artifact Requirements](artifact-requirements.md) for where things live and who sees them, and [Repository Requirements](repository-requirements.md) for GitHub mechanics.

The [guides](../guides/) explain how to do this work in practice.
This file defines what "done" means.

<h2>Table of contents</h2>

- [Research Is The Week's Work](#research-is-the-weeks-work)
- [Alternatives](#alternatives)
- [Properties And Comparison](#properties-and-comparison)
- [Gap Analysis](#gap-analysis)
- [Value Proposition And Differentiation](#value-proposition-and-differentiation)
- [Assumptions](#assumptions)
- [Product Vision And Goals](#product-vision-and-goals)
- [Constraints](#constraints)
- [Stakeholders](#stakeholders)
- [Boundary](#boundary)
- [System Context](#system-context)
- [User Stories](#user-stories)
- [Acceptance Criteria](#acceptance-criteria)
- [MoSCoW Prioritization](#moscow-prioritization)
- [Minimum Usable Product Candidate](#minimum-usable-product-candidate)
- [Validation](#validation)
- [Identifier Rules](#identifier-rules)
- [Traceability Into Later Weeks](#traceability-into-later-weeks)
- [Research Honesty Rules](#research-honesty-rules)
- [Meeting With The Customer](#meeting-with-the-customer)

## Research Is The Week's Work

**Since: W1**

Week 1 is a research week.
There is no code, no prototype, and no deployment.
The deliverable is a defensible understanding of the problem space and a proposed direction.

The chain runs in one direction, and each step depends on the previous one:

```text
alternatives → properties → comparison → gaps → value proposition
```

If you cannot point at the evidence that produced a gap, the gap is not established.
If you cannot point at the gaps that produced your value proposition, the value proposition is a wish.

The kickoff meeting sits on top of that chain rather than inside it.
It is where the customer tests the chain, so the [meeting script](#meeting-with-the-customer) is written from it and not from scratch.

## Alternatives

**Since: W1**

This section says what counts as an alternative and what must be recorded about one.
[Guide: researching alternatives](../guides/alternatives-research.md) says where to find them and how to choose among them, and is the method for this section rather than a second copy of it.

**Required**

1. Research **3 to 4 alternatives**.
   Fewer does not demonstrate a search; more does not leave time to analyse what you found.
2. The set must be a mix.
   Include at least one of each:

   - A **direct competitor**: the product a user would choose today to solve this problem.
   - An **adjacent substitute**: a product from a neighbouring category that a user might switch to.
   - An **open-source or self-hosted option**: what a technical user would build or run themselves.

3. Every alternative gets a stable ID `ALT-01`, `ALT-02`, and so on, in the order you researched them.
   IDs are never renumbered, reused, or reassigned.
   If you drop an alternative, keep the ID and mark it removed with a reason.
4. For each alternative, record:

   - Name, a link to the product, and the version or date you looked at.
   - What problem it solves and for whom.
   - The properties you evaluated it on, with your observation for each.
   - Where you found it: official documentation, a public repository, a pricing page, hands-on use.
   - Strengths and weaknesses, each tied to something you actually observed.

5. Every alternative must be something you looked at properly.
   A product you only read the landing page of does not count as evaluated.
   Say how deep you went, and be honest when it was shallow.

**Recommended**

- Try the product or read its source before you write about it.
- Note the version, because products change and a reviewer will check.
- Record what you could not find out.
  An unanswered question is a finding.

## Properties And Comparison

**Since: W1**

A property is a quality the users of this problem space care about.
Not a feature name, not a pricing tier, not a marketing adjective.

**Required**

1. Choose **at least 6 properties** before you start comparing, and use the same set for every alternative.
   Choosing properties after seeing the results is how a comparison turns into a list of whichever product happened to look best.
2. Every property must be:

   - **Relevant**: it affects whether a user can do the job, or whether they trust the product with their work.
   - **Observable**: you can tell from using the product, its documentation, or its source, rather than from its marketing.
   - **Independent enough** to differ between products.
     If two properties always move together, you have one property.

3. Write the comparison as a qualitative analysis table: rows are properties, columns are alternatives, and each cell is your analysis for that pair.
   A cell that says "good" or "yes" is not an analysis.

4. Every cell must reference the evidence it came from, by link or by pointing at the `ALT-nn` section it was derived from.
   A cell that cannot be traced back to an observation is an opinion.

5. A strength or weakness must be relative. "No built-in payments" is a weakness for an expert who sells consultations and an irrelevance for a team that books internal meetings.
   State the condition that makes it matter.

6. Distinguish what you observed from what you concluded.
   If a cell contains both, separate them.
7. Read the finished table as a whole and record what you see in it.
   Three to five candidates: a shape visible across cells, such as a property every alternative scores poorly on, or a property exactly one of them is strong on.
   A candidate is a claim about the shape of the evidence.
   It is not yet a need, and it does not become one by being plausible.
   Every candidate either becomes a gap, with the shape quoted in its `**Evidence:**` field, or is recorded among the [gaps you chose not to pursue](#gap-analysis).
   See [Find The Gaps](../guides/comparison-and-synthesis.md#step-4-find-the-gaps).

**Example**

A property row that works:

```markdown
| Property                                                                               | Calendly                                                                                             | Cal.com                                                                                                |
| -------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------ |
| Can one booking collect the payment, create the video link, and deliver the materials? | No. Payment and video are integrations on paid plans, and the booking carries no materials (ALT-01). | Partial. Self-hosting and a Stripe setup stand between the expert and the first paid booking (ALT-02). |
```

A row that does not:

```markdown
| Security | Good | Bad |
```

## Gap Analysis

**Since: W1**

A gap is a need that the alternatives do not serve well.
It is not a feature you happen to want, and it is not a missing feature that nobody would care about.

**Required**

1. Every gap must satisfy all four tests:

   - **Someone needs it.**
     Name the user and the job they cannot do well today.
   - **The alternatives do not serve it.**
     Show the evidence: usually a property where every alternative scores poorly, or a need nobody addresses at all.
   - **It is reachable.**
     You can describe what a product that closed this gap would do, in a sentence, without inventing a new category.
   - **It is buildable by a team of 3–4 in this course.**
     A gap you cannot address is still worth recording, but it is not a foundation for your product.

2. Every gap gets a stable ID `GAP-01`, `GAP-02`, and so on.
   IDs are never renumbered, reused, or reassigned.
3. Every gap references the properties and alternatives that established it, by `ALT-nn` and by property name.
4. Separately record **gaps you chose not to pursue**, with the reason.
   This is the most useful part of the file, because it is where the customer can see what you decided against and overrule you.
5. Do not manufacture gaps to justify work.
   A week with two solid gaps is a good week.

**Recommended**

- Sort gaps by how strongly the evidence supports them, and say how strong the evidence is.
- Where the alternatives all handle something badly, say whether that is a real need or just a shared inconvenience you could live with.

## Value Proposition And Differentiation

**Since: W1**

**Required**

1. The value proposition is a claim about why your product is worth someone's attention over the alternatives.
   Write it as a short positioning statement: the user you target, the problem they have, and what your product does about it that the alternatives do not.
2. Every value proposition gets a stable ID `VP-01`, `VP-02`, and so on.
   IDs are never renumbered, reused, or reassigned.
3. Every value proposition must reference at least one `GAP-nn` it closes.
   A differentiation that does not trace to a gap is a difference, not an advantage.
   A difference that is worse for the user is not worth claiming.
4. Be honest about the trade-off.
   Every advantage is bought with something: more setup, a narrower feature set, a worse default, a higher price.
   Name what you give up.
   A differentiation with no cost is usually a misjudgement.
5. Say how a competitor would respond.
   If copying your advantage takes them a week, it is not a moat, and you should know that before you commit to it.
6. Do not claim you will be "better", "more modern", "more user-friendly", or "more powerful" without saying better at what, measured how.

**Example**

```markdown
## VP-01: One link that carries the whole booking

**User:** independent coach who sells one-hour sessions online.
**Problem:** the booking, the payment, and the meeting materials live in three tools, so unpaid clients block slots and prepared clients are rare.
**What we do that the alternatives do not:** one link where the client books a slot, pays, and receives the video link and the materials, with no second account.
**Closes:** [GAP-01](gap-analysis.md#gap-01-bookings-that-arrive-unpaid-and-unprepared).
**What it costs:** the expert connects a payment provider before the first booking and uploads the materials per meeting type.
This is a real setup cost.
**How a competitor would respond:** Calendly or Cal.com could bundle payments and materials into the free tier.
The defensible part is the single flow and its pricing, not the fields.
```

**Recommended**

- Two or three value propositions built on your strongest gaps.
  More than that and you are listing features.
- Check each one against the `Won't Have` items: does this conflict with something you decided not to do?

## Assumptions

**Since: W1**

**Required**

1. List the assumptions your proposal rests on, at the end of `docs/research/value-proposition.md`, under the heading `## Assumptions`.
   An assumption is something you believe about the problem, the users, or the constraints that you have not verified.
2. Trace each assumption to the `GAP-nn` or `VP-nn` it supports.
3. State how each one could be checked, and when.
4. When a [decision](artifact-requirements.md#artifact-concepts-and-terminology) settles an assumption, update its entry with the outcome and link the evidence that settled it.

Assumptions are not questions for the customer.
The customer decides the scope; you are responsible for knowing which of your beliefs the scope rests on, and for finding out which of them are wrong.
The ones you cannot settle yourself belong in the meeting report's open questions, where the customer answers them for you.
See [Customer Meeting Artifacts](artifact-requirements.md#meeting-report).

## Product Vision And Goals

**Since: W2**

The product vision is the one page a reader can hold to understand what the team decided to build and why.
It turns the Week 1 research into something you can be held to.

**Required**

1. The vision states the **goal** of the product: what it must achieve.
2. The goal traces to at least one `VP-nn` from your [value proposition](#value-proposition-and-differentiation).
   A goal that supports no value proposition is a feature you would like, which is a different thing.
3. The vision also carries the [constraints](#constraints), the [stakeholders](#stakeholders), the [boundary](#boundary), and the [system context diagram](#system-context).
   Where it lives, its sections, and a full example are in [Product Vision](artifact-requirements.md#product-vision).
4. Keep it short.
   A vision that has grown into a specification has become the stories, and the two then drift apart.

## Constraints

**Since: W2**

Constraints live in the [product vision](artifact-requirements.md#product-vision), beside the goal, the stakeholders, and the boundary.

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
   Assumptions live in [Assumptions](#assumptions) and are checked through [Validation](#validation).
4. Do not list a constraint you chose and then describe it as imposed.
   A technology choice is a decision, and a decision is not a constraint.
   Record it in the week's `## Decisions` table, per [a decision](artifact-requirements.md#artifact-concepts-and-terminology), and let its `Changes` entry name where the choice shows.

**Recommended**

- Say which constraints are negotiable and who you would have to ask.
- Note the constraints that your research in Week 1 did not anticipate.

## Stakeholders

**Since: W2**

Stakeholders are everyone whose interests the product touches, which is wider than the people who use it.

**Required**

1. Name the stakeholders: who the product is for, who operates it, who pays for it, and who is affected by it without using it.
   Your customer is one of the stakeholders.

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
- A reviewer can check the stories and their priorities against the list, per [MoSCoW Prioritization](#moscow-prioritization).
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
   A customer decision that moves an item in or out of the boundary is a row in the meeting report's `## Decisions`, per [Meeting Report](artifact-requirements.md#meeting-report), whose `Changes` names the item.

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
- Keep the diagram in the same file as the vision, and keep that file the only place a diagram is committed, so there is one version.

## User Stories

**Since: W2**

A user story is a small, checkable statement of one thing a user needs.
A user is any actor with a goal: the person the product serves, and the operator or administrator who keeps it running.
Its job is to make one need concrete enough that a reviewer can tell whether you delivered it.
Each story is a GitHub issue, and the issues are the only place the stories live.
Each story carries a priority, per [MoSCoW Prioritization](#moscow-prioritization), and, unless it is a `Won't Have` story, its [acceptance criteria](#acceptance-criteria).

**Required**

1. Write **8 or more** user stories, and keep at least **5 of them** something other than `Won't Have`.
   Fewer do not cover a product, and more leaves no week to change them once something turns out to be wrong.
   A `Won't Have` story is one you have decided not to build; every other story is one you intend to build.
2. Every story gets a stable ID `US-01`, `US-02`, and so on.
   IDs are never renumbered, reused, or reassigned, including when the story is edited later in the course.
3. Every story is a statement of a user's need, not a description of a solution.
   "As a coach, I want a client to pay when they book, so that an unpaid slot does not block a paying one for the rest of the week" is a need.
   "Add a payment page" is a feature you have already designed.
   A story states the problem precisely and leaves the solution open.
   It does not carry what only the team decides, such as a screen, a button, a component, or a library; naming the design decides it for whoever builds the story.
   It may carry a specific that the user or the customer has settled, such as the external system the user already works with.
   Such a specific goes in an acceptance criterion, or in a [constraint](#constraints) when it holds for the whole product, and goes in the story statement only when the specific thing is itself the need.
4. Every story carries a `Traces to` list.
   It contains exactly one `VP-nn`, the value proposition the story supports, and, optionally, the story's origins: the `GAP-nn` it closes, a customer decision in a meeting report, a team decision in the weekly public report, or an action point it carries out.
   The `VP-nn` is how a story traces to the product vision, so the `VP-nn` of every story except a `Won't Have` story is one the vision's [goal](#product-vision-and-goals) traces to.
   A story you intend to build that supports no such value proposition is outside the vision: add its `VP-nn` to the goal as a team decision, or make the story `Won't Have`.
   Cite each entry as [Identifier Rules](#identifier-rules) says.
   A need that came from outside Week 1 research does not rewrite the research; only a contradiction updates it, per [Traceability Into Later Weeks](#traceability-into-later-weeks).
5. Every story except a `Won't Have` story is small enough to build and verify in one week.
   A need larger than that is written as two or more stories.
6. Each story is one GitHub issue.
   Its title, its fields, its labels, when it closes, and how it records a change are in [User Stories](artifact-requirements.md#user-stories), with an example of a `Must Have` and a `Won't Have` story.

**Recommended**

- Keep stories small enough that one person can finish one in a few days.
- Write the story that is least likely to be built.
  A story you never write is a decision you made without noticing.

## Acceptance Criteria

**Since: W2**

An acceptance criterion is the check that tells a reviewer whether a [story](#user-stories) was delivered.

**Required**

1. Every story except a `Won't Have` story carries **at least two acceptance criteria**, and each one must be observable and pass/fail.
   Any notation is allowed, including `Given`/`When`/`Then`; the rules are that somebody other than you can run the check and get the same answer.
   "Works well" is not a criterion.
   A `Won't Have` story is not built, so it may carry none.
2. Every acceptance criterion carries a stable ID `AC-01`, `AC-02`, and so on, numbered within its story and written at the start of the criterion.
   The ID is unique inside its story issue and is never renumbered or reused there.
   A criterion edited in place keeps its ID, a criterion that is removed retires its ID, and a criterion added later takes the next free number.
   Cite a specific criterion from another artifact by its `AC-nn` together with its story issue: a link to the issue, or its `US-nn` when the issue is already linked.
   The notation is not fixed, as long as the reference identifies both the story and the criterion.

**Recommended**

- Make the pair of criteria cover the happy path and one failure, empty, or edge case.

## MoSCoW Prioritization

**Since: W2**

A priority is a decision about what to build first and what not to build at all, and the customer can argue with it only if it is written down with its reason.
Every priority is relative to the product you intend to finish in this course.

**Required**

1. Every [story](#user-stories) carries exactly one priority, as one `moscow:*` label:

   - `Must Have`, labelled `moscow:must`: the product is not the product without it.
   - `Should Have`, labelled `moscow:should`: important, and the product is still coherent without it.
   - `Could Have`, labelled `moscow:could`: valuable, and the first thing to cut.
   - `Won't Have`, labelled `moscow:won't`: a need you have deliberately excluded, including a story you dropped after writing it.

2. Every story carries a **priority reason** in the issue form's `Priority reason` field.
   The reason says why the story has this priority and not the one above or below it, and names the [constraint](#constraints) when one drives it.
   A reason that restates the definition of the label is not a reason.
3. Not every story you intend to build is `Must Have`: at least one of them is `Should Have` or `Could Have`.
   A list where everything is `Must Have` says nothing about what to build first.
4. A story you drop after writing it becomes `Won't Have`.
   It keeps its `US-nn` and its statement, and its issue closes as [User Stories](artifact-requirements.md#user-stories) says.
5. The priorities do not contradict the [boundary](#boundary).
   No story you intend to build is something the boundary excludes.
   A `Won't Have` reason that rests on the boundary quotes the boundary item.
   The two are independent otherwise: a boundary item is a decision about the whole product and needs no matching story, and a `Won't Have` story is one written need that you excluded and need not appear in the boundary.
6. A priority that changes is recorded where the change was made.
   The story issue gets a dated comment naming the old label, the new label, and the reason, and its priority reason is updated.
   A change the customer decided is a row in the meeting report's `## Decisions`, per [Meeting Report](artifact-requirements.md#meeting-report), whose `Changes` names the `US-nn` and the old and new labels.
   A change the team decided is cited from the weekly public report's `#decisions`, per [Identifier Rules](#identifier-rules).
7. The `Must Have` stories you would build first are the [minimum usable product candidate](#minimum-usable-product-candidate).

**Recommended**

- Test a `Must Have` by removing it: if the product is still the product without it, it is a `Should Have`.
- Write the reason as a comparison with a neighbouring story or with the core task, because that is what the customer will argue with.

**Example**

```markdown
## Priority reason

Must Have: without it, an unpaid booking still holds a slot, which is the GAP-01 problem itself; the reminder email can wait, because a client who paid already has the link.
```

```markdown
## Priority reason

Could Have: a reminder email reduces no-shows, but a client who paid already has the link, so the core task finishes without it.
```

## Minimum Usable Product Candidate

**Since: W2**

A **minimum usable product (MUP)** is the smallest product in which a user can complete the core tasks without getting frustrated.
The candidate is your proposal for it, made before any product code exists, so the customer can argue with it while it is still cheap to change.

**Required**

1. Name the **core task** the candidate serves: one thing a user does from start to finish, written in one line.
2. The candidate is a strict, non-empty subset of your `Must Have` stories that together let a user complete that core task end to end.
   Stories that cover only part of the task are not a candidate.
3. Name one story **inside the candidate** to drop first if you ran out of time.
   Without it, the rest of the candidate must still complete the core task; if no story can go, say why.
4. Record the candidate in the weekly public report, under the heading the assignment names: the core task, then the `US-nn` of each story with its issue linked, then the story to drop first.
5. The candidate is a proposal, not a commitment.
   The customer's verdict on it is a row in the meeting report's `## Decisions`, per [Meeting Report](artifact-requirements.md#meeting-report): `Changes` names each `US-nn` added to or removed from the candidate, or says `None` with the reason when the customer accepted it as it is.

**Recommended**

- Two or three stories that a user can finish in one sitting.
  A long candidate is a postponement, not a priority.

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
     See [Minimum Usable Product Candidate](#minimum-usable-product-candidate).
   - **Minimum viable product (MVP)**: will people use it?

   A code spike can answer the PoC question or a prototype question; either way it is recorded as a prototype and thrown away.

2. Test the story or assumption you are least sure about, not the parts you are already sure about.
   Name the risky part before you build anything, so you cannot quietly choose the easy thing.
3. Show the prototype to the customer, and record what they said.
   A prototype nobody reacted to has not been tested.
4. **Something must change as a result.**
   Record the change in all four places:

   - The prototype record, per [Prototypes](artifact-requirements.md#prototypes).
   - A row in the meeting report's `## Decisions`, per [Meeting Report](artifact-requirements.md#meeting-report).
   - The changed artifact itself: a story issue, per [User Stories](artifact-requirements.md#user-stories), or a constraint, assumption, or document updated in place.
   - The [weekly public report](artifact-requirements.md#weekly-public-report), which links the meeting report's `## Decisions`.

5. A prototype is disposable, and none of it is product code.
   The forms it may take are in [Prototypes](artifact-requirements.md#prototypes).
6. The prototype does not need to be beautiful, and it does not need to work.
   It needs to be good enough for the customer to react to the thing you are unsure about.

**Do not treat agreement as a result.**
A customer who says "that sounds great" about your own idea has told you almost nothing, and `## Disagreements` in the meeting report will be empty when it should not be.
A prototype that validated everything proved nothing, because you chose the parts you were already sure about.

**Recommended**

- Prototype the riskiest assumption first, and only as long as it takes to get a reaction.
- Test with whoever actually does the job, where that is possible; in this course, the customer is the stakeholder who reacts to the prototype.
- Keep the loop short: build something, show it, write down what you learned, change the story.

## Identifier Rules

**Since: W1**

**Required**

1. The identifier families introduced in Week 1 are `ALT-nn` for alternatives, `GAP-nn` for gaps, and `VP-nn` for value propositions.
   All are zero-padded and case-sensitive.
   `US-nn` for user stories and `AC-nn` for their acceptance criteria are introduced in Week 2.
   A later family is introduced only by the requirement that first uses it.
2. An identifier, once issued, is never changed, reused, or reassigned, including when the artifact is edited later in the course.
3. Gaps in a sequence are expected and correct.
   A removed `GAP-03` leaves a hole; it does not cause renumbering.
4. A removed item keeps its identifier and its entry, marked as removed with a reason and the date.
5. The identifier always appears in the heading of its own section, so `ALT-02` can be found with a search.
6. Every reference between artifacts uses the identifier, not the title, so that renaming a title does not break the chain.
7. `AC-nn` is the exception to rules 4 and 5, because it lives inside a story issue rather than in a section of its own.
   [Acceptance Criteria](#acceptance-criteria) says how it is numbered, retired, and cited.
8. Decisions and action points are not identifier families.
   There is no `DEC-nn` and no `ACT-nn`.
   Cite a decision by path and `#decisions` anchor with its sentence quoted: a meeting decision cites its meeting report, and a decision made outside a meeting cites the weekly public report of the week it was made.
   Cite an action point the same way, with its report's `#action-points` anchor and the action quoted.
   A story's `Traces to` entry for a decision or action point uses this form.
   A later week cites a meeting report by path and heading anchor, per [Customer Meeting Artifacts](artifact-requirements.md#customer-meeting-artifacts).

## Traceability Into Later Weeks

**Since: W1**

The research you produce in Week 1 is the evidence base for the rest of the course.
Later weeks cite your Week 1 identifiers rather than restating your findings.
This is what makes the course a project rather than nine separate assignments.

| Later work                                          | Must cite                                                                                   |
| --------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| Week 2 product vision, user stories, and prototypes | The `VP-nn` and origins in each story's `Traces to` list, per [User Stories](#user-stories) |

**Required**

1. When a later artifact cites a Week 1 identifier, link to the section it refers to.
2. If later work contradicts something in your research, update the research and note the change.
   The research is maintained documentation, not a frozen Week 1 submission.
   See [Artifact Requirements](artifact-requirements.md#where-artifacts-live-in-the-repository).
3. If you drop a gap mid-course, keep it in the gap analysis marked as dropped, and say which value propositions and user stories were affected.
4. A later need that your Week 1 research did not anticipate does not rewrite the research.
   It becomes a story that traces to the `VP-nn` it supports; update the research only when the later need contradicts it.

## Research Honesty Rules

**Since: W1**

These rules are about the honesty of your research, not about the quality of your software.

**Required**

1. Every factual claim about an alternative is traceable to something you looked at.
2. Claims about a product's roadmap, funding, or business are out of scope.
   Research the product, not the company.
3. Separate what you observed from what you inferred, and label an inference as an inference.
4. State your confidence when the evidence is thin. "Two of the four products do this, and the other two do not document it" is a better sentence than a confident summary.
5. No filler.
   A sentence that could be pasted into any team's report without changing anything is a sentence to delete.
   A template sentence is one with no product name, no identifier such as `ALT-nn`, and no date in it.
   Generated text submitted unchecked, or filler passed off as analysis, reduces the week's grade.
6. A week where you learned that your original idea is wrong, and you can show why, is a better week than a week where nothing was tested.

## Meeting With The Customer

**Since: W1**

A meeting with the customer is where the week's work gets tested.
Bring a direction and its evidence, and find out where it is wrong.

The kickoff in Week 1 is the meeting with the most to settle, because the problem and the direction are both still open.
Its method is in [Guide: The Kickoff Meeting](../guides/customer-kickoff-meeting.md).
Every later meeting settles one thing or two; its method is in [Guide: Validating With The Customer](../guides/validating-with-the-customer.md), and the rules below are enough to prepare it.

**Required every week**

Hold at least one meeting with the customer every week.
The Week 1 meeting is the kickoff.

**Required for every meeting**

1. Prepare the meeting in writing first, at `reports/week-NN/meeting-script.md`, following [Meeting Script](artifact-requirements.md#meeting-script).
2. The script covers whatever this meeting has to settle.
   Derive those areas from the target rather than from a template.
   The script's sections, its questions, and its agenda are in [Meeting Script](artifact-requirements.md#meeting-script).
3. Plan for 30 minutes and ask for 60 if the customer can give it.
4. Assign roles before the meeting: a moderator who asks the questions and controls the time, a note taker who records what was said, and an observer who records what was not asked and what was not said.
   The whole team attends.
5. Ask the [three permission questions](artifact-requirements.md#customer-meeting-artifacts) every time.
6. Write a [meeting report](artifact-requirements.md#meeting-report), and either a [transcript](artifact-requirements.md#meeting-transcript) or [notes](artifact-requirements.md#meeting-notes), per [Customer Meeting Artifacts](artifact-requirements.md#customer-meeting-artifacts).
7. The report is where the week's open questions and decisions live, per [Meeting Report](artifact-requirements.md#meeting-report).
   A meeting is required to change something only when it showed a prototype, per [Validation](#validation).
8. The customer decides the scope.
   Your job in the meeting is to present a direction with its evidence and to find out where it is wrong, not to ask the customer to design the product.

**Required in Week 1**

1. Hold one kickoff meeting with the customer, which is your instructor, during Week 1.
   Present the project, your reading of the problem, and your proposed direction, and hear where they disagree.
   The script's agenda says where in the meeting you present each of them.
2. The script covers five areas: business goals, end users, the current workflow, pain points and constraints, and scope, with at least two questions in each.
3. Check the open questions against [The Mom Test](https://www.koji.so/docs/mom-test-methodology).
   A question about what the customer did last time is worth more than a question about what they would like.
4. If a live meeting is impossible, do the alignment asynchronously in writing with the customer.
   Timestamp the written exchange as the notes, record a voice or screen note if there is one, and state the substitution in the weekly public report as a deviation.
   The rules above still apply, except the role split and the length, per [Meeting Script](artifact-requirements.md#meeting-script).

**Required when you show working software**

**Since: W3**

<!-- TODO refine -->

1. Show each story you present as done against its acceptance criteria, one `AC-nn` at a time, while it runs on the screen.
2. The customer accepts or rejects each story.
   Record the verdict as a row in the meeting report's `## Decisions` that names the `US-nn`: an accepted story says `None` in `Changes`, with the reason, and a rejected story names each `AC-nn` it failed.
3. Add a dated comment to the story issue with the verdict, naming any failed `AC-nn` and linking the meeting report.

**Example**

A Week 2 validation meeting.

- What it has to settle: whether the prototype, the boundary, and the minimum usable product candidate are right.
- The areas that follow from it: the prototype's question, the boundary, and the build order.
- The agenda that follows from them: show the prototype and ask about it, then the boundary, then the minimum usable product candidate.
- The question whose answer would change the week: "Which of these stories would you miss first if it were not built?"

A Week 3 meeting that shows working software.

- What it has to settle: whether the stories finished this week do what the customer needs, and what comes next.
- The areas that follow from it: each finished story against its acceptance criteria, and the order of the next stories.
- The agenda that follows from them: run each finished story and ask for its verdict, then the next stories.
- The question whose answer would change the next week: "What did you expect to happen here that did not?"
