call plug#begin()

Plug 'psf/black'

" LSP plugins
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lua'
" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" terraform support
Plug 'hashivim/vim-terraform'

" set up a good colorscheme
Plug 'gruvbox-community/gruvbox'

" disabling Treesitter for now as it is an experimental feature of Neovim
" Treesitter
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'nvim-treesitter/playground'
" Plug 'romgrk/nvim-treesitter-context'

" show changed lines with git
Plug 'airblade/vim-gitgutter'

call plug#end()

lua require('init')

let g:loaded_ruby_provider = 0
let g:loaded_perl_provider = 0
