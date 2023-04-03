{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.11";
  };
  outputs = { nixpkgs, self, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      devShells.${system}.default = import ./shell.nix { inherit pkgs; };
      packages.${system} = {
        nixInstaller = pkgs.writeScriptBin "nixInstaller" ./scripts/install.sh;
        dcnixd = pkgs.writeScriptBin "dcnixd" ''
          dconf dump / | dconf2nix > dconf.nix
        '';
        editor = pkgs.writeScriptBin "editor" ''
          #!/usr/bin/env zsh
          zellij -l ./default.nix
        '';
        };
    };
}
