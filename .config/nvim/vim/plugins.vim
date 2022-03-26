" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
"Plug 'tpope/vim-sensible'
Plug 'ap/vim-css-color'
#Plug 'WolfgangMehner/bash-support'
Plug 'mhinz/vim-startify'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
