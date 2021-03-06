require'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = "all",
  sync_install = false,

  ignore_install = {  },

  highlight = {
    enable = true,
    disable = { "latex" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = { "latex" },
  },
  rainbow = {
    enable = true,
    -- disable = { "latex" }
  }
}
