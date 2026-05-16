" Agno Light Graphite - Vim/Neovim colorscheme
set background=light
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "agno-light-graphite"

hi Normal guifg=#18181B guibg=#FCFCFC
hi Cursor guifg=#FCFCFC guibg=#FF4017
hi CursorLine guibg=#F9F9F9
hi LineNr guifg=#BBBBBB guibg=#18181B
hi CursorLineNr guifg=#FF4017 guibg=#18181B
hi Visual guibg=#FFD6C8
hi Search guifg=#FFFFFF guibg=#FF4017
hi IncSearch guifg=#FFFFFF guibg=#F25837
hi Pmenu guifg=#18181B guibg=#FFFFFF
hi PmenuSel guifg=#09090B guibg=#FFD6C8
hi StatusLine guifg=#FFFFFF guibg=#09090B
hi VertSplit guifg=#D9D9D9 guibg=#FCFCFC
hi ColorColumn guibg=#F0F0F0
hi SignColumn guibg=#18181B

hi Comment guifg=#838383 gui=italic
hi String guifg=#059669
hi Character guifg=#059669
hi Keyword guifg=#FF4017 gui=bold
hi Statement guifg=#F25837 gui=bold
hi Type guifg=#2563EB gui=bold
hi Function guifg=#09090B
hi Identifier guifg=#18181B
hi Constant guifg=#F59E0B
hi Number guifg=#F59E0B
hi Operator guifg=#646464
hi PreProc guifg=#5D6C7B
hi Special guifg=#F25837
hi Error guifg=#DC2626
hi WarningMsg guifg=#F59E0B
hi DiagnosticError guifg=#DC2626
hi DiagnosticWarn guifg=#F59E0B
hi DiagnosticInfo guifg=#2563EB
hi DiagnosticHint guifg=#059669
