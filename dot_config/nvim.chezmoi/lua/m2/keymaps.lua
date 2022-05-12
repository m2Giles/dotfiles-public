local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("","<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("n", "<Leader>n", ":NvimTreeToggle<CR>", opts)
keymap("n", "<Leader>w", ":write<CR>", opts)
keymap("n", "<leader>cc", ':execute "set colorcolumn=" . (&colorcolumn == "" ? "80" : "")<CR>', opts)
keymap("n", "<Leader>hh", ":noh<CR>", opts)
keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })
keymap('v', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
keymap('v', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })
keymap('x', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
keymap('x', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })
keymap("n", "<Leader>[", ":BufferLineCyclePrev <CR>", opts)
keymap("n", "<Leader>]", ":BufferLineCycleNext <CR>", opts)
keymap("n", "<Leader>lg", ":LazyGit<CR>", opts)
keymap("n", "<Leader>S", ":Startify<CR>", opts)

keymap("t", "<Esc>", "<C-\\><C-n>", term_opts)
-- Toggle spellchecking
vim.cmd [[function! ToggleSpellCheck()
	set spell!
		if &spell
			echo "Spellcheck ON"
		else
			echo "Spellcheck OFF"
	endif
endfunction ]]

keymap("n", "<Leader>s", ":call ToggleSpellCheck()<CR>", opts)
