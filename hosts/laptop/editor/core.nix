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
