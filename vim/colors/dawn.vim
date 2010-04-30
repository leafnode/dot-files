" Vim color file
" Maintainer:	Ajit J. Thakkar (ajit AT unb DOT ca)
" Last Change:	2003 Mar. 10
" Version:	1.1
" URL:		http://www.unb.ca/chem/ajit/vim.htm

" This GUI-only color scheme has a light grey background, and is a softer
" variant of the default and morning color schemes.

set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "dawn"

hi Normal	guifg=Black guibg=grey90

" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg	gui=NONE guifg=Red guibg=Linen
hi IncSearch	gui=NONE guifg=fg guibg=LightGreen
hi ModeMsg	gui=bold guifg=fg guibg=bg
hi StatusLine	gui=NONE guifg=DarkBlue guibg=grey70
hi StatusLineNC	gui=NONE guifg=grey90 guibg=grey70
hi VertSplit	gui=NONE guifg=grey70 guibg=grey70
hi Visual	gui=reverse guifg=Grey guibg=fg
hi VisualNOS	gui=underline,bold guifg=fg guibg=bg
hi DiffText	gui=bold guifg=Blue guibg=LightYellow
hi Cursor	guifg=NONE guibg=Green
hi lCursor	guifg=NONE guibg=Cyan
hi Directory	guifg=Blue guibg=bg
hi LineNr	guifg=Brown guibg=bg
hi MoreMsg	gui=bold guifg=SeaGreen guibg=bg
hi NonText	gui=bold guifg=Blue guibg=grey80
hi Question	gui=bold guifg=SeaGreen guibg=bg
hi Search	guifg=fg guibg=PeachPuff
hi SpecialKey	guifg=Blue guibg=bg
hi Title	gui=bold guifg=Magenta guibg=bg
hi WarningMsg	guifg=Red guibg=bg
hi WildMenu	guifg=fg guibg=PeachPuff
hi Folded	guifg=DarkBlue guibg=LightGrey
hi FoldColumn	guifg=DarkBlue guibg=Grey
hi DiffAdd	gui=bold guifg=Blue guibg=LightCyan
hi DiffChange	gui=bold guifg=fg guibg=MistyRose2
hi DiffDelete	gui=NONE guifg=LightBlue guibg=LightCyan

" Colors for syntax highlighting
hi Constant	gui=NONE guifg=SteelBlue guibg=bg
hi String	gui=NONE guifg=Magenta3 guibg=bg
hi Special	gui=bold guifg=DarkSlateBlue guibg=bg
hi Statement	gui=NONE guifg=Brown guibg=bg
hi Ignore	gui=NONE guifg=bg guibg=bg
hi ToDo		gui=NONE guifg=DeepPink1 guibg=bg
hi Error	gui=NONE guifg=Red guibg=Linen
hi Comment	gui=NONE guifg=RoyalBlue guibg=NONE
hi Identifier	gui=NONE guifg=DarkCyan guibg=NONE
hi PreProc	gui=NONE guifg=Purple guibg=NONE
hi Type		gui=NONE guifg=SeaGreen guibg=NONE
hi Underlined	gui=underline guifg=SlateBlue guibg=bg

" vim: sw=2
