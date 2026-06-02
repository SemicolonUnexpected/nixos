{ pkgs, ... }:
{
  programs.nvf = {
    enable = true;

    settings = {
      vim = {
        # Options
        options = {
          wrap = false;
          list = true;
          listchars = "tab:» ,trail:·,nbsp:␣,extends:→,precedes:←";
        };

        # Mappings
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

        # LSP
        autocomplete.nvim-cmp.enable = true;

        lsp = {
          enable = true;
          mappings = {
            codeAction = "<leader>ca";
            format = "<leader>f";
            goToDeclaration = "gD";
            goToDefinition = "gd";
            listReferences = "gr";
            renameSymbol = "<leader>rn";
          };
        };

        languages = {
          enableFormat = true;
          enableTreesitter = true;
          enableExtraDiagnostics = true;

          nix.enable = true;
          clang.enable = true;
          typst.enable = true;
          lua.enable = true;
          bash.enable = true;
        };

        # Navigation
        telescope = {
          enable = true;
          mappings.findFiles = "<C-f>";
          mappings.liveGrep = "<C-s>";
        };

        utility.sleuth.enable = true;
        utility.oil-nvim.enable = true;

        # Theming
        theme.enable = false;

        extraPlugins = {
          nightfly = {
            package = pkgs.vimPlugins.nightfly;
            setup = "vim.cmd('colorscheme nightfly')";
          };
        };

      };
    };
  };
}
