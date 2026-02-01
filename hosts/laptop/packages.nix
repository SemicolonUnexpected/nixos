{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    git
    neovim
    wget
    curl

    unzip
    tree
  ];
}
