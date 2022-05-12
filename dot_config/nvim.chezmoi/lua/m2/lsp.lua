vim.g.cursorhold_updatetime = 100
local nvim_lsp = require('lspconfig')

-- On Attach Configurations

local on_attach = function(client, bufnr)

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local opts = { noremap=true, silent=true }
	vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>dj', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>dk', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

-- Capabilities Configurations
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())


-- Setup lspconfig.
local servers = { 'texlab', 'bashls', 'pyright', 'rust_analyzer','gopls' }
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        capabilities = capabilities,
        on_attach = on_attach,
        flags = {
            debounce_text_changes = 150,
        }
    }
end
local runtime_path = vim.split(package.path, ';')

nvim_lsp.sumneko_lua.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file('', true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

-- lspsaga.setup { -- defaults ...
--   debug = false,
--   use_saga_diagnostic_sign = true,
--   -- diagnostic sign
--   error_sign = "",
--   warn_sign = "",
--   hint_sign = "",
--   infor_sign = "",
--   diagnostic_header_icon = "   ",
--   -- code action title icon
--   code_action_icon = " ",
--   code_action_prompt = {
--     enable = true,
--     sign = true,
--     sign_priority = 40,
--     virtual_text = true,
--   },
--   finder_definition_icon = "  ",
--   finder_reference_icon = "  ",
--   max_preview_lines = 10,
--   finder_action_keys = {
--     open = "o",
--     vsplit = "s",
--     split = "i",
--     quit = "q",
--     scroll_down = "<C-f>",
--     scroll_up = "<C-b>",
--   },
--   code_action_keys = {
--     quit = "q",
--     exec = "<CR>",
--   },
--   rename_action_keys = {
--     quit = "<C-c>",
--     exec = "<CR>",
--   },
--   definition_preview_icon = "  ",
--   border_style = "single",
--   rename_prompt_prefix = "➤",
--   server_filetype_map = {},
--   diagnostic_prefix_format = "%d. ",
-- }
--
