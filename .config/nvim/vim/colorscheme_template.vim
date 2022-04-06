" Vim color file
" Maintainer:   Your name <youremail@something.com>
" Last Change:  
" URL:		

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

" your pick:
set background=dark	" or light
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="mycolorscheme"

"if (echom expand('%')) == "themerc"
"	set syntax=xdefaults
"endif

"hi Normal

" OR

" highlight clear Normal
" set background&
" highlight clear
" if &background == "light"
"   highlight Error ...
"   ...
" else
"   highlight Error ...
"   ...
" endif

" A good way to see what your colorscheme does is to follow this procedure:
" :w 
" :so % 
"
" Then to see what the current setting is use the highlight command.  
" For example,
" 	:hi Cursor
" gives
"	Cursor         xxx guifg=bg guibg=fg 
 	
" Uncomment and complete the commands you want to change from the default.

"hi Cursor
"hi CursorIM
"hi Directory
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
"hi ErrorMsg
"hi VertSplit
"hi Folded
"hi FoldColumn
"hi IncSearch
hi LineNr gui=italic guifg=#CBCBCB
"hi ModeMsg
"hi MoreMsg
"hi NonText
"hi Question
hi Search gui=bold guifg=#000000 guibg=#CBCBCB
"hi SpecialKey
hi StatusLine gui=bold,reverse guifg=#000000 guibg=#3358B9
"hi StatusLineNC
"hi Title
hi Visual gui=italic guifg=#12100b guibg=#d5c157
"hi VisualNOS
"hi WarningMsg
"hi WildMenu
"hi Menu
"hi Scrollbar
"hi Tooltip

" syntax highlighting groups
hi Comment gui=italic guifg=#AE2E2E guibg=#12100B
hi Constant guifg=#FF88EE
"hi Identifier
"hi Statement
hi Statement gui=bold guifg=#FFBB00
hi PreProc guifg=#00EEFF
hi Type guifg=#11DD00
hi Special guifg=#FF88EE
hi Underlined gui=underline,italic guifg=#331188
"hi Ignore
hi Error guifg=#CBCBCB guibg=#FF0000
hi Todo guifg=#000000 guibg=#00FF00

