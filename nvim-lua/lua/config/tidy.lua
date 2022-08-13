-- keep things tidy by removing trailing whitespace
--

vim.cmd[[
  fun! TrimWhitespace()
      let l:save = winsaveview()
      keeppatterns %s/\s\+$//e
      call winrestview(l:save)
  endfun
  
  augroup trim
      autocmd!
      autocmd BufWritePre * :call TrimWhitespace()
  augroup END
]]
