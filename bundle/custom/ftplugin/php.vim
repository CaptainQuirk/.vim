autocmd FileType php set keywordprg=dasht

nnoremap <silent> <CR> :call phpactor#GotoDefinition()<CR><CR>
