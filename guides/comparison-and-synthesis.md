# Guide: From Comparison To Value Proposition

How to turn the alternatives into a comparison, gaps, and a value proposition.

The rules are in [Properties And Comparison](../requirements/research-requirements.md#properties-and-comparison) and [Gap Analysis](../requirements/research-requirements.md#gap-analysis).
This guide is the method, with a worked shape for each step.

**Timebox:** about a day.
Most of it is arguing about whether the table is honest, which is time well spent.

<h2>Table of contents</h2>

- [What You Produce](#what-you-produce)
- [Step 1: Freeze The Property Set](#step-1-freeze-the-property-set)
- [Step 2: Fill The Table](#step-2-fill-the-table)
- [Step 3: Read The Table As A Whole](#step-3-read-the-table-as-a-whole)
- [Step 4: Find The Gaps](#step-4-find-the-gaps)
- [Step 5: Write The Value Proposition](#step-5-write-the-value-proposition)
- [Step 6: Write Down What You Are Assuming](#step-6-write-down-what-you-are-assuming)
- [Common Mistakes](#common-mistakes)

## What You Produce

```text
docs/research/comparison.md        properties × alternatives, cell by cell
docs/research/gap-analysis.md      GAP-01, GAP-02, … including the ones you drop
docs/research/value-proposition.md VP-01, VP-02, …
docs/assumptions.md                ASM-01, ASM-02, …
```

## Step 1: Freeze The Property Set

Take the properties from [the research guide](alternatives-research.md#step-4-choose-the-properties-before-you-look).
Do not add a property now because it flatters one product.
If you genuinely missed a property, add it and go back and fill that column everywhere.

## Step 2: Fill The Table

Rows are properties, columns are alternatives, cells are your analysis.
Fill it property by property, not product by product: doing one whole row at a time keeps your standard consistent, while going product by product makes later cells drift into copying earlier ones.

**A row that works:**

```markdown
| Property                 | ALT-01 Calendly                                                                                                               | ALT-02 Cal.com                                                                                            | ALT-03 Google Calendar appointment schedules                                      | ALT-04 Zoom Scheduler                                                             |
| ------------------------ | ----------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| What the booking carries | Time and an event type. Payment and video are integrations on paid plans, and materials are not part of the booking (ALT-01). | Time and the video link after a Stripe setup. Payment and materials are not part of the booking (ALT-02). | Time and a Meet link. Payment and materials are not part of the booking (ALT-03). | Time and a Zoom link. Payment and materials are not part of the booking (ALT-04). |
```

It says what the product does, cites the `ALT-nn` it came from, and lets the reader check.

**A row that does not:**

```markdown
| Payments | Good | Missing | Basic |
```

Nobody can check "good".
There is nothing to trace, and the row says nothing you could not have written about any product.

Two habits that make the table honest:

- **Separate observation from conclusion.** `No. Payment and video are integrations on paid plans, and the booking carries no materials (ALT-01). Consequence: the expert still assembles a paid, prepared session from three tools.` The first is checkable; the second is your reading, and it belongs in the gap analysis.
- **Make strengths relative.** "No built-in payments" is a serious weakness for an expert who sells consultations, and irrelevant for a team that books internal meetings.
  State the condition that makes it matter, or you will be told you are wrong by someone who is right.

## Step 3: Read The Table As A Whole

Read it as a whole, rather than row by row.

- **Read down a column** to see how strong the strongest product is.
  That is your real competition, and it is the bar.
- **Read across a row** to find where every product is weak or absent.
  That is where the opportunity is.
- **Look for the diagonal.**
  If one product is strong on everything, you have found the incumbent to beat, and you should say plainly how you plan to beat it.

Write down three to five candidates before you judge any of them.

A candidate is worth writing down when you can name it in a sentence that a reader could dispute.
"Nobody is good at X" is one.
"Most of these products feel unfinished" is not, because you cannot argue with it and you cannot check it.

## Step 4: Find The Gaps

What you see in the table is not yet a need.
Each candidate has to pass all four tests from [Gap Analysis](../requirements/research-requirements.md#gap-analysis): someone needs it, the alternatives do not serve it, it is reachable, and a team of three or four could build it in this course.

The third test does most of the work.
When you cannot describe what a product closing this gap would do in a sentence, you have a theme, not a gap.

```markdown
## GAP-01

Bookings that arrive unpaid and unprepared.

**Who needs it and what they cannot do:** an independent expert who sells one-hour consultations online.
The client books and pays in one place, and the meeting link and materials arrive with the booking; the alternatives schedule the time, and the payment, the video link, and the materials each live somewhere else.

**Evidence:** `What the booking carries` row in [the comparison](comparison.md) — no alternative carries payment, video, and materials in the same booking (ALT-01, ALT-02, ALT-03, ALT-04).

**What closing it looks like:** one link where the client picks a slot, pays, and receives the video link and the materials, with calendar sync behind it.

**Buildable by us in this course:** yes.
It is one booking flow, one payment integration, and one upload field, and it is the reason the project exists.

**Confidence:** high.
Consistent across all four alternatives, and two of them are mature enough that this is not an oversight.
```

Also record the gaps you rejected, with the reason.
This is the most useful section in the file, because it is where the customer can see the shape of what you decided against and overrule you.

## Step 5: Write The Value Proposition

A value proposition is a claim about why your product is worth attention over the alternatives.
One short positioning statement, tied to a gap, honest about its cost.

```markdown
## VP-01

One link that carries the whole booking.

**User:** independent coach who sells one-hour sessions online.
**Problem:** the booking, the payment, and the meeting materials live in three tools, so unpaid clients block slots and prepared clients are rare.
**What we do that the alternatives do not:** one link where the client books a slot, pays, and receives the video link and the materials, with no second account.
**Closes:** [GAP-01](gap-analysis.md#gap-01).
**What it costs:** the expert connects a payment provider before the first booking and uploads the materials per meeting type.
This is a real setup cost.
**How a competitor would respond:** Calendly or Cal.com could bundle payments and materials into the free tier.
The defensible part is the single flow and its pricing, not the fields.
```

Three things to get right:

- **Say better at what, measured how.** "More modern" is not a claim. "A client can pay and get the meeting link in one booking, without a second account" is a claim someone can check.
- **Name what you give up.**
  Every advantage is bought with something: more setup, a narrower feature set, a worse default, a higher price.
  A differentiation with no cost is a misjudgement, and finding it now is cheaper than finding it later.
- **Say how a competitor would respond.**
  If copying you takes them a week, you do not have a moat, and you should know that before you build on it.

Two or three value propositions, built on your strongest gaps.
More than that and you are listing features.

## Step 6: Write Down What You Are Assuming

Every proposition rests on beliefs you have not verified: that the user has the problem you think they have, that nobody is coming for this, that the constraint you were told about is real.
List them in `docs/assumptions.md`, one `ASM-nn` section each, and say how you would check each one.
Then go back to the gaps and value propositions and cite each assumption under `**Rests on:**` in every one that rests on it, so the claim carries its own risks.
Keep only the ones something rests on: if a belief turned out false and nothing would change, it is not worth tracking.

```markdown
## ASM-01

Experts will upload materials per meeting type instead of sending them in chat after booking.

**How to check:** run the materials prototype with two tutors in Week 2.
**Status:** Open

## ASM-02

Clients will pay at booking rather than on the day.

**How to check:** only the customer can settle it, so it goes in the kickoff report's open questions.
**Status:** Open

## ASM-03

Clients open the booking link on a phone.

**How to check:** ask two experts where their last ten bookings came from, in Week 2.
**Status:** Open
```

`VP-01` in `docs/research/value-proposition.md` then gains one line, and `GAP-01` gains the same line naming `ASM-01`:

```markdown
**Closes:** [GAP-01](gap-analysis.md#gap-01).
**Rests on:** [ASM-01](../assumptions.md#asm-01), [ASM-02](../assumptions.md#asm-02), [ASM-03](../assumptions.md#asm-03).
```

The customer decides the scope.
This file is not a list of questions for them; it is your own map of what the scope rests on, so that when the scope is decided you know what you are betting on.
The questions you do put to the customer go in the meeting report's open questions instead.

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
