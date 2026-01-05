{ pkgs, ... }:

{
   environment.systemPackages = with pkgs; [
     alacritty
     firefox
     grim
     slurp
     mako
     brightnessctl
     wl-clipboard
   ];
}
