set guifont="DejaVu Sans Mono 8"
set number
colorscheme molokai

if has("gui_macvim")
   " Command-/ to toggle comments
   map <D-/> <plug>NERDCommenterToggle<CR>
   imap <D-/> <Esc><plug>NERDCommenterToggle<CR>i

   " Command-e for ConqueTerm
   map <D-e> :call StartTerm()<CR>

   " Command-][ to increase/decrease indentation
   vmap <D-]> >gv 
   vmap <D-[> <gv 

  " Command-Shift-F for Ack
  map <D-F> :Ack<space>

  " Command-Option-ArrowKey to switch viewports
  map <D-M-Up> <C-w>k
  imap <D-M-Up> <Esc> <C-w>k
  map <D-M-Down> <C-w>j
  imap <D-M-Down> <Esc> <C-w>j
  map <D-M-Right> <C-w>l
  imap <D-M-Right> <Esc> <C-w>l
  map <D-M-Left> <C-w>h
  imap <D-M-Left> <C-w>h

  " Emulate <insert> key from PC
  inoremap <D-r> <insert>
  nnoremap <D-r> i

else
   " Ctrl-e for ConqueTerm
   map <C-e> :call StartTerm()<CR>

   " Alt-][ to increase/decrease indentation
   vmap <A-]> >gv
   vmap <A-[> <gv

  " Ctrl-Shift-F for Ack
  map <C-F> :Ack<space>

  " Ctrl-Option-ArrowKey to switch viewports
  map <C-S-Up> <C-w>k
  imap <C-S-Up> <Esc> <C-w>k
  map <C-S-Down> <C-w>j
  imap <C-S-Down> <Esc> <C-w>j
  map <C-S-Right> <C-w>l
  imap <C-S-Right> <Esc> <C-w>l
  map <C-S-Left> <C-w>h
  imap <C-S-Left> <C-w>h

endif

" ConqueTerm wrapper
function StartTerm()
  execute 'ConqueTerm ' . $SHELL . ' --login'
  setlocal listchars=tab:\ \
endfunction
