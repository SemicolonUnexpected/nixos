{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    #hyprland.url = "github:hyprwm/Hyprland";
    #hyprland.inputs.nixpkgs.follows = "nixpkgs";
    #
    #hyprland-plugins.url = "github:hyprwm/hyprland-plugins";
    #hyprland-plugins.inputs.hyprland.follows = "hyprland";
    #
    #hypridle.url = "github:hyprwm/hypridle";
    #hypridle.inputs.nixpkgs.follows = "nixpkgs";
    #hypridle.inputs.hyprutils.follows = "hyprland/hyprutils";
    #hypridle.inputs.hyprland-protocols.follows = "hyprland/hyprland-protocols";
    #hypridle.inputs.hyprlang.follows = "hyprland/hyprlang";
    #hypridle.inputs.hyprwayland-scanner.follows = "hyprland/hyprwayland-scanner";
    #
    #hyprlock.url = "github:hyprwm/hyprlock";
    #hyprlock.inputs.nixpkgs.follows = "nixpkgs";
    #hyprlock.inputs.hyprutils.follows = "hyprland/hyprutils";
    #hyprlock.inputs.hyprgraphics.follows = "hyprland/hyprgraphics";
    #hyprlock.inputs.hyprlang.follows = "hyprland/hyprlang";
    #hyprlock.inputs.hyprwayland-scanner.follows = "hyprland/hyprwayland-scanner";
    #
    #hyprpolkitagent.url = "github:hyprwm/hyprpolkitagent";
    #hyprpolkitagent.inputs.nixpkgs.follows = "nixpkgs";
    #hyprpolkitagent.inputs.hyprutils.follows = "hyprland/hyprutils";
    #
    #hyprpaper.url = "github:hyprwm/hyprpaper";
    #hyprpaper.inputs.nixpkgs.follows = "nixpkgs";
    #hyprpaper.inputs.hyprutils.follows = "hyprland/hyprutils";
    #hyprpaper.inputs.hyprgraphics.follows = "hyprland/hyprgraphics";
    #hyprpaper.inputs.hyprlang.follows = "hyprland/hyprlang";
    #hyprpaper.inputs.hyprwayland-scanner.follows = "hyprland/hyprwayland-scanner";
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
