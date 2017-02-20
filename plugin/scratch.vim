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

nmap rs <plug>(scratch-insert-reuse)
nmap rS <plug>(scratch-insert-clear)
nmap rp :ScratchPreview <CR>
xmap rs <plug>(scratch-selection-reuse)
xmap rS <plug>(scratch-selection-clear)


