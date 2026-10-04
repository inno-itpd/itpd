---
id: TASK-018
title: Use the meeting booking app worked example in the docs and lecture 2
status: Done
assignee: []
created_date: '2026-10-04 15:22'
updated_date: '2026-10-04 15:36'
labels: []
dependencies: []
modified_files:
  - requirements/artifact-requirements.md
  - requirements/process-requirements.md
  - guides/comparison-and-synthesis.md
  - guides/alternatives-research.md
  - guides/customer-interview.md
  - lectures/lecture-2.typ
  - lectures/lecture-2.pdf
  - lectures/lecture-1.typ
  - lectures/AGENTS.md
  - backlog.md
priority: medium
type: docs
ordinal: 18000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
## Why

The student docs still teach every worked example with the modular LLM gateway and redaction scenario, while the Week 2 deck (reframed in TASK-012) uses an invented study group planner. The open items are `backlog.md` line 42 ("Use study group planner app example in docs, not modular gateway") and the `<!-- TODO use a simpler example -->` comment in `requirements/artifact-requirements.md` around the Product Vision example. The agreed direction is now a single, simpler, realistic example for both docs and the deck: a **Meeting booking app** for independent experts who sell sessions online.

The decisions below were made with the user in the planning session; do not reopen them without asking.

## Decisions Already Made

- Example project name: **Meeting booking app** (descriptive, matches the catalog naming style).
- Product shape: an app like the real-world Planerka (https://planerka.app) — one booking link, calendar sync, built-in or integrated video, payment at booking, attachments/materials per event. **Planerka is never named in the artifacts**; it is only the real-world analogue behind the scenario.
- Alternatives: `ALT-01` Calendly (direct), `ALT-02` Cal.com (open-source/self-hosted), `ALT-03` Google Calendar appointment schedules (adjacent), `ALT-04` Zoom Scheduler (adjacent).
- One coherent scenario carries every example across all docs; no per-file independent fictions.
- Scope: `requirements/`, `guides/`, `lectures/lecture-2.typ` + rebuilt PDF, and the `lectures/AGENTS.md` Typst-trap comment. Unify the stray examples: the inactive story "Share a board by public link" and the "running coach" transcript line become booking-app content.
- Out of scope: `lecture-1.typ` catalog slides and `course/teams-and-projects.md` (Modular LLM Gateway is a real project and real team), `[redacted]` sanitization placeholders, unrelated TODOs.
- Do not commit unless the user asks.

## Canonical Scenario

- **Project:** Meeting booking app, built by the (fictional) student team.
- **Problem-space sentence:** an expert who sells sessions online needs one link where a client can book, pay, and receive the meeting link and materials, and no product carries all three in one flow.
- **Target user:** independent expert (tutor, coach, consultant) who sells consultations.
- **Properties (6):** what the booking carries (time, payment, video, materials); payment timing and methods; video link without a second account; calendar sync and double-booking protection; free-tier contents; language and currency support.
- **GAP-01:** Bookings that arrive unpaid and unprepared.
- **VP-01:** One link that carries the whole booking.
- **US-01:** Pay at booking, with `AC-01` (hold and release while payment completes) and `AC-02` (an expired hold creates no confirmed booking and no meeting link).
- **Inactive story:** `US-09` "Sell session bundles", closed `won't-have`.
- **Vision facts:** single small VPS (customer-given), 3-person team (team-given), 11-week course (environmental), payment sandbox (derived); boundary excludes hosting video, multi-expert scheduling, and recurring billing; context actors are experts and clients, external systems are the calendar, the payment provider, and the video service.
- **Meeting outcomes:** the customer accepts `VP-01`, drops reminders as a differentiator, and drops multi-expert scheduling (`GAP-04`).
- Fictional members stay `alice`, `bob`, `carol`; no catalog mention; no real team number.

## Key Example Content

Use or polish these, but keep the scenario and the traceability intact.

**Problem-space sentence (weekly report, script context, product vision):**

> An expert who sells sessions online needs one link where a client can book, pay, and receive the meeting link and materials, and no product carries all three in one flow.

**Weekly report `## Project`:** `Meeting booking app.` (no team number).

**Weekly report `## Findings`:** the strongest products schedule time well and leave payment and materials to integrations or paid tiers; nobody gives an expert one flow from booking to a paid, prepared session.

**GAP-01 example (guide and process requirements):**

```markdown
## GAP-01: Bookings that arrive unpaid and unprepared

**Who needs it and what they cannot do:** an independent expert who sells one-hour consultations
online.
The client books and pays in one place, and the meeting link and materials arrive with the booking;
the alternatives schedule the time, and the payment, the video link, and the materials each live
somewhere else.

**Evidence:** `What the booking carries` row in
[the comparison](comparison.md) — no alternative carries payment, video, and materials in the same
booking (ALT-01, ALT-02, ALT-03, ALT-04).

**What closing it looks like:** one link where the client picks a slot, pays, and receives the
video link and the materials, with calendar sync behind it.

**Buildable by us in this course:** yes.
It is one booking flow, one payment integration, and one upload field, and it is
the reason the project exists.

**Confidence:** high.
Consistent across all four alternatives, and two of them are
mature enough that this is not an oversight.

**Dropped:** see GAP-04.
```

**VP-01 example (guide, process requirements, product vision link):**

```markdown
## VP-01: One link that carries the whole booking

**User:** independent coach who sells one-hour sessions online.
**Problem:** the booking, the payment, and the meeting materials live in three tools, so unpaid
clients block slots and prepared clients are rare.
**What we do that the alternatives do not:** one link where the client books a slot, pays, and
receives the video link and the materials, with no second account.
**Closes:** [GAP-01](gap-analysis.md#gap-01-bookings-that-arrive-unpaid-and-unprepared).
**What it costs:** the expert connects a payment provider before the first booking and uploads the
materials per meeting type.
This is a real setup cost.
**How a competitor would respond:** Calendly or Cal.com could bundle payments and materials into
the free tier.
The defensible part is the single flow and its pricing, not the fields.
```

The two cross-file example links must be updated to these anchors:

- `guides/comparison-and-synthesis.md` around line 136: `gap-analysis.md#gap-01-bookings-that-arrive-unpaid-and-unprepared`.
- `requirements/artifact-requirements.md` around line 609: `research/value-proposition.md#vp-01-one-link-that-carries-the-whole-booking`.

**US-01 example (process requirements and artifact requirements):**

```markdown
# US-01: Pay at booking

As a coach who sells sessions online, I want a client to pay when they book,
so that an unpaid slot does not block a paying one for the rest of the week.

## Acceptance criteria

1. AC-01: Given a paid meeting type with one free slot, when a client books that slot, then the slot
   is held while the client pays and is released back to the calendar when the hold expires.
2. AC-02: Given a client who does not finish payment, when the hold expires, then the booking is not
   confirmed and no meeting link is created.
```

Story note in `artifact-requirements.md`: closes `GAP-01` and supports `VP-01`; the customer confirmed on 2026-10-06 that payment happens before confirmation, which retired the pay-later assumption; the dated comment adds `AC-02` after the validation meeting.

**Inactive story (artifact requirements):**

```markdown
Title: US-09: Sell session bundles
Labels: moscow:won't, user-story

As a coach, I want to sell a bundle of ten sessions, so that a returning client pays once.

Closing comment: won't-have: no evidence that a user needs it; recurring billing is outside the boundary.
```

**Product vision goal:** an independent expert can send one link where a client books a time, pays, and receives the meeting link and materials, without assembling the same session from three tools. Supports `VP-01`.

**Product vision stakeholders:** the expert (tutor, coach, or consultant) who sells sessions is the primary user; the client books and pays and uses the product once; the customer decides the scope and is the course instructor.

**Product vision constraints table:** single small VPS (customer-given, no failover during a demo); built and maintained by 3 people (team-given, no component may need a second expert); eleven-week course (environmental, payment and video stay integrations); payment provider sandbox only (derived, no live charges before Week 8).

**Product vision boundary:** the product will not replace the video call service, schedule more than one expert at a time, or sell recurring subscriptions or bundles.

**Product vision context prose:** the experts and their clients are the actors; the external systems are the calendar, the payment provider, and the video service; no actor appears that the boundary excludes.

**Meeting report:** summary says the customer accepted `VP-01`, told the team to stop treating reminders as a differentiator, and that `GAP-02` survives only if experts really lose paid time to unpaid bookings. Decisions: "Build paid bookings, not the calendar view" (Customer, `VP-01`); "Drop multi-expert scheduling from W3" (Customer, `GAP-04`); "Keep the web link for delivery" (Team, not contested, `VP-01`). Action points: interview two experts who take payments in chat (bob, end of Week 2); re-cut the comparison without the reminders property (carol, end of Week 1). Open question: do clients pay at booking or on the day, which decides whether payment happens before or after confirmation (bob, carried into Week 2). Disagreements: `GAP-04` is not a differentiator, multi-expert scheduling is solved; the team would ship a Telegram bot, the customer says a web link is enough, so `VP-01` is written as a web link.

**Transcript example:**

```text
[00:00:04] alice: We settled on the meeting booking app after the research.
[00:00:19] Customer: What made you choose it over the alternatives?
[00:01:02] bob: The paid booking flow is the part the alternatives leave half-done.
[00:01:40] Customer: [redacted]
[00:02:11] carol: We still need to check whether clients will pay before the session.
```

**Meeting script example:** keep the current structure and rewrite the context, questions, and key improvements. Context carries the problem-space sentence, the unchecked beliefs (clients will pay at booking; the customer accepts a web page rather than a Telegram bot), and says the meeting tests both. Questions by area: business goals (why sell sessions online; what changes in the expert's week when it works); end users (who books, who pays, whether they are the same person); current workflow (walk through the last booking and payment step by step; where the payment, the meeting link, and the materials live today); pain points and constraints (the most annoying part of the last booking that went wrong; can they accept online payments today); scope (if only booking, payment, or materials could ship, which survives; is a Telegram bot acceptable or does it have to be a web page). Key improvements: `"Would you like a dashboard?" -> "What do you look at when a client has not paid yet?"` and `"Is latency important to you?" -> "When the last payment failed, what did you do?"`, each with the existing principle text.

**AI usage example:** drafted the property list for the comparison table and summarised the Calendly and Cal.com docs.

**Relative-strength sentence (`requirements/process-requirements.md` around line 111):** `"No built-in payments" is a weakness for an expert who sells consultations and an irrelevance for a team that books internal meetings.`

**Property row example (process requirements):**

```markdown
| Property                                                                               | Calendly                                                                                            | Cal.com                                                                                       |
| -------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| Can one booking collect the payment, create the video link, and deliver the materials? | No. Payment and video are integrations on paid plans, and the booking carries no materials (ALT-01). | Partial. Self-hosting and a Stripe setup stand between the expert and the first paid booking (ALT-02). |
```

**Need vs feature (process requirements):** `"As a coach, I want a client to pay when they book, so that an unpaid slot does not block a paying one" is a need. "Add a payment page" is a feature you have already designed.`

**Comparison guide additions:** the "better at what" line becomes `"A client can pay and get the meeting link in one booking, without a second account" is a claim someone can check.` The relative-strength note uses the no-built-in-payments sentence above. The assumptions table becomes: experts will upload materials per meeting type instead of sending them in chat after booking (`GAP-01`, `VP-01`, run the prototype with two tutors in Week 4); clients will pay at booking rather than on the day (`VP-01`, ask at the Week 2 validation meeting); the customer will accept a web page rather than a Telegram bot (`VP-01`, raise at the Week 1 kickoff).

**Alternatives guide board frame and entry:** board frame example around line 127 becomes `ALT-01 Calendly — paid event setup`. The `## ALT-02: LiteLLM` entry around lines 138-169 becomes `## ALT-01: Calendly`: kind "Direct competitor, hosted"; link `https://calendly.com`; version free plan, 2026-09-28; depth "created an account, published two event types, connected a Google calendar, read the payment and video integration docs; did not connect a payment provider"; problem "gives an expert one bookable page so clients stop asking when they are free"; observations rows for what the booking carries (time and an event type; video is an integration; materials are not part of the booking), payment (Stripe and PayPal on paid plans, not on the free plan), calendar sync (Google, Microsoft, iCloud; double bookings prevented), cost model (free tier functional, payments/teams/routing paid), onboarding (published event type in about ten minutes); strengths (mature predictable flow; calendar sync works after the first connection); weaknesses (a paid plan and a separate payment account stand between the expert and a paid booking, see GAP-01; the booking carries no materials, so the client arrives without the agenda).

**Customer interview Mom-Test rows:** `"Would you like a dashboard?" -> "What do you look at when a client has not paid yet?"`; `"Is latency important to you?" -> "When the last payment failed, what did you do?"`; `"Would you switch from your current tool for better redaction?" -> "What made you pick Calendly over a shared calendar?"`.

## Edit Map

Re-verify every line number before editing; they are as of branch `week-2` at task creation.

### requirements/artifact-requirements.md

- Week 01 report example (around lines 178-230): project line (no team number), problem sentence, what-we-did, findings, keep the coverage table and contribution table.
- Kickoff meeting report example (around lines 303-352): summary, decisions, action points, open questions, disagreements per the scenario above.
- Transcript example (around lines 360-391): the four speaker lines above.
- Meeting script example (around lines 440-496): context, questions, roles unchanged, key improvements.
- AI usage example (around lines 544-565): Calendly and Cal.com docs.
- Product vision example (around lines 596-647): full rewrite; delete the `<!-- TODO use a simpler example -->` on line 605; update the `VP-01` link on line 609.
- User story example (around lines 691-715) and inactive story example (around lines 719-728): content above.

### requirements/process-requirements.md

- Around line 111: relative-strength sentence.
- Around lines 127-131: property row.
- Around lines 195-206: `VP-01` example.
- Around line 251: goal example.
- Around lines 338-339: need-vs-feature sentence.
- Around lines 386-394: `US-01` example.

### guides/comparison-and-synthesis.md

- Around lines 43-56: four-cell comparison row (`What the booking carries`).
- Around line 64: relative-strength note.
- Around lines 92-118: `GAP-01`.
- Around lines 128-142: `VP-01`, including the anchor link on line 136.
- Around line 146: the "better at what" example claim.
- Around lines 161-168: assumptions table.

### guides/alternatives-research.md

- Around line 127: board frame name.
- Around lines 138-169: ALT entry.

### guides/customer-interview.md

- Around lines 89-92: Mom-Test table rows.

### lectures/lecture-2.typ and lecture-2.pdf

- Header deviation note around lines 36-39: study group planner becomes meeting booking app.
- Trap comment around line 107: `[1. Meeting booking app]`.
- Non-story and story slide around lines 286-300: both lines made up about a meeting booking app; non-story `As an expert, I want a booking page with a calendar, so that my clients can see my available time.`; note explains the feature and presentation descriptions; story is the `US-01` sentence above; note unchanged in meaning.
- Then `pnpm run build:lectures`, and verify with `pnpm run check:lectures` that the rebuilt `lecture-2.pdf` matches and `lecture-1.pdf` is byte-identical.

### lectures/AGENTS.md

- Lines 68-69: both trap examples use `1. Meeting booking app`.
- Optional consistency: the same trap comment in `lecture-1.typ:41` and `lecture-2.typ:107`. Comments do not change PDF bytes, and `check:lectures` covers the result.

### backlog.md

- Tick line 42, `- [ ] Use study group planner app example in docs, not modular gateway` becomes `- [x]`.

## Verification

1. `pnpm run format:markdown`, then `pnpm run format:markdown:check` and `pnpm run lint:markdown`.
2. `pnpm run test:markdown-format` and `pnpm run test:markdown-rules`.
3. `pnpm run build:lectures` and `pnpm run check:lectures`.
4. `rg -n -i "gateway|litellm|openrouter|redaction|platform engineer|study group|running coach|marked source" requirements/ guides/ assignments/` returns only the `[redacted]` sanitization placeholders.
5. Grep the new `#gap-01-` and `#vp-01-` links against the rewritten headings in the same files.
6. `backlog task view <this task> --plain` and `backlog doctor` after checking off the acceptance criteria.

## References

- `backlog.md` line 42 is the source item.
- `requirements/artifact-requirements.md` around line 605 carries the TODO this resolves.
- The real-world analogue for the worker's context only, never cited in the artifacts: https://planerka.app and https://help.planerka.app.
- `lectures/AGENTS.md` owns the deck build, the Typst pin, and the check.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Every worked example in `requirements/artifact-requirements.md`, `requirements/process-requirements.md`, `guides/comparison-and-synthesis.md`, `guides/alternatives-research.md`, and `guides/customer-interview.md` uses the meeting booking app scenario; no gateway, LiteLLM, OpenRouter, redaction, platform-engineer, running-coach, or study-group text remains, except the `[redacted]` sanitization placeholder
- [x] #2 The `<!-- TODO use a simpler example -->` comment is gone from `requirements/artifact-requirements.md` around the Product Vision example, and `backlog.md` line 42 is checked off
- [x] #3 `lectures/lecture-2.typ` uses the meeting booking app in its header note, its trap comment, and its non-story/story slide; `lecture-2.pdf` is rebuilt and `pnpm run check:lectures` passes with `lecture-1.pdf` unchanged
- [x] #4 `lectures/AGENTS.md` lines 68-69 show `1. Meeting booking app` as the Typst trap example, and the matching trap comments in the deck files are consistent
- [x] #5 All example cross-links resolve, including the rewritten `#gap-01-bookings-that-arrive-unpaid-and-unprepared` and `#vp-01-one-link-that-carries-the-whole-booking` anchors in the guides and requirements
- [x] #6 `pnpm run format:markdown`, `pnpm run format:markdown:check`, `pnpm run lint:markdown`, `pnpm run test:markdown-format`, and `pnpm run test:markdown-rules` pass
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 All acceptance criteria are satisfied
- [x] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [x] #3 `pnpm run lint:markdown` passes
- [x] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [x] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Implemented the meeting booking app scenario across the five requirements/guides files, lecture-2.typ and its rebuilt PDF, and the Typst trap comments in lectures/AGENTS.md, lecture-1.typ, and lecture-2.typ. Verification: pnpm run format:markdown:check, lint:markdown, test:markdown-format (34 passed), test:markdown-rules (34 passed), and check:lectures all pass; build:lectures rebuilt only lecture-2.pdf (lecture-1.pdf is byte-identical). The forbidden-term grep over requirements/, guides/, and assignments/ returns no matches, and the [redacted] placeholder remains.

Two judgment calls: (1) the canonical customer-interview row kept "redaction" in the left column, which contradicts AC #1, so it became "Would you switch from your current tool for one booking link? -> What made you pick Calendly over a shared calendar?"; (2) the review TODO asking whether the comparison example is a single row with which columns was resolved by adding the header row Property | ALT-01 Calendly | ALT-02 Cal.com | ALT-03 Google Calendar | ALT-04 Zoom Scheduler.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Every worked example in the requirements and guides now uses the meeting booking app scenario; lecture-2 uses it in its header note, trap comment, and non-story/story slide; the Product Vision TODO and backlog.md line 42 are resolved. Verified with the four Markdown gates, check:lectures, a page-count and PNG render check of the rebuilt slide, and a forbidden-term grep.
<!-- SECTION:FINAL_SUMMARY:END -->
