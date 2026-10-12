# Risk Requirements

These requirements define a risk: where it lives, what it states, how it is rated and answered, and when it is settled.
[Guide: Planning And Tracking](../guides/planning-and-tracking.md) is the method.
How the `RISK-nn` identifier is issued and cited is in [General Requirements](general-requirements.md#identifier-rules).

<h2>Table of contents</h2>

- [Where The Risks Live](#where-the-risks-live)
- [The Risk](#the-risk)
- [Rating](#rating)
- [Response](#response)
- [Checking And Settling](#checking-and-settling)
- [Full Example](#full-example)

## Where The Risks Live

**Since: W3**

The risk register is maintained documentation.
It is created in Week 3 in its final place and stays current for the rest of the course, per [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository).

**Required**

1. The register is `docs/risks.md`, and each risk is a section of its own, headed `## RISK-nn`, per [Identifier Rules](general-requirements.md#identifier-rules).
   The sections are in identifier order and are never reordered.
2. The register opens with a summary table above the sections, with these columns, in this order:

   | Column       | What it holds                                                          |
   | ------------ | ---------------------------------------------------------------------- |
   | `ID`         | The `RISK-nn`, linked to its section, such as `[RISK-02](#risk-02)`    |
   | `Risk`       | The section's first line, quoted: the risk in one sentence             |
   | `Status`     | The `**Status:**` value: `Open`, `Mitigated`, `Realized`, or `Dropped` |
   | `Impact`     | The `**Impact:**` rating word, `High`, `Medium`, or `Low`              |
   | `Likelihood` | The `**Likelihood:**` rating word                                      |

3. The table lists the `Open` risks first, sorted by `Impact` then `Likelihood`, both from `High` to `Low`, and the settled risks after them in identifier order.
   Ties keep identifier order.
   The table moves as risks settle; the sections stay where they are.

## The Risk

**Since: W3**

A **risk** is something that has not happened and could hurt the project if it does.
It is not an assumption: an assumption is a belief to check, and a risk is an event to watch and answer.

**Required**

1. Record the risks that are necessary to manage: each one threatens the plan or the threshold of success, and the team would act if it began to materialize.
2. State the risk on the section's first line, in one sentence, as three parts: the cause that sets it off, the event it may trigger, and the impact of that event, which is what the project loses if it happens.

   ```markdown
   The payment sandbox is rate-limited, so the end-to-end check may fail during the Week 3 meeting, which would leave the core task unproven.
   ```

3. The section carries these fields, in this order, after the first line, as a bulleted list per [Identifier Rules](general-requirements.md#identifier-rules):

   | Field              | What it says                                                                                               |
   | ------------------ | ---------------------------------------------------------------------------------------------------------- |
   | `**Status:**`      | `Open`, `Mitigated`, `Realized`, or `Dropped`; a risk starts `Open`                                        |
   | `**Impact:**`      | The rating word, `High`, `Medium`, or `Low`, and what the risk threatens and how badly                     |
   | `**Likelihood:**`  | The rating word, and why the risk is that likely                                                           |
   | `**Trigger:**`     | The observable signal that the risk is materializing                                                       |
   | `**Window:**`      | When the risk can materialize: a date, a week, a sprint, or a milestone                                    |
   | `**Mitigation:**`  | What the team does to reduce or avoid the risk                                                             |
   | `**Contingency:**` | The fallback if the risk materializes anyway                                                               |
   | `**Outcome:**`     | Added on `Mitigated` or `Realized`: what was done or what happened, linking the evidence and any `DEC-nnn` |
   | `**Dropped:**`     | Only on `Dropped`: the date and the reason                                                                 |

## Rating

**Since: W3**

The two ratings say what the risk could cost and how likely it is, and the summary table sorts the open risks by them.

**Required**

1. `**Impact:**` and `**Likelihood:**` carry their rating word, `High`, `Medium`, or `Low`, directly after the field name, so the bullet carries one colon.
2. The reason follows on indented lines inside the same bullet: for `**Impact:**`, what the risk threatens and how badly, and for `**Likelihood:**`, why the risk is that likely.

**Example**

```markdown
- **Impact:** High
  A failed check in front of the customer would leave the MUP's central story unaccepted, and the meeting would spend its time on a sandbox quota.
- **Likelihood:** Medium
  The provider rate-limits the shared sandbox, and the rehearsal and the meeting fall on the same day.
```

## Response

**Since: W3**

Contingency planning has its only home here: the answer to a risk is that risk's `**Mitigation:**` and `**Contingency:**`.
The plan carries no contingency section of its own, per [Progress Monitoring](planning-requirements.md#progress-monitoring).

**Required**

1. `**Trigger:**` names the observable signal that the risk is materializing: something the review can see rather than infer.
2. `**Window:**` names when the risk can materialize: a date, a week, a sprint, or a milestone.
3. `**Mitigation:**` says what the team does to reduce or avoid the risk before it happens.
4. `**Contingency:**` is the fallback if the risk materializes anyway: the alternative solution the team decided before it was needed.
5. Several options are several risks: each `RISK-nn` carries one `**Contingency:**`, so a risk with two possible fallbacks is two entries.
6. A point of no return is a `DEC-nnn`, not a field of a risk: passing one gets a [decision](decisions-requirements.md#the-decision) entry, and a risk whose mitigation or contingency passes one cites its `DEC-nnn`.

**Recommended**

- Write the contingency before the trigger fires: the moment a risk materializes is the wrong moment to invent the fallback.

## Checking And Settling

**Since: W3**

The team reads the register at its weekly review, the cadence the plan's [Progress Monitoring](planning-requirements.md#progress-monitoring) names.
The weekly customer meeting is not the review point.

**Required**

1. `**Status:**` is the first field: `Open`, `Mitigated`, `Realized`, or `Dropped`.
   A risk starts `Open` and moves to one settled state, once.
2. A risk the team's action has taken out of play is `Mitigated`, and its `**Outcome:**` says what was done, linking the evidence and any `DEC-nnn`.
3. A risk that happened is `Realized`, and its `**Outcome:**` says what happened, linking the evidence and any `DEC-nnn`.
4. A risk that can no longer materialize is `Dropped`, such as its window closing without its trigger.
   The entry takes the general `**Dropped:**` field with the date and the reason, per [Identifier Rules](general-requirements.md#identifier-rules).
5. Settle a risk at the review that sees it, mid-course included: the register is evidence, and a settled risk keeps its heading, its first line, its rating, and its other fields.
   A threat that comes back is a new `RISK-nn`.

**Example**

A risk whose window closed without its trigger, with its other fields left out:

```markdown
## RISK-03

The sprint is planned for all three of us, so one member's unplanned absence would leave the docs site and the setup page to the other two, which would push both past the deadline.

- **Status:** Dropped
- **Dropped:** 2026-10-16: the sprint ended without an absence, so the risk can no longer materialize.
```

## Full Example

`docs/risks.md` during Week 3, after the first test payment settled:

```markdown
# Risks

| ID                  | Risk                                                                                                                                                               | Impact | Likelihood | Status    |
| ------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------ | ---------- | --------- |
| [RISK-02](#risk-02) | "The payment sandbox is rate-limited, so the end-to-end check may fail during the Week 3 meeting, which would leave the core task unproven."                       | High   | Medium     | Open      |
| [RISK-01](#risk-01) | "The team has never integrated a payment provider, so the payment step may take longer than the sprint allows, which would push the MUP past the Week 3 deadline." | High   | Medium     | Mitigated |

## RISK-01

The team has never integrated a payment provider, so the payment step may take longer than the sprint allows, which would push the MUP past the Week 3 deadline.

- **Status:** Mitigated
- **Impact:** High
  The core task cannot complete without the payment step, so the sprint would end without the MUP.
- **Likelihood:** Medium
  The team is new to payment integrations, but the provider's hosted checkout keeps card data out of the product, per [`DEC-005`](decisions.md#dec-005).
- **Trigger:** the sandbox account is not taking test payments by the sprint's second day.
- **Window:** [SPRINT-03](project-plan.md#sprint-03).
- **Mitigation:** open the sandbox account first and take one test payment before building anything on top of the integration.
- **Contingency:** build the booking flow against a stub payment page and move the provider integration to the first task of the next sprint, with the customer's agreement.
- **Outcome:** the first test payment settled on 2026-10-13, so the integration is proven end to end and the risk can no longer materialize.

## RISK-02

The payment sandbox is rate-limited, so the end-to-end check may fail during the Week 3 meeting, which would leave the core task unproven.

- **Status:** Open
- **Impact:** High
  A failed check in front of the customer would leave the MUP's central story unaccepted, and the meeting would spend its time on a sandbox quota.
- **Likelihood:** Medium
  The provider rate-limits the shared sandbox, and the rehearsal and the meeting fall on the same day.
- **Trigger:** a test payment comes back rate-limited.
- **Window:** [SPRINT-03](project-plan.md#sprint-03), up to the Week 3 meeting.
- **Mitigation:** run the end-to-end check the day before the meeting, so the meeting shows an already-proven payment step.
- **Contingency:** fall back to the run recorded in the rehearsal and repeat the live check for the customer once the quota resets.
```
