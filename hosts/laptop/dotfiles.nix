{ inputs, ... }:
{
  hjem.extraModules = [ inputs.hjem-impure.hjemModules.default ];
  # enable hjem-impure
  hjem.users.mgrac.impure.enable = true;

  hjem.users.mgrac = {
    directory = "/home/mgrac/";
    files = {
      ".config/mako".source = ../../dotfiles/.config/mako;
      # ".gitignore".source = ../../dotfiles/.gitconfig;
    };
  };
}
