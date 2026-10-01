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
        let
          # The decks ask Typst for Liberation Sans, and the bytes a deck check
          # compares depend on the font file it resolves. The host fonts and
          # whatever a CI runner image installs are not inputs this repository
          # controls, so the shell pins the font from the same nixpkgs as the
          # rest of the toolchain.
          deckFont = pkgs.liberation_ttf;

          # A hand-written conf rather than pkgs.makeFontsConf: that one is
          # additive and keeps the system font directories, so the host fonts
          # would still win. This one lists a single directory.
          fontconfigConf = pkgs.writeText "fontconfig.xml" ''
            <?xml version="1.0"?>
            <!DOCTYPE fontconfig SYSTEM "urn:fontconfig:fonts.dtd">
            <fontconfig>
              <dir>${deckFont}</dir>
              <cachedir>~/.cache/fontconfig</cachedir>
            </fontconfig>
          '';
        in
        {
          devShells.default = pkgs.mkShell {
            packages = [
              pkgs.nodejs_26
              pkgs.pnpm
              pkgs.typst
              deckFont
              inputs.backlog-md.packages.${system}.default
              pkgs.ripgrep
            ];
            shellHook = ''
              export BACKLOG_CWD="$PWD"
              export FONTCONFIG_FILE="${fontconfigConf}"
            '';
          };
        };
    };
}
