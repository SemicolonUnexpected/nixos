{...}: {
  imports = [
    ./hardware-configuration.nix
    ./desktop.nix
    ./services.nix
    ./packages.nix
    ./dotfiles.nix
    ./editor
  ];

  networking.hostName = "laptop";
}
