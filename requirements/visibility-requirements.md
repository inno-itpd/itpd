# Visibility Requirements

These requirements define who may see an artifact: what is public, what goes only in the Moodle submission, what is never committed, and how a screenshot is published.
Every artifact file links here rather than repeating where an item goes.

<h2>Table of contents</h2>

- [Visibility Model](#visibility-model)
- [Sensitive Information Reference](#sensitive-information-reference)
- [The Usability Data Repository](#the-usability-data-repository)
- [Screenshot Evidence](#screenshot-evidence)
- [Telemetry And Personal Data](#telemetry-and-personal-data)

## Visibility Model

**Since: W1**

1. The product repository is public.
   Assume that anything you commit can and will be read by anyone, including people outside the course, for the whole time the repository exists.
2. The repository is licensed MIT.
   See [Repository Requirements](repository-requirements.md#licensing).
3. Public artifacts must be viewable by instructors and your customer but must not be publicly editable.
4. Private artifacts are shared through the Moodle submission, or through a private repository the instructors can access when the requirements allow it.
   Every private link must be reachable by your instructors.
5. Everything you submit stays openable by your instructors until the course has been graded.
6. Open every link you submit before you submit it.
   If a link needs a login you do not control, say so next to the link.

## Sensitive Information Reference

**Since: W1**

Every item below goes in exactly one place.

| Item                                                                                                                                                         | Where it goes                                                                                                                                                            |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| The root `README.md`, `LICENSE`, and the maintained documentation in `docs/`                                                                                 | Public repository                                                                                                                                                        |
| The weekly public report and every supporting artifact it links                                                                                              | Public repository                                                                                                                                                        |
| Meeting reports, scripts, and transcripts                                                                                                                    | Public repository, after sanitization                                                                                                                                    |
| The AI usage report                                                                                                                                          | Public repository                                                                                                                                                        |
| External boards, prototypes, and diagram tools                                                                                                               | Public, shared view-only, linked from the report                                                                                                                         |
| Screenshots and diagrams of reasonable size                                                                                                                  | Public, per [Screenshot Evidence](#screenshot-evidence)                                                                                                                  |
| Recordings of meetings with the customer, their links, and exact timecodes into them                                                                         | Moodle only                                                                                                                                                              |
| A meeting transcript the customer refused to let you publish                                                                                                 | Moodle only                                                                                                                                                              |
| Real names, email addresses including university ones, phone numbers, and other personal data of team members, the customer, or anyone else                  | Moodle only                                                                                                                                                              |
| Usability test participant identity, consent records, identity mapping, raw notes, filtered telemetry export, and working analysis                           | The private `<organization>/<repo>-usability-data` repository, per [The Usability Data Repository](#the-usability-data-repository)                                       |
| Usability session recordings                                                                                                                                 | A team-owned cloud folder shared with the instructors, linked from the private repository, per [The Usability Data Repository](#the-usability-data-repository)           |
| The sanitized usability test record, surveys, consent template, session notes, results, findings, and images                                                 | Public repository                                                                                                                                                        |
| Confidential business or research information, and anything the customer asks you to keep private                                                            | Moodle only                                                                                                                                                              |
| The staging and production deployment addresses of the university VM                                                                                         | Moodle only                                                                                                                                                              |
| The four dashboards' addresses and credentials, and the analytics and observability backends' addresses and all credentials, including client IDs and tokens | Moodle only                                                                                                                                                              |
| Credentials, tokens, API keys, private keys, and `.env` files                                                                                                | Never committed; Moodle only when the week needs them; see [Configuration And Sensitive Information](repository-requirements.md#configuration-and-sensitive-information) |
| Large files: recordings, video, datasets, model weights, archives                                                                                            | Never committed; see [Configuration And Sensitive Information](repository-requirements.md#configuration-and-sensitive-information)                                       |
| Customer-owned or third-party material, including code copied from another repository, that you may not redistribute                                         | Never committed; see [Licensing](repository-requirements.md#licensing)                                                                                                   |
| Local tooling folders, editor state, and build caches                                                                                                        | Never committed                                                                                                                                                          |

Never commit a Moodle-only item, not even "temporarily" and not even in a file you later delete.
Once it is in the git history it is public, and deleting the file does not remove it.

**Since: W5**

The staging and production deployment addresses of the university VM are Moodle-only.
`docs/deployment.md` carries a placeholder instead of the address, a `QRT-nn`'s `**Runs at:**` names the staging deployment with a placeholder or an environment variable such as `$STAGING_URL`, and the weekly public report says the product is reached from the university network and points at the Moodle submission for the address, per [Environments And Deployment](repository-requirements.md#environments-and-deployment).

**Since: W6**

The four dashboards' addresses and credentials, and the two telemetry backends' addresses and all credentials, including client IDs and tokens, are Moodle-only.
`docs/analytics.md` and `docs/observability.md` name the backend and the chart rather than linking an address, a `QRT-nn`'s `**Runs at:**` uses a placeholder or an environment variable such as `$OPENOBSERVE_URL`, and the weekly public report links the sanitized screenshots rather than an address, per [Product Analytics Requirements](analytics-requirements.md#the-dashboard) and [Observability Requirements](observability-requirements.md#the-dashboard).

The repository identifies people by GitHub username, and the customer as `Customer`.
If the customer has a GitHub username and agrees to it being public, use the username instead.
The mapping from username to real name and university email goes in the Moodle PDF, not in the repository.

## The Usability Data Repository

**Since: W7**

The usability test's raw data identifies a person or can be joined to one, so it is split from the sanitized public record: the text data lives in a private repository the instructors can read, the recordings live in a cloud folder, and the product repository carries only the sanitized record, per [Usability Testing Requirements](usability-testing-requirements.md).

**Required**

1. The team creates one private `<organization>/<repo>-usability-data` repository per product repository, and it is private with the team and the instructors as readers.
   It is not the product repository, so it carries no course CI, branch protection, releases, or link check.
2. It holds only text: the durable consent records, the identity mapping, the raw notes, the filtered telemetry export of the test window, the working analysis, and the recordings folder link and access.
   Its layout is the team's choice.
3. The recordings live in a team-owned cloud folder shared with the instructors, such as the team's drive.
   They are never in the product repository and never in the private repository, and the private repository records the folder link and the access instructions.
4. The product repository links the private repository in the test record and the weekly report, and the link is excluded from the link check because it needs authentication, with the reason in the link check's configuration, per [Link Checking](repository-requirements.md#link-checking).
5. The Moodle PDF carries the private repository link and access and the recordings folder link and access, per [Private Submission Wrapper](weekly-report-requirements.md#private-submission-wrapper).
6. The durable consent is recorded before every counted session, and it covers the recording and the sanitized public results, per [Consent And Recording](usability-testing-requirements.md#consent-and-recording).
7. The private repository and the recordings stay until the course is graded; after it is graded the team deletes the private repository, its history, and the recordings, and the sanitized public record stays.
8. When an instructor cannot access GitHub, the team gives the private text data through a Moodle-only archive and declares the [deviation](weekly-report-requirements.md#declaring-deviations).
9. The public record uses the participant codes `P-01`, `P-02`, and so on, and the raw notes, the consent records, and the identity mapping stay private, per [The Public Evidence](usability-testing-requirements.md#the-public-evidence).
10. A session is counted only with its durable consent and its recording; an unrecorded or unconsented session is not evidence, per [Consent And Recording](usability-testing-requirements.md#consent-and-recording).

## Screenshot Evidence

**Since: W1**

**Required**

1. Use a screenshot when visual evidence is the point, or when a public link may not be reliably inspectable by a grader.
   Settings screens, dashboards, and comparisons are the usual cases.
2. Sanitize every screenshot before it is published.
   Crop out anything that is not needed to make the point.
3. Keep file sizes reasonable.
   A screenshot is not a video frame archive.

**Since: W7**

A usability screenshot follows the same rules: one in `docs/usability-tests/ut-01/images/` is sanitized, and it carries no participant identity, no raw recording, and no real address, per [The Usability Data Repository](#the-usability-data-repository).

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

## Telemetry And Personal Data

**Since: W6**

**Personal data** is a name, an email address, a phone number, a postal address, or free text that identifies a person.
**Telemetry** is the events and signals the product records about its use and its operation, per [Product Analytics Requirements](analytics-requirements.md) and [Observability Requirements](observability-requirements.md).

**Required**

1. Telemetry data is never committed to the product repository: it lives in the analytics or the observability backend, outside the repository, and the repository holds only the plans and the sanitized screenshots.
2. An event or a signal carries no personal data, and its payload carries no free text.
3. An opaque identifier is allowed when it is generated at random, is not derived from personal data, and cannot be reversed to a person.
4. A dashboard screenshot is sanitized before it is published, per [Screenshot Evidence](#screenshot-evidence), so it carries no personal data and no real address.

**Since: W7**

5. A usability test's events carry `source=usability-test` and no personal data, and the test adds no per-participant field: the events are grouped by the existing `session_id`, which is the analytics session on the product's main page, and the test uses the `source` filter and the session's time window instead of a per-participant link, per [The Events](analytics-requirements.md#the-events).
6. The staging events for the test window may be exported as filtered text into the private usability-data repository when the export carries no IP address, location, user agent, referrer, or free text, per [The Usability Data Repository](#the-usability-data-repository).
