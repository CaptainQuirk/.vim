""""""""""
" RELOAD "
""""""""""

" → reload vimrc
nmap <leader>m :call custom#Reload()<cr>


""""""""""""""
" QUICK OPEN "
""""""""""""""

" → Open vimrc
nmap <leader>ev :tabe $MYVIMRC<cr>

" → Open my todo list
nmap <leader>et :tabe ~/.vim/todos.md<cr>

" → Open my practice list
nmap <leader>ep :tabe ~/.vim/practice.md<cr>


"""""""""""""""""
" MOVING AROUND "
"""""""""""""""""

" Move by display line, not real line
nnoremap  <buffer> <silent> k gk
nnoremap  <buffer> <silent> j gj
nnoremap  <buffer> <silent> 0 g0
nnoremap  <buffer> <silent> $ g$


"""""""""""""""
" INSERT MODE "
"""""""""""""""

"→ Going out of insert mode
imap kj <ESC>

" → Going out of insert mode and saving
imap kjw <ESC>:w<CR>

" → Going out of insert mode, saving and quitting
imap kjwq <ESC>:wq<CR>


"""""""""""""""
" SEARCHING   "
"""""""""""""""

" → Toggling search highlighting (hlsearch)
nnoremap <leader>f :set hlsearch! hlsearch?<CR>

" → When moving to the next search result, center it vertically
nmap n nzz

" → When moving to the previous search result, center it vertically
nmap N Nzz


"""""""""""""
" UTILITIES "
"""""""""""""

" upper/lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

" upper/lower first char of word
nmap <leader>U mQgewvU`Q
nmap <leader>L mQgewvu`Q
