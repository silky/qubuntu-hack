{ pkgs ? import <nixpkgs> {} }:
let
  build = pkgs.writeShellScriptBin "build" ''
    set -ex
    elm make src/Main.elm  --output public/js/Main.js
    '';
in
pkgs.stdenv.mkDerivation {
  name = "qubuntu-hack";
  buildInputs = [ 
    pkgs.nodePackages.uglify-js
    pkgs.elmPackages.elm 
    build
  ];
}
