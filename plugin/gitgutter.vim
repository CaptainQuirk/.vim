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
  let message = input('Message : ')
  call gitgutter#stage_hunk()
  silent! exec ':Git commit -m "' . message . '"'
endfunction


"""""""""""""""
" SETTINGS    "
"""""""""""""""

" Setting diff signs to same unicode circle char
let g:gitgutter_sign_added              = '◆'
let g:gitgutter_sign_modified           = '◈'
let g:gitgutter_sign_removed            = '◇'
let g:gitgutter_sign_removed_first_line = '▣'
let g:gitgutter_sign_modified_removed   = '◉'

" Setting maximum number of signs displayed
let g:gitgutter_max_signs = 2000


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
nnoremap <leader>hc :call CommitHunk()<CR>
