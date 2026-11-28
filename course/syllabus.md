# ITPD Course Syllabus & Curriculum Structure

The **IT Product Development (ITPD)** course is designed to provide practical experience working on an IT product in a team environment.
The course is designed to prepare students for the Industrial Project course and provide essential skills that are assumed by the Industrial Project but not discussed there.

<h2>Table of contents</h2>

- [1. Course Overview \& Logistics](#1-course-overview--logistics)
- [2. Project Selection \& Team Formation Protocol (Weeks 1–2)](#2-project-selection--team-formation-protocol-weeks-12)
- [3. Weekly Curriculum \& Milestones](#3-weekly-curriculum--milestones)
  - [Week 1: Sep 25 – Oct 1 (Kickoff, Project Catalog \& Initial Research)](#week-1-sep-25--oct-1-kickoff-project-catalog--initial-research)
  - [Week 2: Oct 2 – Oct 8 (Requirements \& Prototyping)](#week-2-oct-2--oct-8-requirements--prototyping)
  - [Week 3: Oct 9 – Oct 15 (Planning \& Minimum Usable Product)](#week-3-oct-9--oct-15-planning--minimum-usable-product)
  - [Week 4: Oct 16 – Oct 22 (Software Quality, Architecture \& Next Product Release)](#week-4-oct-16--oct-22-software-quality-architecture--next-product-release)
  - [Week 5: Oct 23 – Oct 29 (Testing, Verification \& Deployment)](#week-5-oct-23--oct-29-testing-verification--deployment)
  - [Week 6: Oct 30 – Nov 5 (Product Analytics \& Observability)](#week-6-oct-30--nov-5-product-analytics--observability)
  - [Week 7: Nov 6 – Nov 12 (Usability Testing Preparation)](#week-7-nov-6--nov-12-usability-testing-preparation)
  - [Week 8: Nov 13 – Nov 19 (Project Configuration Management)](#week-8-nov-13--nov-19-project-configuration-management)
  - [Week 9: Nov 20 – Nov 26 (Project Pitching And Sprint 9)](#week-9-nov-20--nov-26-project-pitching-and-sprint-9)
  - [Week 10: Nov 27 – Dec 3 (Final Release And Handoff)](#week-10-nov-27--dec-3-final-release-and-handoff)
  - [Week 11: Dec 4 – Dec 10 (Final Exam)](#week-11-dec-4--dec-10-final-exam)
- [4. Assessment \& Submission Catalog](#4-assessment--submission-catalog)
  - [Group Submissions](#group-submissions)
  - [Other Assessment Components](#other-assessment-components)
- [5. Grading Policy \& Evaluation Scheme](#5-grading-policy--evaluation-scheme)
- [6. Course Policies](#6-course-policies)
  - [Late Submission Policy](#late-submission-policy)
  - [Attendance Policy](#attendance-policy)
  - [AI Tools Policy](#ai-tools-policy)
- [7. Communication \& Platforms](#7-communication--platforms)
- [8. References \& Navigation](#8-references--navigation)

---

## 1. Course Overview & Logistics

- **Duration**: **11 weeks** (September 25, 2026 – December 10, 2026).
- **Class Sessions**: Held weekly on **Fridays** (Classes 1 through 11).
- **Customer Meetings**: Each team meets its customer, the team's instructor, at least once every week from Week 1, and the Week 1 meeting is the kickoff.
  See [Every Meeting](../requirements/customer-meetings-requirements.md#every-meeting).
- **Weekly Submission Deadline Policy**:
  > [!IMPORTANT]
  > Weeks 1 to 3 have soft and hard deadlines.
  > See the weekly entries below for dates and the [Late Submission Policy](#late-submission-policy) for penalties.
  > Submit the Moodle PDF as a map to the repository work and keep private material in Moodle.

---

## 2. Project Selection & Team Formation Protocol (Weeks 1–2)

The first two weeks establish the project foundations, team formation, and competitive research:

1. **Curated Project Catalog (Day 1 / Class 1)**:
   - On the first day of class (**September 25**), an existing list of approved software projects is provided.
2. **Team Formation & Project Selection (Day 1 / Class 1)**:
   - During the first class session, students form project teams of **3 to 4 participants** and select a single project from the provided catalog.
3. **Initial Project Research (Submission 1 - Due Oct 1, 23:59)**:
   - Week 1 concludes with a comprehensive **group research deliverable** on the selected project:
     - **Alternative Search**: Identify existing market and open-source alternatives / competitor solutions.
     - **Pros & Cons Analysis**: Detail the strengths, limitations, and trade-offs of each identified alternative.
     - **Gap Analysis**: Uncover useful features, workflows, and user needs that are not adequately addressed by existing alternatives.
     - **Value Proposition & Differentiation**: Clearly articulate how the team's product will be superior, distinctive, and more valuable than existing similar products.
   - Week 1 also includes **product repository setup** and the **customer kickoff meeting**, the first of the weekly meetings with the customer.
4. **Repository Setup (Week 1) & Requirements (Week 2)**:
   - The product repository is created and configured during Week 1, alongside the research: a public MIT-licensed repository in the team's own GitHub organization, a protected `main` branch requiring pull request review, a pull request template, and automated link checking.
   - Following research submission and feedback, Week 2 turns the research into requirements: a product vision, prioritized user stories with acceptance criteria, prototypes that test the riskiest assumptions, issue tracking, and the Week 2 customer meeting, which changes something.

---

## 3. Weekly Curriculum & Milestones

The table gives the class dates and submission deadlines.
Weeks 1 to 3 have both a soft and a hard deadline, as listed in their weekly entries.
Weeks 4 to 10 have a hard deadline only.

| Week        | Date Range      | Focus / Key Milestones                                                                                                                                                                           |
| :---------- | :-------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Week 1**  | Sep 25 – Oct 1  | Course Kickoff, Project Catalog, Team Formation, **Repository Setup** & **Submission 1 (initial research, soft Oct 1 and hard Oct 2, both at 23:59)**                                            |
| **Week 2**  | Oct 2 – Oct 8   | Lecture (Requirements & Prototyping), Research Review, Issue Tracking & **Submission 2 (soft Oct 8 and hard Oct 10, both at 23:59)**                                                             |
| **Week 3**  | Oct 9 – Oct 15  | Lecture (Planning), Project Plan & **Submission 3 (soft Oct 15 and hard Oct 17, both at 23:59)**                                                                                                 |
| **Week 4**  | Oct 16 – Oct 22 | Lecture (Software Quality), Architecture Draft & **Submission 4 (due Oct 24, 23:59)**                                                                                                            |
| **Week 5**  | Oct 23 – Oct 29 | Lecture (Testing & Automation), CI Checks, VM Deployment & **Submission 5 (due Oct 31, 23:59)**                                                                                                  |
| **Week 6**  | Oct 30 – Nov 5  | Lecture (Product Analytics), Focus Metric, Events \& Observability, Four Dashboards \& **Submission 6 (due Nov 8, 23:59)**                                                                       |
| **Week 7**  | Nov 6 – Nov 12  | Lecture (Usability Testing), `UT-01` Test Design, Surveys, Test Instrumentation \& Verification, Consent \& Private Data, QR/QRT \& **Submission 7 (due Nov 15, 23:59)**                         |
| **Week 8**  | Nov 13 – Nov 19 | Lecture (Configuration Management for Agentic Development), Configuration Plan \& Goal-Based Evaluation, Usability Results \& Instrumentation Comparison \& **Submission 8 (due Nov 21, 23:59)** |
| **Week 9**  | Nov 20 – Nov 26 | Project pitching, Sprint 9 review and UATs, handoff preparation, and **Submission 9 (Nov 29, 23:59)**                                                                                            |
| **Week 10** | Nov 27 – Dec 3  | Course review, final release and handoff, and **Submission 10 (Dec 6, 23:59)**                                                                                                                   |
| **Week 11** | Dec 4 – Dec 10  | **Final exam (Friday Dec 4)** and **Submission 11 (Dec 6, 23:59)**                                                                                                                               |

### Week 1: Sep 25 – Oct 1 (Kickoff, Project Catalog & Initial Research)

- **Class 1 (Sep 25)**: Course introduction, syllabus overview, rubric orientation, and presentation of the provided project catalog.
  Team formation begins.
- **Repository Setup (during Week 1)**: Each team creates one GitHub organization and one public, MIT-licensed product repository inside it, and adds every member as a collaborator. `main` is protected (pull requests required, at least one approval, no self-approval), a pull request template is added, and automated link checking runs on pull requests and on `main` with a green `main` run before submission.
  See [Repository Requirements](../requirements/repository-requirements.md) and [Pull Request Requirements](../requirements/pull-requests-requirements.md).
- **Customer Kickoff (during Week 1)**: Each team holds one kickoff meeting with its instructor, who acts as the customer.
  The team presents its reading of the problem and its proposed direction.
  The team prepares a meeting script in advance, covering business goals, end users, the current workflow, pain points and constraints, and scope, and improves it against [The Mom Test](https://www.koji.so/docs/mom-test-methodology).
  The team asks for permission before recording; the recording stays private and is linked from the Moodle submission, while a sanitized transcript is committed to the repository.
- **Submission 1 (Team Deliverable - Due Oct 1, 23:59)**:
  - **Initial Project Research Report**:
    - Confirmed team members and selected project from the provided catalog.
    - Identification of 3–4 existing alternative solutions and competitors.
    - In-depth pros and cons evaluation for each alternative.
    - Analysis of useful aspects and gaps unaddressed by existing solutions.
    - Proposed product differentiation and strategy for surpassing existing products.
    - The prepared meeting script for the customer kickoff.
    - Sanitized transcript of the customer kickoff meeting.
  - **Detailed requirements**: [Assignment 1](../assignments/assignment-1.md).

### Week 2: Oct 2 – Oct 8 (Requirements & Prototyping)

- **Class 2 (Oct 2)**:
  - **Lecture**: **Requirements and prototyping** (product vision, user stories, acceptance criteria, validating an idea before you build it).
  - Research from Week 1 is reviewed in class.
- **Submission 2 (Team Deliverables - Due Oct 8, 23:59)**:
  - **Deliverables**:
    1. **Product Vision**: `docs/product-vision.md`, holding the goal, the constraints, the stakeholders, the boundary of what the team will not do, and a system context diagram.
    2. **User Stories**: one GitHub issue per story, opened from `.github/ISSUE_TEMPLATE/user-story.yml`, listed by the `user-story` label; each story except a `Won't Have` story carries its own acceptance criteria.
    3. **Issue Tracking**: one issue per `US-nn` with a `moscow:*` label, and a task issue form, `.github/ISSUE_TEMPLATE/task.yml`, for every unit of work, including work on a story, so that each pull request closes a task issue rather than a story.
    4. **Minimum Usable Product Candidate**: the `Must Have` stories that let a user complete one core task end to end, recorded in `reports/week-02/README.md`.
    5. **Prototypes**: prototypes of the riskiest assumptions, recorded at `reports/week-02/prototypes.md`.
       Prototypes may be paper sketches, view-only design tools, or disposable code spikes.
    6. **Customer Validation Meeting**: the Week 2 meeting with the customer, with the full Week 1 artifact set, which changes at least one story.
  - **Minima**: at least eight story issues, at least five of them not `Won't Have`, each story carrying a `moscow:*` label, `Won't Have` stories closed as not planned, at least two acceptance criteria per story that is not `Won't Have`, and a minimum usable product candidate that is a non-empty subset of the Must-Have stories and completes one core task end to end.
    There is no product code this week.
  - **Note**: The product repository itself is created and configured in Week 1.
    Week 2 adds requirements, tracking, and prototypes.
  - **Submission Scope**: Team submission.
  - **Deadline**: soft **October 8 at 23:59 (Thursday)**, hard **October 10 at 23:59 (Saturday)**.

### Week 3: Oct 9 – Oct 15 (Planning & Minimum Usable Product)

- **Class 3 (Oct 9)**:
  - **Lecture**: **Planning** (tactical and strategic planning, tracking progress, risk management).
- **Submission 3 (Team Deliverables - Due Oct 15, 23:59)**:
  - **Deliverables**:
    1. **Project Plan**: the sprint, milestone, and release plan, maintained in the repository at `docs/project-plan.md`.
    2. **Threshold of Success**: explicit, measurable criteria for calling the course a success, at `docs/threshold-of-success.md`.
    3. **Risk Register**: the project's risks, their ratings, and their responses, at `docs/risks.md`.
    4. **Minimum Usable Product (MUP)**: a first working vertical slice built from the minimum usable product candidate named in Week 2.
    5. **Definition of Done**: what done means for a story, a task, and a pull request, at `docs/definition-of-done.md`.
    6. **Contributing Guide**: `CONTRIBUTING.md`, stating the commit message format the team uses.
    7. **Sprint Milestones And Issue Fields**: the initial GitHub milestones `SPRINT-03` through `SPRINT-09`, and the public `Responsible` and `Accountable` fields with the matching assignees, set on every issue the plan schedules.
    8. **GitHub Project**: one public GitHub project per team, holding the repository's issues, with a table view showing the milestone (the sprint), the `Responsible` and `Accountable` fields, and the assignees.
    9. **Changelog and First Release**: `CHANGELOG.md` compiled from pull requests, and the first SemVer tag.
    10. **Documentation Site**: `docs/` published as a GitHub Pages site and linked from the root `README.md`.
    11. **Setup And Run Instructions**: `docs/setup.md`, linked from the root `README.md`.
  - **Submission Scope**: Team submission.
  - **Deadline**: soft **October 15 at 23:59 (Thursday)**, hard **October 17 at 23:59 (Saturday)**.

### Week 4: Oct 16 – Oct 22 (Software Quality, Architecture & Next Product Release)

- **Class 4 (Oct 16)**:
  - **Lecture**: **Software Quality** (quality characteristics, architectural drivers, verification strategies).
- **Objectives**:
  - Turn the quality attributes into testable quality requirements, prioritized in one matrix.
  - Write the functional requirements behind the stories, with their behavior and their own criteria.
  - Document the architecture: the container view and its responsibilities, the drivers it links, the architectural decision records, and the ADR index.
  - Plan the sprint, refine its backlog, and estimate its stories.
  - Fix the project's words in a glossary, and tell a coding agent how the repository works.
  - Cut the sprint's release, `REL-04`.
- **Submission 4 (Team Deliverables - Due Oct 24, 23:59)**:
  - **Deliverables**:
    1. **Sprint plan and estimates**: `docs/project-plan.md#sprint-04`, with its goal, its planned velocity, and its actual velocity.
    2. **Quality requirements**: `docs/quality-requirements/` with `qr/`, and `README.md` as the priority matrix.
    3. **Functional requirements**: `docs/functional-requirements/` with `fr/`, and `README.md` as the index.
    4. **Architecture**: `docs/architecture/README.md`, with the container view and its responsibilities, the drivers it links, and the ADR index.
    5. **Architectural decision records**: `docs/architecture/adr/` and the ADR index.
    6. **Glossary and the team's `AGENTS.md`**: `docs/glossary.md` and `AGENTS.md`.
    7. **Sprint retrospective**: `reports/week-04/sprint-retrospective.md`.
    8. **Next Product Release (`REL-04`)**: the tagged version, the changelog's released section, and the plan's `REL-04` line.
  - **Submission Scope**: Team submission.
  - **Deadline**: **October 24 at 23:59 (Saturday)**, with no soft deadline.

### Week 5: Oct 23 – Oct 29 (Testing, Verification & Deployment)

- **Class 5 (Oct 23)**:
  - **Lecture**: **Testing and Automating Development Tasks** (unit testing strategies, test runners, CI/CD automation pipelines, production deployment).
    The product CI runs outside the university network, so it stops at the build and the tests, and the deployment is the manual gate.
- **Objectives**:
  - Turn the quality requirements into quality requirement tests (`QRT-nn`) a stranger can run, and record every test's result in the testing plan.
  - Add the automated tests for the testability requirement's critical modules, with `actionlint` and every applicable product-code CI check.
  - Deploy the product to staging and production on the university VM, by hand from a machine on the university network, and document the four environments in `docs/deployment.md`.
    "Live accessible" means the customer reaches the product from the university network at the VM's IPv4 address.
  - Define at least two plan milestones and add two stories that carry the next increments.
  - Write Feature Documentation in `docs/features.md`: a user-language sentence per capability and links to the records that own its facts.
  - Cut the sprint's release, `REL-05`, on the final production commit.
- **Submission 5 (Team Deliverables - Due Oct 31, 23:59)**:
  - **Deliverables**:
    1. **Quality Requirement Tests And Testing Plan**: a `QRT-nn` inside every active High business-importance requirement's file, and one row per test in `docs/project-plan.md`'s `## Quality Requirement Testing Plan`, with the test's result, its last check, its planned sprint, and its evidence.
    2. **Automated Tests And CI Checks**: the automated tests for the testability requirement's critical modules, `actionlint`, and every applicable product-code check, on pull requests and on `main`.
    3. **Staging And Production On The University VM**: the two deployments and the deployment runbook, `docs/deployment.md`, with the core task verified on production.
    4. **Plan Milestones And Stories**: at least two plan milestones and two new stories that carry the next increments.
    5. **Feature Documentation**: `docs/features.md`, with a user-language sentence per capability, the page's glossary line and first-use term links, and links to the story, functional requirement, and architectural decision record that own its facts.
    6. **Sprint Retrospective**: `reports/week-05/sprint-retrospective.md`.
    7. **Next Product Release (`REL-05`)**: the tag on the final production commit, the release body for whoever deploys it, the changelog's released section, and the plan's `REL-05` block with its `Released` and `Checked QRs` fields.
  - **Submission Scope**: Team submission.
  - **Deadline**: **October 31 at 23:59 (Saturday)**, with no soft deadline.

### Week 6: Oct 30 – Nov 5 (Product Analytics & Observability)

- **Class 6 (Oct 30)**:
  - **Lecture**: **Product Analytics & Observability** (hypothesis-driven approach, product metrics, product analytics, SLA/SLO/SLI, observability).
- **Objectives**:
  - Decide the metric the product's value is read from, and the events that feed it, in one analytics plan.
  - Record the events of the core task end to end, with no personal data and a `source` on every event.
  - Run the analytics pipeline and its two dashboards, one per environment, on the university network.
  - Define the product's quality signals as `SLI`s, and run the observability pipeline and its two dashboards.
  - Add the two internal capabilities with their stories, functional requirements, and architectural decision records, and show the two backends as external systems.
  - Add a diagnosability requirement and its `deployed` test, and run it against staging.
  - Review the threshold of success against the data the product now reports.
  - Cut the sprint's release, `REL-06`.
- **Submission 6 (Team Deliverables - Due Nov 8, 23:59)**:
  - **Deliverables**:
    1. **Product Analytics Plan**: `docs/analytics.md`, with the focus metric traced to its `VP-nn`, the counter-metric, the L1 and L2 input metrics, the metric tree, a section per metric, and the events and instrumentation.
    2. **Analytics Dashboards**: one in the staging environment scope and one in the production environment scope, each with a chart that runs the query recorded in the plan.
    3. **Observability Plan And `SLI`s**: `docs/observability.md`, with the signals and the `SLI-nn` sections, each with its definition, unit, window, source, query, and status.
    4. **Observability Dashboards**: one in the staging environment scope and one in the production environment scope, each with a chart that names an `Active` `SLI` and runs its query.
    5. **Two Functional Requirements And Two Stories**: one for the product analyst and one for the system operator, each story naming its `FR-nnn` and its `ADR-nnn`.
    6. **Two Architectural Decision Records And The Container View**: the analytics record and the observability record, with the two backends shown as external systems.
    7. **Observability Requirement And Test**: the diagnosability requirement with its `deployed` `QRT`, its result in the testing plan, and, when the team re-runs one, the runtime test's result.
    8. **Threshold Review**: each open goal's current measure and whether the new data can settle it, with the customer's decision on any change.
    9. **Sprint Retrospective**: `reports/week-06/sprint-retrospective.md`.
    10. **Next Product Release (`REL-06`)**: the tag on the final production commit, the release body for whoever deploys it, the changelog's released section, and the plan's `REL-06` block with its `Released` and `Checked QRs` fields.
  - **Submission Scope**: Team submission.
  - **Deadline**: **November 8 at 23:59 (Sunday)**, with no soft deadline.
  - **Detailed requirements**: [Assignment 6](../assignments/assignment-6.md).

### Week 7: Nov 6 – Nov 12 (Usability Testing Preparation)

- **Class 7 (Nov 6)**:
  - **Lecture**: **Usability Testing** (usability evaluation methodologies, running the test, usability test surveys, and analyzing the results).
  - The class designs the `UT-01` usability test: its record, its tasks, its surveys, its instrumentation, its consent, its private data home, and the quality requirement the sessions check.
- **Objectives**:
  - Design a usability test a stranger can run, with one main and two secondary tasks, a participant profile, a protocol, and an analysis plan.
  - Write the pre-test, the SEQ after each task, the full SUS, and the open-ended post-test, and record the qualitative and the quantitative measures.
  - Prepare the test's instrumentation: check the Week 6 events against the tasks, reuse what covers them, add or instrument what does not, document the participant link, and verify it before the first counted session.
  - Write the durable consent and create the private usability-data repository and the recordings folder, and split the public sanitized record from the private raw data.
  - Add the `Interaction Capability` requirement with its `manual` test, and plan it for the run week.
  - Set a recruitment target of at least three representative participants, with five as the design target; the team arranges the sessions, they may run as soon as the design is written, and the results are due with Submission 8.
  - Cut the sprint's release, `REL-07`.
- **Submission 7 (Team Deliverables - Due Nov 15, 23:59)**:
  - **Deliverables**:
    1. **`UT-01` Usability Test Design**: `docs/usability-tests/README.md` and `docs/usability-tests/ut-01/README.md`, with the goal, the research questions, the participant profile, the tasks, the protocol, the measures, the instrumentation, the analysis plan, the schedule, the roles, the environment, and the public/private evidence map.
    2. **Pre-Test & Post-Test Surveys**: `docs/usability-tests/ut-01/surveys.md`, with the pre-test, the SEQ after each task, the full ten SUS items and the formula, and the open-ended post-test.
    3. **Task Facilitation Protocol And Test Instrumentation**: the tasks with their scenarios, start points, end states, success criteria, time limits, and fixed order, `sessions/README.md` with the facilitation script, the no-help rule, the observation sheet, and the roles, and the record's instrumentation section with the participant link and what was verified before the first session.
    4. **Consent, Private Repository, And Recordings Folder**: `consent.md`, the private `<organization>/<repo>-usability-data` repository shared with the instructors, the team-owned cloud folder for the recordings, and the private links in the Moodle wrapper.
    5. **Quality Requirement And Its Manual Test**: the `Interaction Capability` requirement with its team-chosen sub-characteristic and measure, its scenario, and its `manual` `QRT` that names `UT-01`, with its testing-plan row planned for `SPRINT-08`.
    6. **Recruitment Target And Session Plan**: a recruitment target of at least three representative participants aged 18 or older, five as the design target, and the team's plan for arranging the sessions.
    7. **Sprint, Sprint Review, Release, Retrospective, And AI Usage**: `SPRINT-07` with its velocity, the design review with the customer, `REL-07`, the sprint retrospective, and the AI usage report.
  - **Submission Scope**: Team submission.
  - **Deadline**: **November 15 at 23:59 (Sunday)**, with no soft deadline.
  - **Detailed requirements**: [Assignment 7](../assignments/assignment-7.md).

### Week 8: Nov 13 – Nov 19 (Project Configuration Management)

<!-- Configuration management was done for them -->

- **Class 8 (Nov 13)**:
  - **Lecture**: **Configuration Management for Agentic Development** (agentic development, the technical, cognitive, and intent debt an agent creates, configuration management as trust, context management, `AGENTS.md`, `SKILL.md`, and MCP).
- **Objectives**:
  - Review the configuration the team builds, checks, and delivers the product with, and judge it by the goals its artifacts serve rather than by its items.
  - Write the sanitized notes and the results from the `UT-01` sessions, compare the test's instrumentation with the session records, triage the findings, and record the quality requirement's verdict.
  - Cut the sprint's release, `REL-08`.
- **Submission 8 (Team Deliverables - Due Nov 21, 23:59)**:
  - **Deliverables**:
    1. **Configuration Plan**: `docs/configuration-plan.md`, the maintained inventory of the configuration, with its five groups, at least 8 `Active` `CFG-nn` items, their fields, and their connections, per [Configuration Management Requirements](../requirements/configuration-management-requirements.md).
    2. **Goal-Based Configuration Evaluation**: `reports/week-08/cm-evaluation.md`, with its baseline, its method, one section per local goal, the tradeoffs, what the team could not judge, and the first change.
       No implementation is required: a change the team enacts is a pull request that updates the configuration plan when the change alters what it records, with a release when it changes the product.
    3. **Usability Results**: `docs/usability-tests/ut-01/results.md`, the sanitized session notes under `docs/usability-tests/ut-01/sessions/`, the instrumentation comparison, the `QR/QRT` result in the testing plan, and the findings and their task issues.
    4. **Sprint, Release, Retrospective, And AI Usage**: `SPRINT-08` with its velocity, the results review with the customer, `REL-08`, the sprint retrospective, and the AI usage report.
  - **Submission Scope**: Team submission.
  - **Deadline**: **November 21 at 23:59 (Saturday)**, with no soft deadline.
  - **Detailed requirements**: [Assignment 8](../assignments/assignment-8.md).

### Week 9: Nov 20 – Nov 26 (Project Pitching And Sprint 9)

- **Class 9 (Nov 20)** teaches project pitching, including product demos, value and evidence.
- Plan `SPRINT-09` and create the provisional `SPRINT-10` milestone and plan section.
- Hold the Sprint 9 review in person by **Sunday 29 November 2026**.
  Check the UATs with the customer, discuss quality plan results, review the open threshold goals and ask what the customer expects at the handoff.
- Cut `REL-09` at the Sprint 9 close and record the retrospective and AI usage.
- **Submission 9 and the Sprint 9 hard deadline are Sunday 29 November 2026 at 23:59.**
  Submit the Week 9 report with the UAT results, quality plan results, threshold review and handoff preparation, plus the Moodle wrapper and snapshot.
  See [Assignment 9](../assignments/assignment-9.md).

### Week 10: Nov 27 – Dec 3 (Final Release And Handoff)

- **Class 10 (Nov 27)** covers the course review and final exam briefing.
- `SPRINT-10` starts **Monday 30 November 2026**.
  Plan Sprint 10 after the Sprint 9 review.
- Cut and deploy `REL-10`, the MVP, before the in-person Sprint 10 review and handoff.
  Re-run the active UATs and review the remaining open threshold goals at the handoff.
- Close the sprint with the final repository state, retrospective and AI usage report.
  The Week 10 weekly report is the final project report and links the separate project reflection.
- **Submission 10, the Sprint 10 close and the handoff are due by Sunday 6 December 2026 at 23:59.**
  Submission 10 has no late submission window.
  See [Assignment 10](../assignments/assignment-10.md).

### Week 11: Dec 4 – Dec 10 (Final Exam)

- The **final exam** is on **Friday 4 December 2026**.
  See the [exam format](../exam/README.md#exam-format) and [grading criteria](../exam/README.md#grading) for the team pitch, live demo, and panel Q&A.
- Submit the [exam materials](../exam/README.md#pitch-deck-and-demo-submission) separately in Moodle by **Thursday 3 December 2026 at 23:59**.
- **Submission 11** is the **individual reflection and peer evaluation**.
  Submit it privately in Moodle after the final exam by **Sunday 6 December 2026 at 23:59**.
  It is available only to members of teams that presented at the final exam and is independent of Submission 10.

---

## 4. Assessment & Submission Catalog

### Group Submissions

Each team submits ten assignments.
Repository upkeep is assessed within these submissions.

| #     | Assessment Item                                  | Week    | Scope     | Hard deadline | Primary deliverables                                                                                                                                                                                                                                                                                                                                                                                                                   | Points   |
| ----- | ------------------------------------------------ | ------- | --------- | ------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| **1** | **Submission 1**                                 | Week 1  | **Group** | Oct 2, 23:59  | **Initial Project Research** (alternatives search, pros & cons, gap analysis, value proposition), product repository setup, customer kickoff transcript                                                                                                                                                                                                                                                                                | 7 points |
| **2** | **Submission 2**                                 | Week 2  | **Group** | Oct 10, 23:59 | **Requirements & Prototyping** (product vision, user stories with acceptance criteria, issue tracking, prototypes, customer validation)                                                                                                                                                                                                                                                                                                | 7 points |
| **3** | **Submission 3**                                 | Week 3  | **Group** | Oct 17, 23:59 | **Plan & MUP** (project plan, threshold of success, risk register, minimum usable product, Definition of Done, `SPRINT-nn` GitHub milestones, `Responsible` and `Accountable` issue fields with matching assignees, public GitHub project, changelog, first SemVer tag, docs site, setup and run instructions)                                                                                                                         | 7 points |
| **4** | **Submission 4**                                 | Week 4  | **Group** | Oct 24, 23:59 | **Quality & Architecture** (sprint plan and estimates, quality requirements and their priority matrix, functional requirements, the architecture with its drivers and ADR index, the architectural decision records, the glossary, the team's `AGENTS.md`, the sprint retrospective, next product release `REL-04`)                                                                                                                    | 7 points |
| **5** | **Submission 5**                                 | Week 5  | **Group** | Oct 31, 23:59 | **Verification & Deployment** (quality requirement tests and the testing plan, automated tests and CI checks, staging and production instances with `docs/deployment.md` — _live accessible means the customer reaches them from the university network at the VM's IPv4 address_ — at least two milestones and two new stories, Feature Documentation in `docs/features.md`, the sprint retrospective, next product release `REL-05`) | 7 points |
| **6** | **Submission 6**                                 | Week 6  | **Group** | Nov 8, 23:59  | **Product Analytics & Observability** (the analytics plan and metric tree, the events and instrumentation, the two analytics dashboards, the observability plan and `SLI`s, the two observability dashboards, the two functional requirements and stories, the two ADRs and container view, the observability requirement and test, the threshold review, the sprint retrospective, next product release `REL-06`)                     | 7 points |
| **7** | **Submission 7**                                 | Week 7  | **Group** | Nov 15, 23:59 | **Usability Testing Design** (the `UT-01` record, pre/post-test surveys, task facilitation protocol, observation recording strategy, the test instrumentation and its verification, consent, private usability-data repository, recordings folder, the `Interaction Capability` requirement and its manual test, the participants and schedule)                                                                                        | 7 points |
| **8** | **Submission 8**                                 | Week 8  | **Group** | Nov 21, 23:59 | **Configuration Management & Usability Results** (the configuration plan and its goal-based evaluation; `docs/usability-tests/ut-01/results.md`, the sanitized sessions, the instrumentation comparison, the QR/QRT result, the findings and task issues, the sprint retrospective, next product release `REL-08`)                                                                                                                     | 7 points |
| 9     | [Submission 9](../assignments/assignment-9.md)   | Week 9  | Group     | Nov 29, 23:59 | Sprint 9 review, UAT results, quality plan results, threshold review, handoff preparation, release, retrospective and AI usage                                                                                                                                                                                                                                                                                                         | 7 points |
| 10    | [Submission 10](../assignments/assignment-10.md) | Week 10 | Group     | Dec 6, 23:59  | Final report, Sprint 10 review and handoff, UAT re-run, MVP release, project reflection, final repository state, retrospective and AI usage                                                                                                                                                                                                                                                                                            | 7 points |

### Other Assessment Components

| Component                                                                                     | Scope      | Date         | Points |
| --------------------------------------------------------------------------------------------- | ---------- | ------------ | ------ |
| [Final exam](#week-11-dec-4--dec-10-final-exam)                                               | Group      | Dec 4        | 20     |
| [Submission 11: Individual reflection and peer evaluation](#week-11-dec-4--dec-10-final-exam) | Individual | Dec 6, 23:59 | 7      |
| [Class attendance](#attendance-policy)                                                        | Individual | Weeks 1–11   | 10     |

---

## 5. Grading Policy & Evaluation Scheme

The ten group submissions contribute 70 points.
Attendance, the individual reflection and peer evaluation, and the final exam bring the total to **107 points**.
The course is assessed on a pass/fail basis.
The pass threshold is **75 points out of 107**.

---

## 6. Course Policies

### Late Submission Policy

A late submission loses **10% of its available points per calendar day** after the hard deadline.
A 7-point submission loses 0.7 points per calendar day and can earn at most 6.3 points one day late or 5.6 points two days late.
A submission more than seven days late receives zero points.
Submission 10 has a hard cutoff and is excluded from this policy.

### Attendance Policy

Excused absences (with prior notification or documentation) are not penalized.
Unexcused absences reduce the individual attendance grade proportionally.

### AI Tools Policy

Students may use any AI tools (e.g., GitHub Copilot, ChatGPT, Claude) for coding and documentation.
However, the team bears **full responsibility** for the correctness, quality, and originality of all submitted work.

---

## 7. Communication & Platforms

| Purpose                | Platform                    |
| :--------------------- | :-------------------------- |
| Assignment submissions | **Moodle**                  |
| Course chat            | **Telegram**                |
| Announcements          | **Telegram** and **Moodle** |
| Project repositories   | **GitHub**                  |

---

## 8. References & Navigation

- [Course README](../README.md)
- [Course Rules](rules.md)
- [Teams and Projects](teams-and-projects.md)
