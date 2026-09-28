# Guide: Preparing The Customer Interview

How to prepare for the meeting where the customer tests your direction.
What the meeting has to satisfy is defined in [Process Requirements](../requirements/process-requirements.md#meeting-with-the-customer) and [Artifact Requirements](../requirements/artifact-requirements.md#interview-script); this guide is the method.

**Timebox:** about half a day, most of it spent on Step 1.
A script that comes out of an argument between three team members is worse than a worse script that comes out of a discussion.

<h2>Table of contents</h2>

- [What You Produce](#what-you-produce)
- [Step 1: Write Down What You Are Testing](#step-1-write-down-what-you-are-testing)
- [Step 2: Build The Questions From Five Areas](#step-2-build-the-questions-from-five-areas)
- [Step 3: Break Your Own Questions With The Mom Test](#step-3-break-your-own-questions-with-the-mom-test)
- [Step 4: Record What You Improved](#step-4-record-what-you-improved)
- [Step 5: Assign Roles](#step-5-assign-roles)
- [Common Mistakes](#common-mistakes)

## What You Produce

```text
reports/week-NN/interview-script.md   what you believe, what you are testing, and the questions
```

The meeting itself produces a [meeting report](../requirements/artifact-requirements.md#meeting-report), and a transcript or notes.
The script is what you wrote before you knew any of the answers.

## Step 1: Write Down What You Are Testing

A script written without a target is a list of things you already want to ask.

Open with your problem-space sentence, then the two or three things you currently believe, then which of those beliefs this meeting is meant to test.
That last list is the reason the meeting exists, and it is also what the [meeting report](../requirements/artifact-requirements.md#meeting-report)'s `## Open questions` table is drawn from later.

The beliefs worth testing are the ones you would have to change your product for.
Not "do they like dashboards" but "we think nobody lets a team attach its own rules to its own code, and we are about to spend the course building that".
If the customer says no, the answer should be able to change your Week 3.

## Step 2: Build The Questions From Five Areas

Two questions per area is the minimum, and it is enough.
More than about four in an area and you will read them faster than you will listen.

**Business goals.** Why build rather than buy, and what this changes about their work when it works.

**End users.** Who touches the code, who reviews the result, and whether those are the same person.
A gap that only matters to one role is a gap for that role.

**Current workflow.** The past tense is the whole trick here.
Ask them to walk through the last time it happened, step by step.
The steps they describe are the real process, and it is often not the one on their wiki.

**Pain points and constraints.** What was most annoying last time, and what cannot change.
Constraints are worth more here than desires, because a constraint you discover in Week 5 is a redesign.

**Scope.** If only one thing shipped, which one survives, and what is out.
Ask about the out-of-scope answer directly.
Customers say yes to more than they mean.

Write each question down numbered, and tag it open or closed.
The tag is what you check the question against in Step 3, so do it as you write rather than afterwards.

## Step 3: Break Your Own Questions With The Mom Test

[Read the three rules first](https://hatrabbits.com/en/the-mom-test/).

1. **Talk about their life, not your idea.**
2. **Ask about specifics in the past, not opinions about the future.**
3. **Talk less.**

They are short because they are mostly a warning.
Most bad customer questions are our idea coming back wearing the customer's clothes.

| Instead of                                                    | Ask                                                                             |
| ------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| "Would you like a dashboard?"                                  | "What do you look at when you want to know what a model did with your code?"   |
| "Is latency important to you?"                                 | "When the round trip got slow last month, what did you do?"                    |
| "Do you like our pricing?"                                    | "What are you paying now, and what is annoying about it?"                      |
| "Would you switch from your current tool for better redaction?" | "What made you pick the running coach over the alternatives?"                 |

The rewrite is not only about the words.
"Would you switch" is untestable, because nobody predicts their own behaviour accurately.
The last row becomes a question about a past decision, which already happened and which they remember.

## Step 4: Record What You Improved

Close the script with `## Key improvements`, and for at least two questions give the before, the after, and the principle.

This section is not proof that you read the Mom Test.
It is the part a reader uses to tell whether your questions were considered or merely collected, and it is the only part of the script that survives into the meeting report.

## Step 5: Assign Roles

Three roles, three people, before you start rather than during:

- **Interviewer** asks. One person, so the customer is not answering four voices at once.
- **Note taker** records answers, verbatim where the wording matters.
- **Observer** watches for what was not said.
  The constraints nobody stated out loud are the ones that surprise you in Week 5, and the observer is the only role positioned to catch them.

Deviate from the script when an answer opens something better.
The script is a floor on what you cover, not a ceiling on the meeting.

## Common Mistakes

- **Questions about the product you are planning.**
  The customer is the only person in the room who cannot be expected to be objective about your idea.
- **Twenty questions and a thirty-minute meeting.**
  You will get through nine of them well, and the rest will be a list somebody read aloud.
- **A script with no history in it.**
  "Is security important?" gets you nothing.
  "Walk me through the last time this went wrong" gets you the incident.
- **Treating agreement as a result.**
  A customer who says "that sounds great" to a question about your own idea has told you almost nothing, and `## Disagreements` in the meeting report will be empty when it should not be.
- **No `## Key improvements` section.**
  The section is the assignment. The script without it is just notes.
