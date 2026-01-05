{ ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./desktop.nix
    ./services.nix

    ./packages/base.nix
    ./packages/dev.nix
    ./packages/desktop.nix
  ];

  networking.hostName = "laptop";
}
