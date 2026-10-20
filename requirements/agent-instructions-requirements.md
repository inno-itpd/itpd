# Agent Instructions Requirements

These requirements define the team's own `AGENTS.md`: where it lives and what it states to a coding agent.
The file is the team's account of how its own repository works, not a second copy of the course requirements.
The course repository's own `AGENTS.md` is written for the maintainers, and yours describes your own repository.
How the course materials are installed as an agent skill is in [The Course Materials As An Agent Skill](repository-requirements.md#the-course-materials-as-an-agent-skill), and where repository content belongs is in [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository).

<h2>Table of contents</h2>

- [Where The Instructions Live](#where-the-instructions-live)
- [What It States](#what-it-states)
- [Full Example](#full-example)

## Where The Instructions Live

**Since: W4**

From Week 4 the repository root carries `AGENTS.md`.
It is repository content rather than an artifact, per [Where Artifacts Live In The Repository](general-requirements.md#where-artifacts-live-in-the-repository), and the course requires it all the same.
The team's instructions and the agent skill are two different files: [The Course Materials As An Agent Skill](repository-requirements.md#the-course-materials-as-an-agent-skill) owns the installation of the course materials, and this file owns the team's own `AGENTS.md`.

**Required**

1. The team's instructions are `AGENTS.md` in the repository root, named exactly that, because it is the file an agent looks for before it reads anything else.
2. The file is the team's own: it states how this repository works, and it links the course requirements it depends on rather than copying them.
3. When the repository's layout, checks, conventions, or off-limits files change, the file changes in the same pull request, so an agent never reads a description of a repository that no longer exists.

**Recommended**

- Keep it short enough to read in one pass: an agent that skips a long file has read none of it.
- Write it for a reader who has just cloned the repository: paths from the root, no local shorthand, and no history.

## What It States

**Since: W4**

`AGENTS.md` is written for whoever edits the repository next, often an agent that knows the course but not this codebase, so it states what that reader cannot infer from the code.

**Required**

1. It states four things, each in a section of its own:

   - The **repository layout**: what each directory holds and where a new file goes, so an agent does not invent a path.
   - The **checks**: how to run each check the repository has, by the command a member runs locally or the workflow that runs it in CI.
     The checks the course requires are in [Continuous Integration](repository-requirements.md#continuous-integration) and [Link Checking](repository-requirements.md#link-checking).
   - The **conventions**: the commit message format, the branch naming, and the code style the team follows, written where an agent needs them and also recorded for members in `CONTRIBUTING.md`, per [Contributing](repository-requirements.md#contributing).
   - The **files an agent must not edit**: each one by path, with the condition under which a member makes the edit instead.

2. It links the course repository's `SKILL.md` by its GitHub URL, `https://github.com/inno-itpd/itpd/blob/main/SKILL.md`, once, as the router to the course requirements.
   Use the URL rather than a relative path, because the skill's directory depends on the agent.
3. It maps no artifact path to a requirements file.
   The router already holds that mapping, and a second copy goes stale.

**Recommended**

- Say why an off-limits file is off limits, beside the file, so an agent can tell when its change is the exception rather than a violation.
- Name a check by the command that runs it locally, and note the workflow that runs it in CI, so an agent can reproduce a failure.

## Full Example

The meeting-booking example, as a team of three writes its root `AGENTS.md` in Week 4:

```markdown
# Agent Instructions

The course requirements are routed from [`SKILL.md`](https://github.com/inno-itpd/itpd/blob/main/SKILL.md); read the rule before you change anything it checks.

## Layout

- `docs/` holds the maintained artifacts: the vision, the plan, the requirements, the decisions, and the glossary.
- `reports/week-NN/` holds each week's evidence, and is not rewritten after its week.
- `src/frontend/` and `src/backend/` are the product, and `src/backend/payments/` is the module the testability quality requirement names.
- `.github/` holds the workflows and the issue forms.

## Checks

- `pnpm run lint:markdown` is the Markdown check; run it before you push, and CI runs it again.
- `lychee .` is the link check; it fetches external links, so it needs the network.
- `pnpm run test` and `pnpm run build` are the product checks, and CI runs all four.

## Conventions

- Commit messages follow Conventional Commits: `type(scope): summary`, in the imperative.
- Branch names are `<issue-number>-<slug>`, such as `42-hold-a-slot-while-the-client-pays`.
- TypeScript is strict, Prettier formats, and a review comment that is only a preference is marked as one.

## Do Not Edit

- `CHANGELOG.md` is edited only when a release is cut; during a sprint a change adds its line to `[Unreleased]` and touches nothing else.
- `docs/decisions.md` is edited only by the member accountable for the decision.
- `.github/workflows/` is edited in its own pull request, so a broken gate cannot hide inside a feature change.
```
