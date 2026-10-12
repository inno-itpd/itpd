---
id: TASK-116
title: Add the course tooling page and its README row
status: Done
assignee:
  - '@opencode'
created_date: '2026-10-12 19:09'
updated_date: '2026-10-12 21:22'
labels: []
dependencies: []
references:
  - README.md
modified_files:
  - course/tooling.md
  - README.md
type: docs
ordinal: 112000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
The course recommends three tools and has no home for them: AssemblyAI for transcripts, Google AI Studio for early prototyping, and OpenCode as a coding agent with free models.
`course/tooling.md` is a course document, not a rule, so it does not go under `requirements/`; the README Course Documents part becomes a table of three documents.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `course/tooling.md` lists AssemblyAI (transcripts), Google AI Studio (early prototyping), and OpenCode (coding agent with free models), each with a one-line purpose and a link
- [x] #2 The README Course Documents section is a table of three rows (syllabus, tooling, and teams and projects), and its sentence no longer says both or neither
- [x] #3 The page is a course document, not a requirements file, and nothing in it is normative
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
- [x] #6 `pnpm run check:links` passes
- [x] #7 Implementation notes record the decisions made and the validation results
<!-- DOD:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Add `course/tooling.md`, a course document with an intro sentence, one section per tool (AssemblyAI for transcripts, Google AI Studio for early prototyping, and OpenCode as a coding agent with free models), a one-line purpose and a link for each, and a link to the requirement that owns the work each tool touches.
2. Rewrite the README Course Documents sentence for three documents and add the Course tooling row between Syllabus and Teams and projects.
3. Run the Markdown gates, the plugin suites, the deck and link checks, and backlog doctor, then record the notes.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Decisions: the page is `course/tooling.md`, a course document rather than a requirements file.
- The intro says the tools are suggestions rather than rules; each tool gets a `##` section whose first line is its purpose and carries its link; and each section points at the requirement that owns the work the tool touches (Meeting Transcript, Prototype Requirements, and The Course Materials As An Agent Skill).
- The README Course Documents sentence becomes "None of them is a rule you can deviate from, so they live here rather than in `requirements/`", and the table gains the Course tooling row, making three rows in the order the task names: syllabus, tooling, teams and projects.
- The external links are the canonical entry points, assemblyai.com, aistudio.google.com, and opencode.ai; the AI Studio root answers with a 302 to /welcome, which lychee follows as its one redirect.
Validation: format:markdown (README.md and course/tooling.md reformatted), format:markdown:check, lint:markdown, test:markdown-format (34 passed), test:markdown-rules (34 passed), check:lectures (3 decks, Typst 0.15.1), check:links (965 total, 963 OK, 0 errors, 2 excluded, 1 redirect), and backlog doctor (clean).
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Added `course/tooling.md`, a course document listing AssemblyAI for transcripts, Google AI Studio for early prototyping, and OpenCode as a coding agent with free models, with a one-line purpose and a link for each and each section pointing at the requirement that owns the work. Rewrote the README Course Documents sentence so it no longer says both or neither, and added the Course tooling row for a table of three. Verified with the Markdown gates, both vitest suites (34 and 34), check:lectures, check:links (965 total, 0 errors, 2 excluded), and backlog doctor.
<!-- SECTION:FINAL_SUMMARY:END -->
