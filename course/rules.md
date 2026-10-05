# Course Rules

Read this first.
It is short on purpose.
It states what is expected of your team and your repository for the whole course.
Where it says "see", the linked file is the detailed version, and it wins if the two ever seem to disagree.

## The Short Version

1. Your product repository is **public** and everything in it is readable by anyone, forever.
2. Your **weekly report** in the repository is the submission.
   The Moodle PDF is a map that points at it.
   It counts only once it and the files it links are merged into `main`; see [Weekly Public Report](../requirements/artifact-requirements.md#weekly-public-report).
3. Detailed content lives in **dedicated files that the report links**.
   The report is an index, not a second copy.
4. Anything that will still be referenced later lives in **`docs/`**, in its final place, from the week you create it.
   Anything that is only that week's evidence lives in **`reports/week-NN/`**.
5. Recordings, university emails, real names, and usability test participant data are **private** and go in the Moodle PDF only.
   Credentials are never committed, and go in the Moodle PDF only when a week needs them.
6. The course is public and MIT-licensed because the customer is your instructor.
   There is no consent step.

## Public And Private

| Artifact                                                     | Where it goes                                        |
| ------------------------------------------------------------ | ---------------------------------------------------- |
| Weekly report, research, maintained documentation, changelog | Public repository                                    |
| Sanitized meeting report                                     | Public repository                                    |
| Sanitized meeting transcript or notes                        | Public repository                                    |
| AI usage report                                              | Public repository                                    |
| Research board, prototype, diagram tool                      | Public, shared view-only, linked from the report     |
| Meeting recording and its link                               | **Private.** Moodle only                             |
| A meeting transcript the customer would not publish          | **Private.** Moodle only                             |
| University email addresses                                   | **Private.** Moodle only                             |
| Usability test participant data, recordings, consent         | **Private.** Moodle only                             |
| Passwords, tokens, API keys, `.env` files                    | **Never commit.** Moodle only when a week needs them |
| Anything the customer asks you to keep private               | **Private.** Moodle only                             |

Full detail, including the sensitivity list, is in [Artifact Requirements](../requirements/artifact-requirements.md#sensitive-information-reference).

## Repository Hygiene

Keep the repository small and readable.
Do not commit:

- Recordings, video, datasets, model weights, or archives.
- Files copied from another repository, or code you are not allowed to redistribute.
- Your editor state, local tooling folders, and build caches.
- Secrets of any kind.
  Use a sanitized `.env.example` instead.

Screenshots go on a view-only board, which is recommended, or in the repository when they are that week's evidence.
See [Artifact Requirements](../requirements/artifact-requirements.md#screenshot-evidence).

## Identities

Your public repository identifies people by GitHub username and your instructor as `Customer`.
If the customer has a GitHub username and agrees to it being public, use the username instead.
The mapping from username to real name and university email goes in the Moodle PDF, because that is the only place it belongs.

## AI Tools

You may use any AI tools you like.
The team is fully responsible for the correctness, quality, and originality of everything you submit.

The only requirement is disclosure: each week you write `reports/week-NN/ai-usage.md` saying which tools you used, what you used them for, and what you accepted, changed, or rejected.
If you used nothing, one line saying so is enough.

The test is simple: could a reader tell which parts are yours?
Unchecked generated text and filler reduce the week's grade; see [Research Honesty Rules](../requirements/process-requirements.md#research-honesty-rules).

## Deadlines And Submission

- Every week has one team submission.

  The **soft deadline** is on **Thursday at 23:59**.

  The **hard deadline** is on **Friday at 23:59**.

  There's no penalty when you submit between the soft deadline and the hard deadline.
  The penalty after the hard deadline is in [the syllabus](syllabus.md#late-submission-policy).

- One submission per team.
  Every member's work is assessed through the team submission, and through the individual reflection at the end of the course.
- The submission is a **PDF in Moodle** and a **repository snapshot (ZIP)**.
  The PDF points at your repository.

The syllabus also covers [attendance](syllabus.md#attendance-policy) and the [final exam](syllabus.md#week-11-dec-4--dec-10-final-exam-group-presentations-of-the-projects).

## Accessibility

Everything you submit must be openable by your instructors until the course has been graded.
Public links must be viewable and not editable.
Private links must be reachable by instructors.
Verify every link before you submit, and if a link needs a login you do not control, say so.

## Where The Rules Live

| File                                                                  | What it defines                                                                                                                                 |
| --------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| [Artifact Requirements](../requirements/artifact-requirements.md)     | What an artifact is, where it lives, who may see it, and the structure of each recurring artifact                                               |
| [Process Requirements](../requirements/process-requirements.md)       | What the product work must say: research, gaps, value propositions, vision, stories, priorities, validation, customer meetings, and identifiers |
| [Repository Requirements](../requirements/repository-requirements.md) | GitHub, pull requests, branch protection, link checking, permalinks, snapshots, changelog, CI                                                   |
| [Guides](../guides/)                                                  | How to actually do the work: alternatives, comparison and synthesis, the kickoff, stories and prototyping, and validating with the customer     |
| [Assignments](../assignments/)                                        | What this particular week requires, and what you hand in                                                                                        |

Assignments add the paths and the evidence for their week.
They do not change the rules above.

## If Something Is Unclear

Ask in the course chat.
A question costs you nothing; a silent deviation costs you the deliverable.
If you do something differently from what an assignment says, that is allowed, provided the week's report says so and explains why.
See [Artifact Requirements](../requirements/artifact-requirements.md#declaring-deviations).
