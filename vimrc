" Pathogen loads all the plugin
" plugin specific settings are in separate files
" in the plugin directory
silent! call pathogen#infect()
silent! call pathogen#helptags()

" Loading configuration files in proper order
source ~/.vim/vimrc.d/colorscheme.vim
source ~/.vim/vimrc.d/settings.vim
source ~/.vim/vimrc.d/interface.vim
source ~/.vim/vimrc.d/autocommands.vim
source ~/.vim/vimrc.d/mappings.vim
