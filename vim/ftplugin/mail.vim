"    Id:  $Id: mail.vim,v 1.4 2003/10/27 14:05:00 leon Exp $
"  Date:  $Date: 2003/10/27 14:05:00 $
" Autor:  Leszek Krupiñski
" Email:  leafnode@pld-linux.org
"
iabbrev sie siê
iabbrev nei nie

set nocindent
set noautoindent
set noshowmatch

silent! 1,/^$/s/Subject: \(Re: \|Odp: \)\+/Subject: Re: /
setlocal tw=65 
3/^$
