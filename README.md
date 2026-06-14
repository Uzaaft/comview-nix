# comview-nix

Nix flake for [comview](https://github.com/rockorager/comview), a terminal commit review tool.

## Usage

```sh
nix run github:Uzaaft/comview-nix
```

## Add to your flake

Add `comview-nix` as an input:

```nix
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    comview-nix.url = "github:Uzaaft/comview-nix";
  };
}
```

Then reference the package for your system:

```nix
{ inputs, system, pkgs, ... }:
{
  environment.systemPackages = [
    inputs.comview-nix.packages.${system}.default
  ];
}
```

## Build

```sh
nix build
```
