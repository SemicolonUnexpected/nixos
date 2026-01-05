{ pkgs, ... }:

{
  programs.hyprland.enable = true;

  services.greetd = {
    enable = true;

    settings.default_session = {
      command = "${pkgs.hyprland}/bin/Hyprland";
      user = "mgrac";
    };
  };

  environment.sessionVariables = {
    XDG_CURRENT_DESKTOP = "Hyprland";
    XDG_SESSION_TYPE = "wayland";
    NIXOS_OZONE_WL = 1;
  };
}
