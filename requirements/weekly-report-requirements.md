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

16. The report's summary says whether the focus metric has a value yet and what it would need, links `docs/analytics.md` and `docs/observability.md`, and copies no chart or row from either page.
    It shows at least one analytics metric that its query computes, and it does not present test traffic as a value.
17. When a threshold review is due, a `## Threshold review` section carries it, per [The Threshold Of Success](planning-requirements.md#the-threshold-of-success): one table, with one row per goal that is `Open` when the review starts, in `TOS-nn` order, with these columns, in this order:

    | Column                   | What it holds                                                                                                                                    |
    | ------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
    | `Goal`                   | The goal, linked to its section in `docs/threshold-of-success.md`, such as `[TOS-01](../../docs/threshold-of-success.md#tos-01)`                 |
    | `Current measure`        | The goal's current `**Measure:**`, with the week it lands in                                                                                     |
    | `New data can settle it` | `Yes` and the analytics or observability data that settles it, or `No` and why the data cannot                                                   |
    | `Proposal`               | A proposed measure with its number, the week it lands in, and the metric's `###` link in `docs/analytics.md`, or `—` when the team proposes none |

    Immediately after the table, in the same section, state in one sentence per row, in `TOS-nn` order, the goal's status after the review — `Open`, `Achieved`, or `Missed` — and link the goal to its section in `docs/threshold-of-success.md`.
    The sentence gives the verdict, not why it was reached: a settled goal's `**Outcome:**` stays in `docs/threshold-of-success.md`, says what was found, and links the evidence, and the section does not restate it.
    A goal settled in an earlier week is not in the table and needs no status sentence.
    The section then says why the team proposed each measure in the table, or why it proposed none.

18. When the week has evidence screenshots, the report embeds each one as an image in the section that describes it, and the assignment sets how many.

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
We wrote the observability plan and its `SLI`, instrumented the request log line, put OpenObserve beside the analytics backend, and built the four dashboards.
We added the two stories for the product analyst and the system operator, the two architectural decision records, the container view's two external systems, the diagnosability requirement and its test, the threshold review, and `REL-06`; we cut the release as [v0.6.0](https://github.com/<organization>/<repo>/releases/tag/v0.6.0).

## Findings

The product now records how it is used and how it operates, and all four dashboards are reached from the university network.
The focus metric is completed paid bookings per active coach per week, and it has no value yet: it needs paid bookings from people outside the team.
The Week 7 usability test exercises the flow and yields usability findings, but it does not produce paid bookings, so the metric's first value comes from real use.
The booking conversion rate is one of its inputs, and its query computes it from the events today.
The analytics plan is [docs/analytics.md](../../docs/analytics.md) and the observability plan is [docs/observability.md](../../docs/observability.md).
`QR-03 QRT-02` is still `Not verified` and moves to `SPRINT-07`; [the testing plan](../../docs/project-plan.md#quality-requirement-testing-plan) carries it and every other row that is not `Passes`.

## Threshold review

| Goal                                                | Current measure                                                                                                                      | New data can settle it                                                             | Proposal |
| --------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------- | -------- |
| [TOS-01](../../docs/threshold-of-success.md#tos-01) | One booking in the deployed product whose payment settled in the provider's sandbox, by the end of Week 6                            | Yes — the `booking_confirmed` and `payment_succeeded` events record it             | —        |
| [TOS-03](../../docs/threshold-of-success.md#tos-03) | At least three of five participants completed the core task unaided, recorded in the Week 7 usability findings, by the end of Week 7 | No — a usability session is neither an analytics event nor an observability signal | —        |

`[TOS-01](../../docs/threshold-of-success.md#tos-01)` is `Achieved`.
`[TOS-03](../../docs/threshold-of-success.md#tos-03)` is `Open`.
`TOS-02` is absent because it was settled in an earlier week.
The team proposed no analytics-measured goal and no revised measure this week, because no remaining open goal is a number either pipeline can improve, and the customer agreed none was needed.

## Analytics and observability

The analytics plan is [docs/analytics.md](../../docs/analytics.md) and its events are in [the event table](../../docs/analytics.md#the-events).
The staging dashboard's event list shows the test event tagged `source=smoke`, which the staging chart excludes, and the production dashboard is configured with the same query and has received no test traffic.

![The analytics staging dashboard: the booking conversion rate chart and the event list that shows the smoke event](images/analytics-staging.png)

![The analytics production dashboard: the same chart and query, with no test traffic](images/analytics-production.png)

The observability plan is [docs/observability.md](../../docs/observability.md) and its `SLI` is [`SLI-01`](../../docs/observability.md#sli-01).
The staging run of `scripts/check-sli.ts` failed one booking request, and the staging organization's log query returned the request's log point with its `request_id`, `route`, and an `outcome` of `server_error` within five seconds; the five-minute P95 query returned the `server_error` series within one minute, so [`QR-04 QRT-01`](../../docs/quality-requirements/qr/QR-04.md#qrt-01) passes.
The team also re-ran [`QR-01 QRT-01`](../../docs/quality-requirements/qr/QR-01.md#qrt-01) as a regression check against the final staging deployment, and all ten page loads showed the free slots within two seconds, so it passed.
The staging dashboard's chart shows the same `server_error` series.

![The observability staging dashboard: the server error series from SLI-01's P95 query](images/observability-staging.png)

![The observability production dashboard: the same query, with no test traffic](images/observability-production.png)

## Coverage

| Deliverable                   | Artifact                                                                                                                                                                                                                                                        |
| ----------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Sprint plan and new stories   | [docs/project-plan.md](../../docs/project-plan.md#sprint-06) and [the two stories](https://github.com/<organization>/<repo>/issues?q=is%3Aissue+sprint+06)                                                                                                      |
| Analytics plan                | [docs/analytics.md](../../docs/analytics.md)                                                                                                                                                                                                                    |
| Events and instrumentation    | [docs/analytics.md](../../docs/analytics.md#the-events)                                                                                                                                                                                                         |
| Analytics dashboards          | [staging](images/analytics-staging.png) and [production](images/analytics-production.png)                                                                                                                                                                       |
| Observability plan and `SLI`s | [docs/observability.md](../../docs/observability.md)                                                                                                                                                                                                            |
| Observability dashboards      | [staging](images/observability-staging.png) and [production](images/observability-production.png)                                                                                                                                                               |
| Feature documentation         | [docs/features.md](../../docs/features.md)                                                                                                                                                                                                                      |
| Functional requirements       | [docs/functional-requirements/README.md](../../docs/functional-requirements/README.md)                                                                                                                                                                          |
| ADRs and container view       | [ADR-005](../../docs/architecture/adr/ADR-005.md), [ADR-006](../../docs/architecture/adr/ADR-006.md), and [the container view](../../docs/architecture/README.md#container-view)                                                                                |
| Observability requirement     | [QR-04](../../docs/quality-requirements/qr/QR-04.md) and [its test](../../docs/quality-requirements/qr/QR-04.md#qrt-01)                                                                                                                                         |
| Runtime test re-run           | [the testing plan](../../docs/project-plan.md#quality-requirement-testing-plan)                                                                                                                                                                                 |
| Threshold review              | [the threshold review](#threshold-review)                                                                                                                                                                                                                       |
| Week 5 action points          | [reports/week-06/meeting-report.md](meeting-report.md#previous-action-points)                                                                                                                                                                                   |
| Week 5 open questions         | [reports/week-06/meeting-report.md](meeting-report.md#previous-open-questions)                                                                                                                                                                                  |
| Meeting script                | [reports/week-06/meeting-script.md](meeting-script.md)                                                                                                                                                                                                          |
| Meeting transcript            | [reports/week-06/meeting-transcript.md](meeting-transcript.md)                                                                                                                                                                                                  |
| Customer validation           | [reports/week-06/meeting-report.md](meeting-report.md)                                                                                                                                                                                                          |
| `REL-06`                      | [v0.6.0](https://github.com/<organization>/<repo>/releases/tag/v0.6.0), [the release body](https://github.com/<organization>/<repo>/releases/tag/v0.6.0), [the changelog](../../CHANGELOG.md), and [the plan's REL-06 block](../../docs/project-plan.md#rel-06) |
| Sprint retrospective          | [reports/week-06/sprint-retrospective.md](sprint-retrospective.md)                                                                                                                                                                                              |
| AI usage                      | [reports/week-06/ai-usage.md](ai-usage.md)                                                                                                                                                                                                                      |

## Contribution

| Contributor | Contribution                                                                                                                                                                                                                                       |
| ----------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| @ana        | [the analytics plan](https://github.com/<organization>/<repo>/pull/41), [the events](https://github.com/<organization>/<repo>/pull/42), and [the analytics dashboards](https://github.com/<organization>/<repo>/pull/43), reviewed by @bo          |
| @bo         | [the observability plan](https://github.com/<organization>/<repo>/pull/44), [`SLI-01`](https://github.com/<organization>/<repo>/pull/44), and [the observability dashboards](https://github.com/<organization>/<repo>/pull/45), reviewed by @ana   |
| @cyd        | [the two ADRs](https://github.com/<organization>/<repo>/pull/46), [the container view](https://github.com/<organization>/<repo>/pull/46), and [the diagnosability requirement](https://github.com/<organization>/<repo>/pull/47), reviewed by @ana |

## Repository evidence

The merged pull request for the analytics work, the merged pull request for the observability work, with the green Markdown, link, `actionlint`, and product-code CI checks on `main`.

## Deviations

`QR-03 QRT-02` was planned for `SPRINT-06`, and its availability window is still open at the deadline, so it moves to `SPRINT-07`; [the testing plan](../../docs/project-plan.md#quality-requirement-testing-plan) carries the row.

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
