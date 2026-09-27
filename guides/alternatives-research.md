# Guide: Researching Alternatives

How to produce the alternatives evidence for Week 1. What the evidence must satisfy is defined in [Process Requirements](../requirements/process-requirements.md#alternatives); this guide is the method.

**Timebox:** about two days for the whole team, split as half a day to find and choose, one day to evaluate, half a day to write up. If it is taking longer, you are evaluating too deeply for a product you are not going to build on.

<h2>Table of contents</h2>

- [What You Produce](#what-you-produce)
- [Step 1: Fix Your Problem Space](#step-1-fix-your-problem-space)
- [Step 2: Build A Wide Candidate List](#step-2-build-a-wide-candidate-list)
- [Step 3: Cut Down To Three Or Four](#step-3-cut-down-to-three-or-four)
- [Step 4: Choose The Properties Before You Look](#step-4-choose-the-properties-before-you-look)
- [Step 5: Evaluate Every Product The Same Way](#step-5-evaluate-every-product-the-same-way)
- [Where The Evidence Lives](#where-the-evidence-lives)
- [Writing The Entry](#writing-the-entry)
- [Common Mistakes](#common-mistakes)

## What You Produce

```text
docs/research/alternatives.md      ALT-01, ALT-02, … one section per alternative
docs/research/comparison.md        the comparison table, built in the next guide
```

Screenshots and working notes go on a board. See [Where The Evidence Lives](#where-the-evidence-lives).

## Step 1: Fix Your Problem Space

Before you look at any product, write one sentence: **whose problem are we solving, and what are they trying to do?** Not "what are we building" — that comes later, and it is constrained by this sentence.

Everything that does not serve that sentence is not an alternative, however popular it is. Write the sentence down in the top of `alternatives.md`; it is the standard your comparison is measured against.

## Step 2: Build A Wide Candidate List

Collect more candidates than you will keep. Aim for ten or more, then cut down. Where to look:

- "Alternatives to X" pages and competitor lists on review sites.
- GitHub topics and the Awesome lists relevant to your space.
- Directories and aggregators for the category.
- Product Hunt, Hacker News, and Reddit threads where people ask for recommendations. These give you the phrasing real users use, which is worth more than the vendors' own phrasing.
- The integration pages of adjacent tools: what do people plug into, and what is missing at the edges?
- Ask two people outside your team for the tool they would use. Their answer is often not on any list.

Record each candidate with its URL and one line on why it might be relevant. This list is scratch work and does not need to be committed.

## Step 3: Cut Down To Three Or Four

You keep three or four, and the set has to be a mix. At least one of each:

| Kind | What it is | Why it earns its place |
| --- | --- | --- |
| Direct competitor | What a user installs today to do this job | The real comparison |
| Adjacent substitute | A neighbouring tool a user might switch to | Shows what a good experience looks like in adjacent form |
| Open-source or self-hosted | What a technical user would run themselves | Often the most honest about limits, and the closest to what you can build |

Two rules that save you from a bad set:

- **No clones.** Three products with the same feature list tell you nothing. Differences are the data.
- **Include something you might lose to.** If every product in your table is worse than your idea, you picked the wrong table.

## Step 4: Choose The Properties Before You Look

Pick at least six properties that matter for the problem space, and write them down before you evaluate anything. Choosing them afterwards guarantees you end up comparing whatever dimension your favourite product happens to win on.

**A property is** a quality a user of this problem cares about, that you can observe from using the product, reading its documentation, or reading its source.

**A property is not** a feature name, a pricing tier, or a marketing adjective.

**Example** property categories for software in this course's space:

- Where data goes, and who controls it
- Extensibility: can a user add their own behaviour, and how hard is it?
- Deployment: hosted, self-hosted, or both; what does operating it cost in time and attention?
- Local or offline capability
- Cost model, and what happens when the free tier changes
- Onboarding: how long from install to first real use?
- Integrations with what the user already has
- Observability: can you see what happened and why?

Pick the six to eight that matter most for your sentence from Step 1.

## Step 5: Evaluate Every Product The Same Way

Spend a fixed amount of effort per alternative, and record how deep you got. Depth is a fact about your evidence and the reader needs it.

- Try it if you can. Sign up, install it, or run it.
- Read the official documentation. For open-source products, skim the source and the issues.
- Note the version or the date. A reviewer will check, and products change.
- Write down what you could not find out. An unanswered question is a finding, not a failure.
- Note where the product is strong and where it is weak, and be suspicious of a product that has no weak points. It means you did not look hard enough.

## Where The Evidence Lives

Screenshots and working notes belong on a board: Figma, Miro, Excalidraw, anything that makes pasting screenshots painless. Share it **view-only**.

- At least two screenshots per alternative, of the screens or flows that matter for your properties. A pricing page screenshot is evidence of nothing.
- Crop anything that is not needed. Emails, names, API keys, and account identifiers do not belong in a public board.
- Name the board frames so a reader can navigate: `ALT-01 LiteLLM — redaction config`, not `Screenshot 3`.
- Write in the board what each screenshot shows, and link the board from the `ALT-nn` section in `alternatives.md`. A screenshot with no explanation is not evidence.

Keep screenshots in the repository only when they are part of that week's evidence, in `reports/week-NN/images/`. Either location is acceptable; a board is the default because it keeps the repository small.

## Writing The Entry

One section per alternative, ID in the heading:

```markdown
## ALT-02: LiteLLM

**Kind:** Open-source, self-hosted (LiteLLM or a hosted provider)
**Link:** https://github.com/BerriAI/litellm
**Version looked at:** v1.60, 2026-09-28
**Depth of evaluation:** installed locally, ran a proxy request, read the routing and config docs. Did not test the enterprise key-management features.

**Problem it solves:** gives an application one OpenAI-shaped interface in front of many model providers, so switching models is a config change.

**Observations by property**

| Property | Observation |
|---|---|
| Where data goes | Proxies to whichever provider you configure; no intermediate storage by default (config docs, "Logging"). |
| Extensibility | Custom providers and custom guards are Python classes you register in a process; no plugin boundary. |
| Cost model | Open source; you pay the model provider. |
| Onboarding | Working proxy in about 15 minutes, if you already have Python and a provider key. |

**Strengths**
* Provider switching is genuinely a config change, not a rewrite. Verified by changing providers on a local instance.
* Guard hooks are ordinary Python, so anything expressible in Python is possible.

**Weaknesses**
* Redaction patterns are global to the process. A rule cannot be attached to a specific marked region of a caller's code, which is what a company with its own classification needs (see GAP-01).
* No per-tenant configuration: two teams sharing one gateway share one rule set.
```

The weaknesses are the useful part of this file. Write at least two per alternative, and tie each to something you observed.

## Common Mistakes

- **Reading only landing pages.** You end up describing marketing, and the reviewer can tell.
- **Comparing products on their own terms.** One product's "flexible" is another's "not supported". Compare on your properties, not their features.
- **A set of four near-identical products.** Differentiation requires difference.
- **No weak points anywhere.** Either the product is extraordinary, or you did not look.
- **Collecting screenshots you never look at again.** Decide what to capture before you capture it.
- **Starting to design your product during the research.** Note the ideas, keep them out of the findings. You will design against the gaps in the next guide.
