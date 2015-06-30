" Automatically reload .vimrc if it changes
autocmd! bufwritepost ~/.vim/vimrc source ~/.vimrc

""""""""""""""""""""""
" File type settings "
""""""""""""""""""""""

" → Keyword override : in css and ctp files, consider a '-' separated
" expression to be a word (and addressable via a text object)
autocmd FileType css,scss set iskeyword=@,48-57,_,-,?,!,192-255
autocmd FileType ctp set iskeyword=@,48-57,_,-,?,!,192-255

" → Cakephp files are treated as php files
autocmd BufRead,BufNewFile *.ctp set filetype=php.html
