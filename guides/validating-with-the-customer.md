# Guide: Validating With The Customer

How to prepare and run a meeting after the kickoff, and how to record what it changed.

The rules are in [Every Meeting](../requirements/customer-meetings-requirements.md#every-meeting), and in [Validation](../requirements/prototypes-requirements.md#validation) when you show a prototype; the file shapes are in [Where Meeting Artifacts Live](../requirements/customer-meetings-requirements.md#where-meeting-artifacts-live).
This guide is the method for every weekly meeting after the kickoff, whatever you bring to it: a prototype, working software, or a question the team cannot settle alone.
The kickoff is a different meeting, and its method is in [The Kickoff Meeting](customer-kickoff-meeting.md).

**Timebox:** the meeting is ~30 minutes, and the writing is most of the work.
Ask for 60 if the customer can give it.

<h2>Table of contents</h2>

- [What You Produce](#what-you-produce)
- [Step 1: Write Down What The Meeting Is For](#step-1-write-down-what-the-meeting-is-for)
- [Step 2: Derive The Questions From The Target](#step-2-derive-the-questions-from-the-target)
- [Step 3: Cut Questions That Cannot Change Anything](#step-3-cut-questions-that-cannot-change-anything)
- [Step 4: Order The Meeting](#step-4-order-the-meeting)
- [Step 5: Run The Meeting](#step-5-run-the-meeting)
- [Step 6: Trace What Changed](#step-6-trace-what-changed)
- [Common Mistakes](#common-mistakes)

## What You Produce

```text
reports/week-NN/meeting-script.md     the target, the agenda, the questions, the roles
reports/week-NN/meeting-report.md     the decisions, the action points, the disagreements
reports/week-NN/meeting-notes.md      or meeting-transcript.md, never both
reports/week-NN/prototypes.md         when you showed a prototype: what it tested, what they said
the story issue                       a dated comment on what the meeting changed or accepted
reports/week-NN/README.md             the meeting decisions linked, the changed US-nn named
```

## Step 1: Write Down What The Meeting Is For

This is not the kickoff again, and the difference is the whole point of a later meeting.
At the kickoff the problem and the direction were both open.
Now you bring something concrete: a prototype, a story that runs, or a decision you cannot make alone.
The one question is: **which of these is wrong?**

Write the target at the top of the script, in one sentence.
A good target is specific enough that you could tell afterwards whether you hit it.
A bad target is a subject, not a target: "discuss the product".
You will spend thirty minutes on the parts you want to talk about and leave with nothing you can change.

The assignment lists what this week's meeting has to settle; your target turns that list into the one question the meeting exists to answer.

Re-read the previous meeting report before you write anything.
Its open questions are still open, and its action points are due; if you have carried one out, the customer should hear how it went.

## Step 2: Derive The Questions From The Target

Take your target and list what you believe that, if it were false, would make you wrong.
Each belief on that list is an area: a place where the customer's answer could change something you wrote.
An area that does not serve the target is deleted, even if it was in an earlier script.

Write every question numbered, and tag it open or closed.
An open question asks the customer to tell you something; a closed one can be answered yes or no.
The tag is what you check the question against in [Step 3](#step-3-cut-questions-that-cannot-change-anything).

Ask permission before you record, per [Permission Questions](../requirements/customer-meetings-requirements.md#permission-questions).

## Step 3: Cut Questions That Cannot Change Anything

A question earns its place only if an answer could change something in the target, which [Meeting Script](../requirements/customer-meetings-requirements.md#meeting-script) requires.
For each question, ask what answer you expect, and what you would do differently if the answer went the other way.
If no answer changes anything, cut the question; asking it costs meeting time and tells you nothing.

Rewrite at least one question and record it in `## Key improvements`, per [Meeting Script](../requirements/customer-meetings-requirements.md#meeting-script).
The principle is yours; what matters is that a reader can see the before, the after, and why the second one is better.

## Step 4: Order The Meeting

Turn the areas into the script's `## Agenda`: the parts of the meeting in the order you will run them, what you show in each, and which questions you ask there, per [Meeting Script](../requirements/customer-meetings-requirements.md#meeting-script).

Open with the permission questions, then the previous meeting's open questions and due action points, because the customer will ask about them if you do not.
Then show one thing per part, and ask about it while it is on the screen.
A question about something the customer has not seen yet gets an opinion about your description of it.
When you show working software, run each story against its acceptance criteria, one `AC-nn` at a time, and ask for the verdict before you move on.

Put the part you are least sure of first after that.
If the meeting runs short, it is the last part that gets cut, and the last part should be the one whose answer you can most nearly predict.
Keep the final two minutes for reading back the decisions and action points, so the customer hears what you think was settled while they can still correct it.

## Step 5: Run The Meeting

Assign the three roles before the meeting, per [Every Meeting](../requirements/customer-meetings-requirements.md#every-meeting).
The whole team attends.

The observer's job is the one that catches the surprise.
The note taker records what was said; the observer records the two questions you did not get to and the thing the customer said in passing and nobody wrote down.
That passing remark is often the most useful thing in the meeting.

Do not pitch.
You are not asking permission, and a customer who agrees with everything has told you almost nothing.
If the customer says "that sounds great" about your own idea, the useful next question is "what would you want to see for that to be true?" or "what is the risk in it?".
Those are the questions that produce a `## Disagreements` row.

## Step 6: Trace What Changed

The meeting report's `## Decisions` table is the record.
`Changes` names what each decision changed, and links it when the artifact has a stable link: usually a `US-nn`, with the `AC-nn` when a specific criterion changed, or the constraint, assumption, document, or scaffold for anything else, per [Meeting Report](../requirements/customer-meetings-requirements.md#meeting-report).
A decision whose artifact does not exist yet says `TBD`, and the artifact that later carries it links back to the report.
That table is where a reader looks to see whether the week was a test or a formality.
The weekly report links that table rather than copying it; only a decision the team took outside the meeting goes in the weekly report's own `## Decisions` table, per [Weekly Public Report](../requirements/weekly-report-requirements.md#weekly-public-report).

Cite a decision by quoting its sentence and linking `#decisions`; there is no decision identifier.

Make sure the change reaches every place it affects, because each one answers a different question:

| Where                                              | Question it answers                           |
| -------------------------------------------------- | --------------------------------------------- |
| `reports/week-NN/prototypes.md`, after a prototype | What did we show, and what did they say?      |
| `meeting-report.md` `## Decisions`                 | What did we decide, and what did it change?   |
| the story issue, or the doc that changed           | What does it say now, and when did it change? |
| `reports/week-NN/README.md`                        | Where are the decisions, and what changed?    |

After a prototype, the change is required in all four places by [Validation](../requirements/prototypes-requirements.md#validation).
The issue comment is the one that is easy to skip, and skipping it is what makes a decision invisible to a reader of the stories.
Add a dated comment to the story issue saying what changed and why, naming the `AC-nn` if a criterion changed, and linking the meeting report.
A story edited three times with no comment gives a reader no way to tell what the customer actually settled from what the team decided on its own.

A story the customer accepted is a decision too.
Its row names the `US-nn` and says `None` with the reason, and the story issue gets the same dated comment with the verdict, per [Showing Working Software](../requirements/customer-meetings-requirements.md#showing-working-software).
A rejected story names the `AC-nn` it failed, in the row and in the comment.

If nothing changed after a prototype, that is itself the finding, and it is a serious one.
Either your prototype tested something the customer already agreed with, or you asked questions whose answers could not have contradicted anything.
Write that down too; it is more useful than a week that looks busy.
A meeting that showed working software may change nothing, because a customer accepting a story you built is a result.
It is still a warning when the meeting produced no decision at all, or when nobody disagreed with anything you showed.

## Common Mistakes

- **Re-running the kickoff.**
  Twenty questions about business goals decides nothing, because those were settled at the kickoff.
- **A target that is a subject.**
  "Discuss the vision" is not a target you can miss.
- **Asking about the product you planned.**
  You are the only person in the room who cannot be objective about it.
- **Treating approval as the result.**
  The `## Disagreements` table should not be empty.
- **Deciding but not commenting.**
  A decision in the meeting report that never reaches the story issue has not actually changed anything.
- **Showing the easy part.**
  If the customer is impressed and you are not surprised, you showed the wrong story.
- **Every decision `None` or `TBD`.**
  Unless the decisions are accepted stories, a week whose decisions changed nothing visible is the same warning as an empty `## Disagreements` table: the meeting tested nothing a reader can point at.
- **Twelve questions in thirty minutes.**
  You will get through five well, and the rest will be a list somebody read aloud.
