{ pkgs, ... }:

{
   environment.systemPackages = with pkgs; [
     python3
     gcc
     clang
     clang-tools
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

