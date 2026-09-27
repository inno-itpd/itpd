# Process Requirements

These requirements define the product work itself: what counts as good research, what a gap is, what makes a value proposition worth building on, and how the identifiers you create in one week are used in later weeks. Use [Artifact Requirements](artifact-requirements.md) for where things live and who sees them, and [Repository Requirements](repository-requirements.md) for GitHub mechanics.

The [guides](../guides/) explain how to do this work in practice. This file defines what "done" means.

<h2>Table of contents</h2>

- [Research Is The Week's Work](#research-is-the-weeks-work)
- [Alternatives](#alternatives)
- [Properties And Comparison](#properties-and-comparison)
- [Gap Analysis](#gap-analysis)
- [Value Proposition And Differentiation](#value-proposition-and-differentiation)
- [Assumptions](#assumptions)
- [Identifier Rules](#identifier-rules)
- [Traceability Into Later Weeks](#traceability-into-later-weeks)
- [Quality Rules](#quality-rules)
- [Meeting With The Customer](#meeting-with-the-customer)

## Research Is The Week's Work

**Since: W1**

Week 1 is a research week. There is no code, no prototype, and no deployment. The deliverable is a defensible understanding of the problem space and a proposed direction.

The chain runs in one direction, and each step depends on the previous one:

```text
alternatives → properties → comparison → gaps → value proposition
```

If you cannot point at the evidence that produced a gap, the gap is not established. If you cannot point at the gaps that produced your value proposition, the value proposition is a wish.

## Alternatives

**Since: W1**

**Required**

1. Research **3 to 4 alternatives**. Fewer does not demonstrate a search; more does not leave time to analyse what you found.
2. The set must be a mix. Include at least one of each:

   - A **direct competitor**: the product a user would choose today to solve this problem.
   - An **adjacent substitute**: a product from a neighbouring category that a user might switch to.
   - An **open-source or self-hosted option**: what a technical user would build or run themselves.

3. Every alternative gets a stable ID `ALT-01`, `ALT-02`, and so on, in the order you researched them. IDs are never renumbered, reused, or reassigned. If you drop an alternative, keep the ID and mark it removed with a reason.
4. For each alternative, record:

   - Name, a link to the product, and the version or date you looked at.
   - What problem it solves and for whom.
   - The properties you evaluated it on, with your observation for each.
   - Where you found it: official documentation, a public repository, a pricing page, hands-on use.
   - Strengths and weaknesses, each tied to something you actually observed.

5. Every alternative must be something you looked at properly. A product you only read the landing page of does not count as evaluated. Say how deep you went, and be honest when it was shallow.

**Recommended**

- Try the product or read its source before you write about it.
- Note the version, because products change and a reviewer will check.
- Record what you could not find out. An unanswered question is a finding.

## Properties And Comparison

**Since: W1**

A property is a quality the users of this problem space care about. Not a feature name, not a pricing tier, not a marketing adjective.

**Required**

1. Choose **at least 6 properties** before you start comparing, and use the same set for every alternative. Choosing properties after seeing the results is how a comparison turns into a list of whichever product happened to look best.
2. Every property must be:

   - **Relevant**: it affects whether a user can do the job, or whether they trust the product with their work.
   - **Observable**: you can tell from using the product, its documentation, or its source, rather than from its marketing.
   - **Independent enough** to differ between products. If two properties always move together, you have one property.

3. Write the comparison as a qualitative analysis table: rows are properties, columns are alternatives, and each cell is your analysis for that pair. A cell that says "good" or "yes" is not an analysis.

4. Every cell must reference the evidence it came from, by link or by pointing at the `ALT-nn` section it was derived from. A cell that cannot be traced back to an observation is an opinion.

5. A strength or weakness must be relative. "No audit log" is a weakness for a gateway that routes company code and an irrelevance for a running app. State the condition that makes it matter.

6. Distinguish what you observed from what you concluded. If a cell contains both, separate them.

**Example**

A property row that works:

```markdown
| Property | LiteLLM | OpenRouter |
|---|---|---|
| Can a team define its own redaction rules before a request leaves the network? | No. Only a global set of patterns in config, applied uniformly (ALT-02). | No, requests leave the network immediately (ALT-03). |
```

A row that does not:

```markdown
| Security | Good | Bad |
```

## Gap Analysis

**Since: W1**

A gap is a need that the alternatives do not serve well. It is not a feature you happen to want, and it is not a missing feature that nobody would care about.

**Required**

1. Every gap must satisfy all four tests:

   - **Someone needs it.** Name the user and the job they cannot do well today.
   - **The alternatives do not serve it.** Show the evidence: usually a property where every alternative scores poorly, or a need nobody addresses at all.
   - **It is reachable.** You can describe what a product that closed this gap would do, in a sentence, without inventing a new category.
   - **It is buildable by a team of 3–4 in this course.** A gap you cannot address is still worth recording, but it is not a foundation for your product.

2. Every gap gets a stable ID `GAP-01`, `GAP-02`, and so on. IDs are never renumbered, reused, or reassigned.
3. Every gap references the properties and alternatives that established it, by `ALT-nn` and by property name.
4. Separately record **gaps you chose not to pursue**, with the reason. This is the most useful part of the file, because it is where the customer can see what you decided against and overrule you.
5. Do not manufacture gaps to justify work. A week with two solid gaps is a good week.

**Recommended**

- Sort gaps by how strongly the evidence supports them, and say how strong the evidence is.
- Where the alternatives all handle something badly, say whether that is a real need or just a shared inconvenience you could live with.

## Value Proposition And Differentiation

**Since: W1**

**Required**

1. The value proposition is a claim about why your product is worth someone's attention over the alternatives. Write it as a short positioning statement: the user you target, the problem they have, and what your product does about it that the alternatives do not.
2. Every value proposition gets a stable ID `VP-01`, `VP-02`, and so on. IDs are never renumbered, reused, or reassigned.
3. Every value proposition must reference at least one `GAP-nn` it closes. A differentiation that does not trace to a gap is a difference, not an advantage. A difference that is worse for the user is not worth claiming.
4. Be honest about the trade-off. Every advantage is bought with something: more setup, a narrower feature set, a worse default, a higher price. Name what you give up. A differentiation with no cost is usually a misjudgement.
5. Say how a competitor would respond. If copying your advantage takes them a week, it is not a moat, and you should know that before you commit to it.
6. Do not claim you will be "better", "more modern", "more user-friendly", or "more powerful" without saying better at what, measured how.

**Example**

```markdown
## VP-01: Redaction rules that belong to the team

**User:** platform engineer at a company that sends marked source code to external models.
**Problem:** sensitive-code rules are global configuration, so they cannot follow the company's own classification of what is marked.
**What we do that the alternatives do not:** let a team attach redaction rules to the marked regions of its own code, and keep those rules and their logs under the company's control.
**Closes:** GAP-01.
**What it costs:** a plugin author has to learn our rule format. This is a real setup cost and we do not hide it.
**How a competitor would respond:** LiteLLM could add per-request rules in a release. The defensible part is the logging standard, not the rules themselves.
```

**Recommended**

- Two or three value propositions built on your strongest gaps. More than that and you are listing features.
- Check each one against the `Won't Have` items: does this conflict with something you decided not to do?

## Assumptions

**Since: W1**

**Required**

1. List the assumptions your proposal rests on. An assumption is something you believe about the problem, the users, or the constraints that you have not verified.
2. Trace each assumption to the `GAP-nn` or `VP-nn` it supports.
3. State how each one could be checked, and when.

Assumptions are not questions for the customer. The customer decides the scope; you are responsible for knowing which of your beliefs the scope rests on, and for finding out which of them are wrong. See [Assignment 1](../assignments/assignment-1.md#open-questions-for-the-customer) for how these surface in the week report.

## Identifier Rules

**Since: W1**

**Required**

1. The identifier families are `ALT-nn` for alternatives, `GAP-nn` for gaps, `VP-nn` for value propositions, and `US-nn` for user stories from Week 3. All are zero-padded and case-sensitive.
2. An identifier, once issued, is never changed, reused, or reassigned, including when the artifact is edited later in the course.
3. Gaps in a sequence are expected and correct. A removed `GAP-03` leaves a hole; it does not cause renumbering.
4. A removed item keeps its identifier and its entry, marked as removed with a reason and the date.
5. The identifier always appears in the heading of its own section, so `ALT-02` can be found with a search.
6. Every reference between artifacts uses the identifier, not the title, so that renaming a title does not break the chain.

## Traceability Into Later Weeks

**Since: W1**

The research you produce in Week 1 is the evidence base for the rest of the course. Later weeks cite your Week 1 identifiers rather than restating your findings. This is what makes the course a project rather than nine separate assignments.

| Later work | Must cite |
| --- | --- |
| Week 2 work plan and scope proposal | `GAP-nn`, `VP-nn` |
| Week 3 user stories and the product vision | `GAP-nn` the story serves, `VP-nn` it supports |
| Week 4 quality goals and threshold of success | `GAP-nn` the quality attribute protects, `VP-nn` |
| Week 7 usability test tasks | `US-nn` the task tests |
| Week 8 configuration management decisions | `US-nn` or `GAP-nn` affected by the decision |
| Week 9 reflection and final presentation | the gaps you closed, and the ones you did not |

**Required**

1. When a later artifact cites a Week 1 identifier, link to the section it refers to.
2. If later work contradicts something in your research, update the research and note the change. The research is maintained documentation, not a frozen Week 1 submission. See [Artifact Requirements](artifact-requirements.md#how-artifacts-are-placed-in-the-repository).
3. If you drop a gap mid-course, keep it in the gap analysis marked as dropped, and say which value propositions and user stories were affected.

## Quality Rules

**Since: W1**

**Required**

1. Every factual claim about an alternative is traceable to something you looked at.
2. Claims about a product's roadmap, funding, or business are out of scope. Research the product, not the company.
3. Separate what you observed from what you inferred, and label an inference as an inference.
4. State your confidence when the evidence is thin. "Two of the four products do this, and the other two do not document it" is a better sentence than a confident summary.
5. No filler. A sentence that could be pasted into any team's report without changing anything is a sentence to delete.
6. A week where you learned that your original idea is wrong, and you can show why, is a better week than a week where nothing was tested.

## Meeting With The Customer

**Since: W1**

**Required**

1. Hold one kickoff meeting with the customer, which is your instructor or mentor, during Week 1. Present the project, your reading of the problem, and your proposed direction, and hear where they disagree.
2. Ask for permission before recording. Record the meeting if permitted, and keep the recording out of the repository.
3. Write the transcript as described in [Artifact Requirements](artifact-requirements.md#meeting-transcript).
4. If a live meeting is impossible, do the alignment asynchronously in writing with the customer. Timestamp the written exchange as the transcript, record a voice or screen note if there is one, and state the substitution in the weekly public report as a deviation.
5. The customer decides the scope. Your job in this meeting is to present a direction with its evidence and to find out where it is wrong, not to ask the customer to design the product.
