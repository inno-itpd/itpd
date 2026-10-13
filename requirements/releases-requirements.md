# Release Requirements

These requirements define the changelog and the release that ends each sprint: where the changelog lives, how it is written, how versions and tags are named, and what cutting a release changes.
[Guide: Planning And Tracking](../guides/planning-and-tracking.md) is the method.
When a release happens, and how it belongs to its sprint, is in [Releases](planning-requirements.md#releases).
How a change gets in, and what the pull request template prompts for, is in [Branch Protection And Pull Requests](repository-requirements.md#branch-protection-and-pull-requests).

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

When the release is cut is in [Releases](planning-requirements.md#releases); this section says how it is titled and what cutting it does to the changelog.

**Required**

1. Title the release with the tag, so the title and the tag match, for example `v0.1.0` in both.
   A nickname for the release goes in its body, not its title.
2. When you cut a release, move the included entries into a dated section, link the section to the release, and open a new empty `[Unreleased]`.

## Full Example

A `CHANGELOG.md` after the first sprint's release: the new empty `[Unreleased]` and the dated section that links the release.

```markdown
# Changelog

All notable changes to this project are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/), and this project adheres to [Semantic Versioning](https://semver.org/).

## [Unreleased]

## [0.1.0](https://github.com/<organization>/<repo>/releases/tag/v0.1.0) - 2026-10-15

### Added

- Show the week's schedule.

### Fixed

- Keep the meeting time when a session is edited.
```

The release those entries came from is titled `v0.1.0`: the tag and the title match, and the dated section links it.
