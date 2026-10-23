{...}: {
  imports = [
    ./lsp.nix
    ./core.nix
    ./remap.nix
    ./plugins
  ];

  programs.nvf.enable = true;
}
