" Settings for vimscript
setlocal tabstop=2                                                                  " number of spaces a <Tab> in the text stands for
setlocal shiftwidth=2                                                               " number of spaces used for each step of (auto)indent
setlocal softtabstop=2                                                              " if non-zero, number of spaces to insert for a <Tab>
setlocal foldmethod=marker                                                          " group folds with '{{{,}}}'

" Automatically source .vimrc on save
augroup vimrc
  autocmd!
  autocmd! BufWritePost $MYVIMRC source $MYVIMRC
augroup END
