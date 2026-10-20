# Glossary Requirements

These requirements define the project's glossary: where it lives and what each term carries.
The glossary is the project's ubiquitous language, so a term means the same thing in a [story](user-stories-requirements.md#the-story), a requirement, a report, and the code.
Why it lives in `docs/` rather than in a week's report is in [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository).

<h2>Table of contents</h2>

- [Where The Glossary Lives](#where-the-glossary-lives)
- [The Term](#the-term)
- [Full Example](#full-example)

## Where The Glossary Lives

**Since: W4**

`docs/glossary.md` is the project's glossary, and it is maintained documentation rather than a week's evidence.

**Required**

1. The glossary is `docs/glossary.md`.
   It lives in `docs/` because later weeks refer to it, per [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository).
2. The file is created in Week 4, and it is kept current for the rest of the course.
3. A word the project uses in its own sense has one entry, so a reader has one place to look.

## The Term

**Since: W4**

A **term** is a word or short phrase whose meaning this project fixes, so that a story, a requirement, and the code all mean the same thing by it.

**Required**

1. In Week 4 the glossary carries at least three terms, chosen from the words the product's own artifacts and interface use.
2. Each term is a `### Term` section under the heading of the domain it belongs to, such as `## Booking Flow`, and the term's heading is the term alone, such as `### Hold`, so its anchor is `#hold` and a link to it survives an edit to the definition.
3. The definition is one sentence that says what the term means in this project, not what it means in general.
4. When an artifact already defines the term, a `**Defined by:**` line under the definition links that artifact, such as the [functional requirement](functional-requirements-requirements.md#the-functional-requirement) that specifies the behavior or the product vision's [Constraints](product-vision-requirements.md#constraints) section.
   A term no artifact defines stands on its definition alone.
5. When the meaning of a term changes, the glossary changes in the same pull request as the artifact that changed it.

**Recommended**

- Link a mention of a term in prose to its section, such as `glossary.md#hold`, so a reader lands on the definition.
  This is recommended rather than required, because the definition holds whether or not a mention points at it.
- Add a term when two members would use two different words for it, or one word for two things.
- Keep the definition to its one sentence, and put the detail in the artifact the `**Defined by:**` line links.

## Full Example

The meeting-booking example, as `docs/glossary.md` stands after Week 4:

```markdown
# Glossary

The words this project uses in one way only.

## Booking Flow

### Slot

A time the coach offers for sale on the booking page, before any client has taken it.

**Defined by:** [`FR-001`](functional-requirements/fr/FR-001.md).

### Hold

A slot taken off the booking page while a client pays, and released if the payment does not settle.

**Defined by:** [`FR-001`](functional-requirements/fr/FR-001.md).

### Booking

A slot a client has paid for, with the meeting link and the materials sent to both sides.

**Defined by:** [the product vision's goal](product-vision.md#goal).
```
