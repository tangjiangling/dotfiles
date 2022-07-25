setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2

" format json
nnoremap <buffer> <leader>f :%!jq .<CR>
" compact json
nnoremap <buffer> <leader>jc :%!jq --compact-output .<CR>
