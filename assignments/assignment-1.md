# Assignment 1: Initial Project Research

**This week's dates:**

- Soft deadline: Thursday 1 October, 23:59
- Hard deadline: Friday 2 October, 23:59.

See [Deadlines And Submission](../course/rules.md#deadlines-and-submission).

One submission per team.

Week 1 is a research week.
There is no code, no prototype, and nothing to deploy.
What you hand in is a defensible understanding of the problem your project lives in, and a proposed direction that is traceable to evidence.

<h2>Table of contents</h2>

- [Objectives](#objectives)
- [Before You Start](#before-you-start)
- [Part 1: Form The Team And Choose The Project](#part-1-form-the-team-and-choose-the-project)
- [Part 2: Set Up The Repository](#part-2-set-up-the-repository)
- [Part 3: Research The Alternatives](#part-3-research-the-alternatives)
- [Part 4: Compare The Alternatives](#part-4-compare-the-alternatives)
- [Part 5: Find The Gaps](#part-5-find-the-gaps)
- [Part 6: State Your Value Proposition](#part-6-state-your-value-proposition)
- [Part 7: Meet The Customer](#part-7-meet-the-customer)
- [Part 8: Report On Your AI Usage](#part-8-report-on-your-ai-usage)
- [What Good Looks Like](#what-good-looks-like)
- [Assignment Report In The Repository](#assignment-report-in-the-repository)
- [Assignment Report On Moodle](#assignment-report-on-moodle)
  - [Submission Procedure](#submission-procedure)
- [Checklist](#checklist)

## Objectives

By the end of this week you should be able to show an instructor:

- Which existing products solve your user's problem, and how well each one does it.
- Where they all fall short, and which of those shortfalls are worth building on.
- What your product will do differently, what that costs, and what you are assuming.
- A public repository that already works the way the course expects it to work.

## Before You Start

Read these once.
They are the rules; this assignment only tells you what this week requires.

| Read                                                                               | For                                                                                  |
| ---------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------ |
| [Course rules](../course/rules.md)                                                 | What is public, what is private, deadlines, AI policy                                |
| [General Requirements](../requirements/general-requirements.md)                    | What the terms mean, `docs/` versus `reports/`, and the identifier rules             |
| [Visibility Requirements](../requirements/visibility-requirements.md)              | What is public, what goes in Moodle only, and screenshots                            |
| [Research Requirements](../requirements/research-requirements.md)                  | What counts as a valid alternative, gap, and value proposition, and where each lives |
| [Customer Meeting Requirements](../requirements/customer-meetings-requirements.md) | The kickoff, and the meeting script, report, and transcript                          |
| [Weekly Report Requirements](../requirements/weekly-report-requirements.md)        | The weekly report, the AI usage report, deviations, and the Moodle PDF               |
| [Repository Requirements](../requirements/repository-requirements.md)              | GitHub, pull requests, branch protection, link checking, permalinks, snapshots       |
| [Guide: researching alternatives](../guides/alternatives-research.md)              | How to find and evaluate your set                                                    |
| [Guide: comparison to value proposition](../guides/comparison-and-synthesis.md)    | How to build the table, find the gaps, write the proposition                         |
| [Guide: the kickoff meeting](../guides/customer-kickoff-meeting.md)                | How to write the kickoff meeting script and run the meeting                          |

## Part 1: Form The Team And Choose The Project

1. Form a team of 3 or 4.
2. Choose one project from the course catalog.
3. Note your team number and project name.
   Both go in your week report and your Moodle submission.
4. Create a GitHub organization.
5. Create a repository in that organization.
6. In the repository, invite every team member as a collaborator with write access.

## Part 2: Set Up The Repository

Complete every requirement marked `**Since: W1**` in [Repository Requirements](../requirements/repository-requirements.md).
In short, this week you must have:

1. A **public** repository in the team's own organization, with `main` as the default branch and all members as collaborators.
2. `LICENSE` with the MIT License text, and a `.gitignore` covering editor state, OS files, `.env` and other secrets, and build output.
3. A root `README.md` meeting the [minimum contents](../requirements/repository-requirements.md#root-readme).
4. `main` **protected**: pull requests required, at least one approval, no self-approval.
   Verify each setting, and screenshot it.
5. A pull request template at `.github/pull_request_template.md`.
6. A Lychee link check running on pull requests and on `main`, checking every Markdown file in the repository, and failing on a broken link.
   The latest `main` run must be green.
   See [Link Checking](../requirements/repository-requirements.md#link-checking) for a working configuration and the rules on excluding links.
7. Every action pinned to a commit SHA, with `.github/dependabot.yml` keeping the pins current.
   See [Pinning Third-Party Actions](../requirements/repository-requirements.md#pinning-third-party-actions).
8. The Week 1 pull-request minimums: one approved and one merged pull request, and every member committing through a pull request and approving someone else's (one approval per PR is enough).
   See [Branch Protection And Pull Requests](../requirements/repository-requirements.md#branch-protection-and-pull-requests).

The repository structure you are building towards:

```text
.
├── README.md
├── LICENSE
├── .gitignore
├── .lycheeignore
├── .github/
│   ├── dependabot.yml
│   ├── pull_request_template.md
│   └── workflows/lychee.yml
├── docs/
│   ├── assumptions.md
│   ├── decisions.md
│   └── research/
│       ├── alternatives.md
│       ├── comparison.md
│       ├── gap-analysis.md
│       └── value-proposition.md
└── reports/
    └── week-01/
        ├── README.md
        ├── candidate-list.md
        ├── meeting-script.md
        ├── meeting-report.md
        ├── meeting-transcript.md   # when the meeting was recorded
        ├── ai-usage.md
        └── images/                 # branch-protection.png and other screenshots
```

## Part 3: Research The Alternatives

1. Write one sentence defining the problem space: whose problem this is and what they are trying to do.
   Put it at the top of `docs/research/alternatives.md`.
2. Search widely first, and record the search in `reports/week-01/candidate-list.md`.
   Collect ten or more candidates with a URL and one line each on why each might be relevant, then commit the whole list.
   Keep the ones you cut: if you need another product later, you will either reuse one you rejected or spend a day rediscovering it.
   See [Build A Wide Candidate List](../guides/alternatives-research.md#step-2-build-a-wide-candidate-list).
3. Research **3 to 4 alternatives**, as a mix of a direct competitor, an adjacent substitute, and an open-source or self-hosted option, per [Alternatives](../requirements/research-requirements.md#alternatives).
4. Choose at least 6 properties to compare on, **before** you evaluate anything.
5. Write one `ALT-nn` section per alternative in `docs/research/alternatives.md`, with the observations, strengths, and at least two weaknesses each, every claim pointing at something you looked at.
6. Build a board for the screenshots and working notes.
   Share it view-only and link it from the file.
   At least two screenshots per alternative, of the screens or flows that matter for your properties.
   See [Where The Evidence Lives](../guides/alternatives-research.md#where-the-evidence-lives).

## Part 4: Compare The Alternatives

Write `docs/research/comparison.md`: a qualitative analysis table whose rows are your properties, whose columns are the alternatives, and whose every cell is analysis that traces back to an `ALT-nn` observation.

Fill it property by property.
Make strengths relative, and separate what you observed from what you concluded.
See [Step 2: Fill The Table](../guides/comparison-and-synthesis.md#step-2-fill-the-table) and [Step 3: Read The Table As A Whole](../guides/comparison-and-synthesis.md#step-3-read-the-table-as-a-whole).

## Part 5: Find The Gaps

Write `docs/research/gap-analysis.md`.
Every gap needs a `GAP-nn` ID, and must pass all four tests in [Gap Analysis](../requirements/research-requirements.md#gap-analysis): somebody needs it, the alternatives do not serve it, it is reachable, and a team of 3 or 4 could build it in this course.

Also record the gaps you **rejected** and why.
That list is not optional; it is the part your customer will argue with, and you want that argument to happen now.

## Part 6: State Your Value Proposition

Write `docs/research/value-proposition.md`.
Two or three `VP-nn` entries, each one a short positioning statement, each closing at least one `GAP-nn`, each naming what it costs and how a competitor would respond.
Then write `docs/assumptions.md`: one `ASM-nn` section for each belief your value propositions rest on that you have not verified, cited under `**Rests on:**` in each gap and value proposition that rests on it.

The rules are in [Value Proposition And Differentiation](../requirements/research-requirements.md#value-proposition-and-differentiation) and [Assumption Requirements](../requirements/assumptions-requirements.md), and the method in [Step 5: Write The Value Proposition](../guides/comparison-and-synthesis.md#step-5-write-the-value-proposition) and [Step 6: Write Down What You Are Assuming](../guides/comparison-and-synthesis.md#step-6-write-down-what-you-are-assuming).

## Part 7: Meet The Customer

Your customer is a course instructor.
In every artifact you call them `Customer`, never a real name and never "the instructor".
Hold one kickoff meeting with them this week: present the project, your reading of the problem, and your proposed direction, and find out where they disagree.

The rules are in [Every Meeting](../requirements/customer-meetings-requirements.md#every-meeting) and [The Kickoff](../requirements/customer-meetings-requirements.md#the-kickoff), and the method is in [The Kickoff Meeting](../guides/customer-kickoff-meeting.md).
This week specifically:

1. **Write `reports/week-01/meeting-script.md` first**, with at least two questions in each of the five kickoff areas, an `## Agenda` whose early part presents your reading of the problem and your direction with `docs/research/value-proposition.md` shown, and `## Key improvements` showing at least two rewrites, per [Meeting Script](../requirements/customer-meetings-requirements.md#meeting-script).
2. **Assign the three roles and ask the three permission questions** before you start, per [Every Meeting](../requirements/customer-meetings-requirements.md#every-meeting) and [Permission Questions](../requirements/customer-meetings-requirements.md#permission-questions), and keep the recording out of the repository.
3. **Write `reports/week-01/meeting-report.md`**, plus `meeting-transcript.md` when the meeting was recorded, per [Where Meeting Artifacts Live](../requirements/customer-meetings-requirements.md#where-meeting-artifacts-live).
   Hold the report to the week minima:
   - At least two decisions, each a `DEC-nn` entry in `docs/decisions.md` listed under `## Decisions`, per [Decision Requirements](../requirements/decisions-requirements.md); a `GAP-nn` or `VP-nn` a decision dropped cites its `DEC-nn`.
   - At least two rows in `## Action points`, each with a named owner and a due date inside Week 2.
   - `## Disagreements` filled in, or an explicit `None`.
4. **Put the recording link in your Moodle submission only.**
5. **If a live meeting is impossible**, follow the asynchronous rule in [Every Meeting](../requirements/customer-meetings-requirements.md#every-meeting) and declare the deviation in your week report.

Do not ask the customer to design the product.
Present a direction with its evidence, and find out where it is wrong.
Where you were wrong, `## Disagreements` is the most valuable table in the week.
A customer who agrees with everything has not been tested.

## Part 8: Report On Your AI Usage

Write `reports/week-01/ai-usage.md`: which tools, what for, and what you accepted, changed, or rejected.
If you used none, write one line saying so.
See [AI Tools](../course/rules.md#ai-tools).

## What Good Looks Like

Assume your week report is read by someone who does not know your project.
A strong submission has:

- **Claims that can be checked.**
  Every statement about a product points at a version, a document, or something you did.
  A grader who follows one reference and finds it is satisfied will trust the rest.
- **A table that argues.**
  Cells contain analysis, not adjectives.
  The reader can disagree with a cell; that is what makes it analysis.
- **Gaps that cost you something.**
  You dropped some, and you said why.
  A file of three excellent gaps beats a file of ten nobody believes.
- **A proposition with a downside.**
  You named what your advantage costs and how a competitor would copy it.
  A moat you did not check for is a risk you did not plan for.
- **A meeting that changed something.**
  The customer disagreed with at least one of your positions, the report says so, and the value proposition reflects it.
  A kickoff where nothing was contested is a kickoff you did not test.
- **A script that reads like a script.**
  The `## Key improvements` section shows a real rewrite, not a claim that you followed the Mom Test.
  A customer who answers your original question and your rewritten one differently has taught you something a list of questions never will.
- **A repository that already works.**
  Branch protection on, a merged and approved pull request, a green link check, screenshots proving it.
- **No filler.**
  A template sentence has no product name, no `ALT-nn`, and no date in it.
  If it would survive being pasted into another team's report unchanged, delete it.

## Assignment Report In The Repository

Write `reports/week-01/README.md`.
This is the canonical public report for the week and the index for everything below.
Follow the structure in [Weekly Public Report](../requirements/weekly-report-requirements.md#weekly-public-report), and include:

1. Project name, team number, and your problem-space sentence.
   The problem-space sentence leads, because it is the standard every `ALT-nn`, `GAP-nn`, and `VP-nn` in the week is measured against, and it is the one line that orients a reader who has never seen your project.
2. A short summary of what you found and what you propose.
   A reader should understand the week from this file alone, then follow links for detail.
3. A coverage table, one row per deliverable of this assignment, giving the artifact that satisfies it.
   This table is the index, so it is not followed by a second list of the same links.

   | Deliverable              | Artifact                                                                                           |
   | ------------------------ | -------------------------------------------------------------------------------------------------- |
   | License                  | `LICENSE`                                                                                          |
   | Candidate list           | `reports/week-01/candidate-list.md`                                                                |
   | Alternatives search      | `docs/research/alternatives.md`                                                                    |
   | Compare the alternatives | `docs/research/comparison.md`                                                                      |
   | Gap analysis             | `docs/research/gap-analysis.md`                                                                    |
   | Value proposition        | `docs/research/value-proposition.md`                                                               |
   | Assumptions              | `docs/assumptions.md`                                                                              |
   | Decisions                | `docs/decisions.md`                                                                                |
   | Research board           | your external board link                                                                           |
   | Meeting script           | `reports/week-01/meeting-script.md`                                                                |
   | Customer kickoff         | `reports/week-01/meeting-report.md`, and `reports/week-01/meeting-transcript.md` when there is one |
   | AI usage                 | `reports/week-01/ai-usage.md`                                                                      |

   If the customer refused publication of the transcript, that row says so and points at the Moodle submission instead.

4. Repository evidence: a screenshot of the `main` branch protection settings, a link to a merged pull request approved by another member, and a link to the latest green link check run.
   These are three, because each proves something only the platform's own interface can prove, and none of them is visible in the repository's files.
   Add the justification for every link you excluded, and confirm you opened each one in a browser to check it.
5. A contribution table mapping each member's GitHub username to their commits, issues, pull requests, and reviews.
6. Your deviations, if any, with reasons.
7. One line confirming that no private-only material was committed to the repository.

The open questions from the kickoff live in `meeting-report.md`, not here.
The week report does not repeat them; a reader follows the link.
The kickoff decisions live in `docs/decisions.md`, and the meeting report lists them; the week report does not repeat them.

## Assignment Report On Moodle

Create one PDF.
It is a map, not a copy: it points at your repository and holds the material that must not be public.
Keep it to two pages, and put nothing in it except the following:

1. Project name and the team number.
2. A table of team members: GitHub username, real name, and university email.
   This mapping is private and appears only here.
3. A permalink to `reports/week-01/README.md` at the full commit hash.
4. A link to the kickoff meeting recording, accessible to instructors.
   The recording must not be in the repository.
5. The meeting transcript, if the customer refused to let you publish it on GitHub.
6. One line confirming that no private-only material was committed to the repository.

Nothing else goes in the PDF.
The summary, the coverage table, the contribution table, the evidence links, the deviations, and the privacy confirmation are all in `reports/week-01/README.md`, and the permalink gets a grader there.
Do not paste, retype, or reword them.
If the PDF runs past two pages, you are writing the report a second time, and the second copy is the one that goes stale.

This is the [private submission wrapper](../requirements/weekly-report-requirements.md#private-submission-wrapper) the course requires: the private material for the week, and links to the public material.

See [Permalinks And Snapshots](../requirements/repository-requirements.md#permalinks-and-snapshots) for how to build the permalink and the snapshot.

> [!IMPORTANT]
> Verify every link before you submit, and open the permalink in a browser.
> A permalink to the wrong commit is worse than a branch link, because it looks verified.
> Everything you submit must stay reachable until the course has been graded.

### Submission Procedure

- Merge `reports/week-01/README.md` and every file it links into `main`, per [Weekly Public Report](../requirements/weekly-report-requirements.md#weekly-public-report).
- Take the permalink and the snapshot from that `main` commit.
- Submit the PDF and the repository snapshot (repository page -> Code -> Download ZIP) through Moodle.
- One submission per team.
- Due Thursday 1 October, 23:59.

## Checklist

- [ ] Team of 3 or 4, project chosen, team number known.
- [ ] Public repository in the team's own organization, all members collaborators, `main` default.
- [ ] `LICENSE`, `.gitignore`, root `README.md`.
- [ ] `main` protected: pull requests required, one approval, no self-approval.
      Screenshot saved in `reports/week-01/images/`.
- [ ] Pull request template at `.github/pull_request_template.md`.
- [ ] Lychee link check on pull requests and `main`, green, with justified exclusions in `.lycheeignore`.
- [ ] Actions pinned to commit SHAs, with `.github/dependabot.yml`.
- [ ] At least one merged pull request approved by another member.
- [ ] Every member: at least one commit, at least one review.
- [ ] `docs/research/alternatives.md` with 3–4 alternatives and `ALT-nn` IDs.
- [ ] `reports/week-01/candidate-list.md` with the full search, including what you cut.
- [ ] `docs/research/comparison.md` with at least 6 properties and traceable cells.
- [ ] `docs/research/gap-analysis.md` with `GAP-nn` entries and the rejected list.
- [ ] `docs/research/value-proposition.md` with `VP-nn` entries.
- [ ] `docs/assumptions.md` with `ASM-nn` entries.
- [ ] Board linked, view-only, two screenshots per alternative.
- [ ] `reports/week-01/meeting-script.md` with a one-sentence target and five areas, at least two questions each, all tagged open or closed and all serving the target.
- [ ] `## Agenda` with timeboxes adding up to the meeting, what you show in each part, and every question in exactly one part.
- [ ] `## Key improvements` shows two real rewrites with the principle named.
- [ ] Three meeting roles assigned, whole team attending.
- [ ] Kickoff meeting held, all three permissions asked before recording.
- [ ] `docs/decisions.md` with a `DEC-nn` entry for each kickoff decision, each with its `**Why:**`.
- [ ] `reports/week-01/meeting-report.md` with all six sections, 2+ decisions listed by `DEC-nn`, 2+ action points with owner and Week 2 due date, and `## Disagreements` filled or `None`.
- [ ] `reports/week-01/meeting-transcript.md` if the meeting was recorded, sanitized; in the Moodle PDF only if publication was refused.
- [ ] `reports/week-01/ai-usage.md` written.
- [ ] `reports/week-01/README.md` complete, with the coverage table, evidence, and contribution table.
- [ ] `reports/week-01/README.md` and every file it links merged into `main`, with the permalink and the snapshot taken from that `main` commit.
- [ ] PDF and snapshot ready, permalink verified at the full commit hash.
