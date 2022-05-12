local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap('n', '<Leader>ff', '<cmd>Telescope find_files<CR>', opts)
keymap('n', '<Leader>fg', '<cmd>Telescope live_grep<CR>', opts)
keymap('n', '<Leader>b', '<cmd>Telescope buffers<CR>', opts)
keymap('n', '<Leader>fh', '<cmd>Telescope help_tags<CR>', opts)
keymap('n', '<Leader>cs', '<cmd>Telescope colorscheme<CR>', opts)
keymap('n', '<Leader>fB', '<cmd>Telescope file_browser<CR>', opts)
keymap('n', '<Leader>fG', '<cmd>Telescope file_browser path=~/Gradschool/local/<CR>', opts)
keymap('n', '<Leader>fC', '<cmd>Telescope file_browser path=~/.config/<CR>', opts)
keymap('n', '<leader>fd', '<cmd>Telescope diagnostics<CR>', opts)

require('telescope').setup{
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
    mappings = {
    }
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      overrride_file_sorter = true,
      case_mode = "smart_case",
    }

  }
}
require('telescope').load_extension("file_browser")
require('telescope').load_extension("fzf")
