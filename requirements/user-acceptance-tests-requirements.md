# User Acceptance Test Requirements

**Since: W9**

A **user acceptance test** checks whether the deployed product supports one end-to-end user journey the customer expects to be able to complete.

## Where The Tests Live

**Required**

Maintain the public UAT record in `docs/user-acceptance-tests.md`.
Start with `## The Tests` and index each test under `Test`, `Journey`, `Status`, `SPRINT-09`, and `SPRINT-10`.
Link each test's section and give the result for each session or the reason the test has no result in that session, such as `Not yet defined`.

## The Test Record

**Required**

1. Before the Sprint 9 review, define exactly three initial tests, `UAT-01` to `UAT-03`, per [Identifier Rules](general-requirements.md#identifier-rules).
2. Under each `## UAT-nn`, state the journey in one sentence, then give `**Status:**` (`Active` or `Dropped`), `**Start state:**`, `**Steps:**`, and `**Expected result:**`, in that order.
   Use synthetic seed data, a test account, and `<production-url>` for the deployment.
   Access details go in the [Moodle wrapper](weekly-report-requirements.md#private-submission-wrapper).
3. Replace a journey only if the customer and team agree to drop the original.
   Keep its section, identifier and run history, set its status to `Dropped`, and add `**Dropped:**` with the date and reason after the status.
   Give its replacement the next unused identifier.
4. End the section with a run table whose columns are `Sprint`, `Date`, `Runner`, `Build`, `Result`, `Evidence`, and `DEC-nnn`.
   Keep one row per run, including a `Not run` row for a check that could not run at a review that took place.
   Identify the actual runner as `Customer` or `Team` and the build by its tag or commit.
   Record `Pass` or `Fail` against the expected result, or record `Not run` with the reason and use `—` for the runner and for the build if none was available.
   Link the sanitized meeting report at `#user-acceptance-tests` and the separate `DEC-nnn` for each result.
   Cite the run by its sprint, test section and decision.
   If the review itself did not take place, link the weekly report's missing-review record from the index.

**Recommended**

Keep each test under ten minutes.

## The Two Review Sessions

**Required**

The customer runs the three initial tests on the build deployed to the university VM at the Sprint 9 review.
If the customer cannot access production, the team runs the tests live on the deployed build during the meeting for the customer to observe and judge.
If a test still cannot run, reschedule within the review window or record `Not run` with the reason and declare the deviation.
Link the session from the Week 9 report.
If same-sprint rework changes what `REL-09` contains, identify both the reviewed build and the released tag in that report.

**Since: W10**

Check three active tests on the deployed `REL-10` at the [handoff](customer-meetings-requirements.md#the-handoff).
If the customer cannot access the app, the team runs the tests live for the customer to observe and judge.
Record each actual runner and result.
If `REL-10` is unavailable, arrange a new time within the review window.
Record each `Fail` and `Not run` with its reason in `handoff.md` and in the Week 10 report's `## Deviations`.
Ask the customer whether they accept the handoff with the recorded results and capture their verdict per [Meeting Report](customer-meetings-requirements.md#meeting-report).
Link the Sprint 10 session from the final report.

## Full Example

**Example**

```markdown
# User acceptance tests

## The Tests

| Test              | Journey                         | Status  | SPRINT-09       | SPRINT-10                  |
| ----------------- | ------------------------------- | ------- | --------------- | -------------------------- |
| [UAT-01](#uat-01) | Book a meeting                  | Active  | Pass            | Pass                       |
| [UAT-02](#uat-02) | Share an invite link            | Dropped | Pass            | Dropped before the handoff |
| [UAT-03](#uat-03) | Cancel a booking                | Active  | Fail            | Pass                       |
| [UAT-04](#uat-04) | Join from a calendar invitation | Active  | Not yet defined | Fail                       |

## UAT-01

Book a meeting.

**Status:** Active

**Start state:** A test organizer is signed in and a slot is available.

**Steps:** Open <production-url>, choose the slot, and confirm the booking.

**Expected result:** The booking appears on the organizer's schedule.

| Sprint    | Date       | Runner   | Build     | Result | Evidence                                                                        | DEC-nnn                         |
| --------- | ---------- | -------- | --------- | ------ | ------------------------------------------------------------------------------- | ------------------------------- |
| SPRINT-09 | 2026-11-28 | Customer | `7f81db2` | Pass   | [Sprint 9 review](../reports/week-09/meeting-report.md#user-acceptance-tests)   | [DEC-041](decisions.md#dec-041) |
| SPRINT-10 | 2026-12-05 | Customer | `v0.10.0` | Pass   | [Sprint 10 handoff](../reports/week-10/meeting-report.md#user-acceptance-tests) | [DEC-046](decisions.md#dec-046) |

## UAT-02

Share an invite link.

**Status:** Dropped

**Dropped:** 2026-11-28.
The customer and team agreed to check the calendar invitation instead, per [DEC-044](decisions.md#dec-044).

**Start state:** A test organizer has booked a meeting.

**Steps:** Copy the invite link and open it as a guest.

**Expected result:** The guest sees the meeting details.

| Sprint    | Date       | Runner   | Build     | Result | Evidence                                                                      | DEC-nnn                         |
| --------- | ---------- | -------- | --------- | ------ | ----------------------------------------------------------------------------- | ------------------------------- |
| SPRINT-09 | 2026-11-28 | Customer | `7f81db2` | Pass   | [Sprint 9 review](../reports/week-09/meeting-report.md#user-acceptance-tests) | [DEC-042](decisions.md#dec-042) |

## UAT-03

Cancel a booking.

**Status:** Active

**Start state:** A test organizer has a confirmed booking.

**Steps:** Cancel the booking and return to the schedule.

**Expected result:** The slot becomes available again.

| Sprint    | Date       | Runner | Build     | Result | Evidence                                                                        | DEC-nnn                         |
| --------- | ---------- | ------ | --------- | ------ | ------------------------------------------------------------------------------- | ------------------------------- |
| SPRINT-09 | 2026-11-28 | Team   | `7f81db2` | Fail   | [Sprint 9 review](../reports/week-09/meeting-report.md#user-acceptance-tests)   | [DEC-043](decisions.md#dec-043) |
| SPRINT-10 | 2026-12-05 | Team   | `v0.10.0` | Pass   | [Sprint 10 handoff](../reports/week-10/meeting-report.md#user-acceptance-tests) | [DEC-047](decisions.md#dec-047) |

## UAT-04

Join from a calendar invitation.

**Status:** Active

**Start state:** A test guest has a calendar invitation for a booking.

**Steps:** Open the invitation and follow the meeting link.

**Expected result:** The guest sees the booking time and location.

| Sprint    | Date       | Runner | Build     | Result | Evidence                                                                        | DEC-nnn                         |
| --------- | ---------- | ------ | --------- | ------ | ------------------------------------------------------------------------------- | ------------------------------- |
| SPRINT-10 | 2026-12-05 | Team   | `v0.10.0` | Fail   | [Sprint 10 handoff](../reports/week-10/meeting-report.md#user-acceptance-tests) | [DEC-048](decisions.md#dec-048) |
```
