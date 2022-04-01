set notermguicolors
set mouse=a

set lcs=tab:|-,trail:-,nbsp:+,space:·

# Line numbers
set number
set numberwidth=4

# Startify
let g:startify_custom_header =
        \ startify#pad(split('Neovim <3', '\n'))
