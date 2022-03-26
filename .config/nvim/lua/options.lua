local set = vim.opt
set.termguicolors = false
set.fileencoding = 'utf-8'
set.mouse = 'a'

set.lcs = 'tab:|-,trail:-,nbsp:+,space:·'

-- Line numbers
set.number = true
set.numberwidth = 4

-- Startify
vim.cmd [[
  let g:startify_custom_header =
  \ startify#pad(split('Neovim <3', '\n'))
]]
