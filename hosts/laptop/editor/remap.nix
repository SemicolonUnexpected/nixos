_: {
  programs.nvf.settings = {
    vendoredKeymaps.enable = false;

    keymaps = [
      {
        key = "<Space>";
        mode = [
          "n"
          "v"
        ];
        action = "<Nop>";
        silent = true;
      }

      {
        key = "K";
        mode = "v";
        action = ":m '<-2<CR>gv=gv";
        silent = true;
        desc = "Move selection up";
      }

      {
        key = "J";
        mode = "v";
        action = ":m '>+1<CR>gv=gv";
        silent = true;
        desc = "Move selection down";
      }

      {
        key = "<leader>e";
        mode = "n";
        action = ":Oil<CR>";
        silent = true;
        desc = "Open Oil file manager";
      }
    ];
  };
}
