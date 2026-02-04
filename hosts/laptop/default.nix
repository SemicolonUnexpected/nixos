{ ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./desktop.nix
    ./services.nix
    ./packages.nix
    ./dotfiles.nix
  ];

  networking.hostName = "laptop";
}
