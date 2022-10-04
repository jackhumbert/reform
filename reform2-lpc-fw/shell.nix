{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell { buildInputs = with pkgs; [ stdenv gcc-arm-embedded ]; }
