# Release Requirements

These requirements define the changelog and the release that ends each sprint: where the changelog lives, how it is written, how versions and tags are named, what the release body carries, and what cutting a release changes.
[Guide: Planning And Tracking](../guides/planning-and-tracking.md) is the method.
When a release happens, how it belongs to its sprint, and what the sprint's `REL-nn` section records, are in [Releases](planning-requirements.md#releases).
How a change gets in, and what the pull request template prompts for, is in [Pull Request Requirements](pull-requests-requirements.md).

<h2>Table of contents</h2>

- [Where The Changelog Lives](#where-the-changelog-lives)
- [The Changelog](#the-changelog)
- [Versioning And Tags](#versioning-and-tags)
- [Cutting A Release](#cutting-a-release)
- [Full Example](#full-example)

## Where The Changelog Lives

**Since: W3**

The changelog is repository content rather than an artifact, per [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository).
It is created in Week 3, with the first release, and stays current for the rest of the course.

**Required**

1. The changelog is `CHANGELOG.md` in the repository root.

## The Changelog

**Since: W3**

`CHANGELOG.md` is the record of notable changes for the people who use and operate the product, release by release.

**Required**

1. Maintain `CHANGELOG.md` following [Keep a Changelog](https://keepachangelog.com/).
2. Keep an `[Unreleased]` section during development, with an entry for every notable change, grouped under `Added`, `Changed`, `Deprecated`, `Removed`, `Fixed`, and `Security`.
3. Add a changelog line to the pull request template: either the change is notable and the entry is updated, or it is not notable.

**Since: W5**

4. The changelog records notable changes only: a change someone running or using the previous version would have to act on, or would notice in behaviour, security, or compatibility.
   A change to how the product is installed, configured, deployed, or run, a required migration, a raised runtime or dependency minimum, a deprecation, a removal, or a security fix is notable; a test, a workflow, an internal refactor, a tooling change, and the act of deploying are not.
   The sprint's checked requirements are recorded in the plan's `REL-nn` block, per [Releases](planning-requirements.md#releases).

**Compile the changelog from pull requests, not from commits.**
A commit message records what the team judged important at that moment, and that judgement is usually about the code rather than the product: a rename, a refactor, a fix for a bug nobody outside the team could reach.
A changelog is a curated summary for the people who use and operate the product, so it answers a different question.
The pull request is where the team already writes down what changed and why, which is why the pull request template asks for the changelog line.

## Versioning And Tags

**Since: W3**

**Required**

1. Version with [Semantic Versioning](https://semver.org/) and prefix tags with `v`, for example `v0.1.0`.
2. Each tag points at a commit on `main`.
   Protect release tags from being moved or deleted.

## Cutting A Release

**Since: W3**

When the release is cut is in [Releases](planning-requirements.md#releases); this section says how it is titled, what its upgrade note carries, and what cutting it changes in the changelog and in the sprint's GitHub milestone.
The sprint's `REL-nn` section, which records the tag, the day, and from `REL-05` the checked requirements, is in [Releases](planning-requirements.md#releases).

**Required**

1. Title the release with the tag, so the title and the tag match, for example `v0.1.0` in both.
   A nickname for the release may head its body; it does not go in the title.
2. When you cut a release, move the included entries into a dated section, link the section to the release, and open a new empty `[Unreleased]`.
3. Close the sprint's GitHub milestone once the release is cut, after moving each issue still open into a later sprint's milestone, per [Sprints](planning-requirements.md#sprints).

**Since: W5**

4. The body is the upgrade note for every release cut from Week 5 on, including an earlier release in a sprint and a hotfix.
   It is written for the person who already runs the previous version and is deciding whether and how to move to this one, and it states whether the upgrade requires anything beyond deploying this version, or that it does not.
   It is the team's shape: neither a section nor a section title is required.
5. The body ends with the line `[Full changelog](<absolute url>)`, which links the changelog's released section, and nothing comes after it.

**Recommended**

- When the upgrade needs action, give the steps in the order the reader takes them, naming the exact environment variable, command, path, or version, and link the section of `docs/setup.md` or `docs/deployment.md` that carries the procedure rather than repeating it.
- Say which earlier versions the note applies to when the steps are conditional, such as `from v0.4.0 or later`.
- Name the known issues of this version and their workarounds, and say nothing when there are none.
- Give one sentence on why the upgrade is worth taking, and keep the note as short as the steps allow; the per-change list is the changelog's.
- Assume the reader can run the product: name exact identifiers and state a consequence once, without explaining how to install, configure, or deploy it.
- Leave out what other records own: the release page shows the title, the tag, the commit, and the date, and the plan's `REL-nn` block, the testing plan, and the weekly report own the course's checks and the customer's evidence.

## Full Example

A `CHANGELOG.md` after `REL-05`: the new empty `[Unreleased]` and the dated section that links the release.
The entries show both classes the rule asks for: what a user sees, and what the person deploying it must know.

```markdown
# Changelog

All notable changes to this project are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/), and this project adheres to [Semantic Versioning](https://semver.org/).

## [Unreleased]

## [0.5.0](https://github.com/<organization>/<repo>/releases/tag/v0.5.0) - 2026-10-29

### Added

- Show how many free slots are left in a day on the booking page.

### Changed

- Show the booking page's free slots within two seconds on a mid-range phone.
- Booking confirmations are sent through the host set by `SMTP_HOST`.
```

The release those entries came from is titled `v0.5.0`: the tag and the title match, and the dated section links it.
Its body is the upgrade note for the person already on `v0.4.x` or earlier, in one possible shape: the action, the version range it applies to, a known issue, one sentence on why, and the `Full changelog` line that closes it.
The link points at the released section's heading, so its anchor carries the version and the date.

```markdown
From any earlier version: set `SMTP_HOST` in `.env`, then redeploy.
From v0.3 or earlier, apply v0.4.0's migration first.

No other action is required.

Known issue: the calendar sync retries every minute after a timeout; restart the worker to clear it.

Free slots are now shown per day, and booking confirmations leave through your own mail host.

[Full changelog](https://github.com/<organization>/<repo>/blob/main/CHANGELOG.md#050---2026-10-29)
```
