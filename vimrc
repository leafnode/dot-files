" Author: Leszek Krupiński
" Email:  leafnode@pld-linux.org

" Included plugins:
" NERDTree
" NERDCommenter
" FuzzyFinder
" Ack
" gist
" scratch
" runthisprog
" snipMate
" supertab
" surround
" VCS
" searchfold
" syntastic
" taglist
" conqueTerm
" ctrlp

" Main ViM config file
"
" Backup
set backup
set backupdir=~/tmp/backup
set backupskip=/tmp/*,~/tmp

" Language, encoding
" set language=polish
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,latin2
" set fileencodings="ucs-bom,utf-8,default,iso-8859-2"
set encoding=utf-8

" Windows, terminal
set ruler
set showcmd
set nottyfast
set splitbelow
set scrolloff=10
set laststatus=2
set statusline=%1*[%n]\ %F\ %(%M%R%H)%)%=ASCII=%b\ \ HEX=%B\ \ Pos=[%l\,%c%V]\/[%L]\ %P
" 256 color terminal
set t_Co=256

" Pasting
set nopaste
set pastetoggle=<F12>

" GUI, colors, messages
set guifont=-misc-fixed-medium-r-normal-*-*-120-*-*-c-*-iso8859-2
set shortmess+=aI
colorscheme leafnode

" Menu
"set wildmenu
"set cpo-=<
"set wcm=<C-Z>
"map <F5> :emenu <C-Z>
"source $VIMRUNTIME/menu.vim

" Highlighting, folding, markers
syntax on
set foldmarker={{{,}}}
let &foldmethod="marker"
let php_sql_query = 1
let php_htmlInStrings = 1
let php_folding = 1
let php_parent_error_close = 1
let php_parent_error_open = 1

" Searching, patterns
set magic
set incsearch
set hlsearch
set ignorecase
set smartcase

" Indenting
set autoindent
set cindent
set expandtab
set backspace=2
set softtabstop=3
set textwidth=79
set shiftwidth=3

" Programming
set number
set showmatch

" Misc
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

" Backspace fix
if &term == "rxvt" || &term == "screen"
   set t_kb=
endif

" iabbrev dt <C-R>=strftime("%Y-%m-%d %H:%M")<CR>

" External files
source $VIMRUNTIME/macros/justify.vim

" Key mapping

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

" Next/prev buffer
map   <F2>           :bp!<CR>
imap  <F2>           <ESC><F2><CR>
map   <F3>           :bn!<CR>
imap  <F3>           <ESC><F3><CR>

" Close buffer
map   <F4>           :bdel<CR>
imap  <F4>           <ESC><F4><CR>
map   <F9>           :silent make<BAR>cwindow 8<CR>:redraw!<CR>
imap  <F9>           <ESC><F9>

" Toggle line numbers
nmap  <S-F2>         :set nonumber<CR>
imap  <S-F2>         <ESC><S-F2>i
nmap  <S-F3>         :set number<CR>
imap  <S-F3>         <ESC><S-F3>i

" Lineup - replaced by align.vim
"vmap  L              !lineUp.py<CR>

" CTags
" map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
map <Leader>rt :!ctags *<CR><CR>
map <C-\> :tnext<CR>

" Comment-out lines
vmap  <F5>           :s/^/# /<CR>:noh<CR>

" Insert line
imap  <F5>           <CR>################################################################################<CR>
nmap  <F5>           i<F5><ESC>

" Spellcheck
map <F8> <Esc>:setlocal spell spelllang=pl_PL<CR>
map <F9> <Esc>:setlocal nospell<CR>

" gist-vim defaults
if has("mac")
  let g:gist_clip_command = 'pbcopy'
elseif has("unix")
  let g:gist_clip_command = 'xclip -selection clipboard'
endif
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

" NerdTree
nmap <silent> <leader>p :NERDTreeToggle<CR>

" SparkUp
let g:sparkupNextMapping = '<Leader>en'
let g:sparkupExecuteMapping = '<Leader>ee'

" MacVIM shift+arrow-keys behavior (required in .vimrc)
" let macvim_hig_shift_movement = 1

" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" Enable syntastic syntax checking
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1

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

" Ctrl-p

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,.git/*,.svn/*

" S-F key mapping
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

" Filetype dependant commands
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
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType yaml setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

autocmd BufRead *.gpg %!gpg -d

" Functions
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

" Scratch buffer
function! ToggleScratch()
   if expand('%') == g:ScratchBufferName
      quit
   else
      Sscratch
   endif
endfunction

map <leader>s :call ToggleScratch()<CR>


hi Spell ctermfg=Red
