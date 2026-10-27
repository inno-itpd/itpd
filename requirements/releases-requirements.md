# Release Requirements

These requirements define the changelog and the release that ends each sprint: where the changelog lives, how it is written, how versions and tags are named, and what cutting a release changes.
[Guide: Planning And Tracking](../guides/planning-and-tracking.md) is the method.
When a release happens, and how it belongs to its sprint, is in [Releases](planning-requirements.md#releases).
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

4. The changelog records user-visible changes only: a test, a workflow, or a deployment is recorded in the release body, per [Cutting A Release](#cutting-a-release), and not in the changelog.

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

When the release is cut is in [Releases](planning-requirements.md#releases); this section says how it is titled and what cutting it changes in the changelog and in the sprint's GitHub milestone.

**Required**

1. Title the release with the tag, so the title and the tag match, for example `v0.1.0` in both.
   A nickname for the release goes in its body, not its title.
2. When you cut a release, move the included entries into a dated section, link the section to the release, and open a new empty `[Unreleased]`.
3. Close the sprint's GitHub milestone once the release is cut, after moving each issue still open into a later sprint's milestone, per [Sprints](planning-requirements.md#sprints).

**Since: W5**

4. The release body claims a `QR-nn` only when that requirement has at least one non-dropped test and every non-dropped test is `Passes` and `Checked` in the release's sprint, per [Quality Requirement Testing Plan](planning-requirements.md#quality-requirement-testing-plan).
   A test last checked in an earlier sprint is checked again on the released commit before the claim, and the evidence is the run or the inspection of that state.
   The body links each test it relies on, and its shape is the team's: the rule fixes what the body contains, not its headings or order.

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
Its body records the tests the release relies on and the quality requirements it claims, in one possible shape:

```markdown
# v0.5.0

The booking page now shows the free slots within two seconds, and the payment module's checks run from a clean checkout.

## Verified quality

- [`QR-01 QRT-01`](https://github.com/<organization>/<repo>/blob/main/docs/quality-requirements/qr/QR-01.md#qrt-01) passes at `deployed`, checked in `SPRINT-05` against the staging deployment of `4c1e9ab`; the [Week 05 report](https://github.com/<organization>/<repo>/blob/main/reports/week-05/README.md#quality-requirement-tests) records the run.
- [`QR-02 QRT-01`](https://github.com/<organization>/<repo>/blob/main/docs/quality-requirements/qr/QR-02.md#qrt-01) passes at `CI` on the same commit, and [the run](...) is its evidence.

The release claims `QR-01` and `QR-02`.
```
