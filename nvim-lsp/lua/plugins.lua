local Plug = vim.fn['plug#']

vim.call('plug#begin')
Plug('iamcco/markdown-preview.nvim', {['do'] = 'cd app && yarn install' })
Plug 'psf/black'

-- LSP plugins
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lua'
-- For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

-- terraform support
Plug 'hashivim/vim-terraform'

-- set up a good colorscheme
Plug 'gruvbox-community/gruvbox'

-- disabling Treesitter for now as it is an experimental feature of Neovim
-- Treesitter
-- Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
-- Plug 'nvim-treesitter/playground'
-- Plug 'romgrk/nvim-treesitter-context'

-- show changed lines with git
Plug 'airblade/vim-gitgutter'

-- insert paired brackets
Plug 'jiangmiao/auto-pairs'

-- git plugin that claims to be so awesome it should be illegal
Plug 'tpope/vim-fugitive'

vim.call('plug#end')
