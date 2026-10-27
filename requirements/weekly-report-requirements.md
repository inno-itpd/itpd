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
6. It contains a coverage table mapping each required deliverable of the assignment to the artifact that satisfies it.
   The table is the index, so it is not followed by a second list of the same links.
   A deliverable this file records in its own section has no row.
   Each artifact cell links its artifact.
   An assignment's table names each repository file by path, and the report turns that path into a link whose text is the path from the repository root, with the heading anchor when the row names a section.
   Anything else, such as an external board, a filtered issue list, or a CI run, gets descriptive link text.
   A row whose artifact is not public says so instead of linking it.
7. It contains a contribution table mapping each team member's GitHub username to the work they did, using links to their commits, pull requests, or reviews where possible.
8. It links the repository evidence the assignment asks for, and justifies in prose every link the [link check](repository-requirements.md#link-checking) excludes.
9. It declares every deviation, per [Declaring Deviations](#declaring-deviations).
10. It states, in one line, that no private-only material was committed to the repository.

**Since: W2**

11. It records the minimum usable product candidate, per [Where The Candidate Lives](minimum-usable-product-requirements.md#where-the-candidate-lives).

**Since: W3**

12. It states the week's customer-meeting outcome: each story shown and whether the customer accepted or rejected it, and each candidate story that moved out, each citing the `DEC-nnn` that records it, per [Showing Working Software](customer-meetings-requirements.md#showing-working-software) and [Building, Delivering, And Releasing The Candidate](minimum-usable-product-requirements.md#building-delivering-and-releasing-the-candidate).

**Since: W4**

13. The coverage table carries a row that links `reports/week-NN/sprint-retrospective.md`, per [Retrospective](sprint-ceremonies-requirements.md#retrospective).
    The report carries no sprint planning, refinement, or retrospective section, because the plan, the issues, and the retrospective file own them.
14. The report does not assess an individual.
    The contribution table is the evidence of who did what, and no section asks the team to rate or explain a member's contribution.

**Since: W5**

15. The report's summary points at `docs/project-plan.md#quality-requirement-testing-plan` for the tests that are not `Passes`, and copies none of the rows.

**Recommended**

- Use the same section order every week so readers learn it once.
- Keep it short.
  If a section is growing, the detail probably belongs in a supporting artifact that the report links.
- State what a reader should look at first.

**Example**

A Week 05 report, from `reports/week-05/README.md`:

```markdown
# Week 05 report

## Project

Meeting booking app.

Our problem-space sentence: an expert who sells sessions online needs one link where a client can book, pay, and receive the meeting link and materials, and no product carries all three in one flow.

## What we did

We deployed the release candidate to the staging and production instances on the university VM, added the unit tests and the CI checks, and implemented the tests for the two active High business-importance quality requirements.

## Findings

The deployed test is what the time-behaviour requirement needed: it measures the booking page on staging, from a campus machine, against the same commit production runs.
[The testing plan](../../docs/project-plan.md#quality-requirement-testing-plan) carries both tests, their results, and every row that is not `Passes`.

## Quality requirement tests

The staging run of `4c1e9ab` from a campus machine reported 9 of 10 page loads under two seconds, so [`QR-01 QRT-01`](../../docs/quality-requirements/qr/QR-01.md#qrt-01) passes.
The `test` job passed on the same commit, so [`QR-02 QRT-01`](../../docs/quality-requirements/qr/QR-02.md#qrt-01) passes.

## Coverage

| Deliverable                | Artifact                                                                                                    |
| -------------------------- | ----------------------------------------------------------------------------------------------------------- |
| Sprint plan and milestones | [docs/project-plan.md](../../docs/project-plan.md#milestones)                                               |
| New stories                | [the two stories added this sprint](https://github.com/<organization>/<repo>/issues?q=is%3Aissue+sprint+05) |
| Quality requirement tests  | [docs/quality-requirements/qr/QR-01.md](../../docs/quality-requirements/qr/QR-01.md#qrt-01)                 |
| Testing plan               | [docs/project-plan.md](../../docs/project-plan.md#quality-requirement-testing-plan)                         |
| Unit tests and CI          | [.github/workflows/ci.yml](../../.github/workflows/ci.yml)                                                  |
| Deployment                 | [docs/deployment.md](../../docs/deployment.md)                                                              |
| Feature documentation      | [docs/features.md](../../docs/features.md)                                                                  |
| Week 4 action points       | [reports/week-05/meeting-report.md](meeting-report.md#previous-action-points)                               |
| Customer validation        | [reports/week-05/meeting-report.md](meeting-report.md)                                                      |
| `REL-05`                   | [v0.5.0](https://github.com/<organization>/<repo>/releases/tag/v0.5.0)                                      |
| Sprint retrospective       | [reports/week-05/sprint-retrospective.md](sprint-retrospective.md)                                          |
| AI usage                   | [reports/week-05/ai-usage.md](ai-usage.md)                                                                  |

## Contribution

| Member | Work                                                                    |
| ------ | ----------------------------------------------------------------------- |
| @alice | [PR #41](...), the deployment runbook, [approved](...) @bob             |
| @bob   | [PR #42](...), the unit tests and the CI checks, [approved](...) @carol |

## Repository evidence

[Reviewed pull request](...), [link check run](...), [Markdown check run](...), [product-code CI run](...), [actionlint run](...).

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
