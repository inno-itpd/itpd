# Visibility Requirements

These requirements define who may see an artifact: what is public, what goes only in the Moodle submission, what is never committed, and how a screenshot is published.
Every artifact file links here rather than repeating where an item goes.

<h2>Table of contents</h2>

- [Visibility Model](#visibility-model)
- [Sensitive Information Reference](#sensitive-information-reference)
- [Screenshot Evidence](#screenshot-evidence)

## Visibility Model

**Since: W1**

1. The product repository is public.
   Assume that anything you commit can and will be read by anyone, including people outside the course, for the whole time the repository exists.
2. The repository is licensed MIT.
   See [Repository Requirements](repository-requirements.md#licensing).
3. Public artifacts must be viewable by instructors and your customer but must not be publicly editable.
4. Private artifacts are shared only through the Moodle submission, with the people who need them.
   Every private link must be reachable by your instructors.
5. Everything you submit stays openable by your instructors until the course has been graded.
6. Open every link you submit before you submit it.
   If a link needs a login you do not control, say so next to the link.

## Sensitive Information Reference

**Since: W1**

Every item below goes in exactly one place.

| Item                                                                                                                                        | Where it goes                                                                                                                                                            |
| ------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| The root `README.md`, `LICENSE`, and the maintained documentation in `docs/`                                                                | Public repository                                                                                                                                                        |
| The weekly public report and every supporting artifact it links                                                                             | Public repository                                                                                                                                                        |
| Meeting reports, scripts, and transcripts                                                                                                   | Public repository, after sanitization                                                                                                                                    |
| The AI usage report                                                                                                                         | Public repository                                                                                                                                                        |
| External boards, prototypes, and diagram tools                                                                                              | Public, shared view-only, linked from the report                                                                                                                         |
| Screenshots and diagrams of reasonable size                                                                                                 | Public, per [Screenshot Evidence](#screenshot-evidence)                                                                                                                  |
| Recordings of meetings with the customer, their links, and exact timecodes into them                                                        | Moodle only                                                                                                                                                              |
| A meeting transcript the customer refused to let you publish                                                                                | Moodle only                                                                                                                                                              |
| Real names, email addresses including university ones, phone numbers, and other personal data of team members, the customer, or anyone else | Moodle only                                                                                                                                                              |
| Usability test participant identity, data, recordings, consent, and results                                                                 | Moodle only                                                                                                                                                              |
| Confidential business or research information, and anything the customer asks you to keep private                                           | Moodle only                                                                                                                                                              |
| Credentials, tokens, API keys, private keys, and `.env` files                                                                               | Never committed; Moodle only when the week needs them; see [Configuration And Sensitive Information](repository-requirements.md#configuration-and-sensitive-information) |
| Large files: recordings, video, datasets, model weights, archives                                                                           | Never committed; see [Configuration And Sensitive Information](repository-requirements.md#configuration-and-sensitive-information)                                       |
| Customer-owned or third-party material, including code copied from another repository, that you may not redistribute                        | Never committed; see [Licensing](repository-requirements.md#licensing)                                                                                                   |
| Local tooling folders, editor state, and build caches                                                                                       | Never committed                                                                                                                                                          |

Never commit a Moodle-only item, not even "temporarily" and not even in a file you later delete.
Once it is in the git history it is public, and deleting the file does not remove it.

The repository identifies people by GitHub username, and the customer as `Customer`.
If the customer has a GitHub username and agrees to it being public, use the username instead.
The mapping from username to real name and university email goes in the Moodle PDF, not in the repository.

## Screenshot Evidence

**Since: W1**

**Required**

1. Use a screenshot when visual evidence is the point, or when a public link may not be reliably inspectable by a grader.
   Settings screens, dashboards, and comparisons are the usual cases.
2. Sanitize every screenshot before it is published.
   Crop out anything that is not needed to make the point.
3. Keep file sizes reasonable.
   A screenshot is not a video frame archive.

Screenshots may live in the repository or on an external board.
Both are allowed:

- **External board.**
  The recommended default.
  Figma, Miro, Excalidraw, or anything else that makes pasting screenshots painless.
  Share it view-only, link it from the artifact that uses it, and describe in the text what each screenshot shows.
- **Repository.**
  Use a week-local `reports/week-NN/images/` directory when a screenshot is part of the week's evidence.
  Name files so a reader can tell them apart, for example `branch-protection.png`.

Wherever a screenshot lives, the text that refers to it must carry the meaning.
A screenshot with no explanation is not evidence.
