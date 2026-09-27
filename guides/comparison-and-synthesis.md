# Guide: From Comparison To Value Proposition

How to turn the alternatives into a comparison, gaps, and a value proposition.
The rules are in [Process Requirements](../requirements/process-requirements.md); this guide is the method, with a worked shape for each step.

**Timebox:** about a day.
Most of it is arguing about whether the table is honest, which is time well spent.

<h2>Table of contents</h2>

- [What You Produce](#what-you-produce)
- [Step 1: Freeze The Property Set](#step-1-freeze-the-property-set)
- [Step 2: Fill The Table](#step-2-fill-the-table)
- [Step 3: Read The Table For Patterns](#step-3-read-the-table-for-patterns)
- [Step 4: Turn Patterns Into Gaps](#step-4-turn-patterns-into-gaps)
- [Step 5: Write The Value Proposition](#step-5-write-the-value-proposition)
- [Step 6: Write Down What You Are Assuming](#step-6-write-down-what-you-are-assuming)
- [Common Mistakes](#common-mistakes)

## What You Produce

```text
docs/research/comparison.md        properties × alternatives, cell by cell
docs/research/gap-analysis.md      GAP-01, GAP-02, … including the ones you drop
docs/research/value-proposition.md VP-01, VP-02, … plus your assumptions
```

## Step 1: Freeze The Property Set

Take the properties from [the research guide](alternatives-research.md#step-4-choose-the-properties-before-you-look).
Do not add a property now because it flatters one product.
If you genuinely missed a property, add it and go back and fill that column everywhere.

## Step 2: Fill The Table

Rows are properties, columns are alternatives, cells are your analysis.
Fill it property by property, not product by product: doing one whole row at a time keeps your standard consistent, while going product by product makes later cells drift into copying earlier ones.

**A cell that works:**

```markdown
| Can a team attach redaction rules to specific marked regions of its own code? | No.
Rules are global patterns in `general_settings`, applied to every request (ALT-02). | No.
Requests leave the network as sent (ALT-03). | Partial.
Per-tenant config files exist, but the rule applies to a tenant's traffic, not to a region of a caller's payload (ALT-04). |
```

It says what the product does, cites the `ALT-nn` it came from, and lets the reader check.

**A cell that does not:**

```markdown
| Redaction | Good | Missing | Basic |
```

Nobody can check "good".
There is nothing to trace, and the row says nothing you could not have written about any product.

Two habits that make the table honest:

- **Separate observation from conclusion.** `No. Rules are global patterns (ALT-02). Consequence: a company cannot express "this region is confidential" per call site.` The first is checkable; the second is your reading, and it belongs in the gap analysis.
- **Make strengths relative.** "No audit log" is a serious weakness for a gateway that routes a company's source code, and irrelevant for a running app.
  State the condition that makes it matter, or you will be told you are wrong by someone who is right.

## Step 3: Read The Table For Patterns

Now read it as a whole, rather than row by row.

- **Read down a column** to see how strong the strongest product is.
  That is your real competition, and it is the bar.
- **Read across a row** to find where every product is weak or absent.
  That is where the opportunity is.
- **Look for the diagonal.**
  If one product is strong on everything, you have found the incumbent to beat, and you should say plainly how you plan to beat it.

Write down three to five candidate patterns before you judge any of them.

## Step 4: Turn Patterns Into Gaps

A pattern is not yet a gap.
Each candidate has to pass all four tests from [Process Requirements](../requirements/process-requirements.md#gap-analysis): someone needs it, the alternatives do not serve it, it is reachable, and a team of three or four could build it in this course.

The fourth test does most of the work.
When you cannot describe what a product closing this gap would do in a sentence, you have a theme, not a gap.

```markdown
## GAP-01: Rules that follow the code, not the deployment

**Who needs it and what they cannot do:** a platform engineer at a company that sends marked
source code to external model providers.
The company classifies code by region and context;
existing gateways apply one global rule set to whole requests, so the engineer either
over-redacts and breaks the request or under-redacts and leaks marked code.

**Evidence:** `Where data goes` and `Extensibility` rows in
[the comparison](comparison.md) — all three alternatives apply rules per deployment or
per tenant, none per call site (ALT-02, ALT-03, ALT-04).

**What closing it looks like:** a rule set the caller supplies with the request, matched
against the caller's own markers, evaluated before the request leaves the network, and logged
under the company's own standard.

**Buildable by us in this course:** yes.
It is one plugin plus a logging format, and it is
the reason the project exists.

**Confidence:** high.
Consistent across all three alternatives, and two of them are
mature enough that this is not an oversight.

**Dropped:** see GAP-04.
```

Also record the gaps you rejected, with the reason.
This is the most useful section in the file, because it is where the customer can see the shape of what you decided against and overrule you.

## Step 5: Write The Value Proposition

A value proposition is a claim about why your product is worth attention over the alternatives.
One short positioning statement, tied to a gap, honest about its cost.

```markdown
## VP-01: Redaction rules that belong to the team

**User:** platform engineer at a company sending marked source code to external models.
**Problem:** sensitive-code rules are global to the gateway, so they cannot follow the
company's own classification of what is marked.
**What we do that the alternatives do not:** let a team attach redaction rules to the marked
regions of its own code, and keep those rules and their logs under the company's control.
**Closes:** [GAP-01](gap-analysis.md#gap-01-rules-that-follow-the-code-not-the-deployment).
**What it costs:** a plugin author has to learn our rule format.
This is a real setup cost.
**How a competitor would respond:** the open-source incumbent could ship per-request rules
in a release.
The defensible part is the logging standard, not the rules.
```

Three things to get right:

- **Say better at what, measured how.** "More modern" is not a claim. "A team can express its own redaction rules without a gateway restart" is a claim someone can check.
- **Name what you give up.**
  Every advantage is bought with something: more setup, a narrower feature set, a worse default, a higher price.
  A differentiation with no cost is a misjudgement, and finding it now is cheaper than finding it in Week 5.
- **Say how a competitor would respond.**
  If copying you takes them a week, you do not have a moat, and you should know that before you build on it.

Two or three value propositions, built on your strongest gaps.
More than that and you are listing features.

## Step 6: Write Down What You Are Assuming

Every proposition rests on beliefs you have not verified: that the user has the problem you think they have, that nobody is coming for this, that the constraint you were told about is real.
List them, trace each to the `GAP-nn` or `VP-nn` it supports, and say how you would check it.

```markdown
## Assumptions

| Assumption                                                                              | Supports      | How to check                                                               |
| --------------------------------------------------------------------------------------- | ------------- | -------------------------------------------------------------------------- |
| Marked code is a real problem for teams of this size, not only for regulated companies. | GAP-01, VP-01 | Interview two teams in Week 2 and ask what they do today with marked code. |
| The course customer will accept a plugin-first product rather than a hosted one.        | VP-01         | Raise it at the Week 1 kickoff.                                            |
```

The customer decides the scope.
This table is not a list of questions for them; it is your own map of what the scope rests on, so that when the scope is decided you know what you are betting on.
The questions you do put to the customer go in the week report instead.

## Common Mistakes

- **The feature laundry list.**
  Everything the products do, in a table, with no analysis.
  The table should be readable in two minutes and arguable in twenty.
- **Properties chosen after the fact.**
  The tell is a property that only one product scores well on and which happens to be your idea.
- **"Better" without a measure.**
  Every claim of superiority should name what is better and how anyone could tell.
- **Gaps that are wishes.** "Nobody does real-time collaboration" is not a gap until you show that somebody needs it and cannot work around its absence.
- **Ignoring the gaps you dropped.**
  The rejected list is what makes the accepted list credible.
- **Confusing difference with advantage.**
  Being different is a fact.
  Being better for a named user is the claim worth making.
