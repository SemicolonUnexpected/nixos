{ pkgs, ... }:

{
   environment.systemPackages = with pkgs; [
     python3
     gcc
     cmake
     go
     tmux
     starship
     gnumake
     lua
     nodejs
     fastfetch
   ];
}

