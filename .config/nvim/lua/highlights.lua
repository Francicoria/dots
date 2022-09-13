local highlight = vim.highlight.create

highlight('Statusline', { cterm='bold', ctermfg='black', ctermbg='blue'         } , false)

highlight('Whitespace', { ctermfg='darkgray'                                    } , false)

highlight('Comment',    { cterm='italic'                                        } , false)

highlight('Visual',     { cterm='italic', ctermfg='black', ctermbg='lightblue'  } , false)

highlight('LineNr',     { cterm='italic', ctermfg='white',                      } , false)
