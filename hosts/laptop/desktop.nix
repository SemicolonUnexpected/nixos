{ pkgs, ... }: {
  programs.hyprland.enable = true;

  hjem.users.mgrac.packages = with pkgs; [
    hyprpaper
    hyprlock
    hypridle
    hyprcursor
    # hyprshutdown
    hyprpolkitagent

    alacritty
    firefox
    grim
    slurp
    mako
    brightnessctl
    wl-clipboard
    tofi
    whitesur-cursors

    gimp
    inkscape
    logseq

    python3
    gcc
    clang
    clang-tools
    cmake
    fzf
    go
    tmux
    starship
    gnumake
    lua
    nodejs
    fastfetch
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    nerd-fonts.jetbrains-mono
    carlito
  ];

  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  programs.dconf.profiles.user.databases = [{
    settings."org/gnome/desktop/interface" = {
      gtk-theme = "Adwaita";
      icon-theme = "Flat-Remix-Red-Dark";
      font-name = "Noto Sans Medium 11";
      document-font-name = "Noto Sans Medium 11";
      monospace-font-name = "Noto Sans Mono Medium 11";
    };
  }];
}
