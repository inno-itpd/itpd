# Repository Requirements

These requirements cover the mechanics of the product repository: where it lives, how changes get in, how links get checked, and how you produce the permalinks and the snapshot your assignment asks for. Use [Artifact Requirements](artifact-requirements.md) for what the artifacts are and who may see them, and [Process Requirements](process-requirements.md) for the product work.

Each section states the week it starts applying. Requirements that arrive later are written now so that later weeks do not have to introduce a convention from nothing.

<h2>Table of contents</h2>

- [Required Starting Week 1](#required-starting-week-1)
- [Repository Setup](#repository-setup)
  - [Licensing](#licensing)
  - [Root README](#root-readme)
- [Branch Protection And Pull Requests](#branch-protection-and-pull-requests)
- [Link Checking](#link-checking)
- [Permalinks And Snapshots](#permalinks-and-snapshots)
- [Configuration And Sensitive Information](#configuration-and-sensitive-information)
- [Sensitive-Data Incident Response](#sensitive-data-incident-response)
- [Required Starting Week 2](#required-starting-week-2)
- [Planning And Issue Tracking](#planning-and-issue-tracking)
- [Required Starting Week 3](#required-starting-week-3)
- [Changelog, Releases And Versioning](#changelog-releases-and-versioning)
- [Required Starting Week 5](#required-starting-week-5)
- [Continuous Integration](#continuous-integration)
- [Recommended Throughout The Course](#recommended-throughout-the-course)

## Required Starting Week 1

## Repository Setup

**Required**

1. Each team creates **one repository** in the course GitHub organization. The course staff give you the organization name and the repository name to use.
2. **The repository is public.** Assume every commit can be read by anyone, permanently.
3. The default branch is `main`.
4. All team members are added as collaborators, with write access, before any collaborative work starts. Nobody works alone in their own account.
5. There is no consent step. The customer in this course is your instructor, and the public MIT-licensed model is a course-wide decision.
6. Add a `.gitignore` appropriate to your tooling. At minimum it covers editor state, OS files, `.env` and other secret files, and build output. Once you pick a stack in Week 2, extend it for that stack.
7. The first commit goes directly to `main`. It is the only commit that ever goes directly to `main`. See [Branch Protection And Pull Requests](#branch-protection-and-pull-requests).
8. Keep the repository reachable for the whole course. Do not archive, transfer, or rename it, and do not make it private.

### Licensing

**Required**

1. Add the MIT License text as `LICENSE` in the repository root, with the copyright line naming your team and the year.
2. Do not commit customer-owned or third-party code, data, media, or trademarks unless you have explicit permission to redistribute them publicly.
3. Do not commit third-party material whose license does not permit the use you are making of it. Checking the license is your job, not the course's.
4. If the repository contains customer-owned items, or code, data, or assets you copied or vendored from someone else, add `ATTRIBUTION.md` in the repository root. For each item, record its name, source, author or owner, license, and how the product uses it.
5. Ordinary dependencies installed through a package manager do not need `ATTRIBUTION.md` entries. Record them in the dependency manifest and the lockfile instead, and commit the lockfile.

### Root README

**Required**

The root `README.md` is the public front door of the repository. In Week 1 it must contain:

- The project name from the course catalog, and the team number.
- A one-line description of what the project is for.
- A link to the current week's report, currently `reports/week-01/README.md`.
- A link to the maintained documentation in `docs/`.
- A note that the project is a work in progress for the ITPD course.

From Week 2 it also carries setup and run instructions for the product as it exists, and from Week 5 the link to the deployed product.

## Branch Protection And Pull Requests

**Required**

1. Protect `main` as soon as the first commit lands:

   - Require a pull request before merging. Direct pushes to `main` are blocked.
   - Require at least one approval from another team member.
   - Do not allow the author of a pull request to approve it.

2. GitHub enforces all three of these for repositories owned by an organization. If a setting is not available to you, ask in the course chat rather than proceeding without it.
3. Every change after the first commit goes through a pull request: documentation, configuration, and CI changes included.
4. Keep each pull request to one change. A pull request that fixes a broken link and reformats three files is hard to review, and review is the point.
5. Name branches with a short lowercase hyphenated description, for example `add-alternatives-research`. From Week 2, when issues exist, use `<issue-number>-<short-description>`, for example `42-add-login-form`.
6. Add a pull request template at `.github/pull_request_template.md`. It must prompt for:

   - What changed and why.
   - What you checked, and how.
   - For the reviewer: what to look at, and whether the linked requirements or acceptance criteria are satisfied.

7. Do not delete pull requests, reviews, or branches that are used as assignment evidence, and do not rewrite history to tidy it up. The history is part of what is being assessed.
8. History rewriting is allowed in exactly one case: removing accidentally committed sensitive data. See [Sensitive-Data Incident Response](#sensitive-data-incident-response).

**Required in Week 1**

1. At least one pull request must be merged into `main` with an approval from another team member, and it must be linked from the Week 1 report as evidence.
2. Every team member must, during Week 1:

    - Make at least one commit through a pull request.
    - Review and approve at least one other team member's pull request.

## Link Checking

Broken links make a report unusable. The link checker is a required part of the repository from Week 1.

**Required**

1. Configure link checking with [Lychee](https://lychee.cli.rs/continuous-integration/github/) as a GitHub Actions workflow.
2. Check every Markdown file in the repository, including everything under `reports/` and `docs/`. Do not check only the files you edited.
3. Run it on pull requests and on every push to `main`.
4. The workflow must fail the check when a link is broken. A check that reports and passes anyway is not a check.
5. The latest run on `main` must be green before you submit.
6. Exclude as few links as possible. Exclude a link only when it cannot be checked mechanically: it needs authentication, it rate-limits the checker, or it is unstable. Never exclude external links as a blanket rule.
7. Every excluded link must be justified in the file that excludes it, and confirmed to work by opening it in a browser before you submit. A silent exclusion is a broken link you chose not to notice.

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
      - uses: actions/checkout@v4
      - name: Check links
        uses: lycheeverse/lychee-action@v2
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

## Permalinks And Snapshots

Every assignment asks you for a permalink and a repository snapshot. Both are built from the commit you are submitting, so that what a grader sees is exactly what you handed in, and does not drift when you keep working afterwards.

**Required**

1. The submission commit is a commit on `main`. Not a branch, not a fork, not a local unpushed commit.
2. A permalink to a file uses the full commit hash:

   ```text
   https://github.com/<org>/<repo>/blob/<full-commit-sha>/reports/week-01/README.md
   ```

3. A permalink to the repository itself uses the same commit:

   ```text
   https://github.com/<org>/<repo>/tree/<full-commit-sha>
   ```

4. Get the full hash from `git rev-parse HEAD`, or from the platform's permalink button. A 7-character abbreviation is not a permalink.
5. The snapshot is the archive of that same commit:

   ```text
   https://github.com/<org>/<repo>/archive/<full-commit-sha>.zip
   ```

   Download it and attach it to your Moodle submission. This gives instructors a copy that works even if the repository is unreachable, and it freezes the exact state that was graded.
6. Both the permalink and the snapshot must point at the same commit, and that commit must contain everything the assignment requires. Check the rendered permalink before you submit.

## Configuration And Sensitive Information

**Required**

1. If the product needs environment variables or secrets, add a sanitized `.env.example` showing the shape of the configuration, and keep `.env` and other secret files in `.gitignore`.
2. Use placeholders such as `{{access_token}}` in any public example. Never a real value, not even a test value from a third-party service.
3. Commit generated files only when deployment, grading, or tool compatibility needs them. Ignore the rest.
4. Keep large binaries, recordings, datasets, and model weights out of normal git history. When a file is genuinely required, use approved external storage and link to it.
5. Never commit credentials, personal data, confidential customer material, recordings, recording links, or test credentials. See [Artifact Requirements](artifact-requirements.md#sensitive-information-reference) for what counts as personal data.

## Sensitive-Data Incident Response

If credentials, personal data, or confidential material is committed by mistake:

1. Revoke or rotate the exposed credential immediately.
2. Make the repository private while you clean up, if the material is serious.
3. Tell your instructor or mentor as soon as possible. You will not be penalised for reporting it; you will be for hiding it.
4. Remove the material from the files and from the git history.
5. Write privately what was exposed, when, and what you did about it, and send that to your instructor. Do not put that account in the public repository.

## Required Starting Week 2

## Planning And Issue Tracking

**Required**

1. Create the issue templates the course requires, in `.github/ISSUE_TEMPLATE/`. The course will say which types you need for the week.
2. Disable blank issue creation.
3. Create branches from the issue where GitHub supports it, and link every pull request to its issue.
4. Check the relevant acceptance criteria before merging.
5. Keep the project plan in `docs/work-plan.md`, and keep it current as the plan changes.

## Required Starting Week 3

## Changelog, Releases And Versioning

**Required**

1. Maintain `CHANGELOG.md` in the repository root, following [Keep a Changelog](https://keepachangelog.com/).
2. Keep an `[Unreleased]` section during development, with an entry for every user-visible change, grouped under `Added`, `Changed`, `Deprecated`, `Removed`, `Fixed`, and `Security`.
3. Add a changelog line to the pull request template: either the change is user-visible and the entry is updated, or it is not user-visible.
4. Version with [Semantic Versioning](https://semver.org/) and prefix tags with `v`, for example `v0.1.0`.
5. Each tag points at a commit on `main`. Protect mapped tags from being moved or deleted.
6. When you cut a release, move the included entries into a dated section, link the section to the release, and open a new empty `[Unreleased]`.

## Required Starting Week 5

## Continuous Integration

**Required**

1. Add continuous integration for your stack: linting, formatting or type checking, build, and automated tests, on pull requests and on `main`.
2. Keep the link check running. It is a baseline, not a substitute for the checks your product needs.
3. The latest `main` run of every required check must be green before you submit.

## Recommended Throughout The Course

- Enable secret scanning and push protection.
- Provide a Nix flake or a `devenv` configuration so the project can be set up reproducibly.
- Add `CONTRIBUTING.md` and `AGENTS.md` once the workflow is stable enough to be worth writing down.
