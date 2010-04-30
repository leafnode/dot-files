"    Id:  $Id: php.vim,v 1.4 2004/04/23 23:03:17 leon Exp $
"  Date:  $Date: 2004/04/23 23:03:17 $
" Autor:  Leszek Krupiñski
" Email:  leafnode@pld-linux.org
"
" Completion
inoremap <C-D> <C-N>
function! CleverTab()
   if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
      return "\<Tab>"
   else
      return "\<C-N>"
endfunction
" inoremap <Tab> <C-R>=CleverTab()<CR>
let php_sql_query = 1
let php_htmlInStrings = 1
let php_folding = 1
let php_parent_error_close = 1
let php_parent_error_open = 1

setlocal expandtab
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal tabstop=4
setlocal syntax=php
setlocal autoindent
setlocal cindent
setlocal dictionary=/home/users/leafnode/.phpfunc
setlocal keywordprg=manual.sh
setlocal complete=d,k,t
setlocal number
setlocal textwidth=0

nnoremap M :call Help()<CR>

" Funkcje
fun! Help()

    let s:man_word = expand('<cword>')

    new
    silent exec ":r!manual_dump.sh " . s:man_word
    silent exec ":goto"
    silent exec ":delete"

    setl nomod bufhidden=hide nobuflisted

endfun
