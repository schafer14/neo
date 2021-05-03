local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use "rktjmp/lush.nvim"
  use 'fatih/vim-go'
  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use 'google/vim-jsonnet'
  use 'mhinz/vim-startify'
  use 'TimUntersberger/neogit'
  use 'nvim-treesitter/completion-treesitter'
  use 'pablopunk/statusline.vim'
  use 'hrsh7th/nvim-compe'
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'prettier/vim-prettier'
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  use 'nvim-telescope/telescope-fzy-native.nvim'
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }
  use 'jjo/vim-cue'
end)

