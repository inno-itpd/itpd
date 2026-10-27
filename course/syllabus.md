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
  - [Week 6: Oct 30 – Nov 5 (Analytics)](#week-6-oct-30--nov-5-analytics)
  - [Week 7: Nov 6 – Nov 12 (Usability Testing Preparation \& In-Class Product Presentations)](#week-7-nov-6--nov-12-usability-testing-preparation--in-class-product-presentations)
  - [Week 8: Nov 13 – Nov 19 (Project Configuration Management)](#week-8-nov-13--nov-19-project-configuration-management)
  - [Week 9: Nov 20 – Nov 26 (Project Pitching, Repository Finalization \& Reflection)](#week-9-nov-20--nov-26-project-pitching-repository-finalization--reflection)
  - [Week 10: Nov 27 – Dec 3 (Course Review \& Final Exam Preparation)](#week-10-nov-27--dec-3-course-review--final-exam-preparation)
  - [Week 11: Dec 4 – Dec 10 (Final Exam: Group Presentations of the Projects)](#week-11-dec-4--dec-10-final-exam-group-presentations-of-the-projects)
- [4. Assessment \& Submission Catalog](#4-assessment--submission-catalog)
  - [Assessment Counts \& Components](#assessment-counts--components)
- [5. Grading Policy \& Evaluation Scheme](#5-grading-policy--evaluation-scheme)
  - [Grade Weight Breakdown](#grade-weight-breakdown)
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
  > The group submissions from Week 4 to Week 9 are due on **Saturday at 23:59**, with no soft deadline.
  > Weeks 1 to 3 keep the soft and hard deadline pair their assignments record, and the Week 11 individual reflection keeps its own date.
  > See [Deadlines And Submission](rules.md#deadlines-and-submission) and the [Late Submission Policy](#late-submission-policy).
  > A submission is a reflection on the work done in the repository.
  > All details should be stored in the repo.
  > The submission should be a map to the specific chunk of work.
  > Don't submit audio recordings and other private info to github.

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

The dates below are the group submissions' deadlines.
Weeks 1 to 3 record the soft and hard deadline pair their assignments give.
From Week 4 to Week 9 every submission is due on Saturday at 23:59, with no soft deadline.

| Week        | Date Range      | Focus / Key Milestones                                                                                                       |
| :---------- | :-------------- | :--------------------------------------------------------------------------------------------------------------------------- |
| **Week 1**  | Sep 25 – Oct 1  | Course Kickoff, Project Catalog, Team Formation, **Repository Setup** & **Submission 1 (Initial Research due Oct 1, 23:59)** |
| **Week 2**  | Oct 2 – Oct 8   | Lecture (Requirements & Prototyping), Research Review, Issue Tracking & **Submission 2 (due Oct 8, 23:59)**                  |
| **Week 3**  | Oct 9 – Oct 15  | Lecture (Planning), Project Plan & **Submission 3 (MUP due Oct 15, 23:59)**                                                  |
| **Week 4**  | Oct 16 – Oct 22 | Lecture (Software Quality), Architecture Draft & **Submission 4 (due Oct 24, 23:59)**                                        |
| **Week 5**  | Oct 23 – Oct 29 | Lecture (Testing & Automation), CI Checks, VM Deployment & **Submission 5 (due Oct 31, 23:59)**                              |
| **Week 6**  | Oct 30 – Nov 5  | Lecture (Analytics) & **Submission 6 (Analytics Integration due Nov 7, 23:59)**                                              |
| **Week 7**  | Nov 6 – Nov 12  | Lecture (Usability Testing), In-Class Product Presentations & **Submission 7 (Usability Test Protocol due Nov 14, 23:59)**   |
| **Week 8**  | Nov 13 – Nov 19 | Lecture (Configuration Management) & **Submission 8 (CM Evaluation & Implementation due Nov 21, 23:59)**                     |
| **Week 9**  | Nov 20 – Nov 26 | Lecture (Project Pitching), Repo Finalization & **Submission 9 (due Nov 28, 23:59)**                                         |
| **Week 10** | Nov 27 – Dec 3  | Lecture (Course Review) & Final Exam Preparation                                                                             |
| **Week 11** | Dec 4 – Dec 10  | **Final Exam: Group Presentations of the Projects** & **Submission 10 (Individual Reflection due Dec 10, 23:59)**            |

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
    7. **Sprint Milestones And Issue Fields**: the seven `SPRINT-nn` GitHub milestones, and the public `Responsible` and `Accountable` fields with the matching assignees, set on every issue the plan schedules.
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
  - Add the unit tests for the testability requirement's critical modules, with `actionlint` and every applicable product-code CI check.
  - Deploy the product to staging and production on the university VM, by hand from a campus machine, and document the four environments in `docs/deployment.md`.
    "Live accessible" means the customer reaches the product from the university network at the VM's IPv4 address.
  - Define at least two plan milestones and add two stories that carry the next increments.
  - Write Feature Documentation in `docs/features.md`: a user-language sentence per capability and links to the records that own its facts.
  - Cut the sprint's release, `REL-05`, on the final production commit.
- **Submission 5 (Team Deliverables - Due Oct 31, 23:59)**:
  - **Deliverables**:
    1. **Quality Requirement Tests And Testing Plan**: a `QRT-nn` inside every active High business-importance requirement's file, and one row per test in `docs/project-plan.md`'s `## Quality Requirement Testing Plan`, with the test's result, its last check, its planned sprint, and its evidence.
    2. **Unit Tests And CI Checks**: the unit tests for the testability requirement's critical modules, `actionlint`, and every applicable product-code check, on pull requests and on `main`.
    3. **Staging And Production On The University VM**: the two deployments and the deployment runbook, `docs/deployment.md`, with the core task verified on production.
    4. **Plan Milestones And Stories**: at least two plan milestones and two new stories that carry the next increments.
    5. **Feature Documentation**: `docs/features.md`, with a user-language sentence per capability, the page's glossary line and first-use term links, and links to the story, functional requirement, and architectural decision record that own its facts.
    6. **Sprint Retrospective**: `reports/week-05/sprint-retrospective.md`.
    7. **Next Product Release (`REL-05`)**: the tag on the final production commit, the release body's verified quality, the changelog's released section, and the plan's `REL-05` line.
  - **Submission Scope**: Team submission.
  - **Deadline**: **October 31 at 23:59 (Saturday)**, with no soft deadline.

### Week 6: Oct 30 – Nov 5 (Analytics)

<!-- TODO pitch deck submitted this week -->

- **Class 6 (Oct 30)**:
  - **Lecture**: **Product & Software Analytics** (telemetry, event tracking, instrumentation, analytics architectures, data-driven decisions).
- **Submission 6 (Team Deliverables - Due Nov 7, 23:59)**:
  - **Deliverables**:
    1. **Analytics Integration**: Introduce and instrument analytics into the product codebase (event tracking, metrics collection, telemetry).
    2. **Active Data Collection**: Verification that analytics data collection is operational and recording product usage.
    3. **7-Minute Product Presentation Deck**: Pitch deck showcasing the product, discussing chosen technical approaches, and detailing roadmap plans for the rest of the course.
       > **To revise:** the deck is currently expected as a Moodle attachment rather than a repository artifact.
       > Confirm the submission channel and where, if anywhere, it is indexed from.
  - **Submission Scope**: Team submission.
  - **Deadline**: **November 7 at 23:59 (Saturday)**, with no soft deadline.

### Week 7: Nov 6 – Nov 12 (Usability Testing Preparation & In-Class Product Presentations)

- **Class 7 (Nov 6)**:
  - **Lecture**: **Usability Testing** (usability evaluation methodologies, test protocols, test task formulation, observer guidelines, qualitative/quantitative metrics, pre/post test survey design).
  - **In-Class Product Presentations**: Teams present a near-final version of their Week 6 pitch decks, pitching their product, explaining technical approaches selected, and sharing roadmap plans for the remainder of the course.
    The final deck is submitted with Submission 6 on November 7.
- **Submission 7 (Team Deliverables - Due Nov 14, 23:59)**:
  - **Deliverables**:
    1. **Pre-Test & Post-Test Surveys**: Structured survey instruments designed to capture participant background/expectations (pre-test) and feedback/system usability assessment (post-test).
    2. **Task Introduction & Facilitation Protocol**: Detailed written description of how testing tasks will be framed and introduced to participant users without biasing behavior.
    3. **Observation Recording Strategy**: Written methodology detailing how participant actions, friction points, verbal feedback, and task completion will be captured and recorded.
    4. **Analytics Telemetry Utilization**: Telemetry from the Week 6 analytics integration is utilized to complement observer notes with quantitative usage data.
  - **Submission Scope**: Team submission.
  - **Deadline**: **November 14 at 23:59 (Saturday)**, with no soft deadline.

### Week 8: Nov 13 – Nov 19 (Project Configuration Management)

- **Class 8 (Nov 13)**:
  - **Lecture**: **Project Configuration Management** (configuration identification, baseline control, environment configuration, dependency management, branching/release strategies, reproducible builds).
- **Submission 8 (Team Deliverables - Due Nov 21, 23:59)**:
  - **Deliverables**:
    1. **Evaluation of Existing CM Practices**: Comprehensive evaluation of current configuration management practices (source control workflows, environment variables, secrets handling, dependency pinning, and build/deploy automation).
    2. **Configuration Management Improvement Plan**: Actionable roadmap detailing planned improvements to configuration, tooling, and environment stability.
    3. **Implementation**: Enacted improvements within the codebase, configuration files, and CI/CD pipelines.
  - **Submission Scope**: Team submission.
  - **Deadline**: **November 21 at 23:59 (Saturday)**, with no soft deadline.

### Week 9: Nov 20 – Nov 26 (Project Pitching, Repository Finalization & Reflection)

- **Class 9 (Nov 20)**:
  - **Lecture**: **Project Presentation & Pitching** (narrative framing, structuring technical pitches, product demos, value articulation, slide craft, delivery techniques).
- **Development Milestone**:
  - **Repository Activity Conclusion**: Conclude all repository activities and resolve outstanding tasks (closing remaining issues/PRs, stabilizing the build, ensuring comprehensive documentation, and reaching final code freeze).
- **Submission 9 (Team Deliverables - Due Nov 28, 23:59)**:
  - **Deliverables**:
    1. **Final Project Presentation Deck**: Polished presentation deck pitching the completed product, architecture, technical highlights, and demo flow.
       > **To revise:** the same submission-channel question as the Week 6 deck above.
    2. **Usability Test Results & Findings Report**: Summary of usability tests conducted, participant observations, key friction points identified, and improvement actions taken or recommended.
    3. **Project Reflection Report**: Detailed retrospective reflecting on the team's engineering journey, technical choices, outcomes, quality goals achieved, lessons learned, and team dynamics.
    4. **Finalized Repository State**: Verified repository state with all planned implementation and upkeep tasks concluded.
  - **Submission Scope**: Team submission.
  - **Deadline**: **November 28 at 23:59 (Saturday)**, with no soft deadline.

### Week 10: Nov 27 – Dec 3 (Course Review & Final Exam Preparation)

- **Class 10 (Nov 27)**:
  - **Lecture**: **Course Review** (synthesizing core paradigms, architectural decisions, quality verification, configuration management, and retrospective lessons learned).
  - **Final Exam Preparation**: Teams rehearse demonstrations, finalize pitch timings, and prepare for the live examination.
  - _(No submission due)_.

### Week 11: Dec 4 – Dec 10 (Final Exam: Group Presentations of the Projects)

- **Class 11 (Dec 4) / Final Exam**:
  - **Final Exam Format**: **Group Presentations of the Projects**.
  - Project teams deliver comprehensive project presentations and live software demonstrations, including architectural defense, followed by formal Q&A.
  - Multi-perspective evaluation (instructor and peer grading).
  - Conclusion of the 11-week course lifecycle.
- **Submission 10 (Individual Deliverable - Due Dec 10, 23:59)**:
  - **Individual Reflection & Peer Evaluation**: Each student submits a personal reflection on their contributions to the project and a peer evaluation rating their teammates' contributions.
    This submission is available only if the group delivered the final presentation.
  - **Submission Scope**: Individual student submission.
    Both parts are private and go in the Moodle submission only; neither is a repository artifact.
    A peer evaluation rates named teammates, so it is never committed to the public repository.
  - **Deadline**: **December 10 at 23:59 (Wednesday)**.

---

## 4. Assessment & Submission Catalog

The course evaluation consists of **9 group submissions**, **1 individual reflection & peer evaluation**, and the **Final Exam**:

|   #    | Assessment Item      | Week       | Scope          | Deadline / Date | Primary Deliverables                                                                                                                                                                                                                                                                                                                                                                                                              | Grade Component  |
| :----: | :------------------- | :--------- | :------------- | :-------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :--------------: |
| **1**  | **Submission 1**     | Week 1     | **Group**      | Oct 1, 23:59    | **Initial Project Research** (alternatives search, pros & cons, gap analysis, value proposition), product repository setup, customer kickoff transcript                                                                                                                                                                                                                                                                           |    Group (7%)    |
| **2**  | **Submission 2**     | Week 2     | **Group**      | Oct 8, 23:59    | **Requirements & Prototyping** (product vision, user stories with acceptance criteria, issue tracking, prototypes, customer validation)                                                                                                                                                                                                                                                                                           |    Group (7%)    |
| **3**  | **Submission 3**     | Week 3     | **Group**      | Oct 15, 23:59   | **Plan & MUP** (project plan, threshold of success, risk register, minimum usable product, Definition of Done, `SPRINT-nn` GitHub milestones, `Responsible` and `Accountable` issue fields with matching assignees, public GitHub project, changelog, first SemVer tag, docs site, setup and run instructions)                                                                                                                    |    Group (7%)    |
| **4**  | **Submission 4**     | Week 4     | **Group**      | Oct 24, 23:59   | **Quality & Architecture** (sprint plan and estimates, quality requirements and their priority matrix, functional requirements, the architecture with its drivers and ADR index, the architectural decision records, the glossary, the team's `AGENTS.md`, the sprint retrospective, next product release `REL-04`)                                                                                                               |    Group (7%)    |
| **5**  | **Submission 5**     | Week 5     | **Group**      | Oct 31, 23:59   | **Verification & Deployment** (quality requirement tests and the testing plan, unit tests and CI checks, staging and production instances with `docs/deployment.md` — _live accessible means the customer reaches them from the university network at the VM's IPv4 address_ — at least two milestones and two new stories, Feature Documentation in `docs/features.md`, the sprint retrospective, next product release `REL-05`) |    Group (7%)    |
| **6**  | **Submission 6**     | Week 6     | **Group**      | Nov 7, 23:59    | **Product Analytics** (analytics instrumentation and active event/telemetry collection)                                                                                                                                                                                                                                                                                                                                           |    Group (7%)    |
| **7**  | **Submission 7**     | Week 7     | **Group**      | Nov 14, 23:59   | **Usability Testing** (pre/post-test surveys, task facilitation protocol, observation recording strategy)                                                                                                                                                                                                                                                                                                                         |    Group (7%)    |
| **8**  | **Submission 8**     | Week 8     | **Group**      | Nov 21, 23:59   | **Configuration Management** (evaluation of CM practices, improvement plan, and implementation)                                                                                                                                                                                                                                                                                                                                   |    Group (7%)    |
| **9**  | **Submission 9**     | Week 9     | **Group**      | Nov 28, 23:59   | **Final Project Submission** (final presentation deck, usability test results & findings, project reflection report, repository code freeze)                                                                                                                                                                                                                                                                                      |    Group (7%)    |
| **—**  | _Review Class_       | Week 10    | _Cohort_       | Nov 27 in class | Course retrospective and final exam demo preparation _(no submission due)_                                                                                                                                                                                                                                                                                                                                                        |        —         |
| **—**  | **Class Attendance** | Weeks 1–11 | **Individual** | Ongoing         | Active in-class presence and collaboration across all weekly class sessions                                                                                                                                                                                                                                                                                                                                                       | Individual (10%) |
| **10** | **Final Exam**       | Week 11    | **Group**      | Dec 4 in class  | **Group Project Presentations** (live software demos, architectural defense, peer evaluation)                                                                                                                                                                                                                                                                                                                                     | Final Exam (20%) |
| **11** | **Submission 10**    | Week 11    | **Individual** | Dec 10, 23:59   | **Individual Reflection & Peer Evaluation** (personal reflection on contributions, peer evaluation of teammates) — _available only if the group delivered the final presentation_                                                                                                                                                                                                                                                 | Individual (7%)  |

### Assessment Counts & Components

- **Group Submissions & Repo**: **9 milestones** at **7% each** = **63% total** (Submissions 1 through 9 + active repository updates)
- **Individual Class Attendance**: **10% total** (active in-person presence and (optional) active participation across all weekly class sessions)
- **Individual Reflection & Peer Evaluation**: **7% total** (individual submission available only if the group delivered the final presentation)
- **Final Exam**: **1 milestone** = **20% total** (Group Project Presentations and live software demonstration in Week 11)
- **Total Course Evaluation**: **100% total grade weight** ($63\% + 10\% + 7\% + 20\% = 100\%$)

> [!NOTE]
> Group submissions and repository updates account for **63% of the course grade in total**, distributed evenly across all 9 group milestones (**7% per milestone**, $9 \times 7\% = 63\%$).
> Together with **10% for individual class attendance**, **7% for individual reflection & peer evaluation**, and **20% for the Final Exam**, the total course evaluation is **100%** ($63\% + 10\% + 7\% + 20\% = 100\%$).

---

## 5. Grading Policy & Evaluation Scheme

The course is assessed on a **Pass / Fail** basis:

- **Grading Type**: **Pass / Fail**
- **Passing Threshold**: **75%** overall course score
  - Cumulative Score $\ge 75\%$: **PASS**
  - Cumulative Score $< 75\%$: **FAIL**

### Grade Weight Breakdown

| Component                                   |             Weight             | Assessment Items             | Evaluation Focus                                                                                                                                                               |
| :------------------------------------------ | :----------------------------: | :--------------------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Group Submissions & Repository Updates**  | **63% total** ($9 \times 7\%$) | Submissions 1–9 & Repository | Cumulative milestone deliverables (7% per assignment), regular code commits, automated tests, CI/CD, documentation, and sustained repository activity across all 9 milestones. |
| **Individual Class Attendance**             |            **10%**             | Weekly Classes (1–11)        | Active individual presence, engagement in lectures, and peer discussions throughout the 11-week semester.                                                                      |
| **Individual Reflection & Peer Evaluation** |             **7%**             | Submission 10 (Week 11)      | Personal reflection on individual contributions and peer evaluation of teammates. Available only if the group delivered the final presentation.                                |
| **Final Exam**                              |            **20%**             | Week 11 Presentations        | Live software demonstration, architectural defense, quality attribute validation, delivery poise, and Q&A responses.                                                           |
| **Total**                                   |            **100%**            | All Course Components        | Complete course evaluation (Pass threshold: 75%).                                                                                                                              |

---

## 6. Course Policies

### Late Submission Policy

Late submissions incur a **10% grade deduction per calendar day** past the hard deadline.
For example, a submission worth 7% receives a maximum of 6.3% if one day late (after Saturday, 23:59), 5.6% if two days late, and so on.
Submissions more than 7 days late receive zero credit.

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
