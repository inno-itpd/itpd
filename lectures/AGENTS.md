# AGENTS.md

Operating instructions for coding agents maintaining the lecture decks in `lectures/`.
The parent `AGENTS.md` owns the repository map and the student-facing rules; this file owns the decks.
When the course is installed as a skill inside a team's repository, ignore this file and follow `SKILL.md`.

## What This Directory Owns

The instructor's lecture slides, one Typst source per lecture.
Nothing here is a layer.
`README.md` links each deck's PDF from its Lectures section so students can read the slides, but students are graded against `requirements/`, not against the slides.

| File            | Owns                                                      |
| --------------- | --------------------------------------------------------- |
| `lecture-N.typ` | The source for lecture N. Edit this.                      |
| `lecture-N.pdf` | Build output of `lecture-N.typ`. Generated, not authored. |
| `AGENTS.md`     | This file.                                                |

`N` is unpadded, so the first deck is `lecture-1.typ`.
The slides export a deck was converted from is not committed.
Once a deck is converted, its `lecture-N.typ` is the source of truth: later edits change the deck directly and are not recorded as deviations from the export.

## Build

```text
pnpm run build:lectures
```

The script compiles every `lecture-N.typ` to its `lecture-N.pdf` and is the only way to produce a deck.
The PDF is committed beside its source so the deck is readable without a Typst install.
There is no Typst npm dependency; the compiler comes from the flake.
Run it from a `nix develop` shell, which brings both the compiler and the font, or from a Typst install that matches the pin below on a host that has the same Liberation release.

`pnpm run check:lectures` compiles the same decks into a temporary directory and compares the result byte for byte with what is committed.
Both commands work on the decks `git ls-files` reports, so stage a new deck before you check it.
CI runs the check, so a committed PDF that no longer matches its source is a red build.
The check is the gate and the build is the fix: run the build, then read the deck diff in the pull request.

Two pins live in `scripts/lectures.mjs`, and both are part of what is committed:

- The Typst version.
  The check refuses to run on any other version, so a compiler bump surfaces as a message naming the two versions instead of as a byte diff in every deck.
  `nix develop` is where the compiler comes from, and a nixpkgs bump that moves it fails the same guard, because the pin in the script is the only copy left.
- The build epoch, passed as `SOURCE_DATE_EPOCH`.

The epoch is what makes the byte comparison possible.
Typst writes `/CreationDate` and `/ModDate` into every PDF, so a deck built twice differs, and a deck built in another timezone differs again.
Typst reads `SOURCE_DATE_EPOCH` and then writes the timestamp in UTC, so a pinned epoch makes the output identical everywhere.
The committed decks all carry the same epoch, which is the author date of the commit that added `lecture-1.typ`; change the pin and rebuild every deck.

The decks set `font: "Liberation Sans"`, and the shell pins that font.
`flake.nix` puts `liberation_ttf` in the dev shell and points `FONTCONFIG_FILE` at a conf whose only font directory is that package, so the host fonts cannot win and `typst fonts` lists the three Liberation families next to its own built-ins.
The same `nix develop` shell builds in CI, so a deck that compiles here compiles there.
The one requirement on a hand-run build is the font: outside `nix develop`, Typst resolves `Liberation Sans` from whatever fontconfig finds, and a host that ships a different Liberation release produces different bytes and a failing check.

If a shell exports `SOURCE_DATE_EPOCH` but empty, a direct `typst compile` fails with `invalid value '' for '--creation-timestamp'`.
The script sets the variable itself, so it is unaffected.

## Layout Contract

Every deck keeps the slide format of the original export: `720 x 405 pt`, one slide per page.
Keep that size in `#set page`; do not switch to the `presentation-16-9` preset, which is a different page size.

Decks are self-contained and use no `@preview` packages, so a build never needs the network.
The helpers `slide`, `section`, `title-slide`, `term`, `note`, and `tag` are defined at the top of each source file.

## Two Typst Traps

The first one produces wrong output rather than an error, so a clean compile does not mean the deck is right.

Pass a slide title as a **string**, as in `#slide("1. Meeting booking app")`.
A markup title such as `#slide[1. Meeting booking app]` is parsed as an enumeration item, so Typst renders the `1.` as a list marker and indents the heading.
Any title beginning with a digit, `*`, `-`, `+`, or `#` is affected.

The second one fails loudly, so it is only confusing.

Leave the `title` parameter of `slide` and `section` un-annotated.
In Typst 0.15.1 a type annotation makes a closure parameter named-only, so `#let slide(title: str, ...)` forces every call site to `#slide(title: "...")`.

## Converting a New Lecture

A slides export is text-based, so `pdftotext -layout` recovers the content and the deck is then written by hand.
There is no PDF-to-Typst converter, and pandoc cannot take a PDF as input, so neither is a shortcut.

1. Run `pdftotext -layout` on the export to read the slides, and `pdfimages -list` to see which slides carry images.
2. Write `lecture-N.typ` against the layout contract above.
3. Run `pnpm run build:lectures`, then compare the page count with the number of slides you wrote, because overflow silently adds a page.
4. Render the deck to PNG and read the densest slides, because a merged paragraph or a swallowed list marker leaves the page count unchanged.
5. Record every deviation from the source in the file header, including anything left alone on purpose.
6. Run `pnpm run check:lectures` before opening the pull request, so the deck and its source arrive together.

## Do Not

- Do not hand-edit `lectures/*.pdf`.
  Change the `.typ` and rebuild.
- Do not move the Typst pin or the build epoch in `scripts/lectures.mjs` to make a check pass.
  Both pins are what the committed bytes were produced with, and a red check after either one changes is a reason to read the deck diff, not to re-record the pin.
- Do not restate a rule from `requirements/` in a deck.
  A deck explains the week; `requirements/` is what a team is graded against, and the parent `AGENTS.md` layering rules still decide which of the two a sentence belongs to.
- Do not add a deck without its row in the `README.md` Lectures table.
  The row gives the week and the title from the deck's title slide, and links `lecture-N.pdf`, not `lecture-N.typ`.
- Do not invent identifiers in slide examples.
  The identifier families and their stability rules are in the parent `AGENTS.md` conventions, and they hold in example text too.
