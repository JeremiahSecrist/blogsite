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
          zellij --config-dir .config/zellij
        '';
        xprtrsm = pkgs.writeScriptBin "xprtrsm" ''
          pandoc ./src/pages/resume.md -o ./public/Jeremiah_Secrist_Resume.pdf
        '';        
        };
    };
}
