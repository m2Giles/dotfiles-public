vim.g.tokyonight_style = "storm"
vim.g.tokyonight_lualine_bold = true
vim.g.tokyonight_hide_inactive_statusline = true

vim.g.gruvbox_italic = true
vim.g.gruvbox_italicize_comments = true
vim.g.gruvbox_italicize_strings = false
vim.g.gruvbox_sign_column = "bg0"

vim.g.gruvbox_baby_keyword_style = "italic"
vim.g.gruvbox_baby_comment_style = "italic"
vim.g.gruvbox_baby_function_style = "bold"
vim.g.gruvbox_baby_variable_style = "none"
vim.g.gruvbox_baby_background_style = "dark"
vim.g.gruvbox_baby_highlights = {
  Conceal = {fg = "#7FA2AC", bg = "none", sytle="none" },
  Comment = {fg = "#458588", bg = "none", style="italic"},
  TSComment = {fg = "#458588", bg = "none", style="italic"},
  Folded =  {fg = "#458588", bg = "none", style="italic" },
  LineNr = {fg = "#b16286", bg = "none", style = "none"},
  CursorLineNr = {fg = "#FABD2F", bg = "none", style = "bold"},
  StartifyHeader = {fg = "#fe8019", bg = "none", style = "none"},
  StartifySection = {fg = "#fe8019", bg = "none", style = "none"},
  StartifySpecial = {fg = "#fe8019", bg = "none", style = "none"},
  StartifyPath = {fg = "#83A598", bg = "none", style = "none"},
  StartifyNumber = {fg = "#b16286", bg = "none", style = "none"},
  StartifySlash = {fg = "#83A598", bg = "none", style = "none"}
}

require('onedark').setup{
  code_style = {
    keywords = 'bold',
    functions = 'bold',
  },
  highlights = {
    Normal = { bg = 'NONE' },
    Conceal = { bg = 'NONE', fg = '#e86671' },
    Folded = { bg = 'NONE', fg = '#61afef', style='italic' },
  }
}

vim.cmd[[colorscheme gruvbox-baby]]
