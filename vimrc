" Pathogen loads all the plugin
" plugin specific settings are in separate files
" in the plugin directory
silent! call pathogen#infect()
silent! call pathogen#helptags()

" General settings
source ~/.vim/settings.vim

" Colorscheme definitions
source ~/.vim/colorscheme.vim

" Basice interface settings
source ~/.vim/interface.vim

" General mappings
source ~/.vim/mappings.vim

" Custom general functions
source ~/.vim/functions.vim

" Autocommands
source ~/.vim/autocommands.vim

