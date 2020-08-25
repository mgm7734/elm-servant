let
  pkgs = import <nixpkgs> {};
in
pkgs.haskellPackages.callPackage ./myproj.nix {}
