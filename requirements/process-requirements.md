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
- [Stakeholders, Boundary, And Context](#stakeholders-boundary-and-context)
- [User Stories And Acceptance Criteria](#user-stories-and-acceptance-criteria)
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
2. The goal traces to at least one `VP-nn` from your [value proposition](../guides/comparison-and-synthesis.md#step-5-write-the-value-proposition).
   A goal that supports no value proposition is a feature you would like, which is a different thing.
3. The vision carries the [constraints](#constraints), the [stakeholders, boundary, and context diagram](#stakeholders-boundary-and-context), and a link to the [user stories](#user-stories-and-acceptance-criteria).
4. Keep it short.
   A vision that has grown into a specification has become the stories, and the two then drift apart.

**Example**

```markdown
## Goal

An independent expert can send one link where a client books a time, pays, and receives the meeting link and materials, without assembling the same session from three tools.

**Supports:** VP-01.
```

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

## Stakeholders, Boundary, And Context

**Since: W2**

The boundary is the part of this section that matters most: it is what the team will **not** do.
Without it, a context diagram shows a product floating in a void, and no reviewer can tell whether it is right.

**Required**

1. Name the stakeholders: who the product is for, who operates it, who pays for it, and who is affected by it without using it.
   Your customer is one of the stakeholders.
2. State the **boundary** explicitly, as a list of things the product will not do.
3. Draw a **system context diagram** showing the product, the external actors, and the external systems it exchanges data with.
   The diagram must be a picture, not a description of one.
4. Any format is allowed, as long as the diagram itself is committed, or linked view-only, and the surrounding text says what it must show.
   Describe the external actors in prose next to the diagram, and do not duplicate the diagram in text.
5. Do not draw a use case diagram here, and do not draw components, containers, or an internal structure.
   The context diagram is the one that stays true as the product changes.
6. Every actor in the diagram must survive your boundary.
   If an actor has no reason to exchange anything with the product, it is not on the diagram.

**The boundary is what makes the context diagram falsifiable.**
Without it, a diagram can be judged only on whether it looks reasonable, and "reasonable" is not a test.
With it, a reviewer can point at an actor and ask which of your boundary items excludes them.
A boundary nobody can disagree with is a boundary that is not written down.

**Recommended**

- Check the diagram against the `Won't Have` items in your stories, per [Value Proposition And Differentiation](#value-proposition-and-differentiation).
- Keep the diagram in the same file as the vision, and keep that file the only place a diagram is committed, so there is one version.

<!-- TODO a section on MoSCoW prioritization -->

## User Stories And Acceptance Criteria

**Since: W2**

A user story is a small, checkable statement of one thing a user needs.
A user is any actor with a goal: the person the product serves, and the operator or administrator who keeps it running.
Its job is to make a gap concrete enough that a reviewer can tell whether you delivered it.
Each story is a GitHub issue, and the issues are the only place the stories live.

**Required**

1. Write **8 or more** user stories, and keep at least **5 of them active**.
   Fewer do not cover a product, and more leaves no week to change them once something turns out to be wrong.
   An **active** story is one you intend to build; an **inactive** story is one you have removed, superseded, or decided not to build.
   The close reason carries the distinction for the rest of the course: an inactive story is closed as not planned, and a delivered active story is closed as completed.
2. Every story gets a stable ID `US-01`, `US-02`, and so on.
   IDs are never renumbered, reused, or reassigned, including when the story is edited later in the course.
3. Every story is a statement of a user's need, not a description of a solution.
   "As a coach, I want a client to pay when they book, so that an unpaid slot does not block a paying one for the rest of the week" is a need.
   "Add a payment page" is a feature you have already designed.
   A story does not name a screen, a button, or a component; naming the design decides it for whoever builds the story.
   An acceptance criterion may name a screen, a field, or a system state, because that is what an observer checks.
4. Every story carries a `Traces to` list.
   It contains exactly one `VP-nn`, the value proposition the story supports, and may contain any of the story's origins: the `GAP-nn` it closes, a customer decision in a meeting report, a team decision in the weekly public report, an action point it carries out, or the parent `US-nn` of a split.
   Cite an identifier by its ID, and a decision or action point by the report path and its `#decisions` or `#action-points` anchor, with the decision sentence or action quoted, per [Identifier Rules](#identifier-rules).
   A story that names no `GAP-nn` and is not a split child says in one line why no existing gap covers it.
   A need that came from outside Week 1 research records that origin in the list rather than rewriting the research; only a contradiction updates it, per [Traceability Into Later Weeks](#traceability-into-later-weeks).
5. Every story is prioritized with MoSCoW, relative to the product you intend to finish in this course:

   - `Must Have`: the product is not the product without it.
   - `Should Have`: important, and the product is still coherent without it.
   - `Could Have`: valuable, and the first thing to cut.
   - `Won't Have`: a real need you have deliberately excluded.
     A `Won't Have` story is **inactive** by definition, and its closing comment records why, beginning with `won't-have`.

6. Every active story carries **at least two acceptance criteria**, and each one must be observable and pass/fail.
   Any notation is allowed, including `Given`/`When`/`Then`; the rules are that somebody other than you can run the check and get the same answer.
   "Works well" is not a criterion.
   An inactive story is not built, so it may carry none.
7. Every acceptance criterion carries a stable ID `AC-01`, `AC-02`, and so on, numbered within its story and written at the start of the criterion.
   The ID is unique inside its story issue and is never renumbered or reused there.
   A criterion edited in place keeps its ID, a criterion that is removed retires its ID, and a criterion added later takes the next free number.
   Cite a specific criterion from another artifact by its `AC-nn` together with its story issue: a link to the issue, or its `US-nn` when the issue is already linked.
   The notation is not fixed, as long as the reference identifies both the story and the criterion.
8. A story too large to build and verify in one week is two stories.
   Split it: the parent keeps its identifier, its statement, and its criteria, closes as not planned with a comment beginning with `superseded`, and stays traceable from both children.
   Each child names the parent `US-nn` in its `Traces to` list and carries the parent's `VP-nn` and, when the parent had one, the same `GAP-nn`.
   The parent's criteria are not moved, renumbered, or reused; each child writes its own and starts again at `AC-01`.
9. Name the **minimum usable product candidate** in the Week 2 report: a strict, non-empty subset of your `Must Have` stories that you would build first.
   Say which one you would drop first if you ran out of time.
   The candidate is a proposal, not a commitment.
10. Open one issue per story, from the form in [Planning And Issue Tracking](repository-requirements.md#planning-and-issue-tracking).
    The issue is the story and the source of truth; the form carries the statement, the acceptance criteria, each with its `AC-nn`, the `Traces to` list, and any notes.
    The issue may carry a checklist of the remaining work, so a contributor can work without leaving it.
11. A story becomes inactive by being closed as not planned, with a comment naming the reason and any story that supersedes it.
    It keeps its identifier and its statement in the issue; the closing comment and the close date are the record.
    An active story that is delivered closes as completed and stays in the list.

**Recommended**

- Make the pair of criteria cover the happy path and one failure, empty, or edge case.
- Keep stories small enough that one person can finish one in a few days.
- Write the story that is least likely to be built.
  A story you never write is a decision you made without noticing.

**Example**

```markdown
# US-01: Pay at booking

As a coach who sells sessions online, I want a client to pay when they book,
so that an unpaid slot does not block a paying one for the rest of the week.

## Traces to

- `VP-01`
- `GAP-01`

## Acceptance criteria

1. AC-01: Given a paid meeting type with one free slot, when a client books that slot, then the slot
   is held while the client pays and is released back to the calendar when the hold expires.
2. AC-02: Given a client who does not finish payment, when the hold expires, then the booking is not
   confirmed and no meeting link is created.
```

## Validation

**Since: W2**

A prototype is an instrument for finding out what is wrong.
It is not a showcase, and it is not the product.

**Required**

1. Use the four terms precisely, because they answer different questions:

   - **Proof of concept (PoC)**: can this work at all technically?
   - **Prototype**: how will this look, and does this user flow make sense?
   - **Minimum usable product (MUP)**: can a user complete the core tasks without getting frustrated?
   - **Minimum viable product (MVP)**: will people use it?

   A code spike can answer the PoC question or a prototype question; either way it is recorded as a prototype and thrown away.

2. Test the story or assumption you are least sure about, not the parts you are already sure about.
   Name the risky part before you build anything, so you cannot quietly choose the easy thing.
3. Show the prototype to the customer, and record what they said.
   A prototype nobody reacted to has not been tested.
4. **Something must change as a result.**
   Record the change in all four places:

   - `reports/week-NN/prototypes.md` records what you showed, which `US-nn` or `GAP-nn` it tested, any `AC-nn` it exercised, and what the customer said.
   - The [meeting report](artifact-requirements.md#meeting-report) `## Decisions` table names what each decision changed: the `US-nn` and the `AC-nn` for a story, or the constraint, assumption, document, or scaffold for anything else.
   - The changed artifact carries the record: a story issue gets a dated comment naming any `AC-nn` that changed and linking the meeting report, and a constraint, assumption, or document is updated in place.
   - The weekly public report names what changed and links the meeting report's `## Decisions`; it does not copy the table.

   A decision whose effect cannot be recorded yet says `TBD` in `Changes`; the artifact that later carries it names the decision and links the report.

5. A prototype is disposable.
   A paper sketch, a view-only design tool, and a code spike are equally acceptable, and none of them is product code.
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
   `AC-nn` is scoped to its story issue: the same number may appear in another story, so a reference pairs the ID with the issue to be unambiguous.
3. Gaps in a sequence are expected and correct.
   A removed `GAP-03` leaves a hole; it does not cause renumbering.
4. A removed item keeps its identifier and its entry, marked as removed with a reason and the date.
   `AC-nn` is the exception: the issue body is a living record whose edit history and change comment are the record, so a removed criterion's ID is retired rather than kept in place, and it is never reused.
5. The identifier always appears in the heading of its own section, so `ALT-02` can be found with a search.
   An `AC-nn` appears at the start of its criterion inside the story issue; the story issue plus the ID is what identifies it.
6. Every reference between artifacts uses the identifier, not the title, so that renaming a title does not break the chain.
   A criterion is referenced by its `AC-nn` together with its story issue, as described in [User Stories And Acceptance Criteria](#user-stories-and-acceptance-criteria).
7. Decisions and action points are not identifier families.
   There is no `DEC-nn` and no `ACT-nn`.
   Cite a decision by path and `#decisions` anchor with its sentence quoted: a meeting decision cites its meeting report, and a decision made outside a meeting cites the weekly public report of the week it was made.
   Cite an action point the same way, with its report's `#action-points` anchor and the action quoted.
   A story's `Traces to` entry for a decision or action point uses this form.
   `TBD` and `None` in `Changes` are statuses, not identifiers.
   A later week cites a meeting report by path and heading anchor, per [Customer Meeting Artifacts](artifact-requirements.md#customer-meeting-artifacts).

## Traceability Into Later Weeks

**Since: W1**

The research you produce in Week 1 is the evidence base for the rest of the course.
Later weeks cite your Week 1 identifiers rather than restating your findings.
This is what makes the course a project rather than nine separate assignments.

| Later work                                          | Must cite                                                                                                                             |
| --------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- |
| Week 2 product vision, user stories, and prototypes | `US-nn` and its `Traces to` list: exactly one `VP-nn` plus each origin (a `GAP-nn`, a decision, an action point, or a parent `US-nn`) |

**Required**

1. When a later artifact cites a Week 1 identifier, link to the section it refers to.
2. If later work contradicts something in your research, update the research and note the change.
   The research is maintained documentation, not a frozen Week 1 submission.
   See [Artifact Requirements](artifact-requirements.md#where-artifacts-live-in-the-repository).
3. If you drop a gap mid-course, keep it in the gap analysis marked as dropped, and say which value propositions and user stories were affected.
4. A later need that your Week 1 research did not anticipate does not rewrite the research.
   Record the need's origin in the story's `Traces to` list and say why no existing gap covers it; update the research only when the later need contradicts it.
5. A decision recorded with `TBD` in `Changes` is finished when the artifact that carries its effect names the decision and links the report that recorded it.

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
6. A week where you learned that your original idea is wrong, and you can show why, is a better week than a week where nothing was tested.

## Meeting With The Customer

**Since: W1**

A meeting with the customer is where the week's work gets tested.
Bring a direction and its evidence, and find out where it is wrong.

The kickoff in Week 1 is the meeting with the most to settle, because the problem and the direction are both still open.
Its method is in [Guide: The Kickoff Meeting](../guides/customer-kickoff-meeting.md).
A later meeting settles one thing or two; its method is in [Guide: Validating With The Customer](../guides/validating-with-the-customer.md), and the rules below are enough to prepare it.

**Required for every meeting**

1. Prepare the meeting in writing first, at `reports/week-NN/meeting-script.md`, following [Meeting Script](artifact-requirements.md#meeting-script).
2. The script covers whatever this meeting has to settle.
   Derive those areas from the target rather than from a template, and write every question numbered, tagged open or closed, per [Meeting Script](artifact-requirements.md#meeting-script).
3. Plan for 30 minutes and ask for 60 if the customer can give it.
4. Assign roles before the meeting: a moderator who asks the questions and controls the time, a note taker who records what was said, and an observer who records what was not asked and what was not said.
   The whole team attends.
5. Ask the [three permission questions](artifact-requirements.md#customer-meeting-artifacts) every time.
6. Write a [meeting report](artifact-requirements.md#meeting-report), and either a [transcript](artifact-requirements.md#meeting-transcript) or [notes](artifact-requirements.md#meeting-notes), per [Customer Meeting Artifacts](artifact-requirements.md#customer-meeting-artifacts).
7. The report is where the week's open questions live, and its `## Decisions` table names what each decision changed, per [Meeting Report](artifact-requirements.md#meeting-report).
8. The customer decides the scope.
   Your job in the meeting is to present a direction with its evidence and to find out where it is wrong, not to ask the customer to design the product.

**Required in Week 1**

1. Hold one kickoff meeting with the customer, which is your instructor, during Week 1.
   Present the project, your reading of the problem, and your proposed direction, and hear where they disagree.
2. The script covers five areas: business goals, end users, the current workflow, pain points and constraints, and scope, with at least two questions in each.
3. Check the open questions against [The Mom Test](https://www.koji.so/docs/mom-test-methodology).
   A question about what the customer did last time is worth more than a question about what they would like.
4. If a live meeting is impossible, do the alignment asynchronously in writing with the customer.
   Timestamp the written exchange as the notes, record a voice or screen note if there is one, and state the substitution in the weekly public report as a deviation.
   The rules above still apply, except the role split and the length, per [Meeting Script](artifact-requirements.md#meeting-script).

**Example**

A Week 2 validation meeting.

- What it has to settle: whether the prototype, the boundary, and the minimum usable product candidate are right.
- The areas that follow from it: the prototype's question, the boundary, and the build order.
- The question whose answer would change the week: "Which of these stories would you miss first if it were not built?"
