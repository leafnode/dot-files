"    Id:  $Id: html.vim,v 1.3 2003/09/14 21:37:00 leon Exp $
"  Date:  $Date: 2003/09/14 21:37:00 $
" Autor:  Leszek Krupiñski
" Email:  leafnode@pld-linux.org
"
autocmd BufNewFile *.html exec "normal i\<html>\n<head>"
                              \"\n<title>title</title>\n<script>"
                              \"\n</script>\n</head>\n<body>"
                              \"\n</body>\n</html>\<ESC>GkO"
"setlocal softtabstop=1
"setlocal shiftwidth=1
