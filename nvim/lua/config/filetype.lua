vim.cmd[[
  filetype on
  filetype indent on
  autocmd FileType lua setlocal shiftwidth=2 softtabstop=2 expandtab
  autocmd FileType python setlocal shiftwidth=4 softtabstop=4 expandtab
  autocmd FileType json setlocal shiftwidth=2 softtabstop=2 expandtab
  autocmd FileType jsonnet setlocal shiftwidth=2 softtabstop=2 expandtab
  autocmd FileType go setlocal tabstop=4 noexpandtab
]]
