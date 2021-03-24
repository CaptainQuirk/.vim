"""""""""""""
" FUNCTIONS "
"""""""""""""

" Ask for confirmation before calling gitgutter's revert hunk function
function! RevertHunk()
  let choice = confirm("Do you really want to unstage this hunk ?", "&yes\n&no")
  if choice == 1
    call gitgutter#hunk#undo()
    silent! exec ':w'
  endif
endfunction

function! CommitHunk()
  call gitgutter#hunk#stage()
  exec ':Git commit -v'
endfunction


"""""""""""""""
" SETTINGS    "
"""""""""""""""

" Setting maximum number of signs displayed
let g:gitgutter_max_signs = -1


""""""""""
" COLORS "
""""""""""

highlight GitGutterChange ctermbg=NONE ctermfg=214
highlight GitGutterAdd ctermbg=NONE ctermfg=46
highlight GitGutterDelete ctermbg=NONE ctermfg=196
highlight GitGutterChangeDelete ctermbg=NONE ctermfg=202
highlight GitGutterAddLine ctermbg=NONE

""""""""""""""""
" MAPPINGS     "
""""""""""""""""

" Remapping Prev and Next hunk jump
nnoremap <leader>> :GitGutterNextHunk<CR>
nnoremap <leader>< :GitGutterPrevHunk<CR>

" Remapping revert hunk to ask for confirmation
nnoremap <leader>hr :call RevertHunk()<CR>

" Mapping custom CommitHunk function
nnoremap <leader>hc :call CommitHunk()<CR>

" Mapping quickfix hunks summary
nnoremap <leader>hq :GitGutterQuickFix \| copen<CR>
