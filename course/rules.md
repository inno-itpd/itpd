# Course Rules

Read this first.
It is short on purpose.
It states what is expected of your team and your repository for the whole course.
Where it says "see", the linked file is the detailed version, and it wins if the two ever seem to disagree.

## The Short Version

1. Your product repository is **public** and everything in it is readable by anyone, forever.
2. Your **weekly report** in the repository is the submission.
   The Moodle PDF is a map that points at it.
   It counts only once it and the files it links are merged into `main`; see [Weekly Public Report](../requirements/weekly-report-requirements.md#weekly-public-report).
3. Detailed content lives in **dedicated files that the report links**.
   The report is an index, not a second copy.
4. Anything that will still be referenced later lives in **`docs/`**, in its final place, from the week you create it.
   Anything that is only that week's evidence lives in **`reports/week-NN/`**.
5. Recordings, university emails, real names, and usability test participant data are **private** and go in the Moodle PDF only.
   Credentials are never committed, and go in the Moodle PDF only when a week needs them.
   The repository names people by GitHub username, and the customer as `Customer`.
   Where every other item goes, and what never goes in the repository, is in [Sensitive Information Reference](../requirements/visibility-requirements.md#sensitive-information-reference).
6. The course is public and MIT-licensed because the customer is your instructor.
   There is no consent step; see [Repository Setup](../requirements/repository-requirements.md#repository-setup).

## AI Tools

You may use any AI tools you like.
The team is fully responsible for the correctness, quality, and originality of everything you submit.

The only requirement is disclosure, in the week's [AI usage report](../requirements/weekly-report-requirements.md#ai-usage-report).

The test is simple: could a reader tell which parts are yours?
Unchecked generated text and filler reduce the week's grade; see [Research Honesty Rules](../requirements/research-requirements.md#research-honesty-rules).

## Deadlines And Submission

- Every week has one team submission.

  The **soft deadline** is on **Thursday at 23:59**.

  The **hard deadline** is on **Friday at 23:59**.

  There's no penalty when you submit between the soft deadline and the hard deadline.
  The penalty after the hard deadline is in [the syllabus](syllabus.md#late-submission-policy).

- One submission per team.
  Every member's work is assessed through the team submission, and through the individual reflection at the end of the course.
- The submission is a **PDF in Moodle** and a **repository snapshot (ZIP)**.
  The PDF points at your repository; see [Private Submission Wrapper](../requirements/weekly-report-requirements.md#private-submission-wrapper) and [Permalinks And Snapshots](../requirements/repository-requirements.md#permalinks-and-snapshots).

The syllabus also covers [attendance](syllabus.md#attendance-policy) and the [final exam](syllabus.md#week-11-dec-4--dec-10-final-exam-group-presentations-of-the-projects).

## Accessibility

Everything you submit must stay openable by your instructors until the course has been graded, and you check every link before you submit; see [Visibility Model](../requirements/visibility-requirements.md#visibility-model).

## Where The Rules Live

| File                                                                               | What it defines                                                                                                                             |
| ---------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| [General Requirements](../requirements/general-requirements.md)                    | What the terms mean, `docs/` versus `reports/`, identifiers, and how later weeks cite earlier work                                          |
| [Visibility Requirements](../requirements/visibility-requirements.md)              | What is public, what goes in Moodle only, what is never committed, and screenshots                                                          |
| [Research Requirements](../requirements/research-requirements.md)                  | Alternatives, the comparison, gaps, value propositions, assumptions, and research honesty                                                   |
| [Product Vision Requirements](../requirements/product-vision-requirements.md)      | The goal, stakeholders, constraints, boundary, and system context diagram                                                                   |
| [User Story Requirements](../requirements/user-stories-requirements.md)            | Story issues, acceptance criteria, priorities, and the minimum usable product candidate                                                     |
| [Prototype Requirements](../requirements/prototypes-requirements.md)               | What a prototype must change, and where it is recorded                                                                                      |
| [Customer Meeting Requirements](../requirements/customer-meetings-requirements.md) | Meetings with the customer, and their scripts, reports, transcripts, and notes                                                              |
| [Weekly Report Requirements](../requirements/weekly-report-requirements.md)        | The weekly report, the AI usage report, deviations, and the Moodle PDF                                                                      |
| [Repository Requirements](../requirements/repository-requirements.md)              | GitHub, pull requests, branch protection, link checking, permalinks, snapshots, changelog, CI                                               |
| [Guides](../guides/)                                                               | How to actually do the work: alternatives, comparison and synthesis, the kickoff, stories and prototyping, and validating with the customer |
| [Assignments](../assignments/)                                                     | What this particular week requires, and what you hand in                                                                                    |

Assignments add the paths and the evidence for their week.
They do not change the rules above.

## If Something Is Unclear

Ask in the course chat.
A question costs you nothing; a silent deviation costs you the deliverable.
If you do something differently from what an assignment says, that is allowed, provided the week's report says so and explains why.
See [Declaring Deviations](../requirements/weekly-report-requirements.md#declaring-deviations).
