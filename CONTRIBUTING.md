# Contributing

This file is for the course maintainers.
Students start at [README.md](README.md).

## Prerequisites

- Required: [Nix](https://nixos.org/download/) with flakes enabled.
- Recommended: [direnv](https://direnv.net/) with [nix-direnv](https://github.com/nix-community/nix-direnv), so the shell loads on entering the directory.
- Optional: VS Code with the extensions recommended in [.vscode/extensions.json](.vscode/extensions.json).

Nothing else is installed by hand.
[flake.nix](flake.nix) pins Node 26, pnpm, Typst, the deck font, the `backlog` CLI, lychee, and ripgrep.
A shell outside Nix is not supported, because `pnpm run check:lectures` compares bytes that depend on the pinned font.

## Setup

```sh
direnv allow   # or: nix develop
pnpm install
```

## Before A Pull Request

Format the Markdown, then run the checks that CI runs:

```sh
pnpm run format:markdown
pnpm run format:markdown:check
pnpm run lint:markdown
pnpm run test:markdown-format
pnpm run test:markdown-rules
pnpm run check:lectures
pnpm run check:links   # needs network
```

Fill in [the pull request template](.github/pull_request_template.md).
Commit messages follow [the `commit-itpd` skill](.agents/skills/commit-itpd/SKILL.md).
What each file and check owns is in [AGENTS.md](AGENTS.md#tooling).

## Work Tracking

The open work is Backlog tasks, managed through the `backlog` CLI; see [Work Tracking](AGENTS.md#work-tracking).

## Repository Settings

An admin sets these once:

- Required: under Settings → Actions → General → Workflow permissions, choose read-only default permissions and allow GitHub Actions to create and approve pull requests, first in the organization and then in the repository.
  An organization owner sets them for the organization, because until then the repository's checkbox is greyed out, and a read-only organization default also keeps every repository read-only.
  A repository admin then sets them for the repository.
  Read-only is enough, because every workflow here declares its own `permissions:`, and a declared permission can grant write access above the default.
  Without it, [the Backlog cleanup workflow](.github/workflows/backlog-cleanup.yml) cannot open its pull request when it falls back to `GITHUB_TOKEN`.
- Recommended: an Actions secret `BACKLOG_CLEANUP_TOKEN`, holding a fine-grained token for this repository with read and write access to Contents and Pull requests.
  A pull request opened with the default `GITHUB_TOKEN` starts no workflows, so without the secret CI does not run on the cleanup pull request.
