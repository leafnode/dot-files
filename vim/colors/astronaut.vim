" astronaut.vim: a colorscheme
"    Maintainer: Charles E. Campbell, Jr. <charles.e.campbell.1@gsfc.nasa.gov>
"          Date: September 19, 2001

set background=dark
hi clear
if exists( "syntax_on" )
    syntax reset
endif
let g:colors_name="astronaut"

hi Blue         term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[34m    stop=^[[m^[[32m   ctermfg=4   guifg=blue      guibg=navyblue
hi Comment      term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[37m    stop=^[[m^[[32m   ctermfg=7   guifg=white
hi Constant     term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[33m    stop=^[[m^[[32m   ctermfg=3   guifg=yellow    guibg=navyblue
hi Cursor       term=NONE           cterm=NONE           gui=NONE           guifg=blue          guibg=green
hi Cyan         term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[36m    stop=^[[m^[[32m   ctermfg=6   guifg=cyan      guibg=navyblue
hi Debug        term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[31m    stop=^[[m^[[32m   ctermfg=1   guifg=magenta   guibg=navyblue
hi Delimiter    term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[37m    stop=^[[m^[[32m   ctermfg=7   guifg=white     guibg=navyblue
hi DiffAdd      term=NONE           cterm=NONE           gui=NONE           ctermbg=4           guibg=DarkBlue
hi DiffChange   term=NONE           cterm=NONE           gui=NONE           ctermbg=5           guibg=DarkMagenta
hi DiffDelete   term=NONE           cterm=NONE           gui=NONE           ctermfg=4           ctermbg=6         guifg=Blue  guibg=DarkCyan
hi DiffText     term=reverse        cterm=NONE           gui=bold           ctermbg=1           guibg=Red
hi Directory    term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[33m    stop=^[[m^[[32m   ctermfg=3   guifg=yellow
hi Error        term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[37;41m stop=^[[m^[[32m   ctermfg=7   ctermbg=1       guifg=white    guibg=red
hi ErrorMsg     term=standout       cterm=NONE           ctermfg=7          ctermbg=1           guifg=White       guibg=Red
hi FoldColumn   term=standout       cterm=NONE           ctermfg=6          ctermbg=0           guifg=Cyan        guibg=Grey
hi Folded       term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[34;40m stop=^[[m^[[32m   ctermfg=4   ctermbg=0       guifg=blue     guibg=black
hi Green        term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[32m    stop=^[[m^[[32m   ctermfg=2   guifg=green     guibg=navyblue
hi Identifier   term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[45m    stop=^[[m^[[32m   ctermfg=5   guifg=magenta   guibg=navyblue
hi Ignore       term=NONE           cterm=NONE           gui=NONE           ctermfg=0           guifg=bg
hi IncSearch    term=reverse        cterm=reverse        gui=reverse
hi LineNr       term=underline      cterm=NONE           gui=NONE           ctermfg=3           guifg=Yellow
hi Magenta      term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[35m    stop=^[[m^[[32m   ctermfg=5   guifg=magenta   guibg=navyblue
hi Menu         term=NONE           cterm=NONE           gui=NONE           guifg=black         guibg=gray75
hi ModeMsg      term=bold           cterm=NONE           gui=bold
hi MoreMsg      term=bold           cterm=NONE           gui=bold           ctermfg=2           guifg=SeaGreen
hi NonText      term=bold           cterm=NONE           gui=bold           ctermfg=4           guifg=Blue
hi Normal       term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[32m    stop=^[[m^[[32m   ctermfg=2   guifg=green     guibg=navyblue
hi PreProc      term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[37;44m stop=^[[m^[[32m   ctermfg=7   ctermbg=4       guifg=white    guibg=blue3
hi Question     term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[33m    stop=^[[m^[[32m   ctermfg=3   guifg=yellow
hi Red          term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[31m    stop=^[[m^[[32m   ctermfg=1   guifg=red       guibg=navyblue
hi Scrollbar    term=NONE           cterm=NONE           gui=NONE           guifg=gray80        guibg=gray70
hi Search       term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[34m    stop=^[[m^[[32m   ctermfg=4   ctermbg=3       guifg=blue     guibg=Yellow
hi Special      term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[32;44m stop=^[[m^[[32m   ctermfg=2   ctermbg=4       guifg=green    guibg=blue
hi SpecialKey   term=NONE           cterm=NONE,reverse   gui=reverse        start=^[[m^[[35;7m  stop=^[[m^[[32m   ctermfg=5   guifg=magenta
hi Statement    term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[36m    stop=^[[m^[[32m   ctermfg=6   guifg=cyan      guibg=navyblue
hi StatusLine   term=bold,reverse   cterm=bold,reverse   gui=bold,reverse
hi StatusLineNC term=reverse        cterm=reverse        gui=reverse
hi String       term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[33m    stop=^[[m^[[32m   ctermfg=3   guifg=yellow    guibg=navyblue
hi Subtitle     term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[35m    stop=^[[m^[[32m   ctermfg=5   guifg=magenta   guibg=navyblue
hi Tags         term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[33;44m stop=^[[m^[[32m   ctermfg=3   ctermbg=4       guifg=yellow   guibg=blue3
hi Title        term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[37m    stop=^[[m^[[32m   ctermfg=7   guifg=white
hi Todo         term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[37;45m stop=^[[m^[[32m   ctermfg=7   ctermbg=5       guifg=white    guibg=magenta
hi Type         term=underline      cterm=NONE,underline gui=underline      start=^[[m^[[4;32m  stop=^[[m^[[32m   ctermfg=2   guifg=seagreen1 guibg=navyblue
hi Underlined   term=underline      cterm=NONE,underline gui=underline      ctermfg=4           guifg=#80a0ff
hi Unique       term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[34;47m stop=^[[m^[[32m   ctermfg=4   ctermbg=7       guifg=blue3    guibg=white
hi Unique2      term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[35;47m stop=^[[m^[[32m   ctermfg=5   ctermbg=7       guifg=magenta  guibg=white
hi Unique3      term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[30;47m stop=^[[m^[[32m   ctermfg=0   ctermbg=7       guifg=black    guibg=white
hi VertSplit    term=reverse        cterm=reverse        gui=reverse
hi Visual       term=reverse        cterm=reverse        gui=reverse        guifg=Grey          guibg=fg
hi VisualNOS    term=bold,underline cterm=bold,underline gui=bold,underline
hi WarningMsg   term=NONE           cterm=reverse        gui=reverse        start=^[[m^[[33;7m  stop=^[[m^[[32m   ctermfg=3   guifg=yellow
hi White        term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[37m    stop=^[[m^[[32m   ctermfg=7   guifg=white     guibg=navyblue
hi WildMenu     term=standout       cterm=NONE           gui=NONE           ctermfg=0           ctermbg=3         guifg=Black guibg=Yellow
hi Yellow       term=NONE           cterm=NONE           gui=NONE           start=^[[m^[[33m    stop=^[[m^[[32m   ctermfg=3   guifg=yellow    guibg=navyblue
hi lCursor      term=NONE           cterm=NONE           gui=NONE           guifg=bg            guibg=fg
" vim: nowrap
