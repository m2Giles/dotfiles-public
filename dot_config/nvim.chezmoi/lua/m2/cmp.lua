local cmp = require('cmp')
local lspkind = require('lspkind')

  cmp.setup({
  formatting = {
    format = lspkind.cmp_format({
        with_text = false,
        maxwidth = 50,
      }),
    },

    snippet = {
      expand = function(args)
        vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },

    mapping = cmp.mapping.preset.insert ({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      }),

    sources = cmp.config.sources({
	{ name = 'omni' },
	{ name = 'nvim_lsp' },
	{ name = 'ultisnips' },
	{ name = 'nvim_lua' },
	{ name = 'buffer' },
	{ name = 'path' },
    }),

    experimental = {
      ghost_text_view = true
    },
})

    cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' },
      { name = 'buffer' },
      { name = 'cmdline' }
    })
  })
