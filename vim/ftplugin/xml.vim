"    Id:  $Id: xml.vim,v 1.4 2003/10/27 14:11:45 leon Exp $
"  Date:  $Date: 2003/10/27 14:11:45 $
" Autor:  Leszek Krupiñski
" Email:  leafnode@pld-linux.org
"

function! SetXMLEnc()
python << EOF
import vim
import re
b = vim.current.buffer
m = re.match('<\?xml version="1.0" encoding="(?P<encoding>[^"]+)"\?>', b[0])
if m:
   enc = m.group('encoding')
else:
   enc = 'utf-8'
vim.command('setl encoding='+enc)
EOF
endfun

call SetXMLEnc()
