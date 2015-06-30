" Pathogen loads all the plugin
" plugin specific settings are in separate files
" in the plugin directory
silent! call pathogen#infect()
silent! call pathogen#helptags()

" Sourcing all files in local vimrc.d directory
for file in split(glob('~/.vim/vimrc.d/*.vim'), '\n')
  exe 'source' file
endfor
