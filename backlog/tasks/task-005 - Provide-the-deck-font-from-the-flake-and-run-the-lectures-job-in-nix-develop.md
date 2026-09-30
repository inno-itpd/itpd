---
id: TASK-005
title: Provide the deck font from the flake and run the lectures job in nix develop
status: Done
assignee: []
created_date: '2026-09-30 14:38'
updated_date: '2026-09-30 14:50'
labels: []
dependencies:
  - TASK-004
modified_files:
  - flake.nix
  - .github/workflows/lectures.yml
  - AGENTS.md
  - lectures/AGENTS.md
ordinal: 5000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The decks ask Typst for `Liberation Sans`, and nothing supplies it.
The dev shell takes whatever fontconfig finds on the host, and CI takes whatever the runner image installed, so the bytes `pnpm run check:lectures` compares depend on an input the repository does not pin.
A runner image that changed the font would fail the gate with a byte diff that names a deck rather than a font.

The flake is already the toolchain pin for Typst, Node, and pnpm, so it can pin the font too: `liberation_ttf` is in the pinned nixpkgs, and a generated fontconfig with only that directory makes Typst resolve `Liberation Sans` to the pinned file.
Moving the lectures job into `nix develop` then gives the local build and the CI build the same font, the same Typst, and the same pnpm, and the Typst download and its SHA-256 leave the workflow.

The check has no npm dependency, so the lectures job needs no `pnpm install` and no `prepare` action; `nix develop` already provides pnpm on Node 26.
The Markdown jobs stay on `prepare`, and `AGENTS.md` says so next to that row.

The price is CI time: a cold runner fetches nixpkgs and the closure for node, pnpm, typst, and the fonts, which is a heavier job than a 17 MB download.
Watch the duration on the first run and record it.

This supersedes the second half of TASK-004 AC #4, which is why the lectures job no longer installs the Typst release itself.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The dev shell provides `liberation_ttf` and exports a `FONTCONFIG_FILE` whose only font directory is that package, so `Liberation Sans` resolves to the pinned file and the host fonts cannot win
- [x] #2 The committed decks are unchanged: `pnpm run check:lectures` passes inside `nix develop` without a rebuild, and the task records why the nix and Debian font files differ in SHA-256 without changing the output
- [x] #3 The lectures job installs Nix with an action pinned by SHA under the existing `github-actions` Dependabot group, and runs the check through `nix develop --command pnpm run check:lectures`
- [x] #4 The Typst download, its SHA-256, and the version in the workflow URL are gone; the version in `scripts/lectures.mjs` is now the only copy, and the guard in that script still names it on a nixpkgs bump
- [x] #5 The lectures job drops the shared `prepare` action and the frozen-lockfile install, `AGENTS.md` states that the Markdown jobs use `prepare` and the lectures job uses `nix develop`, and `flake.lock` is unchanged because no flake input is added
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Mechanism verified on 2026-09-30 before writing the task, so none of this is speculative.

The pinned nixpkgs (`79b35bf`) has `liberation_ttf` at 2.1.5 and no `liberation_fonts` or `liberation` attribute, so the package name in the criteria is the one that exists.
`liberation_ttf` applies no patches, and its upstream source is `github.com/liberationfonts/liberation-fonts` 2.1.5, the release the Debian package also ships.

The nix font files are NOT byte-equal to the Debian ones that built the committed deck.
`LiberationSans-Regular.ttf` is `cfb8c07f...` in the nix store and `4659bc0c...` in `/usr/share/fonts`, and the tables account for it exactly: Debian adds an `FFTM` table and recomputes `head`, while all 17 other tables, including `glyf`, `cmap`, and `hmtx`, are byte-identical.

That difference does not reach the output.
A rebuild with the nix font is byte-identical to `lectures/lecture-1.pdf`, because Typst subsets the glyph tables and never copies `FFTM`.
So no deck rebuild is needed, which is what makes this task cheap.

The working expression was tested in a throwaway flake, because the details are easy to get wrong:

- `makeFontsConf` is additive, not isolating: its output keeps `<dir>/usr/share/fonts</dir>` and the other system directories, so it cannot pin the font. A hand-written `pkgs.writeText` conf with a single `<dir>` does pin it, and Typst then lists only the four Liberation families plus its own three built-ins.
- `pkgs.xdg-cache-dir` and `pkgs.xdg` do not exist at this pin, so the `<cachedir>` is a literal `~/.cache/fontconfig`, which fontconfig expands itself.
- `mkShell` cannot see a sibling `let` binding inside its own `shellHook` string, so the conf has to be built in a `let` outside the `mkShell` and interpolated.

`nix develop` in this repository already yields typst 0.15.1, node 26.9.0, and pnpm 12.3.4, and `pnpm run check:lectures` runs there with no `pnpm install` at all, because the script imports only `node:` builtins.
That is what lets the lectures job drop `prepare`.

`flake.lock` does not change: the devShell output changes but no flake input is added, and the existing lock evaluated fine throughout.

Not verifiable locally: the Nix installer action needs a real pinned SHA read out of that action's repository, and it must be looked up rather than guessed.
The action itself, the cold-cache fetch, and the job duration are unproven until the first pull request runs.

Implemented and verified on 2026-09-30 in this repository, not in a throwaway flake.

`flake.nix` binds `deckFont = pkgs.liberation_ttf` and `fontconfigConf` in a `let` above the `devShell`, and the `shellHook` exports `FONTCONFIG_FILE` to the conf.
The `let` is outside the `mkShell` because the `shellHook` string cannot see a sibling binding, exactly as the earlier note predicted.
The conf is one `<dir>` for the package plus a literal `<cachedir>~/.cache/fontconfig</cachedir>`; fontconfig expands the tilde itself, and `pkgs.xdg-cache-dir` does not exist at this pin.

The isolation is measured, not assumed.
The host carries 1695 fontconfig families; inside the shell `fc-list` reports 12 files, all under `/nix/store/whbgkxp7z7fzm92knqwcj2w4ihzllddm-liberation-fonts-2.1.5`, and `fc-match "Liberation Sans"` answers with that store path.
One correction to the earlier note: `typst fonts` lists 7 families, which is the three Liberation ones plus its four built-ins (DejaVu Sans Mono, Libertinus Serif, New Computer Modern, New Computer Modern Math), not three built-ins.
`fc-list` says 12 because Bold, Italic, and BoldItalic are separate files per family.

The font file difference, measured rather than inferred, and it is not a licence to rebuild.
`LiberationSans-Regular.ttf` is `cfb8c07f8840806e6f4bb2b71cd8f73be4e94c136e428b943b55f57d41e75fea` in the nix store and `4659bc0c58c5028dd488ec928d41d9265db43d9b669fc14ca8b0832daca7b144` in `/usr/share/fonts/truetype/liberation`.
Parsing both files table by table accounts for the difference completely: `FFTM` exists only in the Debian file, `head` is the only shared table whose bytes differ, and the other 17 are byte-identical, among them `glyf`, `loca`, `cmap`, `hmtx`, and `name`.
Debian adds the `FFTM` table and then recomputes `head`, whose `checkSumAdjustment` covers the whole file.
`glyf` and `cmap` are identical, which is why the subsets Typst writes are identical, and Typst never copies `FFTM`, so the output cannot change.

No deck was touched.
`nix develop --command pnpm run check:lectures` prints `lectures: 1 deck(s) match their sources, built with Typst 0.15.1` against the untouched `lectures/lecture-1.pdf`, so the gate holds on the pinned font without a rebuild.
`flake.lock` is byte-identical: the devShell output changed, no input was added, and the existing lock evaluated throughout.

The action is `cachix/install-nix-action` v31.11.1, and the SHA was read out of that repository rather than guessed: the GitHub API gives the tag as commit `13d8dd58da0234aa297dedd986986ccb8e7f3e24`, dated 2026-08-13, and that is the SHA the workflow pins.
`install-nix.sh` in that commit adds `experimental-features = nix-command flakes` whenever `extra_nix_config` does not set `experimental-features`, so `nix develop` works with no input and the workflow passes none; the comment in the workflow says so.
Dependabot needed no change: the `github-actions` group already carries the pattern `*`, so the new pin is inside the existing group.

The lectures job is three steps now: checkout, install Nix, then `nix develop --command pnpm run check:lectures`.
`prepare` and the frozen-lockfile install are gone, and the Typst download, its SHA-256, and the version in the release URL are gone with them, which leaves `scripts/lectures.mjs` as the only copy of the version.
`actionlint` 1.7.12 reports no findings on `lectures.yml`, and `pnpm run format:markdown`, `pnpm run format:markdown:check`, `pnpm run lint:markdown`, both vitest suites, and `pnpm run check:lectures` all pass.

Still unproven until a pull request runs: the action on a real runner, the cold-cache fetch of nixpkgs and the node, pnpm, typst, and fonts closure, and the job duration.
There is no binary-cache action in the workflow, so every run pays that fetch; if the duration is worse than the old 17 MB download, a cache action is the next step and it is deliberately not in this change.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
`flake.nix` now pins the deck font the same way it pins the compiler.
`liberation_ttf` joins the dev shell packages, and the `shellHook` exports a `FONTCONFIG_FILE` pointing at a hand-written conf whose only font directory is that package, so `Liberation Sans` resolves to the pinned file and the 1695 font families on a developer machine cannot win. The conf is written by hand rather than by `makeFontsConf` because that helper is additive and keeps the system font directories. `flake.lock` does not change, because the devShell output changed and no flake input was added.

The committed deck did not move.
The nix font file is not byte-equal to the Debian file that built it: Debian adds an `FFTM` table and recomputes `head`, while all 17 tables Typst reads from, `glyf`, `cmap`, `hmtx`, and the rest, are byte-identical, and Typst subsets the glyph tables without copying `FFTM`.
So the check passes inside `nix develop` against the untouched `lectures/lecture-1.pdf`, and the gate is now a function of the pinned nixpkgs rather than of whatever the host or a runner image happens to install.

The lectures job runs in that same shell.
`cachix/install-nix-action` is pinned to `13d8dd58` (v31.11.1) and the job runs `nix develop --command pnpm run check:lectures`, so the local build and the CI build get the same Typst, the same pnpm, and the same font.
The check imports only `node:` builtins, so the job needs no `pnpm install` and no shared `prepare` action, and the Typst release download, its SHA-256, and the version in the release URL are gone, leaving `scripts/lectures.mjs` as the only copy of the version and the version guard as what catches a nixpkgs bump.
The Markdown jobs keep `prepare`, and the repository map says which job uses which.
The first run on a runner is the proof that the action and the cold-cache fetch work, and the job duration is the number to watch; no binary-cache action is included yet.
<!-- SECTION:FINAL_SUMMARY:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->
