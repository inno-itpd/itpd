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

`CHANGELOG.md` is the user-facing record of what changed, release by release.

**Required**

1. Maintain `CHANGELOG.md` following [Keep a Changelog](https://keepachangelog.com/).
2. Keep an `[Unreleased]` section during development, with an entry for every user-visible change, grouped under `Added`, `Changed`, `Deprecated`, `Removed`, `Fixed`, and `Security`.
3. Add a changelog line to the pull request template: either the change is user-visible and the entry is updated, or it is not user-visible.

**Since: W5**

4. The changelog records user-visible changes only: a test, a workflow, or a deployment is not a changelog entry, and the sprint's checked requirements are recorded in the plan's `REL-nn` block, per [Releases](planning-requirements.md#releases).

**Compile the changelog from pull requests, not from commits.**
A commit message records what the team judged important at that moment, and that judgement is usually about the code rather than the product: a rename, a refactor, a fix for a bug nobody outside the team could reach.
A changelog is a user-facing summary, so it answers a different question.
The pull request is where the team already writes down what changed and why, which is why the pull request template asks for the changelog line.

## Versioning And Tags

**Since: W3**

**Required**

1. Version with [Semantic Versioning](https://semver.org/) and prefix tags with `v`, for example `v0.1.0`.
2. Each tag points at a commit on `main`.
   Protect release tags from being moved or deleted.

## Cutting A Release

**Since: W3**

When the release is cut is in [Releases](planning-requirements.md#releases); this section says how it is titled, what its user-facing body carries, and what cutting it changes in the changelog and in the sprint's GitHub milestone.
The sprint's `REL-nn` section, which records the tag, the day, and from `REL-05` the checked requirements, is in [Releases](planning-requirements.md#releases).

**Required**

1. Title the release with the tag, so the title and the tag match, for example `v0.1.0` in both.
   A nickname for the release may head its body; it does not go in the title.
2. When you cut a release, move the included entries into a dated section, link the section to the release, and open a new empty `[Unreleased]`.
3. Close the sprint's GitHub milestone once the release is cut, after moving each issue still open into a later sprint's milestone, per [Sprints](planning-requirements.md#sprints).

**Since: W5**

4. The body is the customer-facing note for every release cut from Week 5 on, including an earlier release in a sprint and a hotfix.
   It is the team's shape: neither a section nor a section title is required.
5. The body ends with the line `[Full changelog](<absolute url>)`, which links the changelog's released section, and nothing comes after it.
6. Everything in the body carries no `REL-nn`, `QR-nn`, or `QRT-nn` citation, no quality claim, no test result, no link to the testing plan or the week's report, and no production check.
   It does not restate the title, the tag, the commit, or the date that the release page already shows, and it does not repeat a changelog entry.
   The `Full changelog` URL's heading anchor may carry the version and the date, because it is a link destination rather than a statement.

**Recommended**

- Open with what the release lets the user do that they could not before, or `No changes visible to a user` when nothing visible changed.
- Say what it does not do yet, and say nothing when this version does everything it promised.
- Keep each to a short paragraph, so the body stays a note rather than a second changelog.
- Add anything else a customer needs that no other record carries, such as an upgrade step, a screenshot, or where to find the change in the product, before the `Full changelog` line.

## Full Example

A `CHANGELOG.md` after `REL-05`: the new empty `[Unreleased]` and the dated section that links the release.

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
```

The release those entries came from is titled `v0.5.0`: the tag and the title match, and the dated section links it.
Its body is the customer-facing note, in one possible shape: the summary, the limitation, one section the team chose to add, and the `Full changelog` line that closes it.

```markdown
Booking now shows how many free slots are left in each day, so a customer can pick a time without opening every slot.

Recurring bookings are not supported yet.

### If The Page Was Already Open

Reload the booking page once; a page opened before this release does not show the count.

---

[Full changelog](https://github.com/<organization>/<repo>/blob/main/CHANGELOG.md#050---2026-10-29)
```
