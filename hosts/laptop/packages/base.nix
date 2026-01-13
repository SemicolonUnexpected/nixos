{ pkgs, ... }:

{
   environment.systemPackages = with pkgs; [
     git
     neovim
     stow
     curl
     wget
     ripgrep
     unzip
     btop
     fzf
     tree
   ];
}
