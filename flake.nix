{
  description = "Nix flake for comview - terminal commit review tool";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachSystem
      [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ]
      (
        system:
        let
          pkgs = import nixpkgs { inherit system; };
          comview = pkgs.callPackage ./package.nix { };
        in
        {
          packages = {
            inherit comview;
            default = comview;
          };

          apps = {
            comview = {
              type = "app";
              program = "${comview}/bin/comview";
            };
            default = self.apps.${system}.comview;
          };

          devShells.default = pkgs.mkShellNoCC {
            packages = [ comview ];
          };
        }
      );
}
