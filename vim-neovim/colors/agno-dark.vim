" Agno Dark - Vim/Neovim colorscheme
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "agno-dark"

hi Normal guifg=#F0F0F0 guibg=#09090B
hi Cursor guifg=#09090B guibg=#FF4017
hi CursorLine guibg=#111113
hi LineNr guifg=#4B4B50 guibg=#09090B
hi CursorLineNr guifg=#FF4017 guibg=#09090B
hi Visual guibg=#3A211D
hi Search guifg=#FFFFFF guibg=#FF4017
hi Pmenu guifg=#F0F0F0 guibg=#18181B
hi PmenuSel guifg=#FFFFFF guibg=#3A211D
hi StatusLine guifg=#F0F0F0 guibg=#09090B
hi VertSplit guifg=#202020 guibg=#09090B

hi Comment guifg=#646464 gui=italic
hi String guifg=#FBBF24
hi Character guifg=#FBBF24
hi Keyword guifg=#FF4017 gui=bold
hi Statement guifg=#F25837 gui=bold
hi Type guifg=#F0F0F0 gui=bold
hi Function guifg=#F0F0F0
hi Identifier guifg=#E8E8E8
hi Constant guifg=#FBBF24
hi Number guifg=#FBBF24
hi Operator guifg=#F25837
hi PreProc guifg=#E8E8E8
hi Error guifg=#F87171
hi WarningMsg guifg=#FBBF24
