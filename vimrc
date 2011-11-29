"    Id:  $Id: vimrc,v 1.6 2003/09/10 13:22:20 leon Exp $
"  Date:  $Date: 2003/09/10 13:22:20 $
" Autor:  Leszek Krupi?ski
" Email:  leafnode@pld-linux.org
"
" G??wny plik konfiguracyjny Vim
"
" Backup
set backup
set backupdir=~/tmp/backup
set backupskip=/tmp/*,~/tmp

" Kodowanie, j?zyk
" set language=polish
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,latin2
" set fileencodings="ucs-bom,utf-8,default,iso-8859-2"
set encoding=utf-8

" Okna, terminal
set ruler
set showcmd
set nottyfast
set splitbelow
set scrolloff=10
set laststatus=2
set statusline=%1*[%n]\ %F\ %(%M%R%H)%)%=ASCII=%b\ \ HEX=%B\ \ Pos=[%l\,%c%V]\/[%L]\ %P

" Wklejanie
set nopaste
set pastetoggle=<F12>

" GUI, kolory, komunikaty
set guifont=-misc-fixed-medium-r-normal-*-*-120-*-*-c-*-iso8859-2
set shortmess+=aI
colorscheme leafnode

" Menu
"set wildmenu
"set cpo-=<
"set wcm=<C-Z>
"map <F5> :emenu <C-Z>
"source $VIMRUNTIME/menu.vim

" Ustawienia pod?wietlania/foldingu
syntax on
set foldmarker={{{,}}}
let &foldmethod="marker"
let php_sql_query = 1
let php_htmlInStrings = 1
let php_folding = 1
let php_parent_error_close = 1
let php_parent_error_open = 1

" Wyszukiwanie, wzorce
set magic
set incsearch
set hlsearch
set ignorecase
set smartcase

" Wci?cia
set autoindent
set cindent
set expandtab
set backspace=2
set softtabstop=3
set textwidth=79
set shiftwidth=3

" Programowanie
set number
set showmatch

" Inne
filetype on
filetype plugin on
set modeline
set viminfo=
set keywordprg=pinfo\ -s
let mapleader = "\\"

" if &term == "screen"
"    set t_kh=[7~
"    set t_@7=[8~
" endif

if &term == "rxvt" || &term == "screen"
   set t_kb=
endif

" iabbrev dt <C-R>=strftime("%Y-%m-%d %H:%M")<CR>

" Zewn?trzne pliki
source $VIMRUNTIME/macros/justify.vim

" Mapowanie klawiszy

nnoremap   M         :call ReadMan()<CR>
nmap  J              :Justify tw<CR>

nmap  <M-s>          :cn<CR>
nmap  <M-a>          :cp<CR>

imap  <C-e>          <ESC><Right>wi
imap  <C-w>          <ESC><Right>bi
nmap  <C-r>          :redo<CR>
nmap  <C-y>          dd
imap  <C-y>          <ESC><C-y><CR>i<UP>
nmap  <silent><C-n>  :silent noh<CR>
imap  <silent><C-n>  <ESC>:silent noh<CR>a
map   <C-o>          zo
map   <C-c>          zc
map   <silent><C-a>  :cn<CR>

map   <F2>           :bp!<CR>
imap  <F2>           <ESC><F2><CR>
map   <F3>           :bn!<CR>
imap  <F3>           <ESC><F3><CR>
map   <F4>           :bdel<CR>
imap  <F4>           <ESC><F4><CR>
map   <F9>           :silent make<BAR>cwindow 8<CR>:redraw!<CR>
imap  <F9>           <ESC><F9>

nmap  <S-F2>         :set nonumber<CR>
imap  <S-F2>         <ESC><S-F2>i
nmap  <S-F3>         :set number<CR>
imap  <S-F3>         <ESC><S-F3>i

vmap  L              !lineUp.py<CR>
vmap  <F5>           :s/^/# /<CR>:noh<CR>
imap  <F5>           <CR>################################################################################<CR>
nmap  <F5>           i<F5><ESC>

" FuzzyFinder
let g:fuf_modesDisable = []
let g:fuf_mrufile_maxItem = 400
let g:fuf_mrucmd_maxItem = 400
nnoremap <silent> sj     :FufBuffer<CR>
nnoremap <silent> sk     :FufFileWithCurrentBufferDir<CR>
nnoremap <silent> sK     :FufFileWithFullCwd<CR>
nnoremap <silent> s<C-k> :FufFile<CR>
nnoremap <silent> sl     :FufCoverageFileChange<CR>
nnoremap <silent> sL     :FufCoverageFileChange<CR>
nnoremap <silent> s<C-l> :FufCoverageFileRegister<CR>
nnoremap <silent> sd     :FufDirWithCurrentBufferDir<CR>
nnoremap <silent> sD     :FufDirWithFullCwd<CR>
nnoremap <silent> s<C-d> :FufDir<CR>
nnoremap <silent> sn     :FufMruFile<CR>
nnoremap <silent> sN     :FufMruFileInCwd<CR>
nnoremap <silent> sm     :FufMruCmd<CR>
nnoremap <silent> su     :FufBookmarkFile<CR>
nnoremap <silent> s<C-u> :FufBookmarkFileAdd<CR>
vnoremap <silent> s<C-u> :FufBookmarkFileAddAsSelectedText<CR>
nnoremap <silent> si     :FufBookmarkDir<CR>
nnoremap <silent> s<C-i> :FufBookmarkDirAdd<CR>
nnoremap <silent> st     :FufTag<CR>
nnoremap <silent> sT     :FufTag!<CR>
nnoremap <silent> s<C-]> :FufTagWithCursorWord!<CR>
nnoremap <silent> s,     :FufBufferTag<CR>
nnoremap <silent> s<     :FufBufferTag!<CR>
vnoremap <silent> s,     :FufBufferTagWithSelectedText!<CR>
vnoremap <silent> s<     :FufBufferTagWithSelectedText<CR>
nnoremap <silent> s}     :FufBufferTagWithCursorWord!<CR>
nnoremap <silent> s.     :FufBufferTagAll<CR>
nnoremap <silent> s>     :FufBufferTagAll!<CR>
vnoremap <silent> s.     :FufBufferTagAllWithSelectedText!<CR>
vnoremap <silent> s>     :FufBufferTagAllWithSelectedText<CR>
nnoremap <silent> s]     :FufBufferTagAllWithCursorWord!<CR>
nnoremap <silent> sg     :FufTaggedFile<CR>
nnoremap <silent> sG     :FufTaggedFile!<CR>
nnoremap <silent> so     :FufJumpList<CR>
nnoremap <silent> sp     :FufChangeList<CR>
nnoremap <silent> sq     :FufQuickfix<CR>
nnoremap <silent> sy     :FufLine<CR>
nnoremap <silent> sh     :FufHelp<CR>
nnoremap <silent> se     :FufEditDataFile<CR>
nnoremap <silent> sr     :FufRenewCache<CR>


" Klawisze S-F
map <ESC>[23~ <S-F1>
map <ESC>[24~ <S-F2>
map <ESC>[25~ <S-F3>
map <ESC>[26~ <S-F4>
map <ESC>[28~ <S-F5>
map <ESC>[29~ <S-F6>
map <ESC>[31~ <S-F7>
map <ESC>[32~ <S-F8>
map <ESC>[33~ <S-F9>
map <ESC>[34~ <S-F10> 
map <ESC>[23$ <S-F11> 
map <ESC>[24$ <S-F12> 

" Polecenia zale?ne od typu pliku
if has("autocmd")
   augroup cprog
      set number
      au FileType c,cpp set textwidth=0 nowrap
      au FileType c,cpp set fo=croql cin
      au FileType c,cpp set comments=sr:/*,mb:*,elx:*/
      au FileType cpp   set comments+=://
      au FileType c,cpp iab printf printf("",);<C-o>3<Left>
      au FileType c     nmap <F12> :0,$!~/bin/rs-indent<CR>
      au FileType c     imap <F12> <ESC>:0,$!~/bin/rs-indent<CR>a
      au FileType c     nmap <S-F12> :0,$!~/bin/rs-indent-long<CR>
      au FileType c     imap <S-F12> <ESC>:0,$!~/bin/rs-indent-long<CR>a
      au BufNewFile *.c exec "normal i/*\n".expand('%:t').
                  \"\n\n$Id: vimrc,v 1.6 2003/09/10 13:22:20 leon Exp $\n/\n\nint main(int argc, char"
                  \"**argv)\n{\n}\<ESC>GO"
   augroup END

   augroup mutt
      au FileType mail       set whichwrap=b,s,h,l,<,>,[,] fo=tqcr2
      au FileType mail       set comments=n:> linebreak
      au BufRead /home/users/leafnode/tmp/mutt*  g/^> -- \?$/,/^$/-1d
   augroup END

   augroup help
      au filetype help :nnoremap <buffer><cr> <c-]>
      au filetype help :nnoremap <buffer><bs> <c-T>
   augroup END

endif
   
if has("syntax")

   syntax on

   let c_space_errors = 1

   hi User1     ctermbg=blue      ctermfg=yellow
   hi cSpecial  ctermbg=black     ctermfg=white
   hi LineNr    ctermbg=black     ctermfg=darkgrey

endif

autocmd BufNewFile,BufRead *.inc set filetype=php
autocmd BufNewFile,BufRead *.twig set filetype=htmltwig
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType yaml setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

autocmd BufRead *.gpg %!gpg -d

" Funkcje
fun! ReadMan()

    let s:man_word = expand('<cword>')

    if &filetype != "man"

        let thiswin = winnr()

        exe "norm! \<C-W>b"

        if winnr() == 1
            new
        else
            exe "norm! " . thiswin . "\<C-W>w"
            while 1
                if &filetype == "man"
                    break
                endif

                exe "norm! \<C-W>w"

                if thiswin == winnr()
                    new
                    break
                endif

            endwhile

        endif

    endif

    silent exec ":r!man -S2:3:9:1 " . s:man_word . " | col -b"
    silent exec ":goto"
    silent exec ":delete"

    setl ft=man nomod bufhidden=hide nobuflisted

endfun

hi Spell ctermfg=Red
