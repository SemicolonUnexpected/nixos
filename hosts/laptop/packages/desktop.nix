{ pkgs, ... }:

{
   environment.systemPackages = with pkgs; [
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
   ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    nerd-fonts.jetbrains-mono
    carlito
  ];
}
