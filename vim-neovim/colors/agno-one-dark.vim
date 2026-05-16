" Agno One Dark - Vim/Neovim colorscheme
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "agno-one-dark"

hi Normal guifg=#D9D9D9 guibg=#09090B
hi Cursor guifg=#09090B guibg=#FF4017
hi CursorLine guibg=#111113
hi LineNr guifg=#454545 guibg=#09090B
hi CursorLineNr guifg=#FF4017 guibg=#09090B
hi Visual guibg=#3A211D
hi Search guifg=#FFFFFF guibg=#FF4017
hi IncSearch guifg=#FFFFFF guibg=#F25837
hi Pmenu guifg=#E8E8E8 guibg=#18181B
hi PmenuSel guifg=#FFFFFF guibg=#262628
hi StatusLine guifg=#F0F0F0 guibg=#09090B
hi VertSplit guifg=#202020 guibg=#09090B
hi ColorColumn guibg=#18181B
hi SignColumn guibg=#09090B

hi Comment guifg=#838383 gui=italic
hi String guifg=#10B981
hi Character guifg=#10B981
hi Keyword guifg=#FF4017 gui=bold
hi Statement guifg=#F25837 gui=bold
hi Type guifg=#60A5FA gui=bold
hi Function guifg=#F0F0F0
hi Identifier guifg=#D9D9D9
hi Constant guifg=#FBBF24
hi Number guifg=#FBBF24
hi Operator guifg=#8D8D8D
hi PreProc guifg=#BBBBBB
hi Special guifg=#EB6E52
hi Error guifg=#F87171
hi WarningMsg guifg=#FBBF24
hi DiagnosticError guifg=#F87171
hi DiagnosticWarn guifg=#FBBF24
hi DiagnosticInfo guifg=#60A5FA
hi DiagnosticHint guifg=#34D399
