{...}: {
  imports = [
    ./lsp.nix
    ./core.nix
    ./remap.nix
  ];

  programs.nvf.enable = true;
}
