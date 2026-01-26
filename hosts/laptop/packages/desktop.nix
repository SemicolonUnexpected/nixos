{ pkgs, ... }:

{
   environment.systemPackages = with pkgs; [
     hyprpaper
     hyprlock
     hypridle
     alacritty
     firefox
     grim
     slurp
     mako
     brightnessctl
     wl-clipboard
     tofi

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
