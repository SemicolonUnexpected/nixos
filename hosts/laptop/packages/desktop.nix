{ pkgs, ... }:

{
   environment.systemPackages = with pkgs; [
     hyprpaper
     hyprlock
     alacritty
     firefox
     grim
     slurp
     mako
     brightnessctl
     wl-clipboard
   ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    nerd-fonts.jetbrains-mono
  ];
}
