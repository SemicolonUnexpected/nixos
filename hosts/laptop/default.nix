{ ... }: {
  imports = [
    ./hardware-configuration.nix
    ./desktop.nix
    ./services.nix
    ./packages.nix
  ];

  networking.hostName = "laptop";
}
