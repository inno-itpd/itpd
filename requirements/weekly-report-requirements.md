# Weekly Report Requirements

These requirements define what a team hands in every week: the weekly public report, the AI usage report beside it, how a deviation is declared, and the Moodle PDF that points at them.
Who may see each item is in [Visibility Requirements](visibility-requirements.md).

<h2>Table of contents</h2>

- [Weekly Public Report](#weekly-public-report)
- [AI Usage Report](#ai-usage-report)
- [Declaring Deviations](#declaring-deviations)
- [Private Submission Wrapper](#private-submission-wrapper)

## Weekly Public Report

**Since: W1**

**Required**

1. Create `reports/week-NN/README.md` for every week that has a submission.
2. Merge it, and every repository-resident artifact it links, into `main`, the [default branch](repository-requirements.md#repository-setup), before you submit.
   A report or an artifact left on an unmerged pull-request branch is not in the [submission commit](repository-requirements.md#permalinks-and-snapshots), so it has not been submitted.
3. It is the index for the week.
   It links directly to every supporting artifact, both repository files and external links.
4. It identifies the week, the project, the team, and the covered scope clearly enough that a reader knows what body of work it describes.
5. It contains a short summary of what the team found, built, or decided, and what is still open.
   A grader should be able to read only this file and understand the week, then follow links for detail.
6. `## Decisions` is the week's decision index.
   When the week held a meeting with the customer, the section links the `## Decisions` table of each meeting report.
   A decision the team took outside a meeting goes in the section's own table, with the same columns and cell rules as the [meeting report](customer-meetings-requirements.md#meeting-report).
   The section links a meeting's decisions; it never copies their rows.
   A week with no decision at all does not carry the section.
7. It contains a coverage table mapping each required deliverable of the assignment to the artifact that satisfies it.
   The table is the index, so it is not followed by a second list of the same links.
   A deliverable this file records in its own section has no row.
8. It links the root `LICENSE`.
9. It contains a contribution table mapping each team member's GitHub username to the work they did, using links to their commits, pull requests, or reviews where possible.
10. It links the repository evidence the assignment asks for, and justifies in prose every link the [link check](repository-requirements.md#link-checking) excludes.
11. It declares every deviation, per [Declaring Deviations](#declaring-deviations).
12. It states, in one line, that no private-only material was committed to the repository.

**Since: W2**

13. It records the [minimum usable product candidate](user-stories-requirements.md#minimum-usable-product-candidate) under the heading the assignment names: the core task, then the `US-nn` of each story with its issue linked.

**Recommended**

- Use the same section order every week so readers learn it once.
- Keep it short.
  If a section is growing, the detail probably belongs in a supporting artifact that the report links.
- State what a reader should look at first.

**Example**

A Week 01 report, from `reports/week-01/README.md`:

```markdown
# Week 01 report

## Project

Meeting booking app.

Our problem-space sentence: an expert who sells sessions online needs one link where a client can book, pay, and receive the meeting link and materials, and no product carries all three in one flow.

## What we did

We researched four alternatives, compared them on six properties, and identified three gaps worth building on.

## Findings

The strongest products schedule time well and leave payment and materials to integrations or paid tiers.
Nobody gives an expert one flow from booking to a paid, prepared session, which is the gap our project targets.

## Decisions

The kickoff decisions are in the [meeting report](meeting-report.md#decisions).

## Coverage

| Deliverable              | Artifact                                                                               |
| ------------------------ | -------------------------------------------------------------------------------------- |
| Alternatives search      | [docs/research/alternatives.md](../../docs/research/alternatives.md)                   |
| Candidate list           | [candidate-list.md](candidate-list.md)                                                 |
| Compare the alternatives | [docs/research/comparison.md](../../docs/research/comparison.md)                       |
| Gap analysis             | [docs/research/gap-analysis.md](../../docs/research/gap-analysis.md)                   |
| Value proposition        | [docs/research/value-proposition.md](../../docs/research/value-proposition.md)         |
| Research board           | [Figma board](https://www.figma.com/design/PUc4NFVcLureKzxE3RAGB0/Market-Research)     |
| Meeting script           | [meeting-script.md](meeting-script.md)                                                 |
| Customer kickoff         | [meeting-report.md](meeting-report.md), [meeting-transcript.md](meeting-transcript.md) |
| AI usage                 | [ai-usage.md](ai-usage.md)                                                             |

## Contribution

| Member | Work                                                   |
| ------ | ------------------------------------------------------ |
| @alice | [PR #4](...), alternatives 1–2, [approved](...) @bob   |
| @bob   | [PR #5](...), comparison table, [approved](...) @carol |

## Repository evidence

[Reviewed pull request](...), [link check run](...).

## Deviations

None.

## Privacy

No private-only material was committed to this repository.
```

## AI Usage Report

**Since: W1**

**Required**

1. Each week, write `reports/week-NN/ai-usage.md`.
2. Name the tools you used and what you used them for: research, drafting, code, analysis, transcription, images, or anything else.
3. Say what you did with the output: what you accepted, what you changed, what you rejected and why.
4. If you used no AI tools, say so explicitly in one line.
   This is a valid answer and costs you nothing.
5. In any artifact, generated text submitted unchecked, or filler passed off as analysis, reduces the week's grade.

The course allows AI tools.
See [the course rules](../course/rules.md#ai-tools).
The report exists so a reader can tell your own work from generated text, not to catch you using tools.

**Example**

```markdown
# AI usage — Week 01

## Tools

ChatGPT and Claude, both through the web UI.

## What we used them for

Drafted the property list for the comparison table and summarised the Calendly and Cal.com docs.

## What we did with the output

Kept two properties from the draft.
Rejected the rest: they described UI polish rather than the properties our users care about.
Every claim in the comparison table was checked against the product's own documentation by hand.

## What was not used

No AI output was used as a finding.
No generated text was submitted unchecked.
```

## Declaring Deviations

**Since: W1**

1. If your team uses a different tool, a different artifact form, or a different arrangement than the assignment describes, state it in the weekly public report under a deviations heading and say why.
2. Declaring a deviation does not excuse a broken requirement.
   Say what you did instead and why it satisfies the intent.
3. An undeclared deviation is treated as a missing requirement.
4. A week with no deviation says `None` under the heading.

## Private Submission Wrapper

**Since: W1**

The Moodle PDF is the canonical private artifact for a week.

**Required**

1. It identifies the project, the team, and the week clearly enough for an instructor to match it to the repository state.
2. It links the public evidence rather than copying it.
   Do not paste the weekly report into the PDF.
3. It contains that week's private-only material: every item [Sensitive Information Reference](visibility-requirements.md#sensitive-information-reference) sends to Moodle only.
4. When the assignment requires a permalink, it uses a commit-hash permalink, per [Permalinks And Snapshots](repository-requirements.md#permalinks-and-snapshots), so the link keeps pointing at the exact content that was submitted.
5. It stays short.
   It is a map, not a second copy of the repository.

**Example**

See [Assignment 1](../assignments/assignment-1.md#assignment-report-on-moodle) for the week-specific contents.
