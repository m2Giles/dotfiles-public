local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

  packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

  return packer.startup(function(use)
  -- Plugin Manger and major dependencies
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "kyazdani42/nvim-web-devicons" -- Most Icons pulled from here

  -- Completion Engine
  use "hrsh7th/nvim-cmp" -- The completion plugin

  -- Completion Sources
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"
  use "hrsh7th/cmp-omni"
	use "quangnguyen30192/cmp-nvim-ultisnips"

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "mfussenegger/nvim-lint"
  use "antoinemadec/FixCursorHold.nvim" -- Fix a performance bug
  use "j-hui/fidget.nvim"

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use {
      "nvim-telescope/telescope-fzf-native.nvim",
      run = 'make',
  }
  use "nvim-telescope/telescope-file-browser.nvim"

  -- File Explorer
  use "kyazdani42/nvim-tree.lua"

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "lewis6991/spellsitter.nvim"
  use "nvim-treesitter/playground"
  use "p00f/nvim-ts-rainbow"

  -- Python Based plugins
    -- Snippets
    use "SirVer/ultisnips"

  --VimScript Sytle Plugins
    -- LaTeX
    use "lervag/vimtex"
    --Remote Server for VimTex
    use "mhinz/neovim-remote"
    -- Matlab
    use "MortenStabenau/matlab-vim"
    -- Vim Slime
    use "jpalardy/vim-slime"
    -- Startup Screen
    use "mhinz/vim-startify"

  -- Pretty Colors/Icons/Info
  use "lukas-reineke/indent-blankline.nvim"
  use "onsails/lspkind-nvim" -- Really unsure if this adds anything beyond icons which I can do myself.
  use "nvim-lualine/lualine.nvim"
  use "akinsho/bufferline.nvim"
  use "folke/tokyonight.nvim" -- Test out this for a lot of plugin support
  use "ellisonleao/gruvbox.nvim" -- Compare with original
  use "luisiacc/gruvbox-baby" -- another variation
  use "xiyaowong/nvim-transparent" -- Could be cool to mess around wiht
  use 'navarasu/onedark.nvim'
  use 'sainnhe/gruvbox-material'
  use 'rebelot/kanagawa.nvim'
  use 'jacoborus/tender.vim'
  use 'shaunsingh/nord.nvim'
  use 'sainnhe/sonokai'

  -- Git Stuff
  use "lewis6991/gitsigns.nvim"
  use "kdheepak/lazygit.nvim"

  -- Utilities
  use "max397574/better-escape.nvim"
  use "numToStr/Comment.nvim"
  use "windwp/nvim-autopairs"
  use "lewis6991/impatient.nvim"


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
