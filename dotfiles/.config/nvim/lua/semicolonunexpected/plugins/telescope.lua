-- Telescope, the most GOATED plugin of all time
return {
  'nvim-telescope/telescope.nvim',
  branch = 'master',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local telescope = require 'telescope'

    telescope.setup {
      defaults = {
        path_display = { 'truncate ' },
      },
    }

    telescope.load_extension 'fzf'

    vim.keymap.set('n', '<C-f>', '<cmd>Telescope find_files<cr>')
    vim.keymap.set('n', '<C-s>', '<cmd>Telescope live_grep<cr>')
  end,
}
