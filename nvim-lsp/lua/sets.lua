local set = vim.opt
set.spelllang = 'en_gb'
set.colorcolumn = '50,72,80,100'
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.smartindent = true
set.shiftwidth = 4
set.undofile = true

-- Having longer updatetime leads to noticeable delays and poor user experience
set.updatetime = 300

-- Give more space for displaying messages
set.cmdheight = 2

set.digraph = true
set.writebackup = false
set.backup = false
set.signcolumn = 'yes'
set.scrolloff = 8
set.ruler = true
set.number = true
set.relativenumber = true
set.hidden = true
set.incsearch = true
set.hlsearch = false
set.errorbells = false
set.expandtab = true
set.swapfile = false

vim.cmd [[
  inoremap kk <ESC>
  nnoremap <CR> :noh<CR><CR>
  colorscheme gruvbox
]]


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

