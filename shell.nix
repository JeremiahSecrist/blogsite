{ pkgs ? import <nixpkgs> { } }:
with pkgs;
mkShell {
  buildInputs = [
    nixpkgs-fmt
    wl-clipboard
    gitui
    pandoc
    texlive.combined.scheme-small
    helix
    broot
    zsh
    zellij
    nodejs-18_x
    yarn  
  ];

  shellHook = ''   
    '';
}
