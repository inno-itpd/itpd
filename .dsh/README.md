# DSH patch overlay

`.dsh/cordis.patch.yml` is a `dsh` overlay that registers the Backlog MCP server as `mcp__backlog__*`.
`dsh` does not discover this file on its own, so pass it explicitly when launching from the checkout root:

```sh
dsh --patch .dsh/cordis.patch.yml --profile web --port 0 --no-open
```

`--patch` is a launcher flag, so it must come before any app argument.
`dsh web` is shorthand for `dsh --profile web`, and the launcher accepts launcher flags after the profile name.
Use the same form for another app, for example `dsh headless --patch .dsh/cordis.patch.yml "run the tests"`.
Launching `dsh` without the flag boots the profile without the MCP server.
When launching from another directory, pass an absolute path instead of the checkout-relative one.

Overlays are read at launch, so restart `dsh` after editing `.dsh/cordis.patch.yml`; configuration HMR does not watch them.
`dsh plugin` and `--dump-default-config` reject launcher overlays, so omit `--patch` for those invocations.

The `backlog` binary comes from the [development shell](../flake.nix).
`.envrc` keeps the npm cache and `XDG_CACHE_HOME` under `.local/`, because the DSH workspace sandbox mounts `$HOME` read-only and `backlog` fails to start when it cannot write its Bun cache.
The overlay therefore only works from a shell where `.envrc` has run: run `direnv allow` after changing it, and relaunch `dsh` so the MCP server inherits the new environment.
To add another MCP server, append an entry to the `insert` list in `.dsh/cordis.patch.yml` with a unique `serverName`, then relaunch with the flag.
