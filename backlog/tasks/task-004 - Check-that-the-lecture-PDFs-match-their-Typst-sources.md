---
id: TASK-004
title: Check that the lecture PDFs match their Typst sources
status: Done
assignee: []
created_date: '2026-09-30 12:58'
updated_date: '2026-09-30 14:49'
labels: []
dependencies: []
ordinal: 4000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The decks are committed as build output beside their sources, and nothing verifies that the PDF still corresponds to the `.typ` file next to it, so an edited source can ship with a stale deck.

Typst honours `SOURCE_DATE_EPOCH` and always writes the timestamp in UTC, so a pinned epoch makes a compile byte-reproducible. Pin the epoch and the Typst version in one script, build and check through it, and let CI run the check.

The existing `lecture-1.pdf` was compiled without a pinned epoch, so it carries a local-time `CreationDate`; it is rebuilt once so the gate can compare bytes.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 A script builds and checks every `lectures/lecture-N.typ` against its committed `lecture-N.pdf`, with the build epoch and the Typst version pinned in the script
- [x] #2 The check fails on a deck that does not compile, on a source with no PDF, on a PDF with no source, and on any byte difference, and it says which deck and what to run
- [x] #3 The check refuses to run on a Typst version other than the pinned one, so a toolchain bump surfaces as a message instead of a byte diff
- [x] #4 A CI job installs the pinned Typst release with a verified SHA-256, installs through the shared `prepare` action, and runs the check on every pull request and on `main`
- [x] #5 `lectures/lecture-1.pdf` is rebuilt with the pinned epoch, so the committed deck matches what the check produces
- [x] #6 `AGENTS.md`, `lectures/AGENTS.md`, `.vscode/tasks.json`, and the repository map name the two commands and the new workflow
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Verified on 2026-09-30, outside `nix develop` with the system packages.

- Typst 0.15.1 is deterministic: two compiles without a pinned epoch produce identical bytes, so the only variable in the output is the timestamp. `SOURCE_DATE_EPOCH` makes Typst write `/CreationDate` and `/ModDate` in UTC, so the committed deck is independent of the builder timezone.
- The old `lectures/lecture-1.pdf` was 114897 bytes and carried a local-time `D:20260929234107+03%s`, so a byte comparison could never have passed against it. It is rebuilt at 114885 bytes with the pinned epoch; only the two date fields changed, the page content is untouched.
- The gate was exercised for every failure path: a source that does not compile, a source whose PDF is stale, a tracked source with no PDF, and a tracked PDF with no source. All four fail with the deck named and the command to run.
- The version guard was exercised with a stub `typst` on PATH reporting 0.16.0, and it throws before any compile.
- The CI install was reproduced locally: the musl release tarball checksums to `a6d077d0a95eed5a2eba715b2dae06be954f624ccbf85758a03f389ded33118c`, and the binary it installs passes the check and rebuilds the committed bytes exactly. The musl build and the nixpkgs gnu build produce identical output, so the static release binary is a valid stand-in for the flake compiler.
- `actionlint` v1.7.12 reports no findings on `lectures.yml`, so the local `prepare` action, the pinned checkout, and the `runner.temp` working directory are all well formed.
- `pnpm run fmt:check`, `pnpm run format:markdown:check`, `pnpm run lint:markdown`, both vitest suites, and `pnpm run check:lectures` all pass.

The font is the one thing the check cannot pin: the decks ask for `Liberation Sans`, and the bytes depend on the subset of the installed font files. The runner image ships `fonts-liberation` 2.1.5-3, the same package as the machine that built the deck, so the comparison holds today. A runner image that changed the font would fail the check with a message that points at a rebuild rather than at the source.

Not verifiable locally: the workflow has not run in GitHub Actions, so the download, the checksum verification, and the `sudo install` are unproven until the first pull request runs.

Superseded in part, by TASK-005: the second half of AC #4, the CI job that installed the Typst release itself with a verified SHA-256, is now a `nix develop` run over the pinned flake, so the download, the checksum, and the second copy of the version are gone from the workflow. The half of AC #4 that put the job on the shared `prepare` action is also undone, because the deck check has no npm dependency and `nix develop` brings pnpm. What this task added, the byte check and the version guard, is unchanged.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Added a `Lectures` workflow that recompiles every deck and byte-compares the result with the committed PDF.

Typst writes `/CreationDate` and `/ModDate` into every PDF, so the old deck could never have matched a rebuild: it carried a local-time timestamp from the machine that compiled it. Typst reads `SOURCE_DATE_EPOCH` and then writes that timestamp in UTC, so `scripts/lectures.mjs` pins the epoch and the Typst version, and a compile became identical on any machine and in any timezone. The deck is rebuilt once at that epoch; only the two date fields changed.

`scripts/lectures.mjs` has two commands. `build` compiles every `lecture-N.typ` to its PDF, and `check` compiles the same decks into a temporary directory and compares them with what is committed. The check fails on a deck that does not compile, on a stale PDF, on a tracked source with no PDF, and on a tracked PDF with no source, and it names the deck and the command to run. It refuses to run on a Typst other than the pinned one, so a compiler bump is a message naming both versions rather than a byte diff in every deck.

CI installs the pinned static Typst release with a verified SHA-256, goes through the shared `prepare` action, and runs the check on every pull request and on `main`. The gate was exercised for all four failure paths and the version guard locally, and the CI install path was reproduced locally down to the checksum. `actionlint` reports no findings on the new workflow.
<!-- SECTION:FINAL_SUMMARY:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->
