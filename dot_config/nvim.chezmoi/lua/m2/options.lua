local options = {
	fileencoding = "utf-8",
	mouse = "a",
	clipboard = "unnamedplus",

	completeopt = { "menu", "menuone", "noselect" },
	pumheight = 10,

	hlsearch = true,
  incsearch = true,
	ignorecase = true,
	smartcase = true,

	backup = false,
	writebackup = false,
	swapfile = false,
	undofile = true,

	number = true,
	relativenumber = true,
	cursorline = true,
  wrap = false,
	signcolumn = "yes",
	showtabline = 2,
	conceallevel = 0,
	cmdheight = 2,
	showmode = false,
	scrolloff = 8,
  termguicolors = true,
  splitbelow = true,
  splitright = true,
	smartindent = true,
	shiftwidth = 2,
	tabstop = 2,
	expandtab = true,
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end
