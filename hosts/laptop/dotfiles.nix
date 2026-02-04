{ ... }:
{
  hjem.users.mgrac = {
    directory = "/home/mgrac/";
    files = {
      ".config/mako".source = ../../dotfiles/.config/mako;
      ".gitignore".source = ../../dotfiles/.gitconfig;
    };
  };
}
