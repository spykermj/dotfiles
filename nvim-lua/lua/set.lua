local set = vim.opt
local g = vim.g

set.spelllang = "en_gb"
set.colorcolumn = "50,72,80,100"
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.autoindent = true
set.smartindent = true
set.swapfile = false
set.scrolloff = 8
set.expandtab = true
set.number = true
set.belloff = "all"
set.hlsearch = false
set.incsearch = true
set.ruler = true
set.signcolumn = "yes"
set.listchars = "eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣"
set.timeoutlen = 500
set.autowrite = true
set.undofile = true

-- Nice menu when typing `:find *.py`
set.wildmode = "longest,list,full"
set.wildmenu = true

-- make searching more convenient
table.insert(set.path, '**')

-- Nice menu when typing `:find *.py`
set.wildmode = 'longest,list,full'
set.wildmenu = true
-- Ignore files
table.insert(set.wildignore, '*.pyc')
table.insert(set.wildignore, '*_build/*')
table.insert(set.wildignore, '**/coverage/*')
table.insert(set.wildignore, '**/node_modules/*')
table.insert(set.wildignore, '**/android/*')
table.insert(set.wildignore, '**/ios/*')
table.insert(set.wildignore, '**/.git/*')

g.mapleader = " "

local gset = vim.api.nvim_set_var

gset('g:airline#extensions#tabline#enabled', 1)
gset('g:airline#extensions#tabline#buffer_nr_show', 1)

g.go_list_type = 'quickfix'

g.undotree_RelativeTimestamp = 1
g.undotree_ShortIndicators = 1
g.undotree_HelpLine = 1
g.undotree_WindowLayout = 2
