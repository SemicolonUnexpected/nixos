_: {
  services = {
    # services.hypridle.enable = true;

    pipewire = {
      enable = true;
      pulse.enable = true;
      alsa.enable = true;
    };

    blueman.enable = true;

    openssh.enable = true;

    syncthing = {
      enable = true;
      user = "mgrac";
      dataDir = "/home/mgrac";
      configDir = "/home/mgrac/.config/syncthing";
      openDefaultPorts = true;
    };
  };

  virtualisation.podman = {
    enable = true;
    dockerCompat = true; # Creates a symlink from docker to podman
    defaultNetwork.settings.dns_enabled = true; # Required for containers under podman-compose to be able to talk to each other.
  };
}
