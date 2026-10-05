# Research Requirements

These requirements define the Week 1 research: where it lives, what counts as an alternative, a property, a gap, and a value proposition, which assumptions the proposal rests on, and how honest the research has to be.
[Guide: Researching Alternatives](../guides/alternatives-research.md) and [Guide: From Comparison To Value Proposition](../guides/comparison-and-synthesis.md) are the method.
How identifiers are issued and cited is in [General Requirements](general-requirements.md#identifier-rules).

<h2>Table of contents</h2>

- [Where Research Lives](#where-research-lives)
- [Research Is The Week's Work](#research-is-the-weeks-work)
- [Alternatives](#alternatives)
- [Properties And Comparison](#properties-and-comparison)
- [Gap Analysis](#gap-analysis)
- [Value Proposition And Differentiation](#value-proposition-and-differentiation)
- [Assumptions](#assumptions)
- [Research Honesty Rules](#research-honesty-rules)

## Where Research Lives

**Since: W1**

**Required**

1. The research is maintained documentation in `docs/research/`, one file for each step of the [chain](#research-is-the-weeks-work):

   - `alternatives.md`: the `ALT-nn` sections, per [Alternatives](#alternatives).
   - `comparison.md`: the property table and what you read in it, per [Properties And Comparison](#properties-and-comparison).
   - `gap-analysis.md`: the `GAP-nn` sections and the gaps you chose not to pursue, per [Gap Analysis](#gap-analysis).
   - `value-proposition.md`: the `VP-nn` sections, then `## Assumptions`, per [Value Proposition And Differentiation](#value-proposition-and-differentiation) and [Assumptions](#assumptions).

2. The research stays current after Week 1, per [Traceability Into Later Weeks](general-requirements.md#traceability-into-later-weeks).

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
It is where the customer tests the chain, so the [meeting script](customer-meetings-requirements.md#meeting-script) is written from it and not from scratch.

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

3. Every alternative gets a stable ID `ALT-01`, `ALT-02`, and so on, in the order you researched them, per [Identifier Rules](general-requirements.md#identifier-rules).
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

2. Every gap gets a stable ID `GAP-01`, `GAP-02`, and so on, per [Identifier Rules](general-requirements.md#identifier-rules).
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
2. Every value proposition gets a stable ID `VP-01`, `VP-02`, and so on, per [Identifier Rules](general-requirements.md#identifier-rules).
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
4. When a [decision](general-requirements.md#artifact-concepts-and-terminology) settles an assumption, update its entry with the outcome and link the evidence that settled it.

Assumptions are not questions for the customer.
The customer decides the scope; you are responsible for knowing which of your beliefs the scope rests on, and for finding out which of them are wrong.
The ones you cannot settle yourself belong in the meeting report's open questions, where the customer answers them for you.
See [Meeting Report](customer-meetings-requirements.md#meeting-report).

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
