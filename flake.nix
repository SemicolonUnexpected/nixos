{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    hjem = {
      url = "github:feel-co/hjem";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hjem-impure = {
      url = "github:Rexcrazy804/hjem-impure";

      # Disable internal tests
      inputs.nixpkgs.follows = "";
      inputs.hjem.follows = "";
    };
  };

  outputs =
    { self, nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations.laptop = nixpkgs.lib.nixosSystem {
        inherit system;

        specialArgs = { inherit inputs; };

        modules = [
          ./hosts/laptop
          ./modules/base.nix
          ./modules/users.nix
          ./modules/packages.nix

          # Tell the flake how to handle hjem
          inputs.hjem.nixosModules.default
        ];
      };
    };
}
