" Create a file
nnoremap <buffer> <leader>a :!touch <C-r>=shellescape(expand('%:p:h'). '/')<cr><left>
