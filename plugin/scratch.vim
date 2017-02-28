" Settings
" --------

" Disables focus switch when leaving insert mode
let g:scratch_insert_autohide = 0

" Sets a per project scratch file to be persisted
let g:scratch_persistence_file = '.scratch.vim'

" Disables default mappings
let g:scratch_no_mappings = 1

" Enables autohiding. Needed to persist the file on buffer leave
let g:scratch_autohide = 1

" Set markdown as the base filetype
let g:scratch_filetype = 'markdown'

" Mappings
" --------

nmap <leader>rs <plug>(scratch-insert-reuse)
nmap <leader>rS <plug>(scratch-insert-clear)
nmap <leader>rp :ScratchPreview <CR>
xmap <leader>rs <plug>(scratch-selection-reuse)
xmap <leader>rS <plug>(scratch-selection-clear)


