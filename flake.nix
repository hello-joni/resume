{
  description = "Joni Hendrickson's resume";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      systems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      forAllSystems = f: nixpkgs.lib.genAttrs systems (system: f system);
    in {
      apps = forAllSystems (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
          python = pkgs.python313.withPackages (p: [
            p.markdown
            p.pymupdf
            p.pyspellchecker
          ]);
        in {
          default = {
            type = "app";
            program = toString (pkgs.writeShellScript "build-resume" ''
              exec ${python}/bin/python ${self}/generator.py "$@"
            '');
          };
        });
    };
}
