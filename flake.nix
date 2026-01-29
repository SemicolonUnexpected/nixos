{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    hjem = {
      url = "github:feel-co/hjem";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, hjem, ... }:
    let system = "x86_64-linux";
    in {
      nixosConfigurations."laptop" = nixpkgs.lib.nixosSystem {
        inherit system;

        modules = [
          ./modules/base.nix
          ./modules/users.nix
          ./modules/packages.nix

          ./hosts/laptop

          hjem.nixosModules.default
        ];
      };
    };
}
