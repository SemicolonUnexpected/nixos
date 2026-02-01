{ ... }: {
  services.pipewire.enable = true;
  services.pipewire.pulse.enable = true;
  services.pipewire.alsa.enable = true;

  services.openssh.enable = true;

  services.syncthing = {
    enable = true;
    user = "mgrac";
    dataDir = "/home/mgrac";
    configDir = "/home/mgrac/.config/syncthing";
    openDefaultPorts = true;
  };
}
