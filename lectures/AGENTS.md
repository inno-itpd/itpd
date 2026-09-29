# AGENTS.md

Operating instructions for coding agents maintaining the lecture decks in `lectures/`.
The parent `AGENTS.md` owns the repository map and the student-facing rules; this file owns the decks.

## What This Directory Owns

The instructor's lecture slides, one Typst source per lecture.
Nothing here is a layer, and nothing here is routed from `README.md`: students are graded against `requirements/`, not against the slides.

| File            | Owns                                                      |
| --------------- | --------------------------------------------------------- |
| `lecture-N.typ` | The source for lecture N. Edit this.                      |
| `lecture-N.pdf` | Build output of `lecture-N.typ`. Generated, not authored. |
| `AGENTS.md`     | This file.                                                |

`N` is unpadded, so the first deck is `lecture-1.typ`.
The slides export a deck was converted from is not committed.

## Build

```text
typst compile lectures/lecture-N.typ lectures/lecture-N.pdf
```

There is no build script and no Typst npm dependency.
The PDF is committed beside its source so the deck is readable without a Typst install.

If the compile fails with `invalid value '' for '--creation-timestamp'`, then `SOURCE_DATE_EPOCH` is exported but empty, and the command needs an `env -u SOURCE_DATE_EPOCH` prefix.

## Layout Contract

Every deck keeps the slide format of the original export: `720 x 405 pt`, one slide per page.
Keep that size in `#set page`; do not switch to the `presentation-16-9` preset, which is a different page size.

Decks are self-contained and use no `@preview` packages, so a build never needs the network.
The helpers `slide`, `section`, `title-slide`, `term`, `note`, and `tag` are defined at the top of each source file.

## Two Typst Traps

The first one produces wrong output rather than an error, so a clean compile does not mean the deck is right.

Pass a slide title as a **string**, as in `#slide("1. Modular LLM gateway")`.
A markup title such as `#slide[1. Modular LLM gateway]` is parsed as an enumeration item, so Typst renders the `1.` as a list marker and indents the heading.
Any title beginning with a digit, `*`, `-`, `+`, or `#` is affected.

The second one fails loudly, so it is only confusing.

Leave the `title` parameter of `slide` and `section` un-annotated.
In Typst 0.15.1 a type annotation makes a closure parameter named-only, so `#let slide(title: str, ...)` forces every call site to `#slide(title: "...")`.

## Converting a New Lecture

A slides export is text-based, so `pdftotext -layout` recovers the content and the deck is then written by hand.
There is no PDF-to-Typst converter, and pandoc cannot take a PDF as input, so neither is a shortcut.

1. Run `pdftotext -layout` on the export to read the slides, and `pdfimages -list` to see which slides carry images.
2. Write `lecture-N.typ` against the layout contract above.
3. Compile, then compare the page count with the number of slides you wrote, because overflow silently adds a page.
4. Render the deck to PNG and read the densest slides, because a merged paragraph or a swallowed list marker leaves the page count unchanged.
5. Record every deviation from the source in the file header, including anything left alone on purpose.

## Do Not

- Do not hand-edit `lectures/*.pdf`.
  Change the `.typ` and recompile.
- Do not restate a rule from `requirements/` in a deck.
  A deck explains the week; `requirements/` is what a team is graded against, and the parent `AGENTS.md` layering rules still decide which of the two a sentence belongs to.
- Do not add deck links to `README.md`.
  It is the student entry point, and the slides are not part of it.
- Do not invent identifiers in slide examples.
  The identifier families and their stability rules are in the parent `AGENTS.md` conventions, and they hold in example text too.
