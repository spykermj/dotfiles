-- This file can be loaded by calling `lua require('plugins')` from your init.vim

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'hashivim/vim-terraform'
  use 'gruvbox-community/gruvbox'
  use 'folke/tokyonight.nvim'

  use 'airblade/vim-gitgutter'

  use 'jiangmiao/auto-pairs'

  use 'tpope/vim-fugitive'

  use 'nvim-treesitter/nvim-treesitter'

  use 'google/vim-maktaba'
  use 'google/vim-codefmt'
  use 'google/vim-glaive'

  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  use 'fatih/vim-go'

  use 'tpope/vim-vinegar'

  use 'mbbill/undotree'

  use 'google/vim-jsonnet'

  use {'neoclide/coc.nvim', branch = 'release'}

  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  else
    require('treesitterconfig')
    require('coc')
    require('colourscheme')
  end
end)

