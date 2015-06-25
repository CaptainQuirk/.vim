"Automatically reload .vimrc if it changes
autocmd! bufwritepost ~/.vim/vimrc source ~/.vimrc

""""""""""""""""""""""
" File type settings "
""""""""""""""""""""""

" → Css autocomplete
autocmd FileType css,scss set iskeyword=@,48-57,_,-,?,!,192-255
autocmd FileType ctp set iskeyword=@,48-57,_,-,?,!,192-255

au BufNewFile,BufRead *.ctp set filetype=php.html

if has("autocmd")
" Make sure all mardown files have the correct filetype set and setup wrapping
  autocmd BufRead,BufNewFile *.md,*.markdown,*.mdown,*.mkd,*.mkdn,*.txt set ft=markdown
  "autocmd FileType markdown call s:setupWrapping()
endif

" → Cakephp files are treated as php files
autocmd BufRead,BufNewFile *.ctp set filetype=php




