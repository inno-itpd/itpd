# General Requirements

These requirements hold the rules that belong to no single artifact: what the course words mean, where an artifact goes in the repository, how identifiers are issued, and how later weeks cite earlier work.
Every other requirements file covers one artifact group and links here for these rules.
Assignment files add only the paths and evidence expectations for a specific week; they must not redefine anything in the requirements.
Each requirement carries a `**Since: WN**` marker naming the week it starts applying, so a section can hold requirements that begin in different weeks.

Read [the course rules](../course/rules.md) first.
It is the short version of the requirements, states what is expected of you as a student, and lists which file holds which rules.

<h2>Table of contents</h2>

- [Artifact Concepts And Terminology](#artifact-concepts-and-terminology)
- [Where Artifacts Live In The Repository](#where-artifacts-live-in-the-repository)
- [Identifier Rules](#identifier-rules)
- [Traceability Into Later Weeks](#traceability-into-later-weeks)

## Artifact Concepts And Terminology

**Since: W1**

1. An **artifact** is any file, external board, link, recording, or other preserved evidence used to plan, deliver, verify, or submit course work.
2. The **weekly public report** is the canonical public entry point for a week's submission, per [Weekly Public Report](weekly-report-requirements.md#weekly-public-report).
3. A **supporting artifact** is a file, link, or board referenced from the weekly public report that holds the detailed content.
4. A **repository-resident artifact** is committed to the product repository.
5. An **external-but-indexed artifact** is hosted outside the repository, for example a GitHub issue, a Figma or Miro board, and must be linked from the weekly public report.
6. A **private-only artifact** must never be committed to the public repository.
   It is shared only through the Moodle submission.
7. A **deviation** is a place where your team did something materially different from what an assignment or these requirements describe.
   How one is declared is in [Declaring Deviations](weekly-report-requirements.md#declaring-deviations).
8. A **meeting report** is your team's own account of a meeting with the customer, per [Meeting Report](customer-meetings-requirements.md#meeting-report).
9. A **decision** is a conclusion that changes or explicitly settles what you build.
   A meeting's decisions are recorded in its [meeting report](customer-meetings-requirements.md#meeting-report), and the team's own in the [weekly public report](weekly-report-requirements.md#weekly-public-report).
   How a decision is cited is in [Identifier Rules](#identifier-rules).
10. An **action point** is a follow-up that came out of a meeting, with an owner and a week it falls due in, per [Meeting Report](customer-meetings-requirements.md#meeting-report).

## Where Artifacts Live In The Repository

**Since: W1**

1. The product repository holds two kinds of recorded work, and every artifact that records course work goes in exactly one of them:

   - `reports/week-NN/` holds the evidence for that week.
     It is a record of what the team did during that week.
     Week numbers are zero-padded: `reports/week-01/`, `reports/week-02/`.
   - `docs/` holds maintained project documentation.
     Anything the project will still refer to later goes here, in its final location, from the week it is created.

2. This rule covers artifacts, not repository mechanics.
   Code, workflows, issue and pull request templates, `LICENSE`, the files in `.github/`, and the files a planning or issue-tracking tool writes into the repository are repository content, not artifacts, and are covered in [Repository Requirements](repository-requirements.md).
   A tool that keeps its state in the repository adds a directory of repository content, not a third location for course work.
   GitHub issues themselves are not repository files: they are external-but-indexed artifacts, and the weekly public report indexes them.
3. There is no third location and no migration step.
   When you create an artifact, put it where it will live for the rest of the course.
   Do not create a file in `reports/` and move it to `docs/` later, and do not keep the same content in both places.
4. Maintained documentation in `docs/` is expected to stay current.
   When the product, the plan, or the decisions change, update the file.
   Week reports in `reports/week-NN/` are a historical record and are not rewritten after their week.

**Since: W2**

5. A formatting-only change is not a rewrite: whitespace, line breaks, list markers, heading levels, or table alignment, with the words and their meaning unchanged.
   It may touch any earlier week's files, including meeting scripts and reports, and goes in a pull request of its own.

## Identifier Rules

**Since: W1**

**Required**

1. The identifier families introduced in Week 1 are `ALT-nn` for alternatives, `GAP-nn` for gaps, `VP-nn` for value propositions, and `ASM-nn` for assumptions.
   All are zero-padded and case-sensitive.
   `US-nn` for user stories and `AC-nn` for their acceptance criteria are introduced in Week 2.
   A later family is introduced only by the requirement that first uses it.
2. An identifier, once issued, is never changed, reused, or reassigned, including when the artifact is edited later in the course.
3. Gaps in a sequence are expected and correct.
   A dropped `GAP-03` leaves a hole; it does not cause renumbering.
4. A dropped item keeps its identifier and its entry, marked as dropped with a reason and the date.
5. The identifier always appears in the heading of its own section, so `ALT-02` can be found with a search.
6. Every reference between artifacts uses the identifier, not the title, so that renaming a title does not break the chain.
7. `US-nn` and `AC-nn` are the exceptions to rules 4 and 5, because they live in a story issue rather than in a section of their own.
   [Where Stories Live](user-stories-requirements.md#where-stories-live) says how a dropped story is kept, and [Acceptance Criteria](user-stories-requirements.md#acceptance-criteria) says how a criterion is numbered, retired, and cited.
8. Decisions and action points are not identifier families.
   There is no `DEC-nn` and no `ACT-nn`.
   Cite a decision by path and `#decisions` anchor with its sentence quoted: a meeting decision cites its meeting report, and a decision made outside a meeting cites the weekly public report of the week it was made.
   Cite an action point the same way, with its report's `#action-points` anchor and the action quoted.
   A story's `Traces to` entry for a decision or action point uses this form.
   Any other citation of a meeting report also uses its path and heading anchor, for example `reports/week-01/meeting-report.md#decisions`.

## Traceability Into Later Weeks

**Since: W1**

The research you produce in Week 1 is the evidence base for the rest of the course.
Later weeks cite your Week 1 identifiers rather than restating your findings.
This is what makes the course a project rather than nine separate assignments.

| Later work            | Must cite                                                                                                                                                                     |
| --------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Week 2 product vision | The `VP-nn` its goal traces to, per [Goal](product-vision-requirements.md#goal)                                                                                               |
| Week 2 user stories   | The `VP-nn`, the `ASM-nn` of each assumption the story rests on, and any origins in each story's `Traces to` list, per [The Story](user-stories-requirements.md#the-story)    |
| Week 2 prototypes     | The `US-nn` or `GAP-nn` each one tested, and the `ASM-nn` when the risky part is an assumption, per [Where Prototypes Live](prototypes-requirements.md#where-prototypes-live) |

**Required**

1. When a later artifact cites a Week 1 identifier, link to the section it refers to.
2. If later work contradicts something in your research, update the research and note the change.
   The research is maintained documentation, not a frozen Week 1 submission.
   See [Where Artifacts Live In The Repository](#where-artifacts-live-in-the-repository).
3. A later need that your Week 1 research did not anticipate does not rewrite the research.
   It becomes a story that traces to the `VP-nn` it supports; update the research only when the later need contradicts it.
