_: {
  programs.nvf.settings.vim = {
    autocomplete.blink-cmp.friendly-snippets.enable = true;

    lsp = {
      enable = true;
      formatOnSave = true;
      inlayHints.enable = false;

      mappings = {
        goToDefinition = "<leader>gd";
        goToDeclaration = "<leader>gD";
        goToType = "<leader>gt";
        listImplementations = "<leader>li";
        listReferences = "<leader>lr";
        nextDiagnostic = null;
        previousDiagnostic = null;
        openDiagnosticFloat = null;
        documentHighlight = null;
        listDocumentSymbols = null;
        addWorkspaceFolder = null;
        removeWorkspaceFolder = null;
        listWorkspaceFolders = null;
        listWorkspaceSymbols = null;
        hover = null;
        signatureHelp = null;
        renameSymbol = "<leader>rn";
        codeAction = "<leader>ca";
        format = "<leader>f";
        toggleFormatOnSave = null;
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
  };
}
