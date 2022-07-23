setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2
setlocal foldmethod=marker

" Automatically source .vimrc on save
augroup vimrc
  autocmd!
  autocmd! BufWritePost $MYVIMRC source $MYVIMRC
augroup END
