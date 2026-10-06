{pkgs, ...}: {
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
        searchCase = "smart";

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

          {
            key = "<leader>f";
            mode = "n";
            action = ":lua require('conform').format({fallback = 'lsp_format'})";
            silent = true;
            desc = "Format the current buffer";
          }
        ];

        # LSP
        autocomplete.blink-cmp.friendly-snippets.enable = true;

        lsp = {
          enable = true;
          mappings = {
            codeAction = "<leader>ca";
            goToDeclaration = "gD";
            goToDefinition = "gd";
            listReferences = "gr";
            renameSymbol = "<leader>rn";
          };
        };

        formatter.conform-nvim = {
          enable = true;
          setupOpts.format_on_save = {
            lsp_format = "fallback";
            timeout_ms = 500;
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
          python.enable = true;
          dart.enable = true;
          java.enable = true;
        };

        # Navigation
        telescope = {
          enable = true;
          mappings.findFiles = "<C-f>";
          mappings.liveGrep = "<C-s>";
        };

        utility.sleuth.enable = true;

        utility.oil-nvim = {
          enable = true;

          setupOpts = {
            columns = [
              "permissions"
            ];
          };
        };

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
