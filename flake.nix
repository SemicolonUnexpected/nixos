{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs } :
    let
      system = "x86_64-linux";

      mkHost = name:
        nixpkgs.lib.nixosSystem {
          inherit system;

          modules = [
            ./modules/base.nix
            ./modules/users.nix
            ./modules/packages.nix

            ./hosts/${name}
          ];
        };

      hosts = builtins.attrNames(builtins.readDir ./hosts);
  in {
    nixosConfigurations = nixpkgs.lib.genAttrs hosts mkHost;
  };
}
