# Guide: User Stories And Prototyping

How to turn a gap into something a customer can react to, and something a team can build.

The rules are in [The Story](../requirements/user-stories-requirements.md#the-story), [Acceptance Criteria](../requirements/user-stories-requirements.md#acceptance-criteria), [MoSCoW Prioritization](../requirements/user-stories-requirements.md#moscow-prioritization), and [Validation](../requirements/prototypes-requirements.md#validation), and the file shapes are in [Where Stories Live](../requirements/user-stories-requirements.md#where-stories-live) and [Where Prototypes Live](../requirements/prototypes-requirements.md#where-prototypes-live).
This guide is the method, with a worked shape for each step.

**Timebox:** about two days.
Most of it is arguing about which stories are the same story wearing two hats, which is time well spent.

<h2>Table of contents</h2>

- [What You Produce](#what-you-produce)
- [Step 1: Write The Goal And The Boundary](#step-1-write-the-goal-and-the-boundary)
- [Step 2: Turn Each Gap Into Stories](#step-2-turn-each-gap-into-stories)
- [Step 3: Write Criteria Somebody Else Can Run](#step-3-write-criteria-somebody-else-can-run)
- [Step 4: Prioritize, Then Pick The First Thing To Build](#step-4-prioritize-then-pick-the-first-thing-to-build)
- [Step 5: Choose What To Prototype](#step-5-choose-what-to-prototype)
- [Step 6: Build The Cheapest Thing That Gets A Reaction](#step-6-build-the-cheapest-thing-that-gets-a-reaction)
- [Common Mistakes](#common-mistakes)

## What You Produce

```text
docs/product-vision.md         the goal, the constraints, the stakeholders, the boundary, the context diagram
GitHub issues                  one per story, titled US-nn: <title>, with its Traces to and Rests on lists, AC-nn criteria, and labels
reports/week-02/README.md      the minimum usable product candidate: core task and stories
reports/week-02/prototypes.md  what you showed, what they said, what changed
```

## Step 1: Write The Goal And The Boundary

Start with the goal, in one sentence: what must be true for this product to have worked.
Trace it to the `VP-nn` it supports, so a reader can check that the goal is the one your Week 1 research actually argued for.

Then write the boundary.
The boundary is the line between what your product does and what the people and systems around it do, and every product has one whether or not it is written down.
Writing it down means listing the jobs somebody could reasonably expect of your product that it will not do.
Each of those jobs is one **boundary item**, and [Boundary](../requirements/product-vision-requirements.md#boundary) says what an item has to record.
The list is what the context diagram is checked against, and what you check your stories and priorities against.

To find boundary items, look in three places:

- **The alternatives you did not follow.**
  What does the closest alternative do that you decided not to?
- **The external systems.**
  Every system your product talks to already does some job, such as hosting the call or sending the email; that job is outside your product.
- **The kickoff.**
  Every "no" or "we already have that" the customer said is a candidate item.

When you decide who handles an item, take "nobody" seriously.
It is a legitimate answer, and it is the one the customer is most likely to argue with, which is why it is worth writing down.
If the only reason you can give for an item is that it felt out of scope, you have not decided it yet, so take it to the customer.

Give each item its own `BND-nn` section, with one job in it, never a paragraph of several.
A paragraph cannot be disagreed with item by item, and a story or a decision cannot cite half of one.

Then draw the context diagram from the list rather than from memory.
Start with every system and actor that the list says handles a job, then check the diagram against the list the other way.
See [Stakeholders](../requirements/product-vision-requirements.md#stakeholders) and [System Context](../requirements/product-vision-requirements.md#system-context).

## Step 2: Turn Each Gap Into Stories

Work gap by gap.
For each `GAP-nn`, ask what a user would be trying to do that they cannot do today, and write that as a story.

Not every story starts at a gap.
A decision from `docs/decisions.md` or an action point can add one.
When the story has an origin, record it in the story's `Traces to` list, and never invent a `GAP-nn` link to fill the list.
When a story rests on a belief you have not checked, record the belief as an `ASM-nn` in `docs/assumptions.md` and list it in the story's `Rests on`; see [Assumption Requirements](../requirements/assumptions-requirements.md).

Whatever its origin, a story reaches the vision through its `VP-nn`.
The vision has one goal and no identifier, so "traces to the vision" would be true of every story and would check nothing; the value proposition says which part of the goal the story serves.
If a story you want to build supports a `VP-nn` your goal does not cite, the story or the goal is wrong; [The Story](../requirements/user-stories-requirements.md#the-story) says how to settle it.

The shape is always the same three lines:

```text
As a <user>
I want to <action>
so that <value>
```

A user is any actor with a goal: the person the product serves, and the operator or administrator who keeps it running.

The third line is the one that catches a story written from a feature rather than from a need.
If you cannot finish it with a value, you have written a task, not a story, and the story is hiding an assumption you have not checked.

**Which `US-nn` does a new story take?**
The next free one in the registry, per [Where Stories Live](../requirements/user-stories-requirements.md#where-stories-live), and not its issue number.
This prints the highest `US-nn` issued so far, closed stories included:

```text
gh issue list --label user-story --state all --limit 1000 --json title \
  --jq '[.[].title | capture("^US-(?<n>[0-9]+)") | .n | tonumber] | max'
```

A team that marks stories with an issue type or a field instead of the label filters by that marker instead.

**How specific should a story be?**
A story states the problem precisely and leaves the solution open.
The test is who settled the detail.
What only your team would decide, such as a screen, a component, or a library, stays out, because writing it down decides the design for whoever builds the story.
What the user or the customer has settled is part of the problem, and the story may carry it.

Put a settled detail in an acceptance criterion, and keep the statement open unless the specific thing is itself the need:

```text
As a coach
I want booked sessions to appear in the calendar I already use
so that I do not double-book a slot

AC-01: A session booked by a client appears in the coach's Google Calendar, at the booked time.
```

The customer told you the coach uses Google Calendar, so the criterion names it.
If the coach later moves to another calendar, the criterion changes and the need does not.
A detail that holds for the whole product is a constraint in the vision rather than a criterion repeated in every story.

A useful cross-check is the context diagram.
A specific that sits outside the boundary, on the diagram rather than in the product, such as an external system the user already works with, is usually a fact about the problem.
A specific that sits inside the product is usually your design.

Expect a story to get more specific as it gets closer to being built, because that is when the customer settles the details.
A detail the customer settles is a story change, and it is recorded like any other; see [Validating With The Customer](validating-with-the-customer.md).

Write **8 or more**, each as a GitHub issue from the issue form.
A gap often turns into three or four stories, because a single sentence about a need usually covers a happy path, a failure, and a way to undo the thing.

**Write anything too big to build and verify in a week as several stories.**
A need that takes three weeks is three stories, and sizing it is not a detail: an unbuildable story is one your team will quietly abandon, and an abandoned story is one your `Must Have` list lies about.
Write the smaller stories from the start rather than one large story you mean to break up later.
Each one traces to the same `VP-nn`, and to the same `GAP-nn` when there is one, so a reader can see that they belong together.

**Write the story you expect to build last.**
It is usually the most honest one, because it is the one nobody has an emotional attachment to.
If it turns out to be the most important, that is a finding.

## Step 3: Write Criteria Somebody Else Can Run

Acceptance criteria are the part of a story that makes it a requirement rather than a hope.
The test is simple: could somebody who is not you run the check and get the same answer?

Write **at least two** per story.
One criterion for the happy path, and one for what happens when something is missing, empty, or wrong.
A single criterion per story is easy to satisfy with a line of prose that tests nothing.
The criteria go in the issue form; a `Won't Have` story may carry none.

Number each criterion `AC-01`, `AC-02`, and so on, from the top of the story, and write the ID at the start of the criterion.
The ID is stable inside the issue: an edit keeps it, a removed criterion retires it, and a criterion added later takes the next free number.
Another artifact cites a criterion by its `AC-nn` together with the story issue, as a link to the issue or its `US-nn` when the issue is already linked.
The notation is not fixed; what has to be unambiguous is which story and which criterion.

Any notation works, including `Given`/`When`/`Then`.
The notation is not the requirement; observability is.
Compare:

| Criterion                                                                                                                     | Verdict                                   |
| ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------- |
| Works properly.                                                                                                               | Not a criterion, and not testable         |
| The client sees a confirmation.                                                                                               | Observable, but the answer is a judgement |
| `AC-01`: Given a held slot whose client has not paid, when the hold expires, then the slot shows as free on the booking page. | Observable, and the answer is yes or no   |

A criterion may name a screen, a field, or a system state, because that is what an observer checks; the story may not, because that would be the design.

When a criterion is hard to write, that is information about the story rather than about your writing.
You probably do not yet know what the product does in that case, which makes it a good candidate for the prototype.

## Step 4: Prioritize, Then Pick The First Thing To Build

MoSCoW is a four-way priority scale: `Must Have`, `Should Have`, `Could Have`, and `Won't Have`.
[MoSCoW Prioritization](../requirements/user-stories-requirements.md#moscow-prioritization) defines each value and what a priority has to record.
Prioritize every story with it.
The point of the exercise is not the label, it is the argument: whoever disagrees with a `Must Have` has to say why the product is not the product without it.

The priority reason is where that argument is written down.
Write it as a comparison, because a comparison is what somebody can disagree with: why this story is above the one you made `Should Have`, or why the core task still finishes without it.
If the only reason you can write is the definition of the label, you have not decided yet, so put the story next to its neighbours and decide.

A `Won't Have` story is not built, but write it down as an issue and close it as not planned, with the reason, instead of quietly leaving a story out.
A reader can argue with a recorded `Won't Have`; they can only guess about a missing one.

Then name the **minimum usable product candidate**, per [the requirement](../requirements/user-stories-requirements.md#minimum-usable-product-candidate).

This is the hardest decision of the week and it belongs here, where the evidence is.
Work in this order:

1. Pick the core task first: the one thing a user has to be able to finish for the product to be worth opening.
   Write it as a sentence a user would recognise, not as a feature.
2. Walk through that task from start to finish and pick the fewest `Must Have` stories that get the user to the end.
   A story that the task never touches stays out, however important it is.
3. Check each story in the candidate by removing it and walking the task again.
   If the task still finishes, the story is not part of the candidate.

Whatever you name here is a proposal, not a commitment, so a candidate of eight stories is a postponement.
Two or three stories that a user can finish in one sitting is a more honest answer.

## Step 5: Choose What To Prototype

A prototype answers one question.
Not "is this good", but "is this the right shape".

Look at your list and find the story where you are least sure.
That is usually:

- the one where you guessed at the workflow, because you have not watched anyone do the job;
- the one where the interesting part is a technical risk nobody has tested;
- the one where the customer said something you did not fully understand in the kickoff.

A story that traces to an `ASM-nn` still `Open` names its own unchecked belief, so read those first.

Say the question in one line before you build anything, and write it down.
If you cannot write the question, you are not ready to prototype, and building first is how a team ends up showing a prototype of the easy part.

**Which story or gap does your prototype test?**
Answer that explicitly, in `prototypes.md`, linking the issue of each story and naming any `AC-nn` it exercises, or naming the `GAP-nn` when no story covers it yet.
When the risky part is an assumption, cite its `ASM-nn` as well.
A prototype that tests one story is fine, as long as you say which one and why that one.

## Step 6: Build The Cheapest Thing That Gets A Reaction

Match the fidelity to the question.
A high-fidelity clickable prototype is the wrong tool for "does the customer recognise this problem", because you will spend two days on it and the customer will comment on the colour.
A pen on paper is the right tool.

Three forms, and all three are acceptable:

- **Paper or static image.**
  Fastest.
  Good for layout, vocabulary, and "is this the right problem".
- **Clickable design tool.**
  Good for a flow you want a customer to move through.
  Share it view-only, never editable.
- **Code spike.**
  Good when the risk is technical rather than visual.
  An agent can build a working sketch quickly.

When the question is only whether the idea can work at all, that is a proof of concept; record it the same way.

On a code spike: **keep it off `main`.**
Do it on a branch, show it from there, and do not merge it, per [Where Prototypes Live](../requirements/prototypes-requirements.md#where-prototypes-live).
The evidence is the screenshot and your record, not the branch, so the branch is genuinely disposable and the repository does not have to carry it for the rest of the course.
If you want a reader to see the code, open a pull request from the branch, with its task issue like any other, and close it without merging.
Link that pull request from your record rather than the branch: the pull request keeps the commits after the branch is deleted, and a branch link breaks.

Then show it, and record what happened.
The recording is the artifact; the prototype is not.
See [Validating With The Customer](validating-with-the-customer.md) for the meeting, and [Where Prototypes Live](../requirements/prototypes-requirements.md#where-prototypes-live) for the file shape.

## Common Mistakes

- **Writing stories from the feature list.**
  If your story names a part of your design, such as a component, a screen, or a button, you have already decided the design and stopped learning.
- **Writing a story too vague to check.**
  "I want a payment system" names an area, not a need, and no criterion can be written for it.
  Say who pays, for what, and what goes wrong when they do not.
- **Forcing a story onto a gap that does not cover it.**
  If the need came from a decision or an action point, cite its `DEC-nnn` or the action point in `Traces to` instead; a story that traces only to its `VP-nn` is fine.
  A false link makes a reader stop trusting the real ones.
- **One criterion per story.**
  It is the easiest number to hit and the least useful.
- **A `Must Have` list that is everything.**
  The label stops meaning anything, and a `Must Have` list nobody can build is not a priority.
- **Prototyping the part you are sure about.**
  It feels productive, it demos well, and it teaches you nothing.
  The customer being impressed is not the same as the customer being surprised.
- **Treating agreement as validation.**
  A prototype the customer approved is a prototype you showed them the answer to.
- **A prototype that becomes the product by accident.**
  If it is going to be code, it goes through planning like everything else.
  The spike's job is to be thrown away.
- **Filling the week with artifacts.**
  A vision, eight stories, and a prototype that changed one story is a good week.
  Eleven stories and no change is a worse one.
