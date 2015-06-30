" Setting diff signs to same unicode circle char
let g:gitgutter_sign_added              = '●'
let g:gitgutter_sign_modified           = '●'
let g:gitgutter_sign_removed            = '●'
let g:gitgutter_sign_removed_first_line = '●'
let g:gitgutter_sign_modified_removed   = '●'

" Setting realtime update
let g:gitgutter_eager    = 1
let g:gitgutter_realtime = 1

" Remapping Prev and Next hunk jump
nnoremap <leader>> :GitGutterNextHunk<CR>
nnoremap <leader>< :GitGutterPrevHunk<CR>


