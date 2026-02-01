{ pkgs, ... }: {
  # List packages installed in system profile.
  # You can use https://search.nixos.org/ to find more packages (and options).
  environment.systemPackages = with pkgs; [ neovim wget git tmux ];

  environment.variables.EDITOR = "nvim";
  environment.variables.VISUAL = "nvim";
}
