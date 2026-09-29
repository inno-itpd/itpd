{
  description = "ITPD course materials development shell";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/79b35bf0bda5cd110f856aa5b5b2c5ba4460dbf5";
    systems.url = "github:nix-systems/default/future-26.11";
    flake-parts = {
      url = "github:hercules-ci/flake-parts/17c9d6cdfc60c64f4ee8d306f9bc0b4ccb51481e";
      inputs.nixpkgs-lib.url = "github:nix-community/nixpkgs.lib";
    };
    backlog-md.url = "github:time-tools/Backlog.md/aded8e254e6a0205b878cf07e631d1a592782040";
  };

  outputs = inputs@{ flake-parts, systems, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = import systems;

      perSystem = { pkgs, system, ... }:
        {
          devShells.default = pkgs.mkShell {
            packages = [
              pkgs.nodejs_26
              pkgs.pnpm
              pkgs.typst
              inputs.backlog-md.packages.${system}.default
              pkgs.ripgrep
            ];
            shellHook = ''
              export BACKLOG_CWD="$PWD"
            '';
          };
        };
    };
}
