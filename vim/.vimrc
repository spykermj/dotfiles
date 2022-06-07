" Install plug ----------------------------------------------------------" {{{

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" }}}

" Plugins ---------------------------------------------------------------" {{{

" vim-plug setup
call plug#begin()

" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes
" Initialize plugin system
Plug 'hashivim/vim-terraform'
Plug 'vim/killersheep'
Plug 'morhetz/gruvbox'

" show changed lines with git
Plug 'airblade/vim-gitgutter'

" insert paired brackets
Plug 'jiangmiao/auto-pairs'

" git plugin that claims to be so awesome it should be illegal
Plug 'tpope/vim-fugitive'

call plug#end()

" }}}

" Sets  ------------------------------------------------------------------" {{{

set spelllang=en_gb
set colorcolumn=50,72,80,100
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set noswapfile
set scrolloff=8
set expandtab
set number
set relativenumber
set hidden
set noerrorbells
set nohlsearch
set incsearch
set ruler
set signcolumn=yes
set digraph
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set list
set noerrorbells

"  Nice menu when typing `:find *.py`
set wildmode=longest,list,full
set wildmenu
"  Ignore files
set wildignore += "*.pyc"
set wildignore += "*_build/*"
set wildignore += "**/coverage/*"
set wildignore += "**/node_modules/*"
set wildignore += "**/android/*"
set wildignore += "**/ios/*"
set wildignore += "**/.git/*"

let mapleader = " "

" }}}

" Maps ---------------------------------------------------------------------{{{

inoremap kk <ESC>
nnoremap <CR> :noh<CR><CR>
noremap <leader>s :set spell!<CR>

" }}}

" Vimscript --------------------------------------------------------------" {{{

filetype plugin on
syntax on
colorscheme gruvbox

augroup autoformat_settings
    autocmd FileType bzl AutoFormatBuffer buildifier
    autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
    autocmd FileType dart AutoFormatBuffer dartfmt
    autocmd FileType go AutoFormatBuffer gofmt
    autocmd FileType gn AutoFormatBuffer gn
    autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
    autocmd FileType java AutoFormatBuffer google-java-format
    autocmd FileType python AutoFormatBuffer yapf
    " Alternative: autocmd FileType python AutoFormatBuffer autopep8
    autocmd FileType rust AutoFormatBuffer rustfmt
    autocmd FileType vue AutoFormatBuffer prettier
augroup END

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup trim
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

" This will enable code folding
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" }}}
