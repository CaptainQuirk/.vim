" Change to file's directory (similar to autochdir)
let g:rooter_change_directory_for_non_project_files = 'current'

" Root directory patterns
let g:rooter_patterns = [ 'composer.json', '.git', '.git/', 'package.json' ]

" To stop vim-rooter echoing the project directory
let g:rooter_silent_chdir = 1

" Resolve symbolic links
let g:rooter_resolve_links = 1
