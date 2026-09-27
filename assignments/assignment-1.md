# Assignment 1: Initial Project Research

**Due:** Thursday, 1 October, 23:59. One submission per team.

Week 1 is a research week. There is no code, no prototype, and nothing to deploy. What you hand in is a defensible understanding of the problem your project lives in, and a proposed direction that is traceable to evidence.

## Objectives

By the end of this week you should be able to show an instructor:

* Which existing products solve your user's problem, and how well each one does it.
* Where they all fall short, and which of those shortfalls are worth building on.
* What your product will do differently, what that costs, and what you are assuming.
* A public repository that already works the way the course expects it to work.

## Before You Start

Read these once. They are the rules; this assignment only tells you what this week requires.

| Read | For |
| --- | --- |
| [Course rules](../rules.md) | What is public, what is private, deadlines, AI policy |
| [Artifact Requirements](../requirements/artifact-requirements.md) | Where things live, the weekly report, transcript and AI report formats |
| [Repository Requirements](../requirements/repository-requirements.md) | GitHub, pull requests, branch protection, link checking, permalinks, snapshots |
| [Process Requirements](../requirements/process-requirements.md) | What counts as a valid alternative, gap, and value proposition; the identifier rules |
| [Guide: researching alternatives](../guides/alternatives-research.md) | How to find and evaluate your set |
| [Guide: comparison to value proposition](../guides/comparison-and-synthesis.md) | How to build the table, find the gaps, write the proposition |

## Part 1: Form The Team And Choose The Project

1. Form a team of 3 or 4.
2. Choose one project from the course catalog.
3. Note your team number and project name. Both go in your week report and your Moodle submission.
4. Create the repository in the course GitHub organization, named as your instructor specified, and add every team member as a collaborator with write access. One repository per team, in the organization, not in somebody's personal account.

## Part 2: Set Up The Repository

Complete all requirements under **Required Starting Week 1** in [Repository Requirements](../requirements/repository-requirements.md#required-starting-week-1). In short, this week you must have:

1. A **public** repository in the course organization, with `main` as the default branch and all members as collaborators.
2. `LICENSE` with the MIT License text, and a `.gitignore` covering editor state, OS files, `.env` and other secrets, and build output.
3. A root `README.md` meeting the [minimum contents](../requirements/repository-requirements.md#root-readme).
4. `main` **protected**: pull requests required, at least one approval, no self-approval. Verify each setting, and screenshot it.
5. A pull request template at `.github/pull_request_template.md`.
6. A Lychee link check running on pull requests and on `main`, checking every Markdown file in the repository, and failing on a broken link. The latest `main` run must be green. See [Link Checking](../requirements/repository-requirements.md#link-checking) for a working configuration and the rules on excluding links.
7. At least one pull request merged into `main` with another member's approval.
8. Every team member has made at least one commit through a pull request, and has reviewed and approved at least one other member's pull request.

The repository structure you are building towards:

```text
.
├── README.md
├── LICENSE
├── .gitignore
├── .github/
│   ├── pull_request_template.md
│   └── workflows/lychee.yml
├── docs/
│   └── research/
│       ├── alternatives.md
│       ├── comparison.md
│       ├── gap-analysis.md
│       └── value-proposition.md
└── reports/
    └── week-01/
        ├── README.md
        ├── meeting-transcript.md
        └── ai-usage.md
```

## Part 3: Research The Alternatives

1. Write one sentence defining the problem space: whose problem this is and what they are trying to do. Put it at the top of `docs/research/alternatives.md`.
2. Research **3 to 4 alternatives**, as a mix of a direct competitor, an adjacent substitute, and an open-source or self-hosted option, per [Process Requirements](../requirements/process-requirements.md#alternatives).
3. Choose at least 6 properties to compare on, **before** you evaluate anything.
4. Write one `ALT-nn` section per alternative in `docs/research/alternatives.md`, with the observations, strengths, and at least two weaknesses each, every claim pointing at something you looked at.
5. Build a board for the screenshots and working notes. Share it view-only and link it from the file. At least two screenshots per alternative, of the screens or flows that matter for your properties. See [Where The Evidence Lives](../guides/alternatives-research.md#where-the-evidence-lives).

## Part 4: Compare The Alternatives

Write `docs/research/comparison.md`: a qualitative analysis table, rows are your properties, columns are the alternatives, and every cell is analysis that traces back to an `ALT-nn` observation.

Fill it property by property. Make strengths relative, and separate what you observed from what you concluded. See [Step 2: Fill The Table](../guides/comparison-and-synthesis.md#step-2-fill-the-table).

## Part 5: Find The Gaps

Write `docs/research/gap-analysis.md`. Every gap needs a `GAP-nn` ID, and must pass all four tests in [Gap Analysis](../requirements/process-requirements.md#gap-analysis): somebody needs it, the alternatives do not serve it, it is reachable, and a team of 3 or 4 could build it in this course.

Also record the gaps you **rejected** and why. That list is not optional; it is the part your customer will argue with, and you want that argument to happen now.

## Part 6: State Your Value Proposition

Write `docs/research/value-proposition.md`. Two or three `VP-nn` entries, each one a short positioning statement, each closing at least one `GAP-nn`, each naming what it costs and how a competitor would respond. End the file with your assumptions table.

The rules are in [Value Proposition And Differentiation](../requirements/process-requirements.md#value-proposition-and-differentiation) and the method in [Step 5: Write The Value Proposition](../guides/comparison-and-synthesis.md#step-5-write-the-value-proposition).

## Part 7: Meet The Customer

Your instructor or mentor is the customer. Hold one kickoff meeting with them this week: present the project, your reading of the problem, and your proposed direction, and find out where they disagree with you.

1. Ask permission before recording. Keep the recording out of the repository.
2. Write `reports/week-01/meeting-transcript.md` in the format from [Meeting Transcript](../requirements/artifact-requirements.md#meeting-transcript): one sentence per line, timestamped, speaker-labelled, sanitized.
3. Put the recording link in your Moodle submission only.
4. If a live meeting is impossible, align asynchronously in writing instead, timestamp the written exchange as the transcript, and declare the substitution in your week report as a deviation.

Do not ask the customer to design the product. Present a direction with its evidence, and find out where it is wrong.

## Part 8: Report On Your AI Usage

Write `reports/week-01/ai-usage.md`: which tools, what for, and what you accepted, changed, or rejected. If you used none, one line saying so. See [AI Tools](../rules.md#ai-tools).

## What Good Looks Like

Assume your week report is read by someone who does not know your project. A strong submission has:

* **Claims that can be checked.** Every statement about a product points at a version, a document, or something you did. A grader who follows one reference and finds it is satisfied will trust the rest.
* **A table that argues.** Cells contain analysis, not adjectives. The reader can disagree with a cell; that is what makes it analysis.
* **Gaps that cost you something.** You dropped some, and you said why. A file of three excellent gaps beats a file of ten nobody believes.
* **A proposition with a downside.** You named what your advantage costs and how a competitor would copy it. A moat you did not check for is a risk you did not plan for.
* **A repository that already works.** Branch protection on, a merged and approved pull request, a green link check, screenshots proving it.
* **No filler.** A sentence that would survive being pasted into another team's report unchanged should be deleted. This is the single most common reason a strong week scores poorly.

## Assignment Report In The Repository

Write `reports/week-01/README.md`. This is the canonical public report for the week and the index for everything below. Follow the structure in [Weekly Public Report](../requirements/artifact-requirements.md#weekly-public-report), and include:

1. Project name, team number, and your problem-space sentence.
2. A link to the root `LICENSE`.
3. A coverage table mapping each deliverable of this assignment to the artifact that satisfies it.
4. A short summary of what you found and what you propose. A reader should understand the week from this file alone, then follow links for detail.
5. Links to `docs/research/alternatives.md`, `comparison.md`, `gap-analysis.md`, and `value-proposition.md`.
6. A link to your research board.
7. A link to `meeting-transcript.md`, or a statement that the customer refused publication and it is in the Moodle submission only.
8. A link to `ai-usage.md`.
9. Repository evidence: a screenshot of the `main` branch protection settings, a link to a merged pull request approved by another member, and a link to the latest green link check run. Add the justification for every link you excluded, and confirm you opened each one in a browser to check it.
10. A contribution table mapping each member's GitHub username to their commits, issues, pull requests, and reviews.
11. Your deviations, if any, with reasons.
12. One line confirming that no private-only material was committed to the repository.

### Open Questions For The Customer

Add a short `## Open questions for the customer` section to the week report: the questions whose answers would change what you build.

These are not requests for the customer to define the scope. The customer defines the scope; you propose and they decide. These are the unknowns that would change your proposal, so put them to them while you are in the room. Three to five of them, each one a question you actually need answered, each tied to a `GAP-nn` or `VP-nn`.

```
## Open questions for the customer

- Is `GAP-02` (shared rules across tenants) a real constraint for you, or would separate deployments per team be acceptable?
  It changes whether VP-01 is a gateway feature or a deployment decision.
- Would you accept a product that is a plugin host rather than a hosted service?
  VP-01 assumes yes, and it changes the whole delivery shape.
```

## Assignment Report On Moodle

Create one PDF. It is a map, not a copy: it points at your repository and holds the two things that must not be public. Keep it to two pages.

1. Project name, team number, and the commit hash you are submitting.
2. A table of team members: GitHub username, real name, and university email. This mapping is private and appears only here.
3. A one-line summary of contributions per member.
4. A permalink to `reports/week-01/README.md` at the full commit hash.
5. A permalink to the repository tree at the same commit.
6. Live links to your research board and to the four files in `docs/research/`.
7. A link to the kickoff meeting recording, accessible to instructors. Not in the repository.
8. The meeting transcript, if the customer refused to let you publish it.
9. The repository snapshot: `https://github.com/<org>/<repo>/archive/<full-commit-sha>.zip`, downloaded and attached. It must be the same commit as both permalinks.
10. One line confirming that no private-only material was committed to the repository.

See [Permalinks And Snapshots](../requirements/repository-requirements.md#permalinks-and-snapshots) for how to build these.

> [!IMPORTANT]
> Verify every link before you submit, and open the two permalinks in a browser. A permalink to the wrong commit is worse than a branch link, because it looks verified. Everything you submit must stay reachable until the course has been graded.

### Submission Procedure

* Submit the PDF and the repository snapshot through Moodle.
* One submission per team.
* Due Thursday 1 October, 23:59.

## Checklist

* [ ] Team of 3 or 4, project chosen, team number known.
* [ ] Public repository in the course organization, all members collaborators, `main` default.
* [ ] `LICENSE`, `.gitignore`, root `README.md`.
* [ ] `main` protected: pull requests required, one approval, no self-approval. Screenshot saved.
* [ ] Pull request template at `.github/pull_request_template.md`.
* [ ] Lychee link check on pull requests and `main`, green, with justified exclusions.
* [ ] At least one merged pull request approved by another member.
* [ ] Every member: at least one commit, at least one review.
* [ ] `docs/research/alternatives.md` with 3–4 alternatives and `ALT-nn` IDs.
* [ ] `docs/research/comparison.md` with at least 6 properties and traceable cells.
* [ ] `docs/research/gap-analysis.md` with `GAP-nn` entries and the rejected list.
* [ ] `docs/research/value-proposition.md` with `VP-nn` entries and assumptions.
* [ ] Board linked, view-only, two screenshots per alternative.
* [ ] Kickoff meeting held, recording permission asked, transcript written.
* [ ] `reports/week-01/ai-usage.md` written.
* [ ] `reports/week-01/README.md` complete, including coverage table, evidence, contribution table, and open questions for the customer.
* [ ] PDF and snapshot ready, permalinks verified at the full commit hash.
