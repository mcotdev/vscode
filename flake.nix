{
  description = "VSCode flake";
  
  inputs.nixpkgs.url = "nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      system = "aarch64-linux"; 
      pkgs = import nixpkgs { inherit system; };
    in
    {
      apps = {
        vscode = {
          type = "app";
          program = "${pkgs.vscode}/bin/code";
        };
      };
    };
}
