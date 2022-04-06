local highlight = vim.highlight.create

highlight('Statusline', {cterm='bold', ctermfg='black', ctermbg='blue'}, false)

highlight('Whitespace', {ctermfg='darkgray', guifg='darkgray'}, false)

highlight('Comment', {cterm='italic', ctermfg='darkred', ctermbg='black', gui='italic', guifg='darkred', guibg='black'}, false)

highlight('Visual', {cterm='italic', ctermfg='black', ctermbg='yellow', gui='italic', guifg='black', guibg='yellow'}, false)

highlight('LineNr', {cterm='italic', ctermfg='white', gui='italic', guifg='white'}, false)
