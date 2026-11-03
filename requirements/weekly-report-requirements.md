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

**Since: W6**

16. The report's summary says whether the focus metric is computable yet and what it would need, links `docs/analytics.md` and `docs/observability.md`, and copies no chart or row from either page.
    It shows at least one analytics metric that its query computes, and it does not present test traffic as a value.
17. When a threshold review is due, a `## Threshold review` section carries it, per [The Threshold Of Success](planning-requirements.md#the-threshold-of-success): each open goal's current measure and whether the analytics or the observability data can settle it, and any proposed measure with its number, its week, and the metric's `###` link.
18. When the week has evidence screenshots, the report links them, and the assignment sets how many.

**Recommended**

- Use the same section order every week so readers learn it once.
- Keep it short.
  If a section is growing, the detail probably belongs in a supporting artifact that the report links.
- State what a reader should look at first.

**Example**

A Week 06 report, from `reports/week-06/README.md`:

```markdown
# Week 06 report

## Project

Meeting booking app.

Our problem-space sentence: an expert who sells sessions online needs one link where a client can book, pay, and receive the meeting link and materials, and no product carries all three in one flow.

## What we did

We wrote the analytics plan and its metric tree, instrumented the core task's events, and put an OpenPanel instance with a staging and a production project on the university VM.
We wrote the observability plan and its `SLI`, put OpenObserve beside the analytics backend, and built the four dashboards.
We added the two stories for the product analyst and the system operator, the two architectural decision records, the container view's two external systems, the diagnosability requirement and its test, the threshold review, and `REL-06`.

## Findings

The product now records how it is used and how it operates, and all four dashboards are reached from the university network.
The focus metric is completed paid bookings per active coach per week, and the product cannot compute it yet: it needs bookings from people outside the team, which is what the Week 7 usability test gives it.
The booking conversion rate is one of its inputs, and its query computes it from the events today.
The analytics plan is [docs/analytics.md](../../docs/analytics.md) and the observability plan is [docs/observability.md](../../docs/observability.md).
`QR-03 QRT-02` is still `Not verified` and moves to `SPRINT-07`; [the testing plan](../../docs/project-plan.md#quality-requirement-testing-plan) carries it and every other row that is not `Passes`.

## Threshold review

`TOS-01` is `Achieved`: a client booked a paid session in production on 2026-11-04 and the payment settled in the provider's sandbox.
`TOS-02` stays `Missed`, with `US-08` moved out of the candidate at the Week 3 meeting.
`TOS-03` stays `Open`: its measure is three of five participants completing the core task unaided, recorded in the Week 7 usability findings, and the analytics data cannot settle it before then.
The team proposed no analytics-measured goal and no revised measure this week, and the customer agreed none was needed.

## Analytics and observability

The analytics plan is [docs/analytics.md](../../docs/analytics.md) and its events are in [the event table](../../docs/analytics.md#the-events).
The staging dashboard shows the test event tagged `source=smoke`, which the staging chart excludes, and the production dashboard is configured with the same query and has received no test traffic: [staging screenshot](images/analytics-staging.png) and [production screenshot](images/analytics-production.png).
The observability plan is [docs/observability.md](../../docs/observability.md) and its `SLI` is [`SLI-01`](../../docs/observability.md#sli-01).
The staging run of `scripts/check-sli.ts` failed one booking request, and the product's telemetry endpoint exposed its series point with its `request_id` and an `outcome` of `server_error` within five seconds, so [`QR-04 QRT-01`](../../docs/quality-requirements/qr/QR-04.md#qrt-01) passes.
The OpenObserve query returned the same point, and the staging chart shows it: [staging screenshot](images/observability-staging.png) and [production screenshot](images/observability-production.png).

## Coverage

| Deliverable                   | Artifact                                                                                                                                                                         |
| ----------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Sprint plan and new stories   | [docs/project-plan.md](../../docs/project-plan.md#sprint-06) and [the two stories](https://github.com/<organization>/<repo>/issues?q=is%3Aissue+sprint+06)                       |
| Analytics plan                | [docs/analytics.md](../../docs/analytics.md)                                                                                                                                     |
| Events and instrumentation    | [docs/analytics.md](../../docs/analytics.md#the-events)                                                                                                                          |
| Analytics dashboards          | [staging](images/analytics-staging.png) and [production](images/analytics-production.png)                                                                                        |
| Observability plan and `SLI`s | [docs/observability.md](../../docs/observability.md)                                                                                                                             |
| Observability dashboards      | [staging](images/observability-staging.png) and [production](images/observability-production.png)                                                                                |
| Feature documentation         | [docs/features.md](../../docs/features.md)                                                                                                                                       |
| Functional requirements       | [docs/functional-requirements/README.md](../../docs/functional-requirements/README.md)                                                                                           |
| ADRs and container view       | [ADR-005](../../docs/architecture/adr/ADR-005.md), [ADR-006](../../docs/architecture/adr/ADR-006.md), and [the container view](../../docs/architecture/README.md#container-view) |
| Observability requirement     | [QR-04](../../docs/quality-requirements/qr/QR-04.md) and [its test](../../docs/quality-requirements/qr/QR-04.md#qrt-01)                                                          |
| Runtime test re-run           | [the testing plan](../../docs/project-plan.md#quality-requirement-testing-plan)                                                                                                  |
| Threshold review              | [the threshold review](#threshold-review)                                                                                                                                        |
| Week 5 action points          | [reports/week-06/meeting-report.md](meeting-report.md#previous-action-points)                                                                                                    |
| Week 5 open questions         | [reports/week-06/meeting-report.md](meeting-report.md#previous-open-questions)                                                                                                   |
| Meeting script                | [reports/week-06/meeting-script.md](meeting-script.md)                                                                                                                           |
| Meeting transcript            | [reports/week-06/meeting-transcript.md](meeting-transcript.md)                                                                                                                   |
| Customer validation           | [reports/week-06/meeting-report.md](meeting-report.md)                                                                                                                           |
| `REL-06`                      | [the plan's REL-06 block](../../docs/project-plan.md#rel-06)                                                                                                                     |
| Sprint retrospective          | [reports/week-06/sprint-retrospective.md](sprint-retrospective.md)                                                                                                               |
| AI usage                      | [reports/week-06/ai-usage.md](ai-usage.md)                                                                                                                                       |

## Contribution

| Contributor | Contribution                                                                           |
| ----------- | -------------------------------------------------------------------------------------- |
| @ana        | the analytics plan, the events, and the analytics dashboards, reviewed by @bo          |
| @bo         | the observability plan, `SLI-01`, and the observability dashboards, reviewed by @ana   |
| @cyd        | the two ADRs, the container view, and the diagnosability requirement, reviewed by @ana |

## Repository evidence

The merged pull request for the analytics work, the merged pull request for the observability work, with the green Markdown, link, and `actionlint` checks on `main`.

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
