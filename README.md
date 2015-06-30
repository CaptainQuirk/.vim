# VIM CONFIGURATION

## DISCLAIMER

THIS IS MY PERSONAL VIM CONFIGURATION. IT IS REFERENCED HERE BOTH AS AN EXAMPLE
TO BE CONSULTED BY OTHERS AND AS A MEAN TO PERSIST MY SETTINGS ACCROSS
WORKSTATIONS.

__IT IS IN NO WAY A DISTRIBUTED CONFIGURATION.__

USE IT WHOLE OR IN PARTS __AT YOUR OWN RISK__.

## KINDER ADVICE

I would recommend any new user to take the time to dive into vim and accept the
unavoidable loss of productivity you may experience during that time.
Vim is not necessarily cool or great. It is if you have the proper set of mind.
If you don't, there are more important things in the world than fighting over
a supposed proper editor, so :

* If the prospect of spending time fine tuning your editor to to things you can
(mostly) already do with your favorite IDE, don't bother, you'll lose precious
time and energy.

* If the idea of considering the text being edited in your editor as something
more than a mean to achieve a goal, don't bother either !

## OVERALL STRUCTURE

My vim configuration only relies partly on some built-in procedures. I decided
to take things into my own hand where I thought that those procedures weren't
appropriate to my needs.

### My vimrc is split

Having a vimrc file spanning over thousands of line is an issue to me. I added
a proprietary _vimrc.d_ directory to hold various parts of my configuration,
such as

* _settings.vim_ : Basic settings
* _colorscheme.vim_ : Definition of the colorscheme to use
* _interface.vim_ : Setting some visual stuff, such as the cursor appearance in
  various modes for different os's
* _autocommands.vim_ : General definitions of what should be done when some
  events occur
* _mappings.vim_ : General mappings

Those files get sourced from my vimrc

### Plugins

I use a lot of plugins.

I load them with _Pathogen_.

I configure them if needed in one file for each plugin, in the ~/.vim/plugin
directory. I rely here on a built-in vim feature here, that loads every
~/.vim/\*\*/\*.vim automatically.


### Functions

When adding a functionnality to vim through a function, I'm relying on pathogen
to load the function and any mapping using it in a general __custom__ plugin
directory - thanks [romainl](https://github.com/romainl/dotvim/tree/master/bundle/custom)
for the direct inspiration - that I may end up splitting into multiple
directories if I find it relevant in the future.

