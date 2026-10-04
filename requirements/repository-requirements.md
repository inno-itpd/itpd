# Repository Requirements

These requirements cover the mechanics of the product repository: where it lives, how changes get in, how links get checked, and how you produce the permalinks and the snapshot your assignment asks for.
Use [Artifact Requirements](artifact-requirements.md) for what the artifacts are and who may see them, and [Process Requirements](process-requirements.md) for the product work.

Each requirement carries a `**Since: WN**` marker stating the week it starts applying, so a section can hold requirements that begin in different weeks.
Requirements that arrive later are written now so that later weeks do not have to introduce a convention from nothing.
(For the document authors) To move a requirement to a different week, change its own marker and leave the section where it is.

<h2>Table of contents</h2>

- [Repository Setup](#repository-setup)
  - [Licensing](#licensing)
  - [Root README](#root-readme)
- [Branch Protection And Pull Requests](#branch-protection-and-pull-requests)
- [Link Checking](#link-checking)
  - [Pinning Third-Party Actions](#pinning-third-party-actions)
- [Permalinks And Snapshots](#permalinks-and-snapshots)
- [Configuration And Sensitive Information](#configuration-and-sensitive-information)
- [Sensitive-Data Incident Response](#sensitive-data-incident-response)
- [Planning And Issue Tracking](#planning-and-issue-tracking)
- [Contributing](#contributing)
- [Changelog, Releases And Versioning](#changelog-releases-and-versioning)
- [Continuous Integration](#continuous-integration)
- [Recommended Throughout The Course](#recommended-throughout-the-course)

## Repository Setup

**Since: W1**

**Required**

1. Each team creates **one GitHub organization** and **one repository** inside it.
   The team names both, and both names carry the team number, so the course staff can find them.
   The repository belongs to the organization and not to a team member's personal account.
2. **The repository is public.**
   Assume every commit can be read by anyone, permanently.
3. The default branch is `main`.
4. All team members are added as collaborators, with write access, before any collaborative work starts.
   Nobody works alone in their own account.
5. There is no consent step.
   The customer in this course is your instructor, and the public MIT-licensed model is a course-wide decision.
6. Add a `.gitignore` appropriate to your tooling.
   At minimum it covers editor state, OS files, `.env` and other secret files, and build output.
   Once you pick a stack, extend it for that stack.
7. The first commit goes directly to `main`.
   It is the only commit that ever goes directly to `main`.
   See [Branch Protection And Pull Requests](#branch-protection-and-pull-requests).
8. Keep the repository reachable for the whole course.
   Do not archive, transfer, or rename it, do not delete the organization, and do not make it private.

### Licensing

**Required**

1. Add the MIT License text as `LICENSE` in the repository root, with the copyright line naming your team and the year.
2. Do not commit customer-owned or third-party code, data, media, or trademarks unless you have explicit permission to redistribute them publicly.
3. Do not commit third-party material whose license does not permit the use you are making of it.
   Checking the license is your job, not the course's.
4. If the repository contains customer-owned items, or code, data, or assets you copied or vendored from someone else, add `ATTRIBUTION.md` in the repository root.
   For each item, record its name, source, author or owner, license, and how the product uses it.
5. Ordinary dependencies installed through a package manager do not need `ATTRIBUTION.md` entries.
   Record them in the dependency manifest and the lockfile instead, and commit the lockfile.

### Root README

**Since: W1**

**Required**

The root `README.md` is the public front door of the repository.
In Week 1 it must contain:

- The project name from the course catalog, and the team number.
- A one-line description of what the project is for.
- A link to the current week's report, currently `reports/week-01/README.md`.
- A link to the maintained documentation in `docs/`.
- A note that the project is a work in progress for the ITPD course.

**Since: W3**

The root `README.md` also carries setup and run instructions for the product as it exists.

## Branch Protection And Pull Requests

**Since: W1**

**Required**

1. Protect `main` as soon as the first commit lands:

   - Require a pull request before merging.
     Direct pushes to `main` are blocked.
   - Require at least one approval from another team member.
   - Do not allow the author of a pull request to approve it.

2. GitHub enforces all three of these for repositories owned by an organization, which is what the repository is.
   If a setting is not available to you, ask in the course chat rather than proceeding without it.
3. Every change after the first commit goes through a pull request: documentation, configuration, and CI changes included.
4. Keep each pull request to one change.
   A pull request that fixes a broken link and reformats three files is hard to review, and review is the point.
5. Name branches with a short lowercase hyphenated description, for example `add-alternatives-research`.
   From Week 2, when issues exist, use `<issue-number>-<short-description>`, for example `42-add-login-form`.
6. Add a pull request template at `.github/pull_request_template.md`.
   It must prompt for:

   - What changed and why.
   - What you checked, and how.
   - For the reviewer: what to look at, and whether the linked requirements or acceptance criteria are satisfied.
     From Week 2, name the `AC-nn` and its story issue for each criterion the change checks.

7. Do not delete pull requests, reviews, or branches that are used as assignment evidence, and do not rewrite history to tidy it up.
   The history is part of what is being assessed.
8. History rewriting is allowed in exactly one case: removing accidentally committed sensitive data.
   See [Sensitive-Data Incident Response](#sensitive-data-incident-response).

**Required in Week 1**

1. At least one pull request must be merged into `main` with an approval from another team member, and it must be linked from the Week 1 report as evidence.
2. Every team member must, during Week 1:

   - Make at least one commit through a pull request.
   - Review and approve at least one other team member's pull request.

## Link Checking

**Since: W1**

Broken links make a report unusable.
The link checker is a required part of the repository from Week 1.

**Required**

1. Configure link checking with [Lychee](https://lychee.cli.rs/continuous-integration/github/) as a GitHub Actions workflow.
2. Check every Markdown file in the repository, including everything under `reports/` and `docs/`.
   Do not check only the files you edited.
3. Run it on pull requests and on every push to `main`.
4. The workflow must fail the check when a link is broken.
   A check that reports and passes anyway is not a check.
5. The latest run on `main` must be green before you submit.
6. Exclude as few links as possible.
   Exclude a link only when it cannot be checked mechanically: it needs authentication, it rate-limits the checker, or it is unstable.
   Never exclude external links as a blanket rule.
7. Every excluded link must be justified in the file that excludes it, and confirmed to work by opening it in a browser before you submit.
   A silent exclusion is a broken link you chose not to notice.

**Example**

`.github/workflows/lychee.yml`:

```yaml
name: Link check

on:
  pull_request:
  push:
    branches: [main]

permissions:
  contents: read

jobs:
  lychee:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@3d3c42e5aac5ba805825da76410c181273ba90b1 # v7.0.1
      - name: Check links
        uses: lycheeverse/lychee-action@e7477775783ea5526144ba13e8db5eec57747ce8 # v2.9.0
        with:
          args: >-
            --no-progress
            --max-concurrency 2
            --accept 200,206,429
            './**/*.md'
          fail: true
```

Exclusions go in `.lycheeignore` in the repository root, one pattern per line, each with a comment saying why:

```text
# The Figma board requires a browser session and returns 403 to the checker.
# Verified manually in a browser on 2026-09-30.
https://www.figma.com/design/PUc4NFVcLureKzxE3RAGB0/Market-Research
```

The same justification, in prose, goes in the week's report under the link-checking evidence.

### Pinning Third-Party Actions

**Since: W1**

Every workflow runs code that somebody else wrote.
Pin it to a commit, not to a name, and let Dependabot move the pin for you.

**Required**

1. Pin every third-party action to the full 40-character commit SHA of a released version, and record that version in a trailing comment on the same line.
   `uses: actions/checkout@v4` runs whatever the owner publishes next; `uses: actions/checkout@3d3c42e5aac5ba805825da76410c181273ba90b1 # v7.0.1` runs the code you reviewed.
2. Never pin to a tag or to a branch, including a branch of the action's own repository.
   Both are moving labels that somebody else can repoint.
3. Add `.github/dependabot.yml` with the `github-actions` ecosystem, so the pins are updated for you.
   A pin that nobody updates is a pin to a version with a known vulnerability.
4. Treat a Dependabot pull request as any other pull request: review it, and merge it through a pull request.
5. Update the SHA and the version comment in the same commit, so the comment never names a different version than the SHA.

**Example**

`.github/dependabot.yml`:

```yaml
version: 2

updates:
  - package-ecosystem: github-actions
    directory: /
    schedule:
      interval: weekly
```

## Permalinks And Snapshots

**Since: W1**

Every assignment asks you for a permalink and a repository snapshot.
Both are built from the commit you are submitting, so that what a grader sees is exactly what you handed in, and does not drift when you keep working afterwards.

**Required**

1. The submission commit is a commit on `main`.
   Not a branch, not a fork, not a local unpushed commit.
2. A permalink to a file uses the full commit hash:

   ```text
   https://github.com/<org>/<repo>/blob/<full-commit-sha>/reports/week-01/README.md
   ```

3. A permalink to the repository itself uses the same commit:

   ```text
   https://github.com/<org>/<repo>/tree/<full-commit-sha>
   ```

4. Get the full hash from `git rev-parse HEAD`, or from the platform's permalink button.
   A 7-character abbreviation is not a permalink.
5. The snapshot is the archive of that same commit:

   ```text
   https://github.com/<org>/<repo>/archive/<full-commit-sha>.zip
   ```

   Download it and attach it to your Moodle submission.
   This gives instructors a copy that works even if the repository is unreachable, and it freezes the exact state that was graded.

6. Both the permalink and the snapshot must point at the same commit, and that commit must contain everything the assignment requires.
   Check the rendered permalink before you submit.

## Configuration And Sensitive Information

**Since: W1**

**Required**

1. If the product needs environment variables or secrets, add a sanitized `.env.example` showing the shape of the configuration, and keep `.env` and other secret files in `.gitignore`.
2. Use placeholders such as `{{access_token}}` in any public example.
   Never a real value, not even a test value from a third-party service.
3. Commit generated files only when deployment, grading, or tool compatibility needs them.
   Ignore the rest.
4. Keep large binaries, recordings, datasets, and model weights out of normal git history.
   When a file is genuinely required, use approved external storage and link to it.
5. Never commit credentials, personal data, confidential customer material, recordings, recording links, or test credentials.
   See [Artifact Requirements](artifact-requirements.md#sensitive-information-reference) for what counts as personal data.

## Sensitive-Data Incident Response

**Since: W1**

If credentials, personal data, or confidential material is committed by mistake:

1. Revoke or rotate the exposed credential immediately.
2. Make the repository private while you clean up, if the material is serious.
3. Tell your instructor as soon as possible.
   You will not be penalised for reporting it; you will be for hiding it.
4. Remove the material from the files and from the git history.
5. Write privately what was exposed, when, and what you did about it, and send that to your instructor.
   Do not put that account in the public repository.

<!-- TODO don't mention planning here, it's only about issues -->

## Planning And Issue Tracking

**Since: W2**

**Required**

1. Add `.github/ISSUE_TEMPLATE/user-story.yml`, an Issue Form whose fields carry the story statement, the `Traces to` list, any notes, the acceptance criteria, and an optional remaining-work checklist.
   The list is required and takes one entry per line, exactly one `VP-nn` plus any origins, per [User Stories And Acceptance Criteria](process-requirements.md#user-stories-and-acceptance-criteria).
   Acceptance criteria are optional in the form, because an inactive story may carry none; the two-criteria floor is required for every active story, and each criterion carries a stable `AC-nn` inside the issue.
2. Disable blank issue creation in the issue template configuration.
3. Open one issue per story, from the form, per [User Stories And Acceptance Criteria](process-requirements.md#user-stories-and-acceptance-criteria).
   The issue is the story, and the list of stories is the issue list filtered by the `user-story` label.
   The title is `US-nn: <story title>`.
4. Create the labels the stories use, by any means: `user-story`, and `moscow:must`, `moscow:should`, `moscow:could`, `moscow:won't`.
   The form applies `user-story`; the team applies one MoSCoW label per story.
5. An inactive story closes as not planned, with a comment naming the reason and any story that supersedes it.
   A delivered active story closes as completed.
6. Create branches from the issue where GitHub supports it, and link every pull request to its issue.
7. Check the relevant acceptance criteria before merging, and name the `AC-nn` and its story issue in the pull request.
8. Do not delete an issue or rewrite its body to hide a change; the issue history is part of what a reader follows.

**Recommended**

- Use a planning or issue-tracking tool that keeps its state in the repository, such as the [`backlog.md`](https://github.com/MrLesk/Backlog.md) command-line tool, for tasks.
  It is a task tracker, not the home of a user story, and a story issue may be mentioned in it.
  Its files are repository content rather than artifacts, per [Where Artifacts Live In The Repository](artifact-requirements.md#where-artifacts-live-in-the-repository), and it is not graded on its own.

<!-- TODO don't mention in this section about user stories -->

**Since: W3**

9. Keep the project plan in `docs/work-plan.md`, and keep it current as the plan changes.

## Contributing

**Since: W3**

**Required**

1. Add `CONTRIBUTING.md` in the repository root.
   It is how a new member, or a grader, finds out how the team works, and it is written before the workflow is complicated rather than after.
2. `CONTRIBUTING.md` states the commit message format the team uses.
   Any format is allowed; an unstated format is not, because a reviewer cannot judge a commit they cannot parse.
3. `CONTRIBUTING.md` states how a change gets in: the branch naming rule, what a pull request must contain, and what the reviewer checks.
4. Keep it current.
   A contributing guide that describes last month's process is worse than none, because it is believed.

**Recommended**

- Use [Conventional Commits](https://www.conventionalcommits.org/) for commit messages: a type, a scope, and a short description.
  It is a good default because it is machine-readable, and a changelog can be generated from it if the team ever wants one.
  It is not required, and a team that writes a clearer format should write it down instead.

## Changelog, Releases And Versioning

**Since: W3**

**Required**

1. Maintain `CHANGELOG.md` in the repository root, following [Keep a Changelog](https://keepachangelog.com/).
2. Keep an `[Unreleased]` section during development, with an entry for every user-visible change, grouped under `Added`, `Changed`, `Deprecated`, `Removed`, `Fixed`, and `Security`.
3. Add a changelog line to the pull request template: either the change is user-visible and the entry is updated, or it is not user-visible.
4. Version with [Semantic Versioning](https://semver.org/) and prefix tags with `v`, for example `v0.1.0`.
5. Each tag points at a commit on `main`.
   Protect mapped tags from being moved or deleted.
6. When you cut a release, move the included entries into a dated section, link the section to the release, and open a new empty `[Unreleased]`.

**Compile the changelog from pull requests, not from commits.**
A commit message records what the team judged important at that moment, and that judgement is usually about the code rather than the product: a rename, a refactor, a fix for a bug nobody outside the team could reach.
A changelog is a user-facing summary, so it answers a different question.
The pull request is where the team already writes down what changed and why, which is why the pull request template asks for the changelog line.

## Continuous Integration

**Since: W2**

**Required**

1. Add a Markdown check as a GitHub Actions workflow, on pull requests and on every push to `main`.
2. The check must fail the build when the Markdown is wrong, and the latest `main` run must be green before you submit.
3. Any of the common tools is acceptable, and the repository's own conventions decide which: `markdownlint-cli2`, `prettier --check`, or `remark-lint`.
   Pin it, as in [Pinning Third-Party Actions](#pinning-third-party-actions).

Markdown is checked in Week 2 because the week is mostly prose: a product vision, the meeting artifacts, and the week report.
A broken link or a heading that drifted out of Title Case is a defect in that work, and a defect you find on Friday evening is a defect you did not fix.

**Since: W3**

4. Add continuous integration for your product code: linting, formatting or type checking, build, and automated tests, on pull requests and on `main`.
5. Keep the link check and the Markdown check running.
   They are a baseline, not a substitute for the checks your product needs.
6. Pin the actions you add, as in [Pinning Third-Party Actions](#pinning-third-party-actions).
7. The latest `main` run of every required check must be green before you submit.

## Recommended Throughout The Course

- Enable secret scanning and push protection.
- Provide a Nix flake or a `devenv` configuration so the project can be set up reproducibly.
- Add `AGENTS.md` once the workflow is stable enough to be worth writing down.
