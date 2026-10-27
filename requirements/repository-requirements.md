# Repository Requirements

These requirements cover the mechanics of the product repository: where it lives, how links get checked, how the documentation site is published, and how you produce the permalinks and the snapshot your assignment asks for.
How a change reaches `main` is in [Pull Request Requirements](pull-requests-requirements.md).
Use [General Requirements](general-requirements.md) for what an artifact is, [Visibility Requirements](visibility-requirements.md) for who may see it, and the file for each artifact, listed in [the course rules](../course/rules.md#where-the-rules-live), for the product work.

<h2>Table of contents</h2>

- [Repository Setup](#repository-setup)
  - [Licensing](#licensing)
  - [Root README](#root-readme)
  - [Setup And Run Instructions](#setup-and-run-instructions)
- [Documentation Site](#documentation-site)
- [Branch Protection](#branch-protection)
- [Link Checking](#link-checking)
  - [Pinning Third-Party Actions](#pinning-third-party-actions)
- [Permalinks And Snapshots](#permalinks-and-snapshots)
- [Configuration And Sensitive Information](#configuration-and-sensitive-information)
- [Sensitive-Data Incident Response](#sensitive-data-incident-response)
- [Contributing](#contributing)
- [Continuous Integration](#continuous-integration)
- [Environments And Deployment](#environments-and-deployment)
- [The Course Materials As An Agent Skill](#the-course-materials-as-an-agent-skill)
- [Recommended Throughout The Course](#recommended-throughout-the-course)

## Repository Setup

**Since: W1**

**Required**

1. Each team creates **one GitHub organization** and **one repository** inside it.
   The team names both, and both names carry the team number, so the course staff can find them.
   The repository belongs to the organization and not to a team member's personal account.
2. **The repository is public.**
   What that means for its contents is in [Visibility Model](visibility-requirements.md#visibility-model).
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
   See [Branch Protection](#branch-protection).
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

The root `README.md` also links the product's setup and run instructions, which live in `docs/setup.md`.

### Setup And Run Instructions

**Since: W3**

The product's setup and run instructions live in `docs/setup.md`, which the root `README.md` links, per [Root README](#root-readme).

**Required**

1. The page covers at least: the prerequisites, how to install, how to configure the product, pointing at a `.env.example` file or a similar one, how to run the product, and how to run the checks and the tests.
2. It covers enough that a clean checkout can complete the [core task](minimum-usable-product-requirements.md#the-candidate) end to end by following it.
   The coverage is the requirement; the page's headings and their order are the team's choice.

## Documentation Site

**Since: W3**

The repository publishes its maintained documentation as a website, so a reader can reach it without cloning the repository.
The site serves `docs/`; nothing moves into it from `reports/`, per [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository).

**Required**

1. Publish `docs/` as a [GitHub Pages](https://docs.github.com/en/pages) site through a GitHub Actions workflow under `.github/workflows/`, and link the site from the root `README.md`.
   Pin every third-party action per [Pinning Third-Party Actions](#pinning-third-party-actions).
2. Any static site generator is allowed, and the generator's configuration path is the team's choice.
   [mdBook](https://rust-lang.github.io/mdBook/), [Zensical](https://zensical.org/), and [MkDocs](https://www.mkdocs.org/) are examples, in that order.
3. The site's default page is a landing page, not a file listing: it says what the product is, and it navigates to the other pages and the resources around the project.
4. The site does not link the weekly reports: a week's report is evidence for its week, not maintained documentation.
5. A page that links a file outside `docs/` links it by the file's GitHub URL, so the link resolves on the site and in the repository alike.

## Branch Protection

**Since: W1**

The settings below enforce the pull request workflow in [Pull Request Requirements](pull-requests-requirements.md).

**Required**

1. Protect `main` as soon as the first commit lands:

   - Require a pull request before merging.
     Direct pushes to `main` are blocked.
   - Require at least one approval from another team member.
   - Do not allow the author of a pull request to approve it.

2. GitHub enforces all three of these for repositories owned by an organization, which is what the repository is.
   If a setting is not available to you, ask in the course chat rather than proceeding without it.

## Link Checking

**Since: W1**

Broken links make a report unusable.
The link checker is a required part of the repository from Week 1.

**Required**

1. Configure link checking with [Lychee](https://lychee.cli.rs/continuous-integration/github/) as a GitHub Actions workflow.
2. Check every Markdown file in the repository, including everything under `reports/` and `docs/`.
   Do not check only the files you edited.
   The one directory you may leave out is the course materials', per [The Course Materials As An Agent Skill](#the-course-materials-as-an-agent-skill).
3. Run it on pull requests and on every push to `main`.
4. The workflow must fail the check when a link is broken.
   A check that reports and passes anyway is not a check.
5. The latest run on `main` must be green before you submit.
6. Exclude as few links as possible.
   Exclude a link only when it cannot be checked mechanically: it needs authentication, it rate-limits the checker, or it is unstable.
   Never exclude external links as a blanket rule.
7. Every excluded link must be justified in the file that excludes it, and confirmed to work by opening it in a browser before you submit.
   A silent exclusion is a broken link you chose not to notice.

**Recommended**

- Keep Lychee's settings and exclusions in `lychee.toml` in the repository root, not in the workflow's `args`.
  Lychee reads it by default, so the workflow and a local `lychee .` run check the same links the same way, and each exclusion keeps its reason in a comment beside it.

**Example**

The link check of this course's own repository is a working configuration to start from:

- [`.github/workflows/lychee.yml`](../.github/workflows/lychee.yml) runs Lychee on pull requests and on `main`, with its actions pinned per [Pinning Third-Party Actions](#pinning-third-party-actions).
- [`lychee.toml`](../lychee.toml) holds the concurrency, the accepted statuses, and the exclusions, each with a comment saying why.

Its exclusions are this repository's own.
Start with none, and add yours with their reasons as you need them.

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
4. A Dependabot pull request is handled like any other, per [Bot And Workflow Pull Requests](pull-requests-requirements.md#bot-and-workflow-pull-requests).
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
5. What may never be committed is in [Sensitive Information Reference](visibility-requirements.md#sensitive-information-reference).

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

## Contributing

**Since: W3**

**Required**

1. Add `CONTRIBUTING.md` in the repository root.
   It is how a new member, or a grader, finds out how the team works, and it is written before the workflow is complicated rather than after.
2. `CONTRIBUTING.md` states the commit message format the team uses.
   Any format is allowed; an unstated format is not, because a reviewer cannot judge a commit they cannot parse.
3. `CONTRIBUTING.md` states how a change gets in: the branch naming rule, what a pull request must contain, and what the reviewer checks, per [Pull Request Requirements](pull-requests-requirements.md).
4. Keep it current.
   A contributing guide that describes last month's process is worse than none, because it is believed.
5. `CONTRIBUTING.md` states which views the team uses in its GitHub project and why, and links the project, per [GitHub Projects](issue-tracking-requirements.md#github-projects).
6. Once the stack is chosen, its package ecosystem joins `github-actions` in `.github/dependabot.yml`, per [Pinning Third-Party Actions](#pinning-third-party-actions), so the product's dependencies are bumped like the action pins.

**Recommended**

- Use [Conventional Commits](https://www.conventionalcommits.org/) for commit messages: a type, a scope, and a short description.
  It is a good default because it is machine-readable, and a changelog can be generated from it if the team ever wants one.
  It is not required, and a team that writes a clearer format should write it down instead.

## Continuous Integration

**Since: W2**

**Required**

1. Add a Markdown check as a GitHub Actions workflow, on pull requests and on every push to `main`.
2. The check must fail the build when the Markdown is wrong, and the latest `main` run must be green before you submit.
3. Any of the common tools is acceptable: `markdownlint-cli2`, `prettier --check`, or `remark-lint`.
   Pin the action to a commit, per [Pinning Third-Party Actions](#pinning-third-party-actions), and pin the tool's version: an action that bundles the tool pins it with the action, and a tool installed by the workflow pins it in the lockfile.
4. Fixing what the check reports in an earlier week's files is a formatting-only change, which [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository) allows.
5. A task tracker's directory may be excluded from the check, per [A Task Tracker In The Repository](local-task-tracking-requirements.md#a-task-tracker-in-the-repository), and so may the course materials' directory, per [The Course Materials As An Agent Skill](#the-course-materials-as-an-agent-skill).
   Nothing else is excluded.

Markdown is checked in Week 2 because the week is mostly prose: a product vision, the meeting artifacts, and the week report.
A malformed table or a skipped heading level is a defect in that work, and a defect you find on Friday evening is a defect you did not fix.
Broken links are the [link check](#link-checking)'s job, not this one's.

**Example**

`.github/workflows/markdown.yml`, with `markdownlint-cli2` bundled by the action:

```yaml
name: Markdown check

on:
  pull_request:
  push:
    branches: [main]

permissions:
  contents: read

jobs:
  markdownlint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@3d3c42e5aac5ba805825da76410c181273ba90b1 # v7.0.1
      - name: Check Markdown
        uses: DavidAnson/markdownlint-cli2-action@21c1be1b93ad9ed58fa840aacc3f279cde2a72ff # v24.2.0
        with:
          globs: "**/*.md"
```

`.markdownlint-cli2.jsonc` in the repository root turns off the line-length rule, so one sentence per line and long table rows pass, and the list-numbering rule, so a meeting script can number its questions across their area groups for the agenda to cite.
It also skips the files that `.gitignore` lists, so a local run checks the same files as CI, which never has them, and it excludes the task tracker's directory:

```jsonc
{
  "config": {
    "default": true,
    "MD013": false,
    "MD029": false,
  },
  "gitignore": true,
  "ignores": ["backlog/**"],
}
```

**Since: W4**

6. Keep the link check and the Markdown check running.
   They are a baseline, not a substitute for the checks your product needs.
7. The latest `main` run of every required check must be green before you submit.

**Since: W5**

8. Add `actionlint` over `.github/workflows/` to your continuous integration, on pull requests and on every push to `main`, and pin it per [Pinning Third-Party Actions](#pinning-third-party-actions).
9. Add continuous integration for your product code, with a named step for each of these checks that applies to your stack:

   - Linting.
   - Formatting.
   - Type checking.
   - Build.
   - Automated tests.

   It runs on pull requests and on `main`, and every third-party action is pinned per [Pinning Third-Party Actions](#pinning-third-party-actions).

10. A check that does not apply to your stack is recorded as not applicable, with the reason, rather than silently skipped.
11. The automated tests include at least one test for each critical module the [testability quality requirement](quality-requirements-requirements.md#the-quality-requirement) names, and they run from a clean checkout, so a broken payment change fails the check.
12. The continuous integration stops at the build and the tests: there is no deployment job, because the product CI cannot reach the university network, and the deployment is manual from a campus machine, per [Environments And Deployment](#environments-and-deployment).

## Environments And Deployment

**Since: W5**

The product does not run only on your laptops.
This section names the four environments the course uses, the university VM that hosts the two deployed ones, and the manual deployment that puts the product there.
The deployment runbook is `docs/deployment.md`, and the local setup guide stays `docs/setup.md`.

**Required**

1. The product runs in these four environments:

   | Environment | What it is                                                                               |
   | ----------- | ---------------------------------------------------------------------------------------- |
   | Development | Your team's local machines, where you build, run, and check the product.                 |
   | Integration | The product CI on GitHub Actions, per [Continuous Integration](#continuous-integration). |
   | Staging     | The production-like deployment on the university VM.                                     |
   | Production  | The live deployment on the university VM, which the customer uses.                       |

   Which environment each `QRT-nn` level runs in is in [Quality Requirement Tests](quality-requirements-requirements.md#quality-requirement-tests).

2. The university provides one VM per team, and it hosts both deployments.
   Get it from the university portal, recreate it, and set its password yourself, then connect to it over SSH from a machine on the university network.
3. Every team has at least one member on campus, and that member runs the deployment and the `deployed` test from a machine there.
   The product CI cannot do either: it runs outside the university network, per [Continuous Integration](#continuous-integration).
4. The customer reaches production from the university network at the VM's IPv4 address, and there is no domain name.
   That is what "live accessible" means in this course: the customer opens the product from the university network, not from the public internet.
5. Staging and production are separate deployments on the VM, on separate ports, with separate configuration and separate secrets.
   Staging represents production closely enough that a passing test there is the confidence that the requirement holds in production, and a test run against staging never writes production data.
6. Deploy by hand, from a machine on the university network: the release candidate goes to staging first, and the same commit then goes to production.
7. After each production deploy, verify the [core task](minimum-usable-product-requirements.md#the-candidate) on the deployed product from a campus machine, and record what you checked with the release.
   A deploy that fails its verification is rolled back to the previous release, and `docs/deployment.md` says how.
8. `docs/deployment.md` is the deployment runbook: the four environments, the VM and its campus-network access, the configuration, the manual deploy, the verification, and the rollback.
   It is not [Setup And Run Instructions](#setup-and-run-instructions): it links `docs/setup.md` for the build and the run, and repeats none of it.
9. `docs/deployment.md` carries no real IPv4 address, host name, password, token, or secret.
   It uses placeholders such as `<university-vm-ipv4>`, and the deploy command reads the host from an environment variable; the real addresses are private-only, per [Sensitive Information Reference](visibility-requirements.md#sensitive-information-reference).
10. The VM's configuration and its secrets are installed outside the repository, and no secret is committed.
    `.env.example` carries the shape, per [Configuration And Sensitive Information](#configuration-and-sensitive-information).

## The Course Materials As An Agent Skill

**Since: W2**

**Recommended**

- If your team works with a coding agent, install these course materials in your repository as a skill, so the agent reads the rules your work is checked against instead of guessing them.
  The course repository has a `SKILL.md` in its root, so a copy of the whole repository is the skill.
- Add it as a Git submodule in the directory your agent reads skills from, under the name `itpd`, which must match the skill's name.
  Many agents read `.agents/skills/`, and Claude Code reads `.claude/skills/`; check your agent's documentation.
- Move it to the latest course materials when a new assignment is published, and commit the change so the whole team moves together.
- Exclude its directory from the [Markdown check](#continuous-integration) and the [link check](#link-checking).
  Its files are the course's, and the course repository checks them.
- If your agent is opencode, deny the `commit-itpd` skill in `opencode.json`.
  opencode loads every `SKILL.md` inside the submodule as a skill of its own, and `commit-itpd` is the course maintainers' commit skill, written for the course repository rather than yours.
  The deny keeps your agent from loading it, but opencode still lists it under `/skills` and still runs it when you pick it there or type `/commit-itpd`, so do neither.
- Disclose the agent's work in the week's [AI usage report](weekly-report-requirements.md#ai-usage-report), as for any other AI tool.

A submodule is another Git repository placed inside yours.
Your repository does not store its files: it stores the submodule's URL in `.gitmodules` and a pointer to one commit of it.
Everyone who checks out your repository gets the course materials at that commit, until someone moves the pointer and commits the move.

**Example**

One member adds the submodule once, and commits it:

```sh
git submodule add https://github.com/inno-itpd/itpd .agents/skills/itpd
git commit -m "chore: add the ITPD course materials as an agent skill"
```

Every member clones with the submodule:

```sh
git clone --recurse-submodules <your repository URL>
```

In a clone made without `--recurse-submodules`, the directory is empty until you run:

```sh
git submodule update --init
```

A plain `git pull` moves the pointer when a teammate has moved it, but leaves the files at the old commit.
Pull with `git pull --recurse-submodules`, or set this once in your clone so `pull` and `checkout` update the submodule themselves:

```sh
git config submodule.recurse true
```

To move to the latest course materials, fetch them and commit the new pointer:

```sh
git submodule update --remote .agents/skills/itpd
git add .agents/skills/itpd
git commit -m "chore: update the ITPD course materials"
```

If the submodule's files were changed by hand or no longer match the pointer, force them back to the commit your repository records.
This discards any change inside the submodule:

```sh
git submodule update --init --force .agents/skills/itpd
```

`actions/checkout` does not fetch submodules unless asked, so the directory is empty in CI.
It is not empty in a local clone, so exclude it from both checks anyway.
In `.markdownlint-cli2.jsonc`, beside the task tracker's directory:

```jsonc
  "ignores": ["backlog/**", ".agents/skills/itpd/**"],
```

In `lychee.toml`:

```toml
# The ITPD course materials, a submodule that the course repository checks.
exclude_path = ['^(\./)?\.agents/skills/itpd/']
```

For opencode, in `opencode.json`:

```json
{
  "$schema": "https://opencode.ai/config.json",
  "permission": { "skill": { "commit-itpd": "deny" } }
}
```

## Recommended Throughout The Course

- Enable secret scanning and push protection.
- Provide a Nix flake or a `devenv` configuration so the project can be set up reproducibly.
