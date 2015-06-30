"""""""""""""
" RELOADING "
"""""""""""""

function! Reload()
  source ~/.vim/vimrc.d/colorscheme.vim
  source ~/.vim/vimrc.d/settings.vim
  source ~/.vim/vimrc.d/interface.vim
  source ~/.vim/vimrc.d/autocommands.vim
  source ~/.vim/vimrc.d/mappings.vim
endfunction


""""""""""""""""""
" CLEANING FILES "
""""""""""""""""""

" Remove trailing whitespaces
function! StripTrailingWhitespaces()
  let _s=@/
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  let @/=_s
  call cursor(l, c)
endfunction

" Remove trailing whitespaces and retab according
" to the current buffer's way
function! Clean()
  call StripTrailingWhitespaces()
  retab
endfunction
nnoremap <silent> <Leader>c :call Clean()<CR>
