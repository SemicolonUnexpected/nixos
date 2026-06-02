{ ... }:
{
  hjem.users.mgrac = {
    directory = "/home/mgrac/";
    files = {
      ".config/mako".source = ../../dotfiles/.config/mako;
      ".config/alacritty".source = ../../dotfiles/.config/alacritty;
      ".config/hypr".source = ../../dotfiles/.config/hypr;
      ".config/wallpapers".source = ../../dotfiles/.config/wallpapers;
      # ".config/nvim".source = ../../dotfiles/.config/nvim;
      ".config/tmux".source = ../../dotfiles/.config/tmux;
      ".config/tofi".source = ../../dotfiles/.config/tofi;
      ".config/git".source = ../../dotfiles/.config/git;
      ".config/starship.toml".source = ../../dotfiles/.config/starship.toml;

      ".bashrc".source = ../../dotfiles/.bashrc;
      ".bash_profile".source = ../../dotfiles/.bash_profile;
      ".bash_logout".source = ../../dotfiles/.bash_logout;
    };
  };
}
