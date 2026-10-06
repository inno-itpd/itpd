---
id: TASK-079
title: Give every sectioned identifier a Status and a Dropped field
status: To Do
assignee: []
created_date: '2026-10-06 12:25'
labels: []
dependencies: []
ordinal: 75000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Decided on 2026-10-06, while reviewing the entities in requirements/.
Problem: GAP and VP had no Status field, although Identifier Rules rule 4 asks for a dropped item to be marked with a reason and the date, so each team would invent its own form. An ASM `Dropped` had no field for its reason and date, because `Outcome` covers only Confirmed and Refuted. ASM rules 4 and 5 collided: a refuted assumption whose dependents were changed has nothing resting on it, so rule 5 made it Dropped and the refutation was lost. A dropped GAP had to list the VPs and stories the drop affected, which breaks the rule that a link is recorded once, in the artifact that rests on the other.
Decisions:
- Every sectioned identifier carries `**Status:**` as its first field: ALT, GAP, VP, and ASM, and CON and BND once they exist. DEC keeps `Active` / `Reversed by`; US and AC keep their issue states.
- A dropped item keeps its section, with `**Status:** Dropped` and a `**Dropped:**` field giving the date and the reason, and the `DEC-nnn` when the decision behind it has an entry. Dropping is not a new trigger for a DEC entry.
- An ALT is Dropped when it turns out not to be an alternative for this problem.
- `Refuted` is final for an assumption; only an Open or Confirmed assumption that nothing rests on becomes Dropped.
- A dropped GAP no longer lists what the drop affected; the dependents cite the drop.
- Since W2. The Assignment 2 Part 4 catch-up pull request adds the Status lines to docs/research/.
Rejected: a Status field on GAP and VP only, with the ASM rules unchanged; a fixed sentence form instead of a field; a DEC entry for every drop.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 general-requirements.md Identifier Rules: every sectioned identifier except DEC carries **Status:** first, and a dropped one carries **Dropped:** with the date, the reason, and the DEC-nnn when the decision has an entry, Since W2
- [ ] #2 research-requirements.md gives ALT, GAP, and VP the Active and Dropped statuses, and Gap Analysis no longer asks a dropped gap to list the value propositions and stories the drop affected
- [ ] #3 assumptions-requirements.md makes Refuted final, and only an Open or Confirmed assumption that nothing rests on becomes Dropped, with **Dropped:**
- [ ] #4 Every ALT, GAP, VP, and ASM example in requirements/ and guides/ carries Status
- [ ] #5 Assignment 2 Part 4 catch-up adds Status to each ALT, GAP, and VP in docs/research/, and converts a dropped one to Status Dropped with Dropped
- [ ] #6 The four Markdown gates pass
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 All acceptance criteria are satisfied
- [ ] #2 Changed Markdown files are formatted: `pnpm run format:markdown`
- [ ] #3 `pnpm run lint:markdown` passes
- [ ] #4 `pnpm run test:markdown-format` and `pnpm run test:markdown-rules` pass
- [ ] #5 `pnpm run check:lectures` passes
<!-- DOD:END -->
