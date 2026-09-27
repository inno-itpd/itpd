# Course Rules

Read this first.
It is short on purpose.
It states what is expected of your team and your repository for the whole course.
Where it says "see", the linked file is the detailed version, and it wins if the two ever seem to disagree.

## The Short Version

1. Your product repository is **public** and everything in it is readable by anyone, forever.
2. Your **weekly report** in the repository is the submission.
   The Moodle PDF is a map that points at it.
3. Detailed content lives in **dedicated files that the report links**.
   The report is an index, not a second copy.
4. Anything that will still be referenced later lives in **`docs/`**, in its final place, from the week you create it.
   Anything that is only that week's evidence lives in **`reports/week-NN/`**.
5. Recordings, university emails, names, credentials, and usability test participant data are **private** and go in the Moodle PDF only.
6. The course is public and MIT-licensed because the customer is your instructor.
   There is no consent step.

## Public And Private

| Artifact                                                     | Where it goes                                    |
| ------------------------------------------------------------ | ------------------------------------------------ |
| Weekly report, research, maintained documentation, changelog | Public repository                                |
| Sanitized meeting transcript                                 | Public repository                                |
| AI usage report                                              | Public repository                                |
| Research board, prototype, diagram tool                      | Public, shared view-only, linked from the report |
| Meeting recording and its link                               | **Private.** Moodle only                         |
| University email addresses                                   | **Private.** Moodle only                         |
| Usability test participant data, recordings, consent         | **Private.** Moodle only                         |
| Passwords, tokens, API keys, `.env` files                    | **Nowhere.** Never commit them at all            |
| Anything the customer asks you to keep private               | **Private.** Moodle only                         |

Full detail, including the sensitivity list, is in [Artifact Requirements](requirements/artifact-requirements.md#sensitive-information-reference).

## Repository Hygiene

Keep the repository small and readable.
Do not commit:

- Recordings, video, datasets, model weights, or archives.
- Files copied from another repository, or code you are not allowed to redistribute.
- Your editor state, local tooling folders, and build caches.
- Secrets of any kind.
  Use a sanitized `.env.example` instead.

Screenshots belong on a board, not in the repository, unless they are evidence for that week.
See [Artifact Requirements](requirements/artifact-requirements.md#screenshot-evidence).

## Identities

Your public repository identifies people by GitHub username and the customer as `Instructor`.
The mapping from username to real name and university email goes in the Moodle PDF, because that is the only place it belongs.

## AI Tools

You may use any AI tools you like.
The team is fully responsible for the correctness, quality, and originality of everything you submit.

The only requirement is disclosure: each week you write `reports/week-NN/ai-usage.md` saying which tools you used, what you used them for, and what you accepted, changed, or rejected.
If you used nothing, one line saying so is enough.

The test is simple: could a reader tell which parts are yours?
If generated text is submitted unchecked, or filler is passed off as analysis, the week does not pass.

## Deadlines And Submission

- Every week has one group submission, due **Thursday at 23:59**, the night before the class.
- One submission per team.
  Every member's work is assessed through the team submission, and through the individual reflection at the end of the course.
- The submission is a **PDF in Moodle**.
  It points at your repository.
  It does not contain it.
- Late work loses 10% of that week's grade per day, and nothing after seven days.
  See the syllabus for the full policy.

The syllabus also covers attendance and the final exam.

## Accessibility

Everything you submit must be openable by your instructors until the course has been graded.
Public links must be viewable and not editable.
Private links must be reachable by instructors.
Verify every link before you submit, and if a link needs a login you do not control, say so.

## Where The Rules Live

| File                                                               | What it defines                                                                                           |
| ------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------- |
| [Artifact Requirements](requirements/artifact-requirements.md)     | What an artifact is, where it lives, who may see it, and the structure of each recurring artifact         |
| [Process Requirements](requirements/process-requirements.md)       | What counts as good research, what a gap is, and how your Week 1 identifiers are used later               |
| [Repository Requirements](requirements/repository-requirements.md) | GitHub, pull requests, branch protection, link checking, permalinks, snapshots, changelog, CI             |
| [Guides](guides/)                                                  | How to actually do the work: finding alternatives, comparing, finding gaps, writing the value proposition |
| [Assignments](assignments/)                                        | What this particular week requires, and what you hand in                                                  |

Assignments add the paths and the evidence for their week.
They do not change the rules above.

## If Something Is Unclear

Ask in the course chat.
A question costs you nothing; a silent deviation costs you the deliverable.
If you do something differently from what an assignment says, that is allowed, provided the week's report says so and explains why.
See [Artifact Requirements](requirements/artifact-requirements.md#declaring-deviations).
