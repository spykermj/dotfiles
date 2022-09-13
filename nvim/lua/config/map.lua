vim.cmd [[
    nnoremap ts :set spell!<CR>
    nnoremap <silent> <CR> :noh<CR><CR>
    inoremap kk <ESC>
    tnoremap kk <C-\><C-n>
    nnoremap <silent> tl :set list!<CR>
    nnoremap <silent> <leader>1 :bfirst<CR>
    nnoremap <silent> <leader>2 :bfirst<CR>:bn<CR>
    nnoremap <silent> <leader>3 :bfirst<CR>:2bn<CR>
    nnoremap <silent> <leader>4 :bfirst<CR>:3bn<CR>
    nnoremap <silent> <leader>5 :bfirst<CR>:4bn<CR>
    nnoremap <silent> <leader>6 :bfirst<CR>:5bn<CR>
    nnoremap <silent> <leader>7 :bfirst<CR>:6bn<CR>
    nnoremap <silent> <leader>8 :bfirst<CR>:7bn<CR>
    nnoremap <silent> <leader>9 :bfirst<CR>:8bn<CR>
    noremap <silent> <leader>o :copen <CR>
    noremap <silent> <leader>c :cclose <CR>
    nnoremap <silent> ]q :cnext <CR>
    nnoremap <silent> [q :cprevious <CR>
    tnoremap <A-h> <C-\><C-N><C-w>h
    tnoremap <A-j> <C-\><C-N><C-w>j
    tnoremap <A-k> <C-\><C-N><C-w>k
    tnoremap <A-l> <C-\><C-N><C-w>l
    inoremap <A-h> <C-\><C-N><C-w>h
    inoremap <A-j> <C-\><C-N><C-w>j
    inoremap <A-k> <C-\><C-N><C-w>k
    inoremap <A-l> <C-\><C-N><C-w>l
    nnoremap <A-h> <C-w>h
    nnoremap <A-j> <C-w>j
    nnoremap <A-k> <C-w>k
    nnoremap <A-l> <C-w>l
]]
