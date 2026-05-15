" Agno Dark - Vim/Neovim colorscheme
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "agno-dark"

hi Normal guifg=#D7D2CF guibg=#111113
hi Cursor guifg=#111113 guibg=#FF6A45
hi CursorLine guibg=#151518
hi LineNr guifg=#4B4B50 guibg=#111113
hi CursorLineNr guifg=#FF6A45 guibg=#111113
hi Visual guibg=#3A211D
hi Search guifg=#FFFFFF guibg=#B53A28
hi Pmenu guifg=#D7D2CF guibg=#18181B
hi PmenuSel guifg=#FFFFFF guibg=#3A211D
hi StatusLine guifg=#FF6A45 guibg=#15100F
hi VertSplit guifg=#2A2A2F guibg=#111113

hi Comment guifg=#6A6664 gui=italic
hi String guifg=#FF6A45
hi Character guifg=#FF6A45
hi Keyword guifg=#FF4B2E gui=bold
hi Statement guifg=#FF4B2E gui=bold
hi Type guifg=#E8E1DD gui=bold
hi Function guifg=#F2EDEA
hi Identifier guifg=#D7D2CF
hi Constant guifg=#FFB86B
hi Number guifg=#FFB86B
hi Operator guifg=#8A8582
hi PreProc guifg=#9A9490
hi Error guifg=#FF4B2E
hi WarningMsg guifg=#FFB86B
