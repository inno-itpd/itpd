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

5. A strength or weakness must be relative. "No audit log" is a weakness for a gateway that routes company code and an irrelevance for a running app.
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
| Property                                                                       | LiteLLM                                                                  | OpenRouter                                           |
| ------------------------------------------------------------------------------ | ------------------------------------------------------------------------ | ---------------------------------------------------- |
| Can a team define its own redaction rules before a request leaves the network? | No. Only a global set of patterns in config, applied uniformly (ALT-02). | No, requests leave the network immediately (ALT-03). |
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
## VP-01: Redaction rules that belong to the team

**User:** platform engineer at a company that sends marked source code to external models.
**Problem:** sensitive-code rules are global configuration, so they cannot follow the company's own classification of what is marked.
**What we do that the alternatives do not:** let a team attach redaction rules to the marked regions of its own code, and keep those rules and their logs under the company's control.
**Closes:** GAP-01.
**What it costs:** a plugin author has to learn our rule format.
This is a real setup cost and we do not hide it.
**How a competitor would respond:** LiteLLM could add per-request rules in a release.
The defensible part is the logging standard, not the rules themselves.
```

**Recommended**

- Two or three value propositions built on your strongest gaps.
  More than that and you are listing features.
- Check each one against the `Won't Have` items: does this conflict with something you decided not to do?

## Assumptions

**Since: W1**

**Required**

1. List the assumptions your proposal rests on, at the end of `docs/research/value-proposition.md`.
   An assumption is something you believe about the problem, the users, or the constraints that you have not verified.
2. Trace each assumption to the `GAP-nn` or `VP-nn` it supports.
3. State how each one could be checked, and when.

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

<!-- TODO don't mention concepts that haven't yet been introduced? (quality goal) -->
**A goal is not a quality goal, and it is not a threshold of success.**

A goal says what the product must achieve: someone can send a marked region to a model without its contents leaving the network under the company's own rules.

A quality goal says how well, and it is Week 4's work, with its own `Q-nn` identifiers.

Do not write "fast", "reliable", or "user-friendly" as a goal.
Those are Week 4, and a goal nobody can fail is not a goal.

**Example**

```markdown
## Goal

A platform engineer at a company that sends marked source code to external models can have the code's own classification of what is marked decide the redaction rules, without those rules leaving the company.

**Supports:** VP-01.
**Measured by:** the threshold of success, in Week 3.
```

## Constraints

**Since: W2**

<!-- TODO where do you store constraints? -->

A constraint is a condition your product has to live inside.
An assumption is a belief about the problem that you have not verified.
Keeping the two apart is the whole point of this section: a constraint you cannot change, and an assumption you can be wrong about.

**Required**

1. Record every constraint under one of three sources:

   - **Customer-given**: something the customer or the project catalog imposed, including a language, platform, or deployment mandate that came with the project.
   - **Team-given**: the conditions you do not control, such as the size of the team and the number of weeks left in the course.
   - **Derived**: something that follows from the other two, such as a consequence of a deployment mandate for the target device.

2. For each constraint, say what it costs you.
   A constraint that costs nothing is not yet understood.
3. An assumption is not a constraint and does not belong in this section.
   Assumptions live in [Assumptions](#assumptions) and are checked through [Validation](#validation).
4. Do not list a constraint you chose and then describe it as imposed.
   A technology you picked in Week 3 is a decision, and it belongs in the work plan.

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
   Those are Week 4, and the context diagram is the one that stays true as the product changes.
6. Every actor in the diagram must survive your boundary.
   If an actor has no reason to exchange anything with the product, it is not on the diagram.

**The boundary is what makes the context diagram falsifiable.**
Without it, a diagram can be judged only on whether it looks reasonable, and "reasonable" is not a test.
With it, a reviewer can point at an actor and ask which of your boundary items excludes them.
A boundary nobody can disagree with is a boundary that is not written down.

**Recommended**

- Check the diagram against the `Won't Have` items in your stories, per [Value Proposition And Differentiation](#value-proposition-and-differentiation).
- Keep the diagram in the same file as the vision, and keep that file the only place a diagram is committed, so there is one version.

## User Stories And Acceptance Criteria

**Since: W2**

A user story is a small, checkable statement of one thing a user needs.
Its job is to make a gap concrete enough that a reviewer can tell whether you delivered it.

**Required**

1. Write **8 or more** user stories, and keep at least **5 of them active**.
   Fewer do not cover a product, and more leaves no week to change them once something turns out to be wrong.
   An **active** story is one you intend to build; an **inactive** story is one you have removed, superseded, or decided not to build.
2. Every story gets a stable ID `US-01`, `US-02`, and so on.
   IDs are never renumbered, reused, or reassigned, including when the story is edited later in the course.
3. Every story is a statement of a user's need, not a description of a solution.
   "As a platform engineer, I want to attach redaction rules to a marked region, so that the company's own classification decides what leaves the network" is a need.
   "Add a redaction rule editor" is a feature you have already designed.
4. Every story names the `GAP-nn` it closes and the `VP-nn` it supports.
   A need that also came from somewhere else, such as a customer meeting, records that origin in the story's `sources` rather than rewriting your Week 1 research; only a contradiction updates it, per [Traceability Into Later Weeks](#traceability-into-later-weeks).
5. Every story is prioritized with MoSCoW, relative to the product you intend to finish in this course:

   - `Must Have`: the product is not the product without it.
   - `Should Have`: important, and the product is still coherent without it.
   - `Could Have`: valuable, and the first thing to cut.
   - `Won't Have`: a real need you have deliberately excluded.
     A `Won't Have` story is **inactive** by definition, and its `reason` records why, beginning with `won't-have`.

6. Every active story carries **at least two acceptance criteria**, and each one must be observable and pass/fail.
   Any notation is allowed, including `Given`/`When`/`Then`; the rules are that somebody other than you can run the check and get the same answer.
   "Works well" is not a criterion.
7. A story too large to build and verify in one week is two stories.
   Split it: the parent keeps its identifier and its file, becomes inactive with a `reason` beginning with `superseded`, and stays traceable from both children.
8. Name the **minimum usable product candidate**: a strict, non-empty subset of your `Must Have` stories that you would build first.
   Say which one you would drop first if you ran out of time.
   The candidate is a proposal, not a commitment, and Week 3 schedules and builds it.
9. Open one issue per **active** `US-nn` and link it from the story.
   The issue is what the team tracks and what the customer can see; the story file is what the requirements are held in.
   The issue does not copy the acceptance criteria; it links to the story and tracks that story's added value.
   <!-- TODO "tracks that story's added value - how?" -->
   See [Planning And Issue Tracking](repository-requirements.md#planning-and-issue-tracking).
10. An inactive story keeps its identifier, its file, and its original statement.
    It carries no issue and no acceptance criteria, and its frontmatter records the `reason` and the `date` it became inactive.
    <!-- What if an issue has already been created? -->

**Recommended**

- Make the pair of criteria cover the happy path and one failure, empty, or edge case.
- Keep stories small enough that one person can finish one in a few days.
- Write the story that is least likely to be built.
  A story you never write is a decision you made without noticing.

**Example**

```markdown
# US-01: Rules that follow the marked region

As a platform engineer, I want to attach redaction rules to a marked region of our own code,
so that our classification of what is marked decides what leaves the network.

## Acceptance criteria

1. Given a repository with one marked region, when I attach a rule to that region, then the rule applies to
   every request that includes that region, and the log records which rule fired.
2. Given a marked region with no rule attached, when a request includes it, then the request is blocked and
   the reason names the region, and no request content is logged.
```

## Validation

**Since: W2**

A prototype is an instrument for finding out what is wrong.
It is not a showcase, and it is not the product.

**Required**

1. Test the assumptions your research and your stories rest on, not the parts you are already sure about.
   Name the risky part before you build anything, so you cannot quietly choose the easy thing.
2. Show the prototype to the customer, and record what they said.
   A prototype nobody reacted to has not been tested.
3. **Something must change as a result.**
   Record the change in all four places:

   - `reports/week-NN/prototypes.md` records what you showed, which `US-nn` or `GAP-nn` it tested, and what the customer said.
   - The [meeting report](artifact-requirements.md#meeting-report) `## Decisions` table names the `US-nn` it changes.
   - The `us/US-nn.md` file carries a dated note saying what changed.
   - The weekly public report names the `US-nn` that changed.

4. A prototype is disposable.
   A paper sketch, a view-only design tool, and a code spike are equally acceptable, and none of them is product code.
5. The prototype does not need to be beautiful, and it does not need to work.
   It needs to be good enough for the customer to react to the thing you are unsure about.

**Do not treat agreement as a result.**
A customer who says "that sounds great" about your own idea has told you almost nothing, and `## Disagreements` in the meeting report will be empty when it should not be.
A prototype that validated everything proved nothing, because you chose the parts you were already sure about.

**Recommended**

- Prototype the riskiest assumption first, and only as long as it takes to get a reaction.
- Test with whoever actually does the job, where that is possible.
- Keep the loop short: build something, show it, write down what you learned, change the story.

## Identifier Rules

**Since: W1**

**Required**

1. The identifier families introduced in Week 1 are `ALT-nn` for alternatives, `GAP-nn` for gaps, and `VP-nn` for value propositions.
   All are zero-padded and case-sensitive.
   `US-nn` for user stories, `Q-nn` for quality goals, and `U-nn` for usability tasks are introduced by the assignment that creates them, in Weeks 2, 4, and 7.
2. An identifier, once issued, is never changed, reused, or reassigned, including when the artifact is edited later in the course.
3. Gaps in a sequence are expected and correct.
   A removed `GAP-03` leaves a hole; it does not cause renumbering.
4. A removed item keeps its identifier and its entry, marked as removed with a reason and the date.
5. The identifier always appears in the heading of its own section, so `ALT-02` can be found with a search.
6. Every reference between artifacts uses the identifier, not the title, so that renaming a title does not break the chain.

## Traceability Into Later Weeks

**Since: W1**

The research you produce in Week 1 is the evidence base for the rest of the course.
Later weeks cite your Week 1 identifiers rather than restating your findings.
This is what makes the course a project rather than nine separate assignments.

| Later work                                          | Must cite                                                                                              |
| --------------------------------------------------- | ------------------------------------------------------------------------------------------------------ |
| Week 2 product vision, user stories, and prototypes | `US-nn`, the `GAP-nn` it closes, the `VP-nn` it supports, and the kickoff action points it carried out |
| Week 3 work plan and threshold of success           | the `US-nn` it schedules, the `GAP-nn` it serves, and the `VP-nn` it delivers                          |
| Week 4 quality goals and architecture               | `Q-nn` the quality goal, the `GAP-nn` it protects, and the `VP-nn`                                     |
| Week 5 minimum viable product                       | the `VP-nn` the release delivers                                                                       |
| Week 6 analytics                                    | the `VP-nn` each instrumented event is meant to test                                                   |
| Week 7 usability testing                            | `U-nn` the task, and the `US-nn` or `GAP-nn` it exercises                                              |
| Week 8 configuration management decisions           | the `US-nn` or `GAP-nn` affected by the decision                                                       |
| Week 9 reflection and final presentation            | the gaps you closed, and the ones you did not                                                          |

Weeks 10 and 11 produce no repository work that cites a Week 1 identifier.
The Week 11 individual reflection and peer evaluation are private and go in the Moodle submission only.

**Required**

1. When a later artifact cites a Week 1 identifier, link to the section it refers to.
2. If later work contradicts something in your research, update the research and note the change.
   The research is maintained documentation, not a frozen Week 1 submission.
   See [Artifact Requirements](artifact-requirements.md#where-artifacts-live-in-the-repository).
3. If you drop a gap mid-course, keep it in the gap analysis marked as dropped, and say which value propositions and user stories were affected.
4. A later need that your Week 1 research did not anticipate does not rewrite the research.
   Record its additional origin in the story's `sources`; update the research only when the later need contradicts it.

## Research Honesty Rules

**Since: W1**

These rules are about the honesty of your research, not about the quality of your software.
Software quality is Week 4.

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
[Guide: preparing the customer interview](../guides/customer-interview.md) is the method behind it.
A later meeting settles one thing or two, and the rules below are enough to prepare it.

**Required in Week 1**

1. Hold one kickoff meeting with the customer, which is your instructor, during Week 1.
   Present the project, your reading of the problem, and your proposed direction, and hear where they disagree.
2. The script covers five areas: business goals, end users, the current workflow, pain points and constraints, and scope, with at least two questions in each.
3. Check the open questions against [The Mom Test](https://www.koji.so/docs/mom-test-methodology).
   A question about what the customer did last time is worth more than a question about what they would like.
4. If a live meeting is impossible, do the alignment asynchronously in writing with the customer.
   Timestamp the written exchange as the notes, record a voice or screen note if there is one, and state the substitution in the weekly public report as a deviation.
   The rules below still apply, except the role split and the length, per [Meeting Script](artifact-requirements.md#meeting-script).

**Required for every meeting**

1. Prepare the meeting in writing first, at `reports/week-NN/meeting-script.md`, following [Meeting Script](artifact-requirements.md#meeting-script).
2. The script covers whatever this meeting has to settle.
   Derive those areas from the target rather than from a template, and write every question numbered, tagged open or closed.
3. Plan for 30 minutes and ask for 60 if the customer can give it.
4. Assign roles before the meeting: a moderator, a note taker, and an observer who records what was not asked and what was not said.
   The whole team attends.
5. Ask the [three permission questions](artifact-requirements.md#customer-meeting-artifacts) every time.
   Permission is per meeting and is never carried over from an earlier one, and the recording stays out of the repository.
6. Write a [meeting report](artifact-requirements.md#meeting-report), and either a [transcript](artifact-requirements.md#meeting-transcript) or [notes](artifact-requirements.md#meeting-notes).
7. The meeting report is the only one of the three you always produce, and it is where the week's open questions live.
   Its `## Decisions` table names the identifier family the week owns, per [Traceability Into Later Weeks](#traceability-into-later-weeks), so the customer is answering your research and not a stranger's.
8. The customer decides the scope.
   Your job in the meeting is to present a direction with its evidence and to find out where it is wrong, not to ask the customer to design the product.
9. Close the script with a `## Key improvements` section: at least two questions you rewrote at the kickoff, and at least one at every later meeting, each with the principle behind the rewrite.
   An improvement you cannot show is not an improvement.

**Example**

A Week 5 review, which is not a kickoff.

- What it has to settle: whether the release delivers `VP-01`, or something cheaper.
- The areas that follow from it: scope, and the pain points and constraints that decide it.
- The question whose answer would change the week: "What would you do first on Monday if this shipped and the rest waited until January?"

**Recommended**

- Do not re-run the kickoff.
  A later meeting that re-asks the business goals decides nothing, because those were settled weeks ago.
  Write the meeting's one target at the top and delete every question that does not serve it.
- Do not ask about the product you are planning.
  The customer is the only person in the room who cannot be expected to be objective about your idea.
- Do not bring twenty questions to a thirty-minute meeting.
  You will get through nine of them well, and the rest will be a list somebody read aloud.
- Do not treat agreement as a result.
  A customer who says "that sounds great" to a question about your own idea has told you almost nothing, and `## Disagreements` in the meeting report will be empty when it should not be.
