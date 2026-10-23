_: {
  programs.nvf.settings.vim = {
    utility.oil-nvim = {
      enable = true;

      setupOpts = {
        default_file_explorer = true;

        columns = [
          "icon"
          "permissions"
          "size"
          # "mtime"
        ];

        buf_options = {
          buflisted = false;
          bufhidden = "hide";
        };

        win_options = {
          wrap = false;
          signcolumn = "no";
          cursorcolumn = false;
          foldcolumn = "0";
          spell = false;
          list = false;
          conceallevel = 3;
          concealcursor = "nvic";
        };

        delete_to_trash = false;
        skip_confirm_for_simple_edits = false;
        prompt_save_on_select_new_entry = true;
        cleanup_delay_ms = 2000;

        lsp_file_methods = {
          enabled = true;
          timeout_ms = 1000;
          autosave_changes = false;
        };

        constrain_cursor = "editable";

        watch_for_changes = false;
      };
    };
  };
}
