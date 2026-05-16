" Agno Light Soft - Vim/Neovim colorscheme
set background=light
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "agno-light-soft"

hi Normal guifg=#202020 guibg=#F9F9F9
hi Cursor guifg=#F9F9F9 guibg=#F25837
hi CursorLine guibg=#F0F0F0
hi LineNr guifg=#8D8D8D guibg=#F9F9F9
hi CursorLineNr guifg=#F25837 guibg=#F9F9F9
hi Visual guibg=#FFD6C8
hi Search guifg=#FFFFFF guibg=#F25837
hi IncSearch guifg=#FFFFFF guibg=#EB6E52
hi Pmenu guifg=#202020 guibg=#FCFCFC
hi PmenuSel guifg=#202020 guibg=#FFD6C8
hi StatusLine guifg=#202020 guibg=#F0F0F0
hi VertSplit guifg=#D9D9D9 guibg=#F9F9F9
hi ColorColumn guibg=#E8E8E8
hi SignColumn guibg=#F9F9F9

hi Comment guifg=#8D8D8D gui=italic
hi String guifg=#059669
hi Character guifg=#059669
hi Keyword guifg=#F25837 gui=bold
hi Statement guifg=#EB6E52 gui=bold
hi Type guifg=#2563EB gui=bold
hi Function guifg=#18181B
hi Identifier guifg=#202020
hi Constant guifg=#F59E0B
hi Number guifg=#F59E0B
hi Operator guifg=#71717A
hi PreProc guifg=#5D6C7B
hi Special guifg=#EB6E52
hi Error guifg=#B42318
hi WarningMsg guifg=#F59E0B
hi DiagnosticError guifg=#B42318
hi DiagnosticWarn guifg=#F59E0B
hi DiagnosticInfo guifg=#2563EB
hi DiagnosticHint guifg=#059669
