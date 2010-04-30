" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Sergey V. Beduev <shaman@interdon.net>
" Last Change: 2003 Jan 16

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "colorer"

hi Normal	ctermfg=Gray		guifg=DarkGray		guibg=black
hi Visual	ctermfg=DarkCyan	guibg=black 		guifg=DarkCyan
hi Comment	ctermfg=Brown		guifg=#B46918	gui=NONE
hi PerlPOD	ctermfg=Brown		guifg=#B86A18 gui=NONE
hi Constant	ctermfg=White		guifg=White	gui=NONE
hi Charachter	ctermfg=Yellow		guifg=Yellow		gui=NONE
hi String	ctermfg=Yellow		guifg=Yellow	gui=NONE
hi Number	ctermfg=White		guifg=White 	gui=NONE
hi Boolean	ctermfg=Cyan		guifg=DarkGray gui=NONE
hi Special	ctermfg=DarkMagenta	guifg=DarkMagenta	gui=NONE
hi Identifier 	ctermfg=Green 		guifg=Green	gui=NONE
hi Exception 	ctermfg=White 		guifg=White	gui=NONE
hi Statement 	ctermfg=White 		guifg=White	gui=NONE
hi Label 	ctermfg=White 		guifg=White	gui=NONE
hi Keyword 	ctermfg=White 		guifg=White	gui=NONE
hi PreProc	ctermfg=Green		guifg=Green	gui=NONE
hi Type		ctermfg=LightGreen	guifg=Green	gui=NONE
hi Function	ctermfg=White 		guifg=White	gui=NONE
hi Repeat	ctermfg=White		guifg=White	gui=NONE
hi Operator	ctermfg=White		guifg=White	gui=NONE
hi Ignore	ctermfg=black 		guifg=bg	gui=NONE
hi Folded       ctermbg=LightBlue ctermfg=Gray guibg=DarkBlue guifg=DarkGray gui=NONE
hi Error	term=reverse 	ctermbg=Red 		ctermfg=White 	guibg=Red guifg=White gui=NONE
hi Todo		term=standout 	ctermbg=Yellow 		ctermfg=Black 	guifg=Blue guibg=Yellow gui=NONE

hi MailQ  ctermfg=darkcyan	guibg=black gui=NONE
hi MailQu  ctermfg=darkred	guibg=black gui=NONE
hi MyDiffNew	ctermfg=magenta		guifg=red gui=NONE
hi MyDiffCommLine	ctermfg=white	ctermbg=red	guifg=red guibg=red gui=NONE
hi MyDiffRemoved	ctermfg=LightRed	guifg=red gui=NONE
hi MyDiffSubName	ctermfg=DarkCyan	guifg=Cyan gui=NONE
hi MyDiffNormal	ctermbg=White ctermfg=black	guibg=White guifg=black gui=NONE
" Common groups that link to default highlighting. 
" You can specify other highlighting easily.
"hi link String	Constant
"hi link Character	Constant
"hi link Number		Constant
"hi link Boolean	Constant
hi link Float		Number
hi link Conditional	Repeat
hi link Include		PreProc
hi link Define		PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef		Type
hi link Tag		Special
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment 	Special
hi link Debug		Special
