lua require('init')

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup trim_autogroup
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

let g:loaded_ruby_provider = 0
let g:loaded_perl_provider = 0
