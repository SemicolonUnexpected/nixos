{ pkgs, ... }:
{
  programs.hyprland.enable = true;

  hjem.users.mgrac.packages =
    with pkgs;
    [
      hyprpaper
      hyprlock
      hypridle
      hyprcursor
      hyprpolkitagent
      wl-clipboard
      whitesur-cursors

      alacritty
      gimp
      inkscape
      logseq
      firefox
      docker

      mako
      libnotify
      brightnessctl
      bluez
      tofi
      grim
      slurp

      tmux
      starship
      fastfetch
      htop

      openssh
      sshfs
    ]
    ++ (import ./editor.nix { inherit pkgs; });

  fonts.packages = with pkgs; [
    jetbrains-mono
    nerd-fonts.jetbrains-mono
    carlito
  ];

  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  programs.dconf.profiles.user.databases = [
    {
      settings."org/gnome/desktop/interface" = {
        gtk-theme = "Adwaita";
        icon-theme = "Flat-Remix-Red-Dark";
        font-name = "Noto Sans Medium 11";
        document-font-name = "Noto Sans Medium 11";
        monospace-font-name = "Noto Sans Mono Medium 11";
      };
    }
  ];

  swapDevices = [
    {
      device = "/var/lib/swapfile";
      size = 16 * 1024; # 16GB swap file
    }
  ];
}
