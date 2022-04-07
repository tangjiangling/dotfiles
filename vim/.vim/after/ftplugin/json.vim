" Settings for json
setlocal tabstop=2                                                                  " number of spaces a <Tab> in the text stands for
setlocal shiftwidth=2                                                               " number of spaces used for each step of (auto)indent
setlocal softtabstop=2                                                              " if non-zero, number of spaces to insert for a <Tab>

" format json
nnoremap <leader>f :%!jq .<CR>
" compact json
nnoremap <leader>jc :%!jq --compact-output .<CR>
