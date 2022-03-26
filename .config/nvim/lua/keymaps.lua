local map = vim.api.nvim_set_keymap

map('n', 'q', '<Nop>', {})
map('n', 'gQ', '<Nop>', {})
map('n', 'Q', '<Nop>', {})

map('n', '<F2>', ':set invlist<CR>', {})
map('i', '<F2>', '<ESC>:set invlist<CR>a', {})

map('n', '<F3>', ':set number!<CR>', {})
map('i', '<F3>', '<ESC>:set number!<CR>a', {})
